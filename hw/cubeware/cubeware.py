from contextlib import contextmanager

from atlas import *

from interfaces import *

from csrs import *
from mem_reader import *
from refresh_controller import *
from tlc_controller import *
from uart import *

@Module
def Cubeware():
    io = Io({
        'uart': {
            'tx': Output(Bits(1)),
            'rx': Input(Bits(1))
        },
        'i2cs': Output([i2c_if for _ in range(num_tlcs)]),
        'resetns': Output([Bits(1) for _ in range(num_tlcs)]),
        'layer_mask': Output(Bits(cube_size)),
        'ram_read': Output(BramReadIf(8, ram_depth)),
        'ram_write': Output(BramWriteIf(8, ram_depth))
    })

    tlc_arg_regs = [
        Reg([Bits(8) for _ in range(16)], reset_value=[0 for _ in range(16)])
        for _ in range(num_tlcs)
    ]

    #
    # Control / Status Registers
    #

    csrs = Instance(Csrs())
    csrs.write.wen <<= False
    csrs.write.waddr <<= 0
    csrs.write.wdata <<= 0

    #
    # UART
    #

    uart_tx = Instance(UartTransmitter(50000000, 1000000, 8))
    uart_rx = Instance(UartReceiver(50000000, 1000000, 8))

    io.uart.tx <<= uart_tx.uart_tx
    uart_rx.uart_rx <<= io.uart.rx

    #
    # Mem Reader
    #

    reader = Instance(MemReader())
    io.ram_read <<= reader.ram_read

    with reader.output.wen:
        for bank in range(num_tlcs):
            with reader.output.bank == bank:
                for index in range(16):
                    with reader.output.index == index:
                        tlc_arg_regs[bank][index] <<= reader.output.data

    #
    # Refresh Controller
    #

    rc = Instance(RefreshController())
    rc.config <<= csrs.config.refresh

    io.layer_mask <<= rc.layer_mask

    reader.start <<= rc.reader.start
    reader.layer <<= rc.reader.layer
    rc.reader.done <<= reader.done

    #
    # TLC Controllers
    #

    tlcs = [Instance(TlcController()) for _ in range(num_tlcs)]

    for i in range(num_tlcs):
        io.i2cs[i] <<= tlcs[i].i2c
        io.resetns[i] <<= tlcs[i].resetn
        tlcs[i].config <<= csrs.config.tlc
        tlcs[i].cmd <<= rc.tlcs[i]
        with rc.tlc_override:
            tlcs[i].args <<= rc.tlc_args
        with otherwise:
            tlcs[i].args <<= tlc_arg_regs[i]

    #
    # Command FSM
    #

    states = Enum([
        'ready',
        'wrcsr',
        'enable',
        'disable',
        'wrframe',
        'success'
    ])

    uart_tx.enqueue_data <<= 0 # uart_rx.dequeue_data
    uart_tx.enqueue <<= False # uart_rx.data_available
    uart_rx.dequeue <<= False # uart_tx.ready

    state = Reg(Bits(states.bitwidth), reset_value=states.ready)
    cmd = uart_rx.dequeue_data

    idx = Reg(Bits(10), reset_value=0)

    io.ram_write.write <<= False
    io.ram_write.address <<= idx
    io.ram_write.data <<= uart_rx.dequeue_data

    csr_waddr = Reg(Bits(8), reset_value=0)
    csr_wdata = Reg(Bits(8), reset_value=0)

    with state == states.ready:
        uart_rx.dequeue <<= True
        idx <<= 0

        with uart_rx.data_available:
            with cmd == ord('w'):
                state <<= states.wrcsr

            with cmd == ord('e'):
                state <<= states.enable

            with cmd == ord('d'):
                state <<= states.disable

            with cmd == ord('f'):
                state <<= states.wrframe

    with state == states.wrcsr:
        uart_rx.dequeue <<= True
        with uart_rx.data_available:
            idx <<= idx + 1
            with idx == 0:
                csr_waddr <<= uart_rx.dequeue_data
            with idx == 1:
                csr_wdata <<= uart_rx.dequeue_data
            with idx == 2:
                csrs.write.wen <<= True
                csrs.write.waddr <<= csr_waddr
                csrs.write.wdata <<= csr_wdata
                state <<= states.success

    with state == states.enable:
        csrs.write.wen <<= True
        csrs.write.waddr <<= 0
        csrs.write.wdata <<= 1
        state <<= states.success

    with state == states.disable:
        csrs.write.wen <<= True
        csrs.write.waddr <<= 0
        csrs.write.wdata <<= 0
        state <<= states.success

    with state == states.wrframe:
        uart_rx.dequeue <<= True
        with uart_rx.data_available:
            idx <<= idx + 1
            io.ram_write.write <<= True

            with idx == 0x1FF:
                state <<= states.success

    with state == states.success:
        uart_tx.enqueue <<= True
        uart_tx.enqueue_data <<= ord('s')
        with uart_tx.ready:
            state <<= states.ready

    NameSignals(locals())