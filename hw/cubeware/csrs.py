from atlas import *

from interfaces import *

@Module
def Csrs():
    io = Io({
        'write': Input({
            'wen': Bits(1),
            'waddr': Bits(8),
            'wdata': Bits(8)
        }),
        'config': Output({
            'tlc': tlc_config,
            'refresh': refresh_config
        })
    })

    clock_period = Reg([Bits(8) for _ in range(4)], reset_value=[100, 0, 0, 0])
    clock_threshold = Reg([Bits(8) for _ in range(4)], reset_value=[50, 0, 0, 0])
    disp_cycles = Reg([Bits(8) for _ in range(4)], reset_value=[0x70, 0x11, 0x01, 0x00])
    enable_rc = Reg(Bits(8), reset_value=1)

    io.config.tlc.i2c_config.clock_threshold <<= Cat([
        clock_threshold[3],
        clock_threshold[2],
        clock_threshold[1],
        clock_threshold[0]
    ])

    io.config.tlc.i2c_config.clock_period <<= Cat([
        clock_period[3],
        clock_period[2],
        clock_period[1],
        clock_period[0]
    ])

    io.config.refresh.disp_cycles <<= Cat([
        disp_cycles[3],
        disp_cycles[2],
        disp_cycles[1],
        disp_cycles[0]
    ])

    io.config.refresh.enable <<= enable_rc

    def MapCsr(addr, csr):
        nonlocal io
        with (io.write.waddr == addr) & io.write.wen:
            csr <<= io.write.wdata

    MapCsr(0x00, enable_rc)

    for i in range(4):
        MapCsr(0x04 + i, clock_period[i])
        MapCsr(0x08 + i, clock_threshold[i])
        MapCsr(0x0C + i, disp_cycles[i])