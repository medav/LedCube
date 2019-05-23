module LedcubeTop(
    input clock,
    input uart_rx,
    output uart_tx,
    inout PMOD1_0,
    inout PMOD1_1,
    inout PMOD1_2,
    inout PMOD1_3,
    inout PMOD1_4,
    inout PMOD1_5,
    inout PMOD1_6,
    inout PMOD1_7,
    output PMOD2_0,
    output PMOD2_1,
    output PMOD2_2,
    output PMOD2_3,
    output PMOD2_4,
    output PMOD2_5,
    output PMOD2_6,
    output PMOD2_7,
    output PMOD3_0,
    output PMOD3_1,
    output PMOD3_2,
    output PMOD3_3,
    output PMOD3_4,
    output PMOD3_5,
    output PMOD3_6,
    output PMOD3_7
);

    reg [31 : 0] reset_counter;
    wire reset;

    wire [7:0] layer_mask;

    wire io_i2cs_i0_sda_o;
    wire io_i2cs_i0_sda_i;
    wire io_i2cs_i0_scl_o;
    wire io_i2cs_i0_scl_i;
    wire io_i2cs_i1_sda_o;
    wire io_i2cs_i1_sda_i;
    wire io_i2cs_i1_scl_o;
    wire io_i2cs_i1_scl_i;
    wire io_i2cs_i2_sda_o;
    wire io_i2cs_i2_sda_i;
    wire io_i2cs_i2_scl_o;
    wire io_i2cs_i2_scl_i;
    wire io_i2cs_i3_sda_o;
    wire io_i2cs_i3_sda_i;
    wire io_i2cs_i3_scl_o;
    wire io_i2cs_i3_scl_i;
    wire io_resetns_i0;
    wire io_resetns_i1;
    wire io_resetns_i2;
    wire io_resetns_i3;

    wire [0:0] bram_write_enable;
    wire [8:0] bram_write_addr;
    wire [7:0] bram_write_data;
    wire [8:0] bram_read_addr;
    wire [7:0] bram_read_data;

    //
    // TLC Interfaces
    //

    assign PMOD1_0 = io_i2cs_i0_sda_o ? 1'bZ : 1'b0;
    assign io_i2cs_i0_sda_i = PMOD1_0;
    assign PMOD1_4 = io_i2cs_i0_scl_o ? 1'bZ : 1'b0;
    assign io_i2cs_i0_scl_i = PMOD1_4;
    assign PMOD2_0 = io_resetns_i0;

    assign PMOD1_1 = io_i2cs_i1_sda_o ? 1'bZ : 1'b0;
    assign io_i2cs_i1_sda_i = PMOD1_1;
    assign PMOD1_5 = io_i2cs_i1_scl_o ? 1'bZ : 1'b0;
    assign io_i2cs_i1_scl_i = PMOD1_5;
    assign PMOD2_1 = io_resetns_i1;

    assign PMOD1_2 = io_i2cs_i2_sda_o ? 1'bZ : 1'b0;
    assign io_i2cs_i2_sda_i = PMOD1_2;
    assign PMOD1_6 = io_i2cs_i2_scl_o ? 1'bZ : 1'b0;
    assign io_i2cs_i2_scl_i = PMOD1_6;
    assign PMOD2_2 = io_resetns_i2;

    assign PMOD1_3 = io_i2cs_i3_sda_o ? 1'bZ : 1'b0;
    assign io_i2cs_i3_sda_i = PMOD1_3;
    assign PMOD1_7 = io_i2cs_i3_scl_o ? 1'bZ : 1'b0;
    assign io_i2cs_i3_scl_i = PMOD1_7;
    assign PMOD2_3 = io_resetns_i3;

    assign PMOD2_4 = 0;
    assign PMOD2_5 = 0;
    assign PMOD2_6 = 0;
    assign PMOD2_7 = 0;

    //
    // Reset Sequencer
    //

    initial begin
        reset_counter <= 0;
    end

    always @(posedge clock) begin
        if (reset_counter < 1000) begin
            reset_counter <= reset_counter + 1;
        end
    end

    assign reset = reset_counter < 1000;

    //
    // Layer mask output
    //

    assign PMOD3_0 = layer_mask[0];
    assign PMOD3_1 = layer_mask[1];
    assign PMOD3_2 = layer_mask[2];
    assign PMOD3_3 = layer_mask[3];
    assign PMOD3_4 = layer_mask[4];
    assign PMOD3_5 = layer_mask[5];
    assign PMOD3_6 = layer_mask[6];
    assign PMOD3_7 = layer_mask[7];

    //
    // Frame Buffer BRAM
    //

    block_mem bram(
        .wea(bram_write_enable),
        .addra(bram_write_addr),
        .dina(bram_write_data),
        .clka(clock),
        .addrb(bram_read_addr),
        .doutb(bram_read_data),
        .clkb(clock)
    );

    //
    // Cubeware core
    //

    Cubeware cubeware(
        .io_uart_tx(uart_tx),
        .io_uart_rx(uart_rx),
        .io_i2cs_i0_sda_o(io_i2cs_i0_sda_o),
        .io_i2cs_i0_sda_i(io_i2cs_i0_sda_i),
        .io_i2cs_i0_scl_o(io_i2cs_i0_scl_o),
        .io_i2cs_i0_scl_i(io_i2cs_i0_scl_i),
        .io_i2cs_i1_sda_o(io_i2cs_i1_sda_o),
        .io_i2cs_i1_sda_i(io_i2cs_i1_sda_i),
        .io_i2cs_i1_scl_o(io_i2cs_i1_scl_o),
        .io_i2cs_i1_scl_i(io_i2cs_i1_scl_i),
        .io_i2cs_i2_sda_o(io_i2cs_i2_sda_o),
        .io_i2cs_i2_sda_i(io_i2cs_i2_sda_i),
        .io_i2cs_i2_scl_o(io_i2cs_i2_scl_o),
        .io_i2cs_i2_scl_i(io_i2cs_i2_scl_i),
        .io_i2cs_i3_sda_o(io_i2cs_i3_sda_o),
        .io_i2cs_i3_sda_i(io_i2cs_i3_sda_i),
        .io_i2cs_i3_scl_o(io_i2cs_i3_scl_o),
        .io_i2cs_i3_scl_i(io_i2cs_i3_scl_i),
        .io_resetns_i0(io_resetns_i0),
        .io_resetns_i1(io_resetns_i1),
        .io_resetns_i2(io_resetns_i2),
        .io_resetns_i3(io_resetns_i3),
        .io_layer_mask(layer_mask),
        .io_ram_read_address(bram_read_addr),
        .io_ram_read_data(bram_read_data),
        .io_ram_write_address(bram_write_addr),
        .io_ram_write_write(bram_write_enable),
        .io_ram_write_data(bram_write_data),
        .io_clock(clock),
        .io_reset(reset)
    );

endmodule
