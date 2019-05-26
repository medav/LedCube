module Csrs (
    input io_write_wen,
    input [7 : 0] io_write_waddr,
    input [7 : 0] io_write_wdata,
    output [31 : 0] io_config_tlc_i2c_config_clock_threshold,
    output [31 : 0] io_config_tlc_i2c_config_clock_period,
    output [31 : 0] io_config_refresh_disp_cycles,
    output [31 : 0] io_config_refresh_delay_cycles,
    output [7 : 0] io_config_refresh_iref,
    output [7 : 0] io_config_refresh_enable,
    input io_clock,
    input io_reset
);
    // Internal Signal Declarations
    reg [7 : 0] reg4_i0;
    reg [7 : 0] reg4_i1;
    reg [7 : 0] reg4_i2;
    reg [7 : 0] reg4_i3;
    reg [7 : 0] reg5_i0;
    reg [7 : 0] reg5_i1;
    reg [7 : 0] reg5_i2;
    reg [7 : 0] reg5_i3;
    reg [7 : 0] reg6_i0;
    reg [7 : 0] reg6_i1;
    reg [7 : 0] reg6_i2;
    reg [7 : 0] reg6_i3;
    reg [7 : 0] reg7_i0;
    reg [7 : 0] reg7_i1;
    reg [7 : 0] reg7_i2;
    reg [7 : 0] reg7_i3;
    reg [7 : 0] reg8;
    reg [7 : 0] reg9;
    wire [31 : 0] cat_0_result;
    wire [31 : 0] cat_1_result;
    wire [31 : 0] cat_2_result;
    wire [31 : 0] cat_3_result;
    wire eq_0_result;
    wire and_0_result;
    wire eq_1_result;
    wire and_1_result;
    wire eq_2_result;
    wire and_2_result;
    wire eq_3_result;
    wire and_3_result;
    wire eq_4_result;
    wire and_4_result;
    wire eq_5_result;
    wire and_5_result;
    wire eq_6_result;
    wire and_6_result;
    wire eq_7_result;
    wire and_7_result;
    wire eq_8_result;
    wire and_8_result;
    wire eq_9_result;
    wire and_9_result;
    wire eq_10_result;
    wire and_10_result;
    wire eq_11_result;
    wire and_11_result;
    wire eq_12_result;
    wire and_12_result;
    wire eq_13_result;
    wire and_13_result;
    wire eq_14_result;
    wire and_14_result;
    wire eq_15_result;
    wire and_15_result;
    wire eq_16_result;
    wire and_16_result;
    wire eq_17_result;
    wire and_17_result;
    
    // Operator Synthesis
    assign cat_0_result = {reg5_i3, reg5_i2, reg5_i1, reg5_i0};
    assign cat_1_result = {reg4_i3, reg4_i2, reg4_i1, reg4_i0};
    assign cat_2_result = {reg6_i3, reg6_i2, reg6_i1, reg6_i0};
    assign cat_3_result = {reg7_i3, reg7_i2, reg7_i1, reg7_i0};
    assign eq_0_result = io_write_waddr == 0;
    assign and_0_result = eq_0_result & io_write_wen;
    assign eq_1_result = io_write_waddr == 1;
    assign and_1_result = eq_1_result & io_write_wen;
    assign eq_2_result = io_write_waddr == 4;
    assign and_2_result = eq_2_result & io_write_wen;
    assign eq_3_result = io_write_waddr == 8;
    assign and_3_result = eq_3_result & io_write_wen;
    assign eq_4_result = io_write_waddr == 12;
    assign and_4_result = eq_4_result & io_write_wen;
    assign eq_5_result = io_write_waddr == 16;
    assign and_5_result = eq_5_result & io_write_wen;
    assign eq_6_result = io_write_waddr == 5;
    assign and_6_result = eq_6_result & io_write_wen;
    assign eq_7_result = io_write_waddr == 9;
    assign and_7_result = eq_7_result & io_write_wen;
    assign eq_8_result = io_write_waddr == 13;
    assign and_8_result = eq_8_result & io_write_wen;
    assign eq_9_result = io_write_waddr == 17;
    assign and_9_result = eq_9_result & io_write_wen;
    assign eq_10_result = io_write_waddr == 6;
    assign and_10_result = eq_10_result & io_write_wen;
    assign eq_11_result = io_write_waddr == 10;
    assign and_11_result = eq_11_result & io_write_wen;
    assign eq_12_result = io_write_waddr == 14;
    assign and_12_result = eq_12_result & io_write_wen;
    assign eq_13_result = io_write_waddr == 18;
    assign and_13_result = eq_13_result & io_write_wen;
    assign eq_14_result = io_write_waddr == 7;
    assign and_14_result = eq_14_result & io_write_wen;
    assign eq_15_result = io_write_waddr == 11;
    assign and_15_result = eq_15_result & io_write_wen;
    assign eq_16_result = io_write_waddr == 15;
    assign and_16_result = eq_16_result & io_write_wen;
    assign eq_17_result = io_write_waddr == 19;
    assign and_17_result = eq_17_result & io_write_wen;
    
    // Connections
    assign io_config_tlc_i2c_config_clock_threshold = cat_0_result;
    assign io_config_tlc_i2c_config_clock_period = cat_1_result;
    assign io_config_refresh_disp_cycles = cat_2_result;
    assign io_config_refresh_delay_cycles = cat_3_result;
    assign io_config_refresh_iref = reg9;
    assign io_config_refresh_enable = reg8;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            reg4_i0 <= 100;
            reg4_i1 <= 0;
            reg4_i2 <= 0;
            reg4_i3 <= 0;
            reg5_i0 <= 50;
            reg5_i1 <= 0;
            reg5_i2 <= 0;
            reg5_i3 <= 0;
            reg6_i0 <= 112;
            reg6_i1 <= 17;
            reg6_i2 <= 1;
            reg6_i3 <= 0;
            reg7_i0 <= 0;
            reg7_i1 <= 16;
            reg7_i2 <= 0;
            reg7_i3 <= 0;
            reg8 <= 1;
            reg9 <= 0;
        end
        else begin
            reg4_i0 <= reg4_i0;
            if (and_2_result) begin
                reg4_i0 <= io_write_wdata;
            end
            reg4_i1 <= reg4_i1;
            if (and_6_result) begin
                reg4_i1 <= io_write_wdata;
            end
            reg4_i2 <= reg4_i2;
            if (and_10_result) begin
                reg4_i2 <= io_write_wdata;
            end
            reg4_i3 <= reg4_i3;
            if (and_14_result) begin
                reg4_i3 <= io_write_wdata;
            end
            reg5_i0 <= reg5_i0;
            if (and_3_result) begin
                reg5_i0 <= io_write_wdata;
            end
            reg5_i1 <= reg5_i1;
            if (and_7_result) begin
                reg5_i1 <= io_write_wdata;
            end
            reg5_i2 <= reg5_i2;
            if (and_11_result) begin
                reg5_i2 <= io_write_wdata;
            end
            reg5_i3 <= reg5_i3;
            if (and_15_result) begin
                reg5_i3 <= io_write_wdata;
            end
            reg6_i0 <= reg6_i0;
            if (and_4_result) begin
                reg6_i0 <= io_write_wdata;
            end
            reg6_i1 <= reg6_i1;
            if (and_8_result) begin
                reg6_i1 <= io_write_wdata;
            end
            reg6_i2 <= reg6_i2;
            if (and_12_result) begin
                reg6_i2 <= io_write_wdata;
            end
            reg6_i3 <= reg6_i3;
            if (and_16_result) begin
                reg6_i3 <= io_write_wdata;
            end
            reg7_i0 <= reg7_i0;
            if (and_5_result) begin
                reg7_i0 <= io_write_wdata;
            end
            reg7_i1 <= reg7_i1;
            if (and_9_result) begin
                reg7_i1 <= io_write_wdata;
            end
            reg7_i2 <= reg7_i2;
            if (and_13_result) begin
                reg7_i2 <= io_write_wdata;
            end
            reg7_i3 <= reg7_i3;
            if (and_17_result) begin
                reg7_i3 <= io_write_wdata;
            end
            reg8 <= reg8;
            if (and_0_result) begin
                reg8 <= io_write_wdata;
            end
            reg9 <= reg9;
            if (and_1_result) begin
                reg9 <= io_write_wdata;
            end
        end
    end
endmodule
module UartTransmitter_b476 (
    output io_uart_tx,
    input io_enqueue,
    input [7 : 0] io_enqueue_data,
    output io_ready,
    input io_clock,
    input io_reset
);
    // Internal Signal Declarations
    reg [1 : 0] state;
    reg tx_buf_i0;
    reg tx_buf_i1;
    reg tx_buf_i2;
    reg tx_buf_i3;
    reg tx_buf_i4;
    reg tx_buf_i5;
    reg tx_buf_i6;
    reg tx_buf_i7;
    reg [31 : 0] clock_counter;
    reg [3 : 0] bit_counter;
    reg [7 : 0] data_reg;
    reg [7 : 0] fifo_ram_i0;
    reg [7 : 0] fifo_ram_i1;
    reg [7 : 0] fifo_ram_i2;
    reg [7 : 0] fifo_ram_i3;
    reg [7 : 0] fifo_ram_i4;
    reg [7 : 0] fifo_ram_i5;
    reg [7 : 0] fifo_ram_i6;
    reg [7 : 0] fifo_ram_i7;
    reg [2 : 0] enq_addr;
    reg [2 : 0] deq_addr;
    reg [8 : 0] data_count;
    wire full;
    wire empty;
    wire dequeue;
    wire [7 : 0] dequeue_data;
    wire ge_0_result;
    wire eq_18_result;
    wire [7 : 0] mux_0_result;
    wire not_0_result;
    wire or_0_result;
    wire not_1_result;
    wire and_18_result;
    wire not_2_result;
    wire [8 : 0] sub_0_result;
    wire [3 : 0] add_0_result;
    wire [2 : 0] slice_0_result;
    wire not_3_result;
    wire and_19_result;
    wire [9 : 0] add_1_result;
    wire [8 : 0] slice_1_result;
    wire [3 : 0] add_2_result;
    wire [2 : 0] slice_2_result;
    wire [7 : 0] mux_1_result;
    wire eq_19_result;
    wire eq_20_result;
    wire eq_21_result;
    wire eq_22_result;
    wire eq_23_result;
    wire eq_24_result;
    wire eq_25_result;
    wire eq_26_result;
    wire and_20_result;
    wire slice_5_result;
    wire slice_6_result;
    wire slice_7_result;
    wire slice_8_result;
    wire slice_9_result;
    wire slice_10_result;
    wire slice_11_result;
    wire slice_12_result;
    wire [32 : 0] add_5_result;
    wire [31 : 0] slice_13_result;
    wire eq_35_result;
    wire eq_36_result;
    wire gt_0_result;
    wire eq_37_result;
    wire mux_3_result;
    wire eq_38_result;
    wire [4 : 0] add_6_result;
    wire [3 : 0] slice_14_result;
    wire eq_39_result;
    
    // Operator Synthesis
    assign ge_0_result = data_count >= 8;
    assign eq_18_result = data_count == 0;
    wire [7 : 0] _NODE_0 [7 : 0];
    assign _NODE_0[0] = fifo_ram_i0;
    assign _NODE_0[1] = fifo_ram_i1;
    assign _NODE_0[2] = fifo_ram_i2;
    assign _NODE_0[3] = fifo_ram_i3;
    assign _NODE_0[4] = fifo_ram_i4;
    assign _NODE_0[5] = fifo_ram_i5;
    assign _NODE_0[6] = fifo_ram_i6;
    assign _NODE_0[7] = fifo_ram_i7;
    assign mux_0_result = _NODE_0[deq_addr];
    assign not_0_result = ~full;
    assign or_0_result = not_0_result | dequeue;
    assign not_1_result = ~io_enqueue;
    assign and_18_result = not_1_result & dequeue;
    assign not_2_result = ~empty;
    assign sub_0_result = data_count - 1;
    assign add_0_result = deq_addr + 1;
    assign slice_0_result = add_0_result[2:0];
    assign not_3_result = ~dequeue;
    assign and_19_result = io_enqueue & not_3_result;
    assign add_1_result = data_count + 1;
    assign slice_1_result = add_1_result[8:0];
    assign add_2_result = enq_addr + 1;
    assign slice_2_result = add_2_result[2:0];
    wire [7 : 0] _NODE_1 [7 : 0];
    assign _NODE_1[0] = fifo_ram_i0;
    assign _NODE_1[1] = fifo_ram_i1;
    assign _NODE_1[2] = fifo_ram_i2;
    assign _NODE_1[3] = fifo_ram_i3;
    assign _NODE_1[4] = fifo_ram_i4;
    assign _NODE_1[5] = fifo_ram_i5;
    assign _NODE_1[6] = fifo_ram_i6;
    assign _NODE_1[7] = fifo_ram_i7;
    assign mux_1_result = _NODE_1[enq_addr];
    assign eq_19_result = enq_addr == 0;
    assign eq_20_result = enq_addr == 1;
    assign eq_21_result = enq_addr == 2;
    assign eq_22_result = enq_addr == 3;
    assign eq_23_result = enq_addr == 4;
    assign eq_24_result = enq_addr == 5;
    assign eq_25_result = enq_addr == 6;
    assign eq_26_result = enq_addr == 7;
    assign and_20_result = io_enqueue & dequeue;
    assign slice_5_result = dequeue_data[0:0];
    assign slice_6_result = dequeue_data[1:1];
    assign slice_7_result = dequeue_data[2:2];
    assign slice_8_result = dequeue_data[3:3];
    assign slice_9_result = dequeue_data[4:4];
    assign slice_10_result = dequeue_data[5:5];
    assign slice_11_result = dequeue_data[6:6];
    assign slice_12_result = dequeue_data[7:7];
    assign add_5_result = clock_counter + 1;
    assign slice_13_result = add_5_result[31:0];
    assign eq_35_result = state == 0;
    assign eq_36_result = state == 1;
    assign gt_0_result = clock_counter > 50;
    assign eq_37_result = state == 2;
    wire [0 : 0] _NODE_2 [7 : 0];
    assign _NODE_2[0] = tx_buf_i0;
    assign _NODE_2[1] = tx_buf_i1;
    assign _NODE_2[2] = tx_buf_i2;
    assign _NODE_2[3] = tx_buf_i3;
    assign _NODE_2[4] = tx_buf_i4;
    assign _NODE_2[5] = tx_buf_i5;
    assign _NODE_2[6] = tx_buf_i6;
    assign _NODE_2[7] = tx_buf_i7;
    assign mux_3_result = _NODE_2[bit_counter];
    assign eq_38_result = bit_counter == 7;
    assign add_6_result = bit_counter + 1;
    assign slice_14_result = add_6_result[3:0];
    assign eq_39_result = state == 3;
    
    // Connections
    wire _NODE_3;
    assign _NODE_3 = eq_36_result ? 0 : 1;
    assign io_uart_tx = eq_37_result ? mux_3_result : _NODE_3;
    assign io_ready = or_0_result;
    assign full = ge_0_result;
    assign empty = eq_18_result;
    wire _NODE_4;
    assign _NODE_4 = not_2_result ? 1 : 0;
    assign dequeue = eq_35_result ? _NODE_4 : 0;
    assign dequeue_data = mux_0_result;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            state <= 0;
            clock_counter <= 0;
            bit_counter <= 0;
            data_reg <= 0;
            enq_addr <= 0;
            deq_addr <= 0;
            data_count <= 0;
        end
        else begin
            state <= state;
            if (eq_35_result) begin
                if (not_2_result) begin
                    state <= 1;
                end
            end
            if (eq_36_result) begin
                if (gt_0_result) begin
                    state <= 2;
                end
            end
            if (eq_37_result) begin
                if (gt_0_result) begin
                    if (eq_38_result) begin
                        state <= 3;
                    end
                end
            end
            if (eq_39_result) begin
                if (gt_0_result) begin
                    state <= 0;
                end
            end
            clock_counter <= clock_counter;
            clock_counter <= slice_13_result;
            if (eq_35_result) begin
                clock_counter <= 0;
            end
            if (eq_36_result) begin
                if (gt_0_result) begin
                    clock_counter <= 0;
                end
            end
            if (eq_37_result) begin
                if (gt_0_result) begin
                    clock_counter <= 0;
                end
            end
            bit_counter <= bit_counter;
            if (eq_35_result) begin
                bit_counter <= 0;
            end
            if (eq_37_result) begin
                if (gt_0_result) begin
                    if (!eq_38_result) begin
                        bit_counter <= slice_14_result;
                    end
                end
            end
            data_reg <= data_reg;
            enq_addr <= enq_addr;
            if (and_19_result) begin
                if (not_0_result) begin
                    enq_addr <= slice_2_result;
                end
            end
            if (and_20_result) begin
                enq_addr <= slice_2_result;
            end
            deq_addr <= deq_addr;
            if (and_18_result) begin
                if (not_2_result) begin
                    deq_addr <= slice_0_result;
                end
            end
            if (and_20_result) begin
                deq_addr <= slice_0_result;
            end
            data_count <= data_count;
            if (and_18_result) begin
                if (not_2_result) begin
                    data_count <= sub_0_result;
                end
            end
            if (and_19_result) begin
                if (not_0_result) begin
                    data_count <= slice_1_result;
                end
            end
        end
        tx_buf_i0 <= tx_buf_i0;
        if (dequeue) begin
            tx_buf_i0 <= slice_5_result;
        end
        tx_buf_i1 <= tx_buf_i1;
        if (dequeue) begin
            tx_buf_i1 <= slice_6_result;
        end
        tx_buf_i2 <= tx_buf_i2;
        if (dequeue) begin
            tx_buf_i2 <= slice_7_result;
        end
        tx_buf_i3 <= tx_buf_i3;
        if (dequeue) begin
            tx_buf_i3 <= slice_8_result;
        end
        tx_buf_i4 <= tx_buf_i4;
        if (dequeue) begin
            tx_buf_i4 <= slice_9_result;
        end
        tx_buf_i5 <= tx_buf_i5;
        if (dequeue) begin
            tx_buf_i5 <= slice_10_result;
        end
        tx_buf_i6 <= tx_buf_i6;
        if (dequeue) begin
            tx_buf_i6 <= slice_11_result;
        end
        tx_buf_i7 <= tx_buf_i7;
        if (dequeue) begin
            tx_buf_i7 <= slice_12_result;
        end
        fifo_ram_i0 <= fifo_ram_i0;
        if (and_19_result) begin
            if (not_0_result) begin
                if (eq_19_result) begin
                    fifo_ram_i0 <= io_enqueue_data;
                end
            end
        end
        if (and_20_result) begin
            if (eq_19_result) begin
                fifo_ram_i0 <= io_enqueue_data;
            end
        end
        fifo_ram_i1 <= fifo_ram_i1;
        if (and_19_result) begin
            if (not_0_result) begin
                if (eq_20_result) begin
                    fifo_ram_i1 <= io_enqueue_data;
                end
            end
        end
        if (and_20_result) begin
            if (eq_20_result) begin
                fifo_ram_i1 <= io_enqueue_data;
            end
        end
        fifo_ram_i2 <= fifo_ram_i2;
        if (and_19_result) begin
            if (not_0_result) begin
                if (eq_21_result) begin
                    fifo_ram_i2 <= io_enqueue_data;
                end
            end
        end
        if (and_20_result) begin
            if (eq_21_result) begin
                fifo_ram_i2 <= io_enqueue_data;
            end
        end
        fifo_ram_i3 <= fifo_ram_i3;
        if (and_19_result) begin
            if (not_0_result) begin
                if (eq_22_result) begin
                    fifo_ram_i3 <= io_enqueue_data;
                end
            end
        end
        if (and_20_result) begin
            if (eq_22_result) begin
                fifo_ram_i3 <= io_enqueue_data;
            end
        end
        fifo_ram_i4 <= fifo_ram_i4;
        if (and_19_result) begin
            if (not_0_result) begin
                if (eq_23_result) begin
                    fifo_ram_i4 <= io_enqueue_data;
                end
            end
        end
        if (and_20_result) begin
            if (eq_23_result) begin
                fifo_ram_i4 <= io_enqueue_data;
            end
        end
        fifo_ram_i5 <= fifo_ram_i5;
        if (and_19_result) begin
            if (not_0_result) begin
                if (eq_24_result) begin
                    fifo_ram_i5 <= io_enqueue_data;
                end
            end
        end
        if (and_20_result) begin
            if (eq_24_result) begin
                fifo_ram_i5 <= io_enqueue_data;
            end
        end
        fifo_ram_i6 <= fifo_ram_i6;
        if (and_19_result) begin
            if (not_0_result) begin
                if (eq_25_result) begin
                    fifo_ram_i6 <= io_enqueue_data;
                end
            end
        end
        if (and_20_result) begin
            if (eq_25_result) begin
                fifo_ram_i6 <= io_enqueue_data;
            end
        end
        fifo_ram_i7 <= fifo_ram_i7;
        if (and_19_result) begin
            if (not_0_result) begin
                if (eq_26_result) begin
                    fifo_ram_i7 <= io_enqueue_data;
                end
            end
        end
        if (and_20_result) begin
            if (eq_26_result) begin
                fifo_ram_i7 <= io_enqueue_data;
            end
        end
    end
endmodule
module UartReceiver_b476 (
    input io_uart_rx,
    input io_dequeue,
    output [7 : 0] io_dequeue_data,
    output io_data_available,
    input io_clock,
    input io_reset
);
    // Internal Signal Declarations
    reg [1 : 0] state;
    reg data_reg_i0;
    reg data_reg_i1;
    reg data_reg_i2;
    reg data_reg_i3;
    reg data_reg_i4;
    reg data_reg_i5;
    reg data_reg_i6;
    reg data_reg_i7;
    reg [7 : 0] fifo_ram_i0;
    reg [7 : 0] fifo_ram_i1;
    reg [7 : 0] fifo_ram_i2;
    reg [7 : 0] fifo_ram_i3;
    reg [7 : 0] fifo_ram_i4;
    reg [7 : 0] fifo_ram_i5;
    reg [7 : 0] fifo_ram_i6;
    reg [7 : 0] fifo_ram_i7;
    reg [2 : 0] enq_addr;
    reg [2 : 0] deq_addr;
    wire enqueue;
    reg [31 : 0] clock_counter;
    reg [3 : 0] bit_counter;
    wire [7 : 0] cat_4_enqueue_data;
    wire [32 : 0] add_7_result;
    wire [31 : 0] slice_15_result;
    wire neq_0_result;
    wire [7 : 0] mux_4_result;
    wire [7 : 0] mux_5_result;
    wire eq_40_result;
    wire eq_41_result;
    wire eq_42_result;
    wire eq_43_result;
    wire eq_44_result;
    wire eq_45_result;
    wire eq_46_result;
    wire eq_47_result;
    wire [3 : 0] add_8_result;
    wire [2 : 0] slice_16_result;
    wire and_21_result;
    wire [3 : 0] add_9_result;
    wire [2 : 0] slice_17_result;
    wire eq_48_result;
    wire not_6_result;
    wire eq_49_result;
    wire lt_0_result;
    wire and_22_result;
    wire ge_1_result;
    wire eq_50_result;
    wire eq_51_result;
    wire mux_6_result;
    wire eq_52_result;
    wire eq_53_result;
    wire eq_54_result;
    wire eq_55_result;
    wire eq_56_result;
    wire eq_57_result;
    wire eq_58_result;
    wire eq_59_result;
    wire eq_60_result;
    wire [4 : 0] add_10_result;
    wire [3 : 0] slice_18_result;
    wire eq_62_result;
    
    // Operator Synthesis
    assign cat_4_enqueue_data = {data_reg_i7, data_reg_i6, data_reg_i5, data_reg_i4, data_reg_i3, data_reg_i2, data_reg_i1, data_reg_i0};
    assign add_7_result = clock_counter + 1;
    assign slice_15_result = add_7_result[31:0];
    assign neq_0_result = enq_addr != deq_addr;
    wire [7 : 0] _NODE_5 [7 : 0];
    assign _NODE_5[0] = fifo_ram_i0;
    assign _NODE_5[1] = fifo_ram_i1;
    assign _NODE_5[2] = fifo_ram_i2;
    assign _NODE_5[3] = fifo_ram_i3;
    assign _NODE_5[4] = fifo_ram_i4;
    assign _NODE_5[5] = fifo_ram_i5;
    assign _NODE_5[6] = fifo_ram_i6;
    assign _NODE_5[7] = fifo_ram_i7;
    assign mux_4_result = _NODE_5[deq_addr];
    wire [7 : 0] _NODE_6 [7 : 0];
    assign _NODE_6[0] = fifo_ram_i0;
    assign _NODE_6[1] = fifo_ram_i1;
    assign _NODE_6[2] = fifo_ram_i2;
    assign _NODE_6[3] = fifo_ram_i3;
    assign _NODE_6[4] = fifo_ram_i4;
    assign _NODE_6[5] = fifo_ram_i5;
    assign _NODE_6[6] = fifo_ram_i6;
    assign _NODE_6[7] = fifo_ram_i7;
    assign mux_5_result = _NODE_6[enq_addr];
    assign eq_40_result = enq_addr == 0;
    assign eq_41_result = enq_addr == 1;
    assign eq_42_result = enq_addr == 2;
    assign eq_43_result = enq_addr == 3;
    assign eq_44_result = enq_addr == 4;
    assign eq_45_result = enq_addr == 5;
    assign eq_46_result = enq_addr == 6;
    assign eq_47_result = enq_addr == 7;
    assign add_8_result = enq_addr + 1;
    assign slice_16_result = add_8_result[2:0];
    assign and_21_result = io_dequeue & neq_0_result;
    assign add_9_result = deq_addr + 1;
    assign slice_17_result = add_9_result[2:0];
    assign eq_48_result = state == 0;
    assign not_6_result = ~io_uart_rx;
    assign eq_49_result = state == 1;
    assign lt_0_result = clock_counter < 25;
    assign and_22_result = io_uart_rx & lt_0_result;
    assign ge_1_result = clock_counter >= 50;
    assign eq_50_result = state == 2;
    assign eq_51_result = clock_counter == 25;
    wire [0 : 0] _NODE_7 [7 : 0];
    assign _NODE_7[0] = data_reg_i0;
    assign _NODE_7[1] = data_reg_i1;
    assign _NODE_7[2] = data_reg_i2;
    assign _NODE_7[3] = data_reg_i3;
    assign _NODE_7[4] = data_reg_i4;
    assign _NODE_7[5] = data_reg_i5;
    assign _NODE_7[6] = data_reg_i6;
    assign _NODE_7[7] = data_reg_i7;
    assign mux_6_result = _NODE_7[bit_counter];
    assign eq_52_result = bit_counter == 0;
    assign eq_53_result = bit_counter == 1;
    assign eq_54_result = bit_counter == 2;
    assign eq_55_result = bit_counter == 3;
    assign eq_56_result = bit_counter == 4;
    assign eq_57_result = bit_counter == 5;
    assign eq_58_result = bit_counter == 6;
    assign eq_59_result = bit_counter == 7;
    assign eq_60_result = clock_counter == 50;
    assign add_10_result = bit_counter + 1;
    assign slice_18_result = add_10_result[3:0];
    assign eq_62_result = state == 3;
    
    // Connections
    assign io_dequeue_data = mux_4_result;
    assign io_data_available = neq_0_result;
    wire _NODE_8;
    assign _NODE_8 = eq_51_result ? 1 : 0;
    assign enqueue = eq_62_result ? _NODE_8 : 0;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            state <= 0;
            data_reg_i0 <= 0;
            data_reg_i1 <= 0;
            data_reg_i2 <= 0;
            data_reg_i3 <= 0;
            data_reg_i4 <= 0;
            data_reg_i5 <= 0;
            data_reg_i6 <= 0;
            data_reg_i7 <= 0;
            fifo_ram_i0 <= 0;
            fifo_ram_i1 <= 0;
            fifo_ram_i2 <= 0;
            fifo_ram_i3 <= 0;
            fifo_ram_i4 <= 0;
            fifo_ram_i5 <= 0;
            fifo_ram_i6 <= 0;
            fifo_ram_i7 <= 0;
            enq_addr <= 0;
            deq_addr <= 0;
            clock_counter <= 0;
            bit_counter <= 0;
        end
        else begin
            state <= state;
            if (eq_48_result) begin
                if (not_6_result) begin
                    state <= 1;
                end
            end
            if (eq_49_result) begin
                if (and_22_result) begin
                    state <= 0;
                end
                if (ge_1_result) begin
                    state <= 2;
                end
            end
            if (eq_50_result) begin
                if (eq_60_result) begin
                    if (eq_59_result) begin
                        state <= 3;
                    end
                end
            end
            if (eq_62_result) begin
                if (eq_51_result) begin
                    state <= 0;
                end
            end
            data_reg_i0 <= data_reg_i0;
            if (eq_49_result) begin
                if (ge_1_result) begin
                    data_reg_i0 <= 0;
                end
            end
            if (eq_50_result) begin
                if (eq_51_result) begin
                    if (eq_52_result) begin
                        data_reg_i0 <= io_uart_rx;
                    end
                end
            end
            data_reg_i1 <= data_reg_i1;
            if (eq_49_result) begin
                if (ge_1_result) begin
                    data_reg_i1 <= 0;
                end
            end
            if (eq_50_result) begin
                if (eq_51_result) begin
                    if (eq_53_result) begin
                        data_reg_i1 <= io_uart_rx;
                    end
                end
            end
            data_reg_i2 <= data_reg_i2;
            if (eq_49_result) begin
                if (ge_1_result) begin
                    data_reg_i2 <= 0;
                end
            end
            if (eq_50_result) begin
                if (eq_51_result) begin
                    if (eq_54_result) begin
                        data_reg_i2 <= io_uart_rx;
                    end
                end
            end
            data_reg_i3 <= data_reg_i3;
            if (eq_49_result) begin
                if (ge_1_result) begin
                    data_reg_i3 <= 0;
                end
            end
            if (eq_50_result) begin
                if (eq_51_result) begin
                    if (eq_55_result) begin
                        data_reg_i3 <= io_uart_rx;
                    end
                end
            end
            data_reg_i4 <= data_reg_i4;
            if (eq_49_result) begin
                if (ge_1_result) begin
                    data_reg_i4 <= 0;
                end
            end
            if (eq_50_result) begin
                if (eq_51_result) begin
                    if (eq_56_result) begin
                        data_reg_i4 <= io_uart_rx;
                    end
                end
            end
            data_reg_i5 <= data_reg_i5;
            if (eq_49_result) begin
                if (ge_1_result) begin
                    data_reg_i5 <= 0;
                end
            end
            if (eq_50_result) begin
                if (eq_51_result) begin
                    if (eq_57_result) begin
                        data_reg_i5 <= io_uart_rx;
                    end
                end
            end
            data_reg_i6 <= data_reg_i6;
            if (eq_49_result) begin
                if (ge_1_result) begin
                    data_reg_i6 <= 0;
                end
            end
            if (eq_50_result) begin
                if (eq_51_result) begin
                    if (eq_58_result) begin
                        data_reg_i6 <= io_uart_rx;
                    end
                end
            end
            data_reg_i7 <= data_reg_i7;
            if (eq_49_result) begin
                if (ge_1_result) begin
                    data_reg_i7 <= 0;
                end
            end
            if (eq_50_result) begin
                if (eq_51_result) begin
                    if (eq_59_result) begin
                        data_reg_i7 <= io_uart_rx;
                    end
                end
            end
            fifo_ram_i0 <= fifo_ram_i0;
            if (enqueue) begin
                if (eq_40_result) begin
                    fifo_ram_i0 <= cat_4_enqueue_data;
                end
            end
            fifo_ram_i1 <= fifo_ram_i1;
            if (enqueue) begin
                if (eq_41_result) begin
                    fifo_ram_i1 <= cat_4_enqueue_data;
                end
            end
            fifo_ram_i2 <= fifo_ram_i2;
            if (enqueue) begin
                if (eq_42_result) begin
                    fifo_ram_i2 <= cat_4_enqueue_data;
                end
            end
            fifo_ram_i3 <= fifo_ram_i3;
            if (enqueue) begin
                if (eq_43_result) begin
                    fifo_ram_i3 <= cat_4_enqueue_data;
                end
            end
            fifo_ram_i4 <= fifo_ram_i4;
            if (enqueue) begin
                if (eq_44_result) begin
                    fifo_ram_i4 <= cat_4_enqueue_data;
                end
            end
            fifo_ram_i5 <= fifo_ram_i5;
            if (enqueue) begin
                if (eq_45_result) begin
                    fifo_ram_i5 <= cat_4_enqueue_data;
                end
            end
            fifo_ram_i6 <= fifo_ram_i6;
            if (enqueue) begin
                if (eq_46_result) begin
                    fifo_ram_i6 <= cat_4_enqueue_data;
                end
            end
            fifo_ram_i7 <= fifo_ram_i7;
            if (enqueue) begin
                if (eq_47_result) begin
                    fifo_ram_i7 <= cat_4_enqueue_data;
                end
            end
            enq_addr <= enq_addr;
            if (enqueue) begin
                enq_addr <= slice_16_result;
            end
            deq_addr <= deq_addr;
            if (and_21_result) begin
                deq_addr <= slice_17_result;
            end
            clock_counter <= clock_counter;
            clock_counter <= slice_15_result;
            if (eq_48_result) begin
                clock_counter <= 0;
            end
            if (eq_49_result) begin
                if (ge_1_result) begin
                    clock_counter <= 0;
                end
            end
            if (eq_50_result) begin
                if (eq_60_result) begin
                    clock_counter <= 0;
                end
            end
            bit_counter <= bit_counter;
            if (eq_49_result) begin
                if (ge_1_result) begin
                    bit_counter <= 0;
                end
            end
            if (eq_50_result) begin
                if (eq_60_result) begin
                    if (!eq_59_result) begin
                        bit_counter <= slice_18_result;
                    end
                end
            end
        end
    end
endmodule
module MemReader (
    output [8 : 0] io_ram_read_address,
    input [7 : 0] io_ram_read_data,
    input io_start,
    input [2 : 0] io_layer,
    output io_done,
    output io_output_wen,
    output [1 : 0] io_output_bank,
    output [3 : 0] io_output_index,
    output [7 : 0] io_output_data,
    input io_clock,
    input io_reset
);
    // Internal Signal Declarations
    reg done;
    reg [8 : 0] read_counter;
    reg [8 : 0] base_address;
    reg capture_read;
    reg [8 : 0] capture_counter;
    wire eq_64_result;
    wire eq_65_result;
    wire eq_66_result;
    wire eq_67_result;
    wire eq_68_result;
    wire eq_69_result;
    wire eq_70_result;
    wire eq_71_result;
    wire [9 : 0] add_11_result;
    wire [8 : 0] slice_19_result;
    wire not_7_result;
    wire lt_1_result;
    wire [9 : 0] add_12_result;
    wire [8 : 0] slice_20_result;
    wire eq_72_result;
    wire [1 : 0] slice_21_result;
    wire [3 : 0] slice_22_result;
    
    // Operator Synthesis
    assign eq_64_result = io_layer == 0;
    assign eq_65_result = io_layer == 1;
    assign eq_66_result = io_layer == 2;
    assign eq_67_result = io_layer == 3;
    assign eq_68_result = io_layer == 4;
    assign eq_69_result = io_layer == 5;
    assign eq_70_result = io_layer == 6;
    assign eq_71_result = io_layer == 7;
    assign add_11_result = base_address + read_counter;
    assign slice_19_result = add_11_result[8:0];
    assign not_7_result = ~done;
    assign lt_1_result = read_counter < 64;
    assign add_12_result = read_counter + 1;
    assign slice_20_result = add_12_result[8:0];
    assign eq_72_result = read_counter == 64;
    assign slice_21_result = capture_counter[5:4];
    assign slice_22_result = capture_counter[3:0];
    
    // Connections
    assign io_ram_read_address = slice_19_result;
    assign io_done = done;
    assign io_output_wen = capture_read;
    assign io_output_bank = slice_21_result;
    assign io_output_index = slice_22_result;
    assign io_output_data = io_ram_read_data;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            done <= 1;
            read_counter <= 0;
            base_address <= 0;
            capture_read <= 0;
        end
        else begin
            done <= done;
            if (io_start) begin
                done <= 0;
            end
            if (not_7_result) begin
                if (eq_72_result) begin
                    done <= 1;
                end
            end
            read_counter <= read_counter;
            if (io_start) begin
                read_counter <= 0;
            end
            if (not_7_result) begin
                read_counter <= slice_20_result;
            end
            base_address <= base_address;
            if (io_start) begin
                if (eq_64_result) begin
                    base_address <= 0;
                end
                if (eq_65_result) begin
                    base_address <= 64;
                end
                if (eq_66_result) begin
                    base_address <= 128;
                end
                if (eq_67_result) begin
                    base_address <= 192;
                end
                if (eq_68_result) begin
                    base_address <= 256;
                end
                if (eq_69_result) begin
                    base_address <= 320;
                end
                if (eq_70_result) begin
                    base_address <= 384;
                end
                if (eq_71_result) begin
                    base_address <= 448;
                end
            end
            capture_read <= capture_read;
            capture_read <= 0;
            if (not_7_result) begin
                capture_read <= lt_1_result;
            end
        end
        capture_counter <= capture_counter;
        capture_counter <= read_counter;
    end
endmodule
module RefreshController (
    input [31 : 0] io_config_disp_cycles,
    input [31 : 0] io_config_delay_cycles,
    input [7 : 0] io_config_iref,
    input [7 : 0] io_config_enable,
    output [3 : 0] io_tlcs_i0_opcode,
    input io_tlcs_i0_ready,
    output [3 : 0] io_tlcs_i1_opcode,
    input io_tlcs_i1_ready,
    output [3 : 0] io_tlcs_i2_opcode,
    input io_tlcs_i2_ready,
    output [3 : 0] io_tlcs_i3_opcode,
    input io_tlcs_i3_ready,
    output [7 : 0] io_tlc_args_i0,
    output [7 : 0] io_tlc_args_i1,
    output [7 : 0] io_tlc_args_i2,
    output [7 : 0] io_tlc_args_i3,
    output [7 : 0] io_tlc_args_i4,
    output [7 : 0] io_tlc_args_i5,
    output [7 : 0] io_tlc_args_i6,
    output [7 : 0] io_tlc_args_i7,
    output [7 : 0] io_tlc_args_i8,
    output [7 : 0] io_tlc_args_i9,
    output [7 : 0] io_tlc_args_i10,
    output [7 : 0] io_tlc_args_i11,
    output [7 : 0] io_tlc_args_i12,
    output [7 : 0] io_tlc_args_i13,
    output [7 : 0] io_tlc_args_i14,
    output [7 : 0] io_tlc_args_i15,
    output io_tlc_override,
    output io_reader_start,
    output [2 : 0] io_reader_layer,
    input io_reader_done,
    output [7 : 0] io_layer_mask,
    input io_clock,
    input io_reset
);
    // Internal Signal Declarations
    wire [3 : 0] tlcs_cmd;
    wire tlcs_ready;
    reg [7 : 0] layer_mask;
    reg [31 : 0] disp_counter;
    reg [2 : 0] layer_counter;
    reg [3 : 0] state;
    wire and_23_result;
    wire and_24_result;
    wire and_25_result;
    wire eq_141_result;
    wire neq_2_result;
    wire eq_142_result;
    wire eq_143_result;
    wire eq_144_result;
    wire eq_145_result;
    wire eq_146_result;
    wire and_26_result;
    wire eq_147_result;
    wire [3 : 0] add_13_result;
    wire [2 : 0] slice_23_result;
    wire eq_148_result;
    wire eq_149_result;
    wire [32 : 0] add_14_result;
    wire [31 : 0] slice_24_result;
    wire gt_3_result;
    wire eq_150_result;
    wire eq_151_result;
    wire eq_152_result;
    wire gt_4_result;
    wire eq_153_result;
    wire eq_154_result;
    wire eq_155_result;
    wire eq_156_result;
    wire eq_157_result;
    wire eq_158_result;
    wire eq_159_result;
    wire eq_160_result;
    wire eq_161_result;
    wire eq_162_result;
    
    // Operator Synthesis
    assign and_23_result = io_tlcs_i0_ready & io_tlcs_i1_ready;
    assign and_24_result = and_23_result & io_tlcs_i2_ready;
    assign and_25_result = and_24_result & io_tlcs_i3_ready;
    assign eq_141_result = state == 0;
    assign neq_2_result = io_config_enable != 0;
    assign eq_142_result = state == 1;
    assign eq_143_result = state == 2;
    assign eq_144_result = state == 3;
    assign eq_145_result = state == 4;
    assign eq_146_result = state == 6;
    assign and_26_result = tlcs_ready & io_reader_done;
    assign eq_147_result = state == 7;
    assign add_13_result = layer_counter + 1;
    assign slice_23_result = add_13_result[2:0];
    assign eq_148_result = state == 8;
    assign eq_149_result = state == 9;
    assign add_14_result = disp_counter + 1;
    assign slice_24_result = add_14_result[31:0];
    assign gt_3_result = disp_counter > io_config_disp_cycles;
    assign eq_150_result = state == 11;
    assign eq_151_result = state == 10;
    assign eq_152_result = state == 12;
    assign gt_4_result = disp_counter > io_config_delay_cycles;
    assign eq_153_result = state == 13;
    assign eq_154_result = io_config_enable == 0;
    assign eq_155_result = layer_counter == 0;
    assign eq_156_result = layer_counter == 1;
    assign eq_157_result = layer_counter == 2;
    assign eq_158_result = layer_counter == 3;
    assign eq_159_result = layer_counter == 4;
    assign eq_160_result = layer_counter == 5;
    assign eq_161_result = layer_counter == 6;
    assign eq_162_result = layer_counter == 7;
    
    // Connections
    assign io_tlcs_i0_opcode = tlcs_cmd;
    assign io_tlcs_i1_opcode = tlcs_cmd;
    assign io_tlcs_i2_opcode = tlcs_cmd;
    assign io_tlcs_i3_opcode = tlcs_cmd;
    wire [7 : 0] _NODE_9;
    wire [7 : 0] _NODE_10;
    wire [7 : 0] _NODE_11;
    wire [7 : 0] _NODE_12;
    wire [7 : 0] _NODE_13;
    assign _NODE_13 = tlcs_ready ? 17 : 0;
    assign _NODE_12 = eq_143_result ? _NODE_13 : 0;
    assign _NODE_11 = tlcs_ready ? 0 : _NODE_12;
    wire [7 : 0] _NODE_14;
    wire [7 : 0] _NODE_15;
    assign _NODE_15 = tlcs_ready ? 17 : 0;
    assign _NODE_14 = eq_143_result ? _NODE_15 : 0;
    assign _NODE_10 = eq_144_result ? _NODE_11 : _NODE_14;
    assign _NODE_9 = tlcs_ready ? io_config_iref : _NODE_10;
    wire [7 : 0] _NODE_16;
    wire [7 : 0] _NODE_17;
    wire [7 : 0] _NODE_18;
    wire [7 : 0] _NODE_19;
    assign _NODE_19 = tlcs_ready ? 17 : 0;
    assign _NODE_18 = eq_143_result ? _NODE_19 : 0;
    assign _NODE_17 = tlcs_ready ? 0 : _NODE_18;
    wire [7 : 0] _NODE_20;
    wire [7 : 0] _NODE_21;
    assign _NODE_21 = tlcs_ready ? 17 : 0;
    assign _NODE_20 = eq_143_result ? _NODE_21 : 0;
    assign _NODE_16 = eq_144_result ? _NODE_17 : _NODE_20;
    assign io_tlc_args_i0 = eq_145_result ? _NODE_9 : _NODE_16;
    assign io_tlc_args_i1 = 0;
    assign io_tlc_args_i2 = 0;
    assign io_tlc_args_i3 = 0;
    assign io_tlc_args_i4 = 0;
    assign io_tlc_args_i5 = 0;
    assign io_tlc_args_i6 = 0;
    assign io_tlc_args_i7 = 0;
    assign io_tlc_args_i8 = 0;
    assign io_tlc_args_i9 = 0;
    assign io_tlc_args_i10 = 0;
    assign io_tlc_args_i11 = 0;
    assign io_tlc_args_i12 = 0;
    assign io_tlc_args_i13 = 0;
    assign io_tlc_args_i14 = 0;
    assign io_tlc_args_i15 = 0;
    wire _NODE_22;
    wire _NODE_23;
    wire _NODE_24;
    wire _NODE_25;
    wire _NODE_26;
    assign _NODE_26 = tlcs_ready ? 1 : 0;
    assign _NODE_25 = eq_143_result ? _NODE_26 : 0;
    assign _NODE_24 = tlcs_ready ? 1 : _NODE_25;
    wire _NODE_27;
    wire _NODE_28;
    assign _NODE_28 = tlcs_ready ? 1 : 0;
    assign _NODE_27 = eq_143_result ? _NODE_28 : 0;
    assign _NODE_23 = eq_144_result ? _NODE_24 : _NODE_27;
    assign _NODE_22 = tlcs_ready ? 1 : _NODE_23;
    wire _NODE_29;
    wire _NODE_30;
    wire _NODE_31;
    wire _NODE_32;
    assign _NODE_32 = tlcs_ready ? 1 : 0;
    assign _NODE_31 = eq_143_result ? _NODE_32 : 0;
    assign _NODE_30 = tlcs_ready ? 1 : _NODE_31;
    wire _NODE_33;
    wire _NODE_34;
    assign _NODE_34 = tlcs_ready ? 1 : 0;
    assign _NODE_33 = eq_143_result ? _NODE_34 : 0;
    assign _NODE_29 = eq_144_result ? _NODE_30 : _NODE_33;
    assign io_tlc_override = eq_145_result ? _NODE_22 : _NODE_29;
    wire _NODE_35;
    wire _NODE_36;
    wire _NODE_37;
    assign _NODE_37 = neq_2_result ? 1 : 0;
    assign _NODE_36 = eq_141_result ? _NODE_37 : 0;
    assign _NODE_35 = tlcs_ready ? 1 : _NODE_36;
    wire _NODE_38;
    wire _NODE_39;
    assign _NODE_39 = neq_2_result ? 1 : 0;
    assign _NODE_38 = eq_141_result ? _NODE_39 : 0;
    assign io_reader_start = eq_148_result ? _NODE_35 : _NODE_38;
    assign io_reader_layer = layer_counter;
    assign io_layer_mask = layer_mask;
    wire [3 : 0] _NODE_40;
    wire [3 : 0] _NODE_41;
    wire [3 : 0] _NODE_42;
    wire [3 : 0] _NODE_43;
    wire [3 : 0] _NODE_44;
    wire [3 : 0] _NODE_45;
    wire [3 : 0] _NODE_46;
    wire [3 : 0] _NODE_47;
    wire [3 : 0] _NODE_48;
    wire [3 : 0] _NODE_49;
    wire [3 : 0] _NODE_50;
    wire [3 : 0] _NODE_51;
    wire [3 : 0] _NODE_52;
    wire [3 : 0] _NODE_53;
    wire [3 : 0] _NODE_54;
    wire [3 : 0] _NODE_55;
    wire [3 : 0] _NODE_56;
    assign _NODE_56 = tlcs_ready ? 1 : 0;
    assign _NODE_55 = eq_142_result ? _NODE_56 : 0;
    assign _NODE_54 = tlcs_ready ? 2 : _NODE_55;
    wire [3 : 0] _NODE_57;
    wire [3 : 0] _NODE_58;
    assign _NODE_58 = tlcs_ready ? 1 : 0;
    assign _NODE_57 = eq_142_result ? _NODE_58 : 0;
    assign _NODE_53 = eq_143_result ? _NODE_54 : _NODE_57;
    assign _NODE_52 = tlcs_ready ? 3 : _NODE_53;
    wire [3 : 0] _NODE_59;
    wire [3 : 0] _NODE_60;
    wire [3 : 0] _NODE_61;
    wire [3 : 0] _NODE_62;
    assign _NODE_62 = tlcs_ready ? 1 : 0;
    assign _NODE_61 = eq_142_result ? _NODE_62 : 0;
    assign _NODE_60 = tlcs_ready ? 2 : _NODE_61;
    wire [3 : 0] _NODE_63;
    wire [3 : 0] _NODE_64;
    assign _NODE_64 = tlcs_ready ? 1 : 0;
    assign _NODE_63 = eq_142_result ? _NODE_64 : 0;
    assign _NODE_59 = eq_143_result ? _NODE_60 : _NODE_63;
    assign _NODE_51 = eq_144_result ? _NODE_52 : _NODE_59;
    assign _NODE_50 = tlcs_ready ? 4 : _NODE_51;
    wire [3 : 0] _NODE_65;
    wire [3 : 0] _NODE_66;
    wire [3 : 0] _NODE_67;
    wire [3 : 0] _NODE_68;
    wire [3 : 0] _NODE_69;
    wire [3 : 0] _NODE_70;
    assign _NODE_70 = tlcs_ready ? 1 : 0;
    assign _NODE_69 = eq_142_result ? _NODE_70 : 0;
    assign _NODE_68 = tlcs_ready ? 2 : _NODE_69;
    wire [3 : 0] _NODE_71;
    wire [3 : 0] _NODE_72;
    assign _NODE_72 = tlcs_ready ? 1 : 0;
    assign _NODE_71 = eq_142_result ? _NODE_72 : 0;
    assign _NODE_67 = eq_143_result ? _NODE_68 : _NODE_71;
    assign _NODE_66 = tlcs_ready ? 3 : _NODE_67;
    wire [3 : 0] _NODE_73;
    wire [3 : 0] _NODE_74;
    wire [3 : 0] _NODE_75;
    wire [3 : 0] _NODE_76;
    assign _NODE_76 = tlcs_ready ? 1 : 0;
    assign _NODE_75 = eq_142_result ? _NODE_76 : 0;
    assign _NODE_74 = tlcs_ready ? 2 : _NODE_75;
    wire [3 : 0] _NODE_77;
    wire [3 : 0] _NODE_78;
    assign _NODE_78 = tlcs_ready ? 1 : 0;
    assign _NODE_77 = eq_142_result ? _NODE_78 : 0;
    assign _NODE_73 = eq_143_result ? _NODE_74 : _NODE_77;
    assign _NODE_65 = eq_144_result ? _NODE_66 : _NODE_73;
    assign _NODE_49 = eq_145_result ? _NODE_50 : _NODE_65;
    assign _NODE_48 = and_26_result ? 5 : _NODE_49;
    wire [3 : 0] _NODE_79;
    wire [3 : 0] _NODE_80;
    wire [3 : 0] _NODE_81;
    wire [3 : 0] _NODE_82;
    wire [3 : 0] _NODE_83;
    wire [3 : 0] _NODE_84;
    wire [3 : 0] _NODE_85;
    wire [3 : 0] _NODE_86;
    assign _NODE_86 = tlcs_ready ? 1 : 0;
    assign _NODE_85 = eq_142_result ? _NODE_86 : 0;
    assign _NODE_84 = tlcs_ready ? 2 : _NODE_85;
    wire [3 : 0] _NODE_87;
    wire [3 : 0] _NODE_88;
    assign _NODE_88 = tlcs_ready ? 1 : 0;
    assign _NODE_87 = eq_142_result ? _NODE_88 : 0;
    assign _NODE_83 = eq_143_result ? _NODE_84 : _NODE_87;
    assign _NODE_82 = tlcs_ready ? 3 : _NODE_83;
    wire [3 : 0] _NODE_89;
    wire [3 : 0] _NODE_90;
    wire [3 : 0] _NODE_91;
    wire [3 : 0] _NODE_92;
    assign _NODE_92 = tlcs_ready ? 1 : 0;
    assign _NODE_91 = eq_142_result ? _NODE_92 : 0;
    assign _NODE_90 = tlcs_ready ? 2 : _NODE_91;
    wire [3 : 0] _NODE_93;
    wire [3 : 0] _NODE_94;
    assign _NODE_94 = tlcs_ready ? 1 : 0;
    assign _NODE_93 = eq_142_result ? _NODE_94 : 0;
    assign _NODE_89 = eq_143_result ? _NODE_90 : _NODE_93;
    assign _NODE_81 = eq_144_result ? _NODE_82 : _NODE_89;
    assign _NODE_80 = tlcs_ready ? 4 : _NODE_81;
    wire [3 : 0] _NODE_95;
    wire [3 : 0] _NODE_96;
    wire [3 : 0] _NODE_97;
    wire [3 : 0] _NODE_98;
    wire [3 : 0] _NODE_99;
    wire [3 : 0] _NODE_100;
    assign _NODE_100 = tlcs_ready ? 1 : 0;
    assign _NODE_99 = eq_142_result ? _NODE_100 : 0;
    assign _NODE_98 = tlcs_ready ? 2 : _NODE_99;
    wire [3 : 0] _NODE_101;
    wire [3 : 0] _NODE_102;
    assign _NODE_102 = tlcs_ready ? 1 : 0;
    assign _NODE_101 = eq_142_result ? _NODE_102 : 0;
    assign _NODE_97 = eq_143_result ? _NODE_98 : _NODE_101;
    assign _NODE_96 = tlcs_ready ? 3 : _NODE_97;
    wire [3 : 0] _NODE_103;
    wire [3 : 0] _NODE_104;
    wire [3 : 0] _NODE_105;
    wire [3 : 0] _NODE_106;
    assign _NODE_106 = tlcs_ready ? 1 : 0;
    assign _NODE_105 = eq_142_result ? _NODE_106 : 0;
    assign _NODE_104 = tlcs_ready ? 2 : _NODE_105;
    wire [3 : 0] _NODE_107;
    wire [3 : 0] _NODE_108;
    assign _NODE_108 = tlcs_ready ? 1 : 0;
    assign _NODE_107 = eq_142_result ? _NODE_108 : 0;
    assign _NODE_103 = eq_143_result ? _NODE_104 : _NODE_107;
    assign _NODE_95 = eq_144_result ? _NODE_96 : _NODE_103;
    assign _NODE_79 = eq_145_result ? _NODE_80 : _NODE_95;
    assign _NODE_47 = eq_146_result ? _NODE_48 : _NODE_79;
    assign _NODE_46 = tlcs_ready ? 7 : _NODE_47;
    wire [3 : 0] _NODE_109;
    wire [3 : 0] _NODE_110;
    wire [3 : 0] _NODE_111;
    wire [3 : 0] _NODE_112;
    wire [3 : 0] _NODE_113;
    wire [3 : 0] _NODE_114;
    wire [3 : 0] _NODE_115;
    wire [3 : 0] _NODE_116;
    wire [3 : 0] _NODE_117;
    wire [3 : 0] _NODE_118;
    assign _NODE_118 = tlcs_ready ? 1 : 0;
    assign _NODE_117 = eq_142_result ? _NODE_118 : 0;
    assign _NODE_116 = tlcs_ready ? 2 : _NODE_117;
    wire [3 : 0] _NODE_119;
    wire [3 : 0] _NODE_120;
    assign _NODE_120 = tlcs_ready ? 1 : 0;
    assign _NODE_119 = eq_142_result ? _NODE_120 : 0;
    assign _NODE_115 = eq_143_result ? _NODE_116 : _NODE_119;
    assign _NODE_114 = tlcs_ready ? 3 : _NODE_115;
    wire [3 : 0] _NODE_121;
    wire [3 : 0] _NODE_122;
    wire [3 : 0] _NODE_123;
    wire [3 : 0] _NODE_124;
    assign _NODE_124 = tlcs_ready ? 1 : 0;
    assign _NODE_123 = eq_142_result ? _NODE_124 : 0;
    assign _NODE_122 = tlcs_ready ? 2 : _NODE_123;
    wire [3 : 0] _NODE_125;
    wire [3 : 0] _NODE_126;
    assign _NODE_126 = tlcs_ready ? 1 : 0;
    assign _NODE_125 = eq_142_result ? _NODE_126 : 0;
    assign _NODE_121 = eq_143_result ? _NODE_122 : _NODE_125;
    assign _NODE_113 = eq_144_result ? _NODE_114 : _NODE_121;
    assign _NODE_112 = tlcs_ready ? 4 : _NODE_113;
    wire [3 : 0] _NODE_127;
    wire [3 : 0] _NODE_128;
    wire [3 : 0] _NODE_129;
    wire [3 : 0] _NODE_130;
    wire [3 : 0] _NODE_131;
    wire [3 : 0] _NODE_132;
    assign _NODE_132 = tlcs_ready ? 1 : 0;
    assign _NODE_131 = eq_142_result ? _NODE_132 : 0;
    assign _NODE_130 = tlcs_ready ? 2 : _NODE_131;
    wire [3 : 0] _NODE_133;
    wire [3 : 0] _NODE_134;
    assign _NODE_134 = tlcs_ready ? 1 : 0;
    assign _NODE_133 = eq_142_result ? _NODE_134 : 0;
    assign _NODE_129 = eq_143_result ? _NODE_130 : _NODE_133;
    assign _NODE_128 = tlcs_ready ? 3 : _NODE_129;
    wire [3 : 0] _NODE_135;
    wire [3 : 0] _NODE_136;
    wire [3 : 0] _NODE_137;
    wire [3 : 0] _NODE_138;
    assign _NODE_138 = tlcs_ready ? 1 : 0;
    assign _NODE_137 = eq_142_result ? _NODE_138 : 0;
    assign _NODE_136 = tlcs_ready ? 2 : _NODE_137;
    wire [3 : 0] _NODE_139;
    wire [3 : 0] _NODE_140;
    assign _NODE_140 = tlcs_ready ? 1 : 0;
    assign _NODE_139 = eq_142_result ? _NODE_140 : 0;
    assign _NODE_135 = eq_143_result ? _NODE_136 : _NODE_139;
    assign _NODE_127 = eq_144_result ? _NODE_128 : _NODE_135;
    assign _NODE_111 = eq_145_result ? _NODE_112 : _NODE_127;
    assign _NODE_110 = and_26_result ? 5 : _NODE_111;
    wire [3 : 0] _NODE_141;
    wire [3 : 0] _NODE_142;
    wire [3 : 0] _NODE_143;
    wire [3 : 0] _NODE_144;
    wire [3 : 0] _NODE_145;
    wire [3 : 0] _NODE_146;
    wire [3 : 0] _NODE_147;
    wire [3 : 0] _NODE_148;
    assign _NODE_148 = tlcs_ready ? 1 : 0;
    assign _NODE_147 = eq_142_result ? _NODE_148 : 0;
    assign _NODE_146 = tlcs_ready ? 2 : _NODE_147;
    wire [3 : 0] _NODE_149;
    wire [3 : 0] _NODE_150;
    assign _NODE_150 = tlcs_ready ? 1 : 0;
    assign _NODE_149 = eq_142_result ? _NODE_150 : 0;
    assign _NODE_145 = eq_143_result ? _NODE_146 : _NODE_149;
    assign _NODE_144 = tlcs_ready ? 3 : _NODE_145;
    wire [3 : 0] _NODE_151;
    wire [3 : 0] _NODE_152;
    wire [3 : 0] _NODE_153;
    wire [3 : 0] _NODE_154;
    assign _NODE_154 = tlcs_ready ? 1 : 0;
    assign _NODE_153 = eq_142_result ? _NODE_154 : 0;
    assign _NODE_152 = tlcs_ready ? 2 : _NODE_153;
    wire [3 : 0] _NODE_155;
    wire [3 : 0] _NODE_156;
    assign _NODE_156 = tlcs_ready ? 1 : 0;
    assign _NODE_155 = eq_142_result ? _NODE_156 : 0;
    assign _NODE_151 = eq_143_result ? _NODE_152 : _NODE_155;
    assign _NODE_143 = eq_144_result ? _NODE_144 : _NODE_151;
    assign _NODE_142 = tlcs_ready ? 4 : _NODE_143;
    wire [3 : 0] _NODE_157;
    wire [3 : 0] _NODE_158;
    wire [3 : 0] _NODE_159;
    wire [3 : 0] _NODE_160;
    wire [3 : 0] _NODE_161;
    wire [3 : 0] _NODE_162;
    assign _NODE_162 = tlcs_ready ? 1 : 0;
    assign _NODE_161 = eq_142_result ? _NODE_162 : 0;
    assign _NODE_160 = tlcs_ready ? 2 : _NODE_161;
    wire [3 : 0] _NODE_163;
    wire [3 : 0] _NODE_164;
    assign _NODE_164 = tlcs_ready ? 1 : 0;
    assign _NODE_163 = eq_142_result ? _NODE_164 : 0;
    assign _NODE_159 = eq_143_result ? _NODE_160 : _NODE_163;
    assign _NODE_158 = tlcs_ready ? 3 : _NODE_159;
    wire [3 : 0] _NODE_165;
    wire [3 : 0] _NODE_166;
    wire [3 : 0] _NODE_167;
    wire [3 : 0] _NODE_168;
    assign _NODE_168 = tlcs_ready ? 1 : 0;
    assign _NODE_167 = eq_142_result ? _NODE_168 : 0;
    assign _NODE_166 = tlcs_ready ? 2 : _NODE_167;
    wire [3 : 0] _NODE_169;
    wire [3 : 0] _NODE_170;
    assign _NODE_170 = tlcs_ready ? 1 : 0;
    assign _NODE_169 = eq_142_result ? _NODE_170 : 0;
    assign _NODE_165 = eq_143_result ? _NODE_166 : _NODE_169;
    assign _NODE_157 = eq_144_result ? _NODE_158 : _NODE_165;
    assign _NODE_141 = eq_145_result ? _NODE_142 : _NODE_157;
    assign _NODE_109 = eq_146_result ? _NODE_110 : _NODE_141;
    assign _NODE_45 = eq_147_result ? _NODE_46 : _NODE_109;
    assign _NODE_44 = tlcs_ready ? 8 : _NODE_45;
    wire [3 : 0] _NODE_171;
    wire [3 : 0] _NODE_172;
    wire [3 : 0] _NODE_173;
    wire [3 : 0] _NODE_174;
    wire [3 : 0] _NODE_175;
    wire [3 : 0] _NODE_176;
    wire [3 : 0] _NODE_177;
    wire [3 : 0] _NODE_178;
    wire [3 : 0] _NODE_179;
    wire [3 : 0] _NODE_180;
    wire [3 : 0] _NODE_181;
    wire [3 : 0] _NODE_182;
    assign _NODE_182 = tlcs_ready ? 1 : 0;
    assign _NODE_181 = eq_142_result ? _NODE_182 : 0;
    assign _NODE_180 = tlcs_ready ? 2 : _NODE_181;
    wire [3 : 0] _NODE_183;
    wire [3 : 0] _NODE_184;
    assign _NODE_184 = tlcs_ready ? 1 : 0;
    assign _NODE_183 = eq_142_result ? _NODE_184 : 0;
    assign _NODE_179 = eq_143_result ? _NODE_180 : _NODE_183;
    assign _NODE_178 = tlcs_ready ? 3 : _NODE_179;
    wire [3 : 0] _NODE_185;
    wire [3 : 0] _NODE_186;
    wire [3 : 0] _NODE_187;
    wire [3 : 0] _NODE_188;
    assign _NODE_188 = tlcs_ready ? 1 : 0;
    assign _NODE_187 = eq_142_result ? _NODE_188 : 0;
    assign _NODE_186 = tlcs_ready ? 2 : _NODE_187;
    wire [3 : 0] _NODE_189;
    wire [3 : 0] _NODE_190;
    assign _NODE_190 = tlcs_ready ? 1 : 0;
    assign _NODE_189 = eq_142_result ? _NODE_190 : 0;
    assign _NODE_185 = eq_143_result ? _NODE_186 : _NODE_189;
    assign _NODE_177 = eq_144_result ? _NODE_178 : _NODE_185;
    assign _NODE_176 = tlcs_ready ? 4 : _NODE_177;
    wire [3 : 0] _NODE_191;
    wire [3 : 0] _NODE_192;
    wire [3 : 0] _NODE_193;
    wire [3 : 0] _NODE_194;
    wire [3 : 0] _NODE_195;
    wire [3 : 0] _NODE_196;
    assign _NODE_196 = tlcs_ready ? 1 : 0;
    assign _NODE_195 = eq_142_result ? _NODE_196 : 0;
    assign _NODE_194 = tlcs_ready ? 2 : _NODE_195;
    wire [3 : 0] _NODE_197;
    wire [3 : 0] _NODE_198;
    assign _NODE_198 = tlcs_ready ? 1 : 0;
    assign _NODE_197 = eq_142_result ? _NODE_198 : 0;
    assign _NODE_193 = eq_143_result ? _NODE_194 : _NODE_197;
    assign _NODE_192 = tlcs_ready ? 3 : _NODE_193;
    wire [3 : 0] _NODE_199;
    wire [3 : 0] _NODE_200;
    wire [3 : 0] _NODE_201;
    wire [3 : 0] _NODE_202;
    assign _NODE_202 = tlcs_ready ? 1 : 0;
    assign _NODE_201 = eq_142_result ? _NODE_202 : 0;
    assign _NODE_200 = tlcs_ready ? 2 : _NODE_201;
    wire [3 : 0] _NODE_203;
    wire [3 : 0] _NODE_204;
    assign _NODE_204 = tlcs_ready ? 1 : 0;
    assign _NODE_203 = eq_142_result ? _NODE_204 : 0;
    assign _NODE_199 = eq_143_result ? _NODE_200 : _NODE_203;
    assign _NODE_191 = eq_144_result ? _NODE_192 : _NODE_199;
    assign _NODE_175 = eq_145_result ? _NODE_176 : _NODE_191;
    assign _NODE_174 = and_26_result ? 5 : _NODE_175;
    wire [3 : 0] _NODE_205;
    wire [3 : 0] _NODE_206;
    wire [3 : 0] _NODE_207;
    wire [3 : 0] _NODE_208;
    wire [3 : 0] _NODE_209;
    wire [3 : 0] _NODE_210;
    wire [3 : 0] _NODE_211;
    wire [3 : 0] _NODE_212;
    assign _NODE_212 = tlcs_ready ? 1 : 0;
    assign _NODE_211 = eq_142_result ? _NODE_212 : 0;
    assign _NODE_210 = tlcs_ready ? 2 : _NODE_211;
    wire [3 : 0] _NODE_213;
    wire [3 : 0] _NODE_214;
    assign _NODE_214 = tlcs_ready ? 1 : 0;
    assign _NODE_213 = eq_142_result ? _NODE_214 : 0;
    assign _NODE_209 = eq_143_result ? _NODE_210 : _NODE_213;
    assign _NODE_208 = tlcs_ready ? 3 : _NODE_209;
    wire [3 : 0] _NODE_215;
    wire [3 : 0] _NODE_216;
    wire [3 : 0] _NODE_217;
    wire [3 : 0] _NODE_218;
    assign _NODE_218 = tlcs_ready ? 1 : 0;
    assign _NODE_217 = eq_142_result ? _NODE_218 : 0;
    assign _NODE_216 = tlcs_ready ? 2 : _NODE_217;
    wire [3 : 0] _NODE_219;
    wire [3 : 0] _NODE_220;
    assign _NODE_220 = tlcs_ready ? 1 : 0;
    assign _NODE_219 = eq_142_result ? _NODE_220 : 0;
    assign _NODE_215 = eq_143_result ? _NODE_216 : _NODE_219;
    assign _NODE_207 = eq_144_result ? _NODE_208 : _NODE_215;
    assign _NODE_206 = tlcs_ready ? 4 : _NODE_207;
    wire [3 : 0] _NODE_221;
    wire [3 : 0] _NODE_222;
    wire [3 : 0] _NODE_223;
    wire [3 : 0] _NODE_224;
    wire [3 : 0] _NODE_225;
    wire [3 : 0] _NODE_226;
    assign _NODE_226 = tlcs_ready ? 1 : 0;
    assign _NODE_225 = eq_142_result ? _NODE_226 : 0;
    assign _NODE_224 = tlcs_ready ? 2 : _NODE_225;
    wire [3 : 0] _NODE_227;
    wire [3 : 0] _NODE_228;
    assign _NODE_228 = tlcs_ready ? 1 : 0;
    assign _NODE_227 = eq_142_result ? _NODE_228 : 0;
    assign _NODE_223 = eq_143_result ? _NODE_224 : _NODE_227;
    assign _NODE_222 = tlcs_ready ? 3 : _NODE_223;
    wire [3 : 0] _NODE_229;
    wire [3 : 0] _NODE_230;
    wire [3 : 0] _NODE_231;
    wire [3 : 0] _NODE_232;
    assign _NODE_232 = tlcs_ready ? 1 : 0;
    assign _NODE_231 = eq_142_result ? _NODE_232 : 0;
    assign _NODE_230 = tlcs_ready ? 2 : _NODE_231;
    wire [3 : 0] _NODE_233;
    wire [3 : 0] _NODE_234;
    assign _NODE_234 = tlcs_ready ? 1 : 0;
    assign _NODE_233 = eq_142_result ? _NODE_234 : 0;
    assign _NODE_229 = eq_143_result ? _NODE_230 : _NODE_233;
    assign _NODE_221 = eq_144_result ? _NODE_222 : _NODE_229;
    assign _NODE_205 = eq_145_result ? _NODE_206 : _NODE_221;
    assign _NODE_173 = eq_146_result ? _NODE_174 : _NODE_205;
    assign _NODE_172 = tlcs_ready ? 7 : _NODE_173;
    wire [3 : 0] _NODE_235;
    wire [3 : 0] _NODE_236;
    wire [3 : 0] _NODE_237;
    wire [3 : 0] _NODE_238;
    wire [3 : 0] _NODE_239;
    wire [3 : 0] _NODE_240;
    wire [3 : 0] _NODE_241;
    wire [3 : 0] _NODE_242;
    wire [3 : 0] _NODE_243;
    wire [3 : 0] _NODE_244;
    assign _NODE_244 = tlcs_ready ? 1 : 0;
    assign _NODE_243 = eq_142_result ? _NODE_244 : 0;
    assign _NODE_242 = tlcs_ready ? 2 : _NODE_243;
    wire [3 : 0] _NODE_245;
    wire [3 : 0] _NODE_246;
    assign _NODE_246 = tlcs_ready ? 1 : 0;
    assign _NODE_245 = eq_142_result ? _NODE_246 : 0;
    assign _NODE_241 = eq_143_result ? _NODE_242 : _NODE_245;
    assign _NODE_240 = tlcs_ready ? 3 : _NODE_241;
    wire [3 : 0] _NODE_247;
    wire [3 : 0] _NODE_248;
    wire [3 : 0] _NODE_249;
    wire [3 : 0] _NODE_250;
    assign _NODE_250 = tlcs_ready ? 1 : 0;
    assign _NODE_249 = eq_142_result ? _NODE_250 : 0;
    assign _NODE_248 = tlcs_ready ? 2 : _NODE_249;
    wire [3 : 0] _NODE_251;
    wire [3 : 0] _NODE_252;
    assign _NODE_252 = tlcs_ready ? 1 : 0;
    assign _NODE_251 = eq_142_result ? _NODE_252 : 0;
    assign _NODE_247 = eq_143_result ? _NODE_248 : _NODE_251;
    assign _NODE_239 = eq_144_result ? _NODE_240 : _NODE_247;
    assign _NODE_238 = tlcs_ready ? 4 : _NODE_239;
    wire [3 : 0] _NODE_253;
    wire [3 : 0] _NODE_254;
    wire [3 : 0] _NODE_255;
    wire [3 : 0] _NODE_256;
    wire [3 : 0] _NODE_257;
    wire [3 : 0] _NODE_258;
    assign _NODE_258 = tlcs_ready ? 1 : 0;
    assign _NODE_257 = eq_142_result ? _NODE_258 : 0;
    assign _NODE_256 = tlcs_ready ? 2 : _NODE_257;
    wire [3 : 0] _NODE_259;
    wire [3 : 0] _NODE_260;
    assign _NODE_260 = tlcs_ready ? 1 : 0;
    assign _NODE_259 = eq_142_result ? _NODE_260 : 0;
    assign _NODE_255 = eq_143_result ? _NODE_256 : _NODE_259;
    assign _NODE_254 = tlcs_ready ? 3 : _NODE_255;
    wire [3 : 0] _NODE_261;
    wire [3 : 0] _NODE_262;
    wire [3 : 0] _NODE_263;
    wire [3 : 0] _NODE_264;
    assign _NODE_264 = tlcs_ready ? 1 : 0;
    assign _NODE_263 = eq_142_result ? _NODE_264 : 0;
    assign _NODE_262 = tlcs_ready ? 2 : _NODE_263;
    wire [3 : 0] _NODE_265;
    wire [3 : 0] _NODE_266;
    assign _NODE_266 = tlcs_ready ? 1 : 0;
    assign _NODE_265 = eq_142_result ? _NODE_266 : 0;
    assign _NODE_261 = eq_143_result ? _NODE_262 : _NODE_265;
    assign _NODE_253 = eq_144_result ? _NODE_254 : _NODE_261;
    assign _NODE_237 = eq_145_result ? _NODE_238 : _NODE_253;
    assign _NODE_236 = and_26_result ? 5 : _NODE_237;
    wire [3 : 0] _NODE_267;
    wire [3 : 0] _NODE_268;
    wire [3 : 0] _NODE_269;
    wire [3 : 0] _NODE_270;
    wire [3 : 0] _NODE_271;
    wire [3 : 0] _NODE_272;
    wire [3 : 0] _NODE_273;
    wire [3 : 0] _NODE_274;
    assign _NODE_274 = tlcs_ready ? 1 : 0;
    assign _NODE_273 = eq_142_result ? _NODE_274 : 0;
    assign _NODE_272 = tlcs_ready ? 2 : _NODE_273;
    wire [3 : 0] _NODE_275;
    wire [3 : 0] _NODE_276;
    assign _NODE_276 = tlcs_ready ? 1 : 0;
    assign _NODE_275 = eq_142_result ? _NODE_276 : 0;
    assign _NODE_271 = eq_143_result ? _NODE_272 : _NODE_275;
    assign _NODE_270 = tlcs_ready ? 3 : _NODE_271;
    wire [3 : 0] _NODE_277;
    wire [3 : 0] _NODE_278;
    wire [3 : 0] _NODE_279;
    wire [3 : 0] _NODE_280;
    assign _NODE_280 = tlcs_ready ? 1 : 0;
    assign _NODE_279 = eq_142_result ? _NODE_280 : 0;
    assign _NODE_278 = tlcs_ready ? 2 : _NODE_279;
    wire [3 : 0] _NODE_281;
    wire [3 : 0] _NODE_282;
    assign _NODE_282 = tlcs_ready ? 1 : 0;
    assign _NODE_281 = eq_142_result ? _NODE_282 : 0;
    assign _NODE_277 = eq_143_result ? _NODE_278 : _NODE_281;
    assign _NODE_269 = eq_144_result ? _NODE_270 : _NODE_277;
    assign _NODE_268 = tlcs_ready ? 4 : _NODE_269;
    wire [3 : 0] _NODE_283;
    wire [3 : 0] _NODE_284;
    wire [3 : 0] _NODE_285;
    wire [3 : 0] _NODE_286;
    wire [3 : 0] _NODE_287;
    wire [3 : 0] _NODE_288;
    assign _NODE_288 = tlcs_ready ? 1 : 0;
    assign _NODE_287 = eq_142_result ? _NODE_288 : 0;
    assign _NODE_286 = tlcs_ready ? 2 : _NODE_287;
    wire [3 : 0] _NODE_289;
    wire [3 : 0] _NODE_290;
    assign _NODE_290 = tlcs_ready ? 1 : 0;
    assign _NODE_289 = eq_142_result ? _NODE_290 : 0;
    assign _NODE_285 = eq_143_result ? _NODE_286 : _NODE_289;
    assign _NODE_284 = tlcs_ready ? 3 : _NODE_285;
    wire [3 : 0] _NODE_291;
    wire [3 : 0] _NODE_292;
    wire [3 : 0] _NODE_293;
    wire [3 : 0] _NODE_294;
    assign _NODE_294 = tlcs_ready ? 1 : 0;
    assign _NODE_293 = eq_142_result ? _NODE_294 : 0;
    assign _NODE_292 = tlcs_ready ? 2 : _NODE_293;
    wire [3 : 0] _NODE_295;
    wire [3 : 0] _NODE_296;
    assign _NODE_296 = tlcs_ready ? 1 : 0;
    assign _NODE_295 = eq_142_result ? _NODE_296 : 0;
    assign _NODE_291 = eq_143_result ? _NODE_292 : _NODE_295;
    assign _NODE_283 = eq_144_result ? _NODE_284 : _NODE_291;
    assign _NODE_267 = eq_145_result ? _NODE_268 : _NODE_283;
    assign _NODE_235 = eq_146_result ? _NODE_236 : _NODE_267;
    assign _NODE_171 = eq_147_result ? _NODE_172 : _NODE_235;
    assign _NODE_43 = eq_148_result ? _NODE_44 : _NODE_171;
    assign _NODE_42 = tlcs_ready ? 9 : _NODE_43;
    wire [3 : 0] _NODE_297;
    wire [3 : 0] _NODE_298;
    wire [3 : 0] _NODE_299;
    wire [3 : 0] _NODE_300;
    wire [3 : 0] _NODE_301;
    wire [3 : 0] _NODE_302;
    wire [3 : 0] _NODE_303;
    wire [3 : 0] _NODE_304;
    wire [3 : 0] _NODE_305;
    wire [3 : 0] _NODE_306;
    wire [3 : 0] _NODE_307;
    wire [3 : 0] _NODE_308;
    wire [3 : 0] _NODE_309;
    wire [3 : 0] _NODE_310;
    assign _NODE_310 = tlcs_ready ? 1 : 0;
    assign _NODE_309 = eq_142_result ? _NODE_310 : 0;
    assign _NODE_308 = tlcs_ready ? 2 : _NODE_309;
    wire [3 : 0] _NODE_311;
    wire [3 : 0] _NODE_312;
    assign _NODE_312 = tlcs_ready ? 1 : 0;
    assign _NODE_311 = eq_142_result ? _NODE_312 : 0;
    assign _NODE_307 = eq_143_result ? _NODE_308 : _NODE_311;
    assign _NODE_306 = tlcs_ready ? 3 : _NODE_307;
    wire [3 : 0] _NODE_313;
    wire [3 : 0] _NODE_314;
    wire [3 : 0] _NODE_315;
    wire [3 : 0] _NODE_316;
    assign _NODE_316 = tlcs_ready ? 1 : 0;
    assign _NODE_315 = eq_142_result ? _NODE_316 : 0;
    assign _NODE_314 = tlcs_ready ? 2 : _NODE_315;
    wire [3 : 0] _NODE_317;
    wire [3 : 0] _NODE_318;
    assign _NODE_318 = tlcs_ready ? 1 : 0;
    assign _NODE_317 = eq_142_result ? _NODE_318 : 0;
    assign _NODE_313 = eq_143_result ? _NODE_314 : _NODE_317;
    assign _NODE_305 = eq_144_result ? _NODE_306 : _NODE_313;
    assign _NODE_304 = tlcs_ready ? 4 : _NODE_305;
    wire [3 : 0] _NODE_319;
    wire [3 : 0] _NODE_320;
    wire [3 : 0] _NODE_321;
    wire [3 : 0] _NODE_322;
    wire [3 : 0] _NODE_323;
    wire [3 : 0] _NODE_324;
    assign _NODE_324 = tlcs_ready ? 1 : 0;
    assign _NODE_323 = eq_142_result ? _NODE_324 : 0;
    assign _NODE_322 = tlcs_ready ? 2 : _NODE_323;
    wire [3 : 0] _NODE_325;
    wire [3 : 0] _NODE_326;
    assign _NODE_326 = tlcs_ready ? 1 : 0;
    assign _NODE_325 = eq_142_result ? _NODE_326 : 0;
    assign _NODE_321 = eq_143_result ? _NODE_322 : _NODE_325;
    assign _NODE_320 = tlcs_ready ? 3 : _NODE_321;
    wire [3 : 0] _NODE_327;
    wire [3 : 0] _NODE_328;
    wire [3 : 0] _NODE_329;
    wire [3 : 0] _NODE_330;
    assign _NODE_330 = tlcs_ready ? 1 : 0;
    assign _NODE_329 = eq_142_result ? _NODE_330 : 0;
    assign _NODE_328 = tlcs_ready ? 2 : _NODE_329;
    wire [3 : 0] _NODE_331;
    wire [3 : 0] _NODE_332;
    assign _NODE_332 = tlcs_ready ? 1 : 0;
    assign _NODE_331 = eq_142_result ? _NODE_332 : 0;
    assign _NODE_327 = eq_143_result ? _NODE_328 : _NODE_331;
    assign _NODE_319 = eq_144_result ? _NODE_320 : _NODE_327;
    assign _NODE_303 = eq_145_result ? _NODE_304 : _NODE_319;
    assign _NODE_302 = and_26_result ? 5 : _NODE_303;
    wire [3 : 0] _NODE_333;
    wire [3 : 0] _NODE_334;
    wire [3 : 0] _NODE_335;
    wire [3 : 0] _NODE_336;
    wire [3 : 0] _NODE_337;
    wire [3 : 0] _NODE_338;
    wire [3 : 0] _NODE_339;
    wire [3 : 0] _NODE_340;
    assign _NODE_340 = tlcs_ready ? 1 : 0;
    assign _NODE_339 = eq_142_result ? _NODE_340 : 0;
    assign _NODE_338 = tlcs_ready ? 2 : _NODE_339;
    wire [3 : 0] _NODE_341;
    wire [3 : 0] _NODE_342;
    assign _NODE_342 = tlcs_ready ? 1 : 0;
    assign _NODE_341 = eq_142_result ? _NODE_342 : 0;
    assign _NODE_337 = eq_143_result ? _NODE_338 : _NODE_341;
    assign _NODE_336 = tlcs_ready ? 3 : _NODE_337;
    wire [3 : 0] _NODE_343;
    wire [3 : 0] _NODE_344;
    wire [3 : 0] _NODE_345;
    wire [3 : 0] _NODE_346;
    assign _NODE_346 = tlcs_ready ? 1 : 0;
    assign _NODE_345 = eq_142_result ? _NODE_346 : 0;
    assign _NODE_344 = tlcs_ready ? 2 : _NODE_345;
    wire [3 : 0] _NODE_347;
    wire [3 : 0] _NODE_348;
    assign _NODE_348 = tlcs_ready ? 1 : 0;
    assign _NODE_347 = eq_142_result ? _NODE_348 : 0;
    assign _NODE_343 = eq_143_result ? _NODE_344 : _NODE_347;
    assign _NODE_335 = eq_144_result ? _NODE_336 : _NODE_343;
    assign _NODE_334 = tlcs_ready ? 4 : _NODE_335;
    wire [3 : 0] _NODE_349;
    wire [3 : 0] _NODE_350;
    wire [3 : 0] _NODE_351;
    wire [3 : 0] _NODE_352;
    wire [3 : 0] _NODE_353;
    wire [3 : 0] _NODE_354;
    assign _NODE_354 = tlcs_ready ? 1 : 0;
    assign _NODE_353 = eq_142_result ? _NODE_354 : 0;
    assign _NODE_352 = tlcs_ready ? 2 : _NODE_353;
    wire [3 : 0] _NODE_355;
    wire [3 : 0] _NODE_356;
    assign _NODE_356 = tlcs_ready ? 1 : 0;
    assign _NODE_355 = eq_142_result ? _NODE_356 : 0;
    assign _NODE_351 = eq_143_result ? _NODE_352 : _NODE_355;
    assign _NODE_350 = tlcs_ready ? 3 : _NODE_351;
    wire [3 : 0] _NODE_357;
    wire [3 : 0] _NODE_358;
    wire [3 : 0] _NODE_359;
    wire [3 : 0] _NODE_360;
    assign _NODE_360 = tlcs_ready ? 1 : 0;
    assign _NODE_359 = eq_142_result ? _NODE_360 : 0;
    assign _NODE_358 = tlcs_ready ? 2 : _NODE_359;
    wire [3 : 0] _NODE_361;
    wire [3 : 0] _NODE_362;
    assign _NODE_362 = tlcs_ready ? 1 : 0;
    assign _NODE_361 = eq_142_result ? _NODE_362 : 0;
    assign _NODE_357 = eq_143_result ? _NODE_358 : _NODE_361;
    assign _NODE_349 = eq_144_result ? _NODE_350 : _NODE_357;
    assign _NODE_333 = eq_145_result ? _NODE_334 : _NODE_349;
    assign _NODE_301 = eq_146_result ? _NODE_302 : _NODE_333;
    assign _NODE_300 = tlcs_ready ? 7 : _NODE_301;
    wire [3 : 0] _NODE_363;
    wire [3 : 0] _NODE_364;
    wire [3 : 0] _NODE_365;
    wire [3 : 0] _NODE_366;
    wire [3 : 0] _NODE_367;
    wire [3 : 0] _NODE_368;
    wire [3 : 0] _NODE_369;
    wire [3 : 0] _NODE_370;
    wire [3 : 0] _NODE_371;
    wire [3 : 0] _NODE_372;
    assign _NODE_372 = tlcs_ready ? 1 : 0;
    assign _NODE_371 = eq_142_result ? _NODE_372 : 0;
    assign _NODE_370 = tlcs_ready ? 2 : _NODE_371;
    wire [3 : 0] _NODE_373;
    wire [3 : 0] _NODE_374;
    assign _NODE_374 = tlcs_ready ? 1 : 0;
    assign _NODE_373 = eq_142_result ? _NODE_374 : 0;
    assign _NODE_369 = eq_143_result ? _NODE_370 : _NODE_373;
    assign _NODE_368 = tlcs_ready ? 3 : _NODE_369;
    wire [3 : 0] _NODE_375;
    wire [3 : 0] _NODE_376;
    wire [3 : 0] _NODE_377;
    wire [3 : 0] _NODE_378;
    assign _NODE_378 = tlcs_ready ? 1 : 0;
    assign _NODE_377 = eq_142_result ? _NODE_378 : 0;
    assign _NODE_376 = tlcs_ready ? 2 : _NODE_377;
    wire [3 : 0] _NODE_379;
    wire [3 : 0] _NODE_380;
    assign _NODE_380 = tlcs_ready ? 1 : 0;
    assign _NODE_379 = eq_142_result ? _NODE_380 : 0;
    assign _NODE_375 = eq_143_result ? _NODE_376 : _NODE_379;
    assign _NODE_367 = eq_144_result ? _NODE_368 : _NODE_375;
    assign _NODE_366 = tlcs_ready ? 4 : _NODE_367;
    wire [3 : 0] _NODE_381;
    wire [3 : 0] _NODE_382;
    wire [3 : 0] _NODE_383;
    wire [3 : 0] _NODE_384;
    wire [3 : 0] _NODE_385;
    wire [3 : 0] _NODE_386;
    assign _NODE_386 = tlcs_ready ? 1 : 0;
    assign _NODE_385 = eq_142_result ? _NODE_386 : 0;
    assign _NODE_384 = tlcs_ready ? 2 : _NODE_385;
    wire [3 : 0] _NODE_387;
    wire [3 : 0] _NODE_388;
    assign _NODE_388 = tlcs_ready ? 1 : 0;
    assign _NODE_387 = eq_142_result ? _NODE_388 : 0;
    assign _NODE_383 = eq_143_result ? _NODE_384 : _NODE_387;
    assign _NODE_382 = tlcs_ready ? 3 : _NODE_383;
    wire [3 : 0] _NODE_389;
    wire [3 : 0] _NODE_390;
    wire [3 : 0] _NODE_391;
    wire [3 : 0] _NODE_392;
    assign _NODE_392 = tlcs_ready ? 1 : 0;
    assign _NODE_391 = eq_142_result ? _NODE_392 : 0;
    assign _NODE_390 = tlcs_ready ? 2 : _NODE_391;
    wire [3 : 0] _NODE_393;
    wire [3 : 0] _NODE_394;
    assign _NODE_394 = tlcs_ready ? 1 : 0;
    assign _NODE_393 = eq_142_result ? _NODE_394 : 0;
    assign _NODE_389 = eq_143_result ? _NODE_390 : _NODE_393;
    assign _NODE_381 = eq_144_result ? _NODE_382 : _NODE_389;
    assign _NODE_365 = eq_145_result ? _NODE_366 : _NODE_381;
    assign _NODE_364 = and_26_result ? 5 : _NODE_365;
    wire [3 : 0] _NODE_395;
    wire [3 : 0] _NODE_396;
    wire [3 : 0] _NODE_397;
    wire [3 : 0] _NODE_398;
    wire [3 : 0] _NODE_399;
    wire [3 : 0] _NODE_400;
    wire [3 : 0] _NODE_401;
    wire [3 : 0] _NODE_402;
    assign _NODE_402 = tlcs_ready ? 1 : 0;
    assign _NODE_401 = eq_142_result ? _NODE_402 : 0;
    assign _NODE_400 = tlcs_ready ? 2 : _NODE_401;
    wire [3 : 0] _NODE_403;
    wire [3 : 0] _NODE_404;
    assign _NODE_404 = tlcs_ready ? 1 : 0;
    assign _NODE_403 = eq_142_result ? _NODE_404 : 0;
    assign _NODE_399 = eq_143_result ? _NODE_400 : _NODE_403;
    assign _NODE_398 = tlcs_ready ? 3 : _NODE_399;
    wire [3 : 0] _NODE_405;
    wire [3 : 0] _NODE_406;
    wire [3 : 0] _NODE_407;
    wire [3 : 0] _NODE_408;
    assign _NODE_408 = tlcs_ready ? 1 : 0;
    assign _NODE_407 = eq_142_result ? _NODE_408 : 0;
    assign _NODE_406 = tlcs_ready ? 2 : _NODE_407;
    wire [3 : 0] _NODE_409;
    wire [3 : 0] _NODE_410;
    assign _NODE_410 = tlcs_ready ? 1 : 0;
    assign _NODE_409 = eq_142_result ? _NODE_410 : 0;
    assign _NODE_405 = eq_143_result ? _NODE_406 : _NODE_409;
    assign _NODE_397 = eq_144_result ? _NODE_398 : _NODE_405;
    assign _NODE_396 = tlcs_ready ? 4 : _NODE_397;
    wire [3 : 0] _NODE_411;
    wire [3 : 0] _NODE_412;
    wire [3 : 0] _NODE_413;
    wire [3 : 0] _NODE_414;
    wire [3 : 0] _NODE_415;
    wire [3 : 0] _NODE_416;
    assign _NODE_416 = tlcs_ready ? 1 : 0;
    assign _NODE_415 = eq_142_result ? _NODE_416 : 0;
    assign _NODE_414 = tlcs_ready ? 2 : _NODE_415;
    wire [3 : 0] _NODE_417;
    wire [3 : 0] _NODE_418;
    assign _NODE_418 = tlcs_ready ? 1 : 0;
    assign _NODE_417 = eq_142_result ? _NODE_418 : 0;
    assign _NODE_413 = eq_143_result ? _NODE_414 : _NODE_417;
    assign _NODE_412 = tlcs_ready ? 3 : _NODE_413;
    wire [3 : 0] _NODE_419;
    wire [3 : 0] _NODE_420;
    wire [3 : 0] _NODE_421;
    wire [3 : 0] _NODE_422;
    assign _NODE_422 = tlcs_ready ? 1 : 0;
    assign _NODE_421 = eq_142_result ? _NODE_422 : 0;
    assign _NODE_420 = tlcs_ready ? 2 : _NODE_421;
    wire [3 : 0] _NODE_423;
    wire [3 : 0] _NODE_424;
    assign _NODE_424 = tlcs_ready ? 1 : 0;
    assign _NODE_423 = eq_142_result ? _NODE_424 : 0;
    assign _NODE_419 = eq_143_result ? _NODE_420 : _NODE_423;
    assign _NODE_411 = eq_144_result ? _NODE_412 : _NODE_419;
    assign _NODE_395 = eq_145_result ? _NODE_396 : _NODE_411;
    assign _NODE_363 = eq_146_result ? _NODE_364 : _NODE_395;
    assign _NODE_299 = eq_147_result ? _NODE_300 : _NODE_363;
    assign _NODE_298 = tlcs_ready ? 8 : _NODE_299;
    wire [3 : 0] _NODE_425;
    wire [3 : 0] _NODE_426;
    wire [3 : 0] _NODE_427;
    wire [3 : 0] _NODE_428;
    wire [3 : 0] _NODE_429;
    wire [3 : 0] _NODE_430;
    wire [3 : 0] _NODE_431;
    wire [3 : 0] _NODE_432;
    wire [3 : 0] _NODE_433;
    wire [3 : 0] _NODE_434;
    wire [3 : 0] _NODE_435;
    wire [3 : 0] _NODE_436;
    assign _NODE_436 = tlcs_ready ? 1 : 0;
    assign _NODE_435 = eq_142_result ? _NODE_436 : 0;
    assign _NODE_434 = tlcs_ready ? 2 : _NODE_435;
    wire [3 : 0] _NODE_437;
    wire [3 : 0] _NODE_438;
    assign _NODE_438 = tlcs_ready ? 1 : 0;
    assign _NODE_437 = eq_142_result ? _NODE_438 : 0;
    assign _NODE_433 = eq_143_result ? _NODE_434 : _NODE_437;
    assign _NODE_432 = tlcs_ready ? 3 : _NODE_433;
    wire [3 : 0] _NODE_439;
    wire [3 : 0] _NODE_440;
    wire [3 : 0] _NODE_441;
    wire [3 : 0] _NODE_442;
    assign _NODE_442 = tlcs_ready ? 1 : 0;
    assign _NODE_441 = eq_142_result ? _NODE_442 : 0;
    assign _NODE_440 = tlcs_ready ? 2 : _NODE_441;
    wire [3 : 0] _NODE_443;
    wire [3 : 0] _NODE_444;
    assign _NODE_444 = tlcs_ready ? 1 : 0;
    assign _NODE_443 = eq_142_result ? _NODE_444 : 0;
    assign _NODE_439 = eq_143_result ? _NODE_440 : _NODE_443;
    assign _NODE_431 = eq_144_result ? _NODE_432 : _NODE_439;
    assign _NODE_430 = tlcs_ready ? 4 : _NODE_431;
    wire [3 : 0] _NODE_445;
    wire [3 : 0] _NODE_446;
    wire [3 : 0] _NODE_447;
    wire [3 : 0] _NODE_448;
    wire [3 : 0] _NODE_449;
    wire [3 : 0] _NODE_450;
    assign _NODE_450 = tlcs_ready ? 1 : 0;
    assign _NODE_449 = eq_142_result ? _NODE_450 : 0;
    assign _NODE_448 = tlcs_ready ? 2 : _NODE_449;
    wire [3 : 0] _NODE_451;
    wire [3 : 0] _NODE_452;
    assign _NODE_452 = tlcs_ready ? 1 : 0;
    assign _NODE_451 = eq_142_result ? _NODE_452 : 0;
    assign _NODE_447 = eq_143_result ? _NODE_448 : _NODE_451;
    assign _NODE_446 = tlcs_ready ? 3 : _NODE_447;
    wire [3 : 0] _NODE_453;
    wire [3 : 0] _NODE_454;
    wire [3 : 0] _NODE_455;
    wire [3 : 0] _NODE_456;
    assign _NODE_456 = tlcs_ready ? 1 : 0;
    assign _NODE_455 = eq_142_result ? _NODE_456 : 0;
    assign _NODE_454 = tlcs_ready ? 2 : _NODE_455;
    wire [3 : 0] _NODE_457;
    wire [3 : 0] _NODE_458;
    assign _NODE_458 = tlcs_ready ? 1 : 0;
    assign _NODE_457 = eq_142_result ? _NODE_458 : 0;
    assign _NODE_453 = eq_143_result ? _NODE_454 : _NODE_457;
    assign _NODE_445 = eq_144_result ? _NODE_446 : _NODE_453;
    assign _NODE_429 = eq_145_result ? _NODE_430 : _NODE_445;
    assign _NODE_428 = and_26_result ? 5 : _NODE_429;
    wire [3 : 0] _NODE_459;
    wire [3 : 0] _NODE_460;
    wire [3 : 0] _NODE_461;
    wire [3 : 0] _NODE_462;
    wire [3 : 0] _NODE_463;
    wire [3 : 0] _NODE_464;
    wire [3 : 0] _NODE_465;
    wire [3 : 0] _NODE_466;
    assign _NODE_466 = tlcs_ready ? 1 : 0;
    assign _NODE_465 = eq_142_result ? _NODE_466 : 0;
    assign _NODE_464 = tlcs_ready ? 2 : _NODE_465;
    wire [3 : 0] _NODE_467;
    wire [3 : 0] _NODE_468;
    assign _NODE_468 = tlcs_ready ? 1 : 0;
    assign _NODE_467 = eq_142_result ? _NODE_468 : 0;
    assign _NODE_463 = eq_143_result ? _NODE_464 : _NODE_467;
    assign _NODE_462 = tlcs_ready ? 3 : _NODE_463;
    wire [3 : 0] _NODE_469;
    wire [3 : 0] _NODE_470;
    wire [3 : 0] _NODE_471;
    wire [3 : 0] _NODE_472;
    assign _NODE_472 = tlcs_ready ? 1 : 0;
    assign _NODE_471 = eq_142_result ? _NODE_472 : 0;
    assign _NODE_470 = tlcs_ready ? 2 : _NODE_471;
    wire [3 : 0] _NODE_473;
    wire [3 : 0] _NODE_474;
    assign _NODE_474 = tlcs_ready ? 1 : 0;
    assign _NODE_473 = eq_142_result ? _NODE_474 : 0;
    assign _NODE_469 = eq_143_result ? _NODE_470 : _NODE_473;
    assign _NODE_461 = eq_144_result ? _NODE_462 : _NODE_469;
    assign _NODE_460 = tlcs_ready ? 4 : _NODE_461;
    wire [3 : 0] _NODE_475;
    wire [3 : 0] _NODE_476;
    wire [3 : 0] _NODE_477;
    wire [3 : 0] _NODE_478;
    wire [3 : 0] _NODE_479;
    wire [3 : 0] _NODE_480;
    assign _NODE_480 = tlcs_ready ? 1 : 0;
    assign _NODE_479 = eq_142_result ? _NODE_480 : 0;
    assign _NODE_478 = tlcs_ready ? 2 : _NODE_479;
    wire [3 : 0] _NODE_481;
    wire [3 : 0] _NODE_482;
    assign _NODE_482 = tlcs_ready ? 1 : 0;
    assign _NODE_481 = eq_142_result ? _NODE_482 : 0;
    assign _NODE_477 = eq_143_result ? _NODE_478 : _NODE_481;
    assign _NODE_476 = tlcs_ready ? 3 : _NODE_477;
    wire [3 : 0] _NODE_483;
    wire [3 : 0] _NODE_484;
    wire [3 : 0] _NODE_485;
    wire [3 : 0] _NODE_486;
    assign _NODE_486 = tlcs_ready ? 1 : 0;
    assign _NODE_485 = eq_142_result ? _NODE_486 : 0;
    assign _NODE_484 = tlcs_ready ? 2 : _NODE_485;
    wire [3 : 0] _NODE_487;
    wire [3 : 0] _NODE_488;
    assign _NODE_488 = tlcs_ready ? 1 : 0;
    assign _NODE_487 = eq_142_result ? _NODE_488 : 0;
    assign _NODE_483 = eq_143_result ? _NODE_484 : _NODE_487;
    assign _NODE_475 = eq_144_result ? _NODE_476 : _NODE_483;
    assign _NODE_459 = eq_145_result ? _NODE_460 : _NODE_475;
    assign _NODE_427 = eq_146_result ? _NODE_428 : _NODE_459;
    assign _NODE_426 = tlcs_ready ? 7 : _NODE_427;
    wire [3 : 0] _NODE_489;
    wire [3 : 0] _NODE_490;
    wire [3 : 0] _NODE_491;
    wire [3 : 0] _NODE_492;
    wire [3 : 0] _NODE_493;
    wire [3 : 0] _NODE_494;
    wire [3 : 0] _NODE_495;
    wire [3 : 0] _NODE_496;
    wire [3 : 0] _NODE_497;
    wire [3 : 0] _NODE_498;
    assign _NODE_498 = tlcs_ready ? 1 : 0;
    assign _NODE_497 = eq_142_result ? _NODE_498 : 0;
    assign _NODE_496 = tlcs_ready ? 2 : _NODE_497;
    wire [3 : 0] _NODE_499;
    wire [3 : 0] _NODE_500;
    assign _NODE_500 = tlcs_ready ? 1 : 0;
    assign _NODE_499 = eq_142_result ? _NODE_500 : 0;
    assign _NODE_495 = eq_143_result ? _NODE_496 : _NODE_499;
    assign _NODE_494 = tlcs_ready ? 3 : _NODE_495;
    wire [3 : 0] _NODE_501;
    wire [3 : 0] _NODE_502;
    wire [3 : 0] _NODE_503;
    wire [3 : 0] _NODE_504;
    assign _NODE_504 = tlcs_ready ? 1 : 0;
    assign _NODE_503 = eq_142_result ? _NODE_504 : 0;
    assign _NODE_502 = tlcs_ready ? 2 : _NODE_503;
    wire [3 : 0] _NODE_505;
    wire [3 : 0] _NODE_506;
    assign _NODE_506 = tlcs_ready ? 1 : 0;
    assign _NODE_505 = eq_142_result ? _NODE_506 : 0;
    assign _NODE_501 = eq_143_result ? _NODE_502 : _NODE_505;
    assign _NODE_493 = eq_144_result ? _NODE_494 : _NODE_501;
    assign _NODE_492 = tlcs_ready ? 4 : _NODE_493;
    wire [3 : 0] _NODE_507;
    wire [3 : 0] _NODE_508;
    wire [3 : 0] _NODE_509;
    wire [3 : 0] _NODE_510;
    wire [3 : 0] _NODE_511;
    wire [3 : 0] _NODE_512;
    assign _NODE_512 = tlcs_ready ? 1 : 0;
    assign _NODE_511 = eq_142_result ? _NODE_512 : 0;
    assign _NODE_510 = tlcs_ready ? 2 : _NODE_511;
    wire [3 : 0] _NODE_513;
    wire [3 : 0] _NODE_514;
    assign _NODE_514 = tlcs_ready ? 1 : 0;
    assign _NODE_513 = eq_142_result ? _NODE_514 : 0;
    assign _NODE_509 = eq_143_result ? _NODE_510 : _NODE_513;
    assign _NODE_508 = tlcs_ready ? 3 : _NODE_509;
    wire [3 : 0] _NODE_515;
    wire [3 : 0] _NODE_516;
    wire [3 : 0] _NODE_517;
    wire [3 : 0] _NODE_518;
    assign _NODE_518 = tlcs_ready ? 1 : 0;
    assign _NODE_517 = eq_142_result ? _NODE_518 : 0;
    assign _NODE_516 = tlcs_ready ? 2 : _NODE_517;
    wire [3 : 0] _NODE_519;
    wire [3 : 0] _NODE_520;
    assign _NODE_520 = tlcs_ready ? 1 : 0;
    assign _NODE_519 = eq_142_result ? _NODE_520 : 0;
    assign _NODE_515 = eq_143_result ? _NODE_516 : _NODE_519;
    assign _NODE_507 = eq_144_result ? _NODE_508 : _NODE_515;
    assign _NODE_491 = eq_145_result ? _NODE_492 : _NODE_507;
    assign _NODE_490 = and_26_result ? 5 : _NODE_491;
    wire [3 : 0] _NODE_521;
    wire [3 : 0] _NODE_522;
    wire [3 : 0] _NODE_523;
    wire [3 : 0] _NODE_524;
    wire [3 : 0] _NODE_525;
    wire [3 : 0] _NODE_526;
    wire [3 : 0] _NODE_527;
    wire [3 : 0] _NODE_528;
    assign _NODE_528 = tlcs_ready ? 1 : 0;
    assign _NODE_527 = eq_142_result ? _NODE_528 : 0;
    assign _NODE_526 = tlcs_ready ? 2 : _NODE_527;
    wire [3 : 0] _NODE_529;
    wire [3 : 0] _NODE_530;
    assign _NODE_530 = tlcs_ready ? 1 : 0;
    assign _NODE_529 = eq_142_result ? _NODE_530 : 0;
    assign _NODE_525 = eq_143_result ? _NODE_526 : _NODE_529;
    assign _NODE_524 = tlcs_ready ? 3 : _NODE_525;
    wire [3 : 0] _NODE_531;
    wire [3 : 0] _NODE_532;
    wire [3 : 0] _NODE_533;
    wire [3 : 0] _NODE_534;
    assign _NODE_534 = tlcs_ready ? 1 : 0;
    assign _NODE_533 = eq_142_result ? _NODE_534 : 0;
    assign _NODE_532 = tlcs_ready ? 2 : _NODE_533;
    wire [3 : 0] _NODE_535;
    wire [3 : 0] _NODE_536;
    assign _NODE_536 = tlcs_ready ? 1 : 0;
    assign _NODE_535 = eq_142_result ? _NODE_536 : 0;
    assign _NODE_531 = eq_143_result ? _NODE_532 : _NODE_535;
    assign _NODE_523 = eq_144_result ? _NODE_524 : _NODE_531;
    assign _NODE_522 = tlcs_ready ? 4 : _NODE_523;
    wire [3 : 0] _NODE_537;
    wire [3 : 0] _NODE_538;
    wire [3 : 0] _NODE_539;
    wire [3 : 0] _NODE_540;
    wire [3 : 0] _NODE_541;
    wire [3 : 0] _NODE_542;
    assign _NODE_542 = tlcs_ready ? 1 : 0;
    assign _NODE_541 = eq_142_result ? _NODE_542 : 0;
    assign _NODE_540 = tlcs_ready ? 2 : _NODE_541;
    wire [3 : 0] _NODE_543;
    wire [3 : 0] _NODE_544;
    assign _NODE_544 = tlcs_ready ? 1 : 0;
    assign _NODE_543 = eq_142_result ? _NODE_544 : 0;
    assign _NODE_539 = eq_143_result ? _NODE_540 : _NODE_543;
    assign _NODE_538 = tlcs_ready ? 3 : _NODE_539;
    wire [3 : 0] _NODE_545;
    wire [3 : 0] _NODE_546;
    wire [3 : 0] _NODE_547;
    wire [3 : 0] _NODE_548;
    assign _NODE_548 = tlcs_ready ? 1 : 0;
    assign _NODE_547 = eq_142_result ? _NODE_548 : 0;
    assign _NODE_546 = tlcs_ready ? 2 : _NODE_547;
    wire [3 : 0] _NODE_549;
    wire [3 : 0] _NODE_550;
    assign _NODE_550 = tlcs_ready ? 1 : 0;
    assign _NODE_549 = eq_142_result ? _NODE_550 : 0;
    assign _NODE_545 = eq_143_result ? _NODE_546 : _NODE_549;
    assign _NODE_537 = eq_144_result ? _NODE_538 : _NODE_545;
    assign _NODE_521 = eq_145_result ? _NODE_522 : _NODE_537;
    assign _NODE_489 = eq_146_result ? _NODE_490 : _NODE_521;
    assign _NODE_425 = eq_147_result ? _NODE_426 : _NODE_489;
    assign _NODE_297 = eq_148_result ? _NODE_298 : _NODE_425;
    assign _NODE_41 = eq_150_result ? _NODE_42 : _NODE_297;
    assign _NODE_40 = tlcs_ready ? 6 : _NODE_41;
    wire [3 : 0] _NODE_551;
    wire [3 : 0] _NODE_552;
    wire [3 : 0] _NODE_553;
    wire [3 : 0] _NODE_554;
    wire [3 : 0] _NODE_555;
    wire [3 : 0] _NODE_556;
    wire [3 : 0] _NODE_557;
    wire [3 : 0] _NODE_558;
    wire [3 : 0] _NODE_559;
    wire [3 : 0] _NODE_560;
    wire [3 : 0] _NODE_561;
    wire [3 : 0] _NODE_562;
    wire [3 : 0] _NODE_563;
    wire [3 : 0] _NODE_564;
    wire [3 : 0] _NODE_565;
    wire [3 : 0] _NODE_566;
    assign _NODE_566 = tlcs_ready ? 1 : 0;
    assign _NODE_565 = eq_142_result ? _NODE_566 : 0;
    assign _NODE_564 = tlcs_ready ? 2 : _NODE_565;
    wire [3 : 0] _NODE_567;
    wire [3 : 0] _NODE_568;
    assign _NODE_568 = tlcs_ready ? 1 : 0;
    assign _NODE_567 = eq_142_result ? _NODE_568 : 0;
    assign _NODE_563 = eq_143_result ? _NODE_564 : _NODE_567;
    assign _NODE_562 = tlcs_ready ? 3 : _NODE_563;
    wire [3 : 0] _NODE_569;
    wire [3 : 0] _NODE_570;
    wire [3 : 0] _NODE_571;
    wire [3 : 0] _NODE_572;
    assign _NODE_572 = tlcs_ready ? 1 : 0;
    assign _NODE_571 = eq_142_result ? _NODE_572 : 0;
    assign _NODE_570 = tlcs_ready ? 2 : _NODE_571;
    wire [3 : 0] _NODE_573;
    wire [3 : 0] _NODE_574;
    assign _NODE_574 = tlcs_ready ? 1 : 0;
    assign _NODE_573 = eq_142_result ? _NODE_574 : 0;
    assign _NODE_569 = eq_143_result ? _NODE_570 : _NODE_573;
    assign _NODE_561 = eq_144_result ? _NODE_562 : _NODE_569;
    assign _NODE_560 = tlcs_ready ? 4 : _NODE_561;
    wire [3 : 0] _NODE_575;
    wire [3 : 0] _NODE_576;
    wire [3 : 0] _NODE_577;
    wire [3 : 0] _NODE_578;
    wire [3 : 0] _NODE_579;
    wire [3 : 0] _NODE_580;
    assign _NODE_580 = tlcs_ready ? 1 : 0;
    assign _NODE_579 = eq_142_result ? _NODE_580 : 0;
    assign _NODE_578 = tlcs_ready ? 2 : _NODE_579;
    wire [3 : 0] _NODE_581;
    wire [3 : 0] _NODE_582;
    assign _NODE_582 = tlcs_ready ? 1 : 0;
    assign _NODE_581 = eq_142_result ? _NODE_582 : 0;
    assign _NODE_577 = eq_143_result ? _NODE_578 : _NODE_581;
    assign _NODE_576 = tlcs_ready ? 3 : _NODE_577;
    wire [3 : 0] _NODE_583;
    wire [3 : 0] _NODE_584;
    wire [3 : 0] _NODE_585;
    wire [3 : 0] _NODE_586;
    assign _NODE_586 = tlcs_ready ? 1 : 0;
    assign _NODE_585 = eq_142_result ? _NODE_586 : 0;
    assign _NODE_584 = tlcs_ready ? 2 : _NODE_585;
    wire [3 : 0] _NODE_587;
    wire [3 : 0] _NODE_588;
    assign _NODE_588 = tlcs_ready ? 1 : 0;
    assign _NODE_587 = eq_142_result ? _NODE_588 : 0;
    assign _NODE_583 = eq_143_result ? _NODE_584 : _NODE_587;
    assign _NODE_575 = eq_144_result ? _NODE_576 : _NODE_583;
    assign _NODE_559 = eq_145_result ? _NODE_560 : _NODE_575;
    assign _NODE_558 = and_26_result ? 5 : _NODE_559;
    wire [3 : 0] _NODE_589;
    wire [3 : 0] _NODE_590;
    wire [3 : 0] _NODE_591;
    wire [3 : 0] _NODE_592;
    wire [3 : 0] _NODE_593;
    wire [3 : 0] _NODE_594;
    wire [3 : 0] _NODE_595;
    wire [3 : 0] _NODE_596;
    assign _NODE_596 = tlcs_ready ? 1 : 0;
    assign _NODE_595 = eq_142_result ? _NODE_596 : 0;
    assign _NODE_594 = tlcs_ready ? 2 : _NODE_595;
    wire [3 : 0] _NODE_597;
    wire [3 : 0] _NODE_598;
    assign _NODE_598 = tlcs_ready ? 1 : 0;
    assign _NODE_597 = eq_142_result ? _NODE_598 : 0;
    assign _NODE_593 = eq_143_result ? _NODE_594 : _NODE_597;
    assign _NODE_592 = tlcs_ready ? 3 : _NODE_593;
    wire [3 : 0] _NODE_599;
    wire [3 : 0] _NODE_600;
    wire [3 : 0] _NODE_601;
    wire [3 : 0] _NODE_602;
    assign _NODE_602 = tlcs_ready ? 1 : 0;
    assign _NODE_601 = eq_142_result ? _NODE_602 : 0;
    assign _NODE_600 = tlcs_ready ? 2 : _NODE_601;
    wire [3 : 0] _NODE_603;
    wire [3 : 0] _NODE_604;
    assign _NODE_604 = tlcs_ready ? 1 : 0;
    assign _NODE_603 = eq_142_result ? _NODE_604 : 0;
    assign _NODE_599 = eq_143_result ? _NODE_600 : _NODE_603;
    assign _NODE_591 = eq_144_result ? _NODE_592 : _NODE_599;
    assign _NODE_590 = tlcs_ready ? 4 : _NODE_591;
    wire [3 : 0] _NODE_605;
    wire [3 : 0] _NODE_606;
    wire [3 : 0] _NODE_607;
    wire [3 : 0] _NODE_608;
    wire [3 : 0] _NODE_609;
    wire [3 : 0] _NODE_610;
    assign _NODE_610 = tlcs_ready ? 1 : 0;
    assign _NODE_609 = eq_142_result ? _NODE_610 : 0;
    assign _NODE_608 = tlcs_ready ? 2 : _NODE_609;
    wire [3 : 0] _NODE_611;
    wire [3 : 0] _NODE_612;
    assign _NODE_612 = tlcs_ready ? 1 : 0;
    assign _NODE_611 = eq_142_result ? _NODE_612 : 0;
    assign _NODE_607 = eq_143_result ? _NODE_608 : _NODE_611;
    assign _NODE_606 = tlcs_ready ? 3 : _NODE_607;
    wire [3 : 0] _NODE_613;
    wire [3 : 0] _NODE_614;
    wire [3 : 0] _NODE_615;
    wire [3 : 0] _NODE_616;
    assign _NODE_616 = tlcs_ready ? 1 : 0;
    assign _NODE_615 = eq_142_result ? _NODE_616 : 0;
    assign _NODE_614 = tlcs_ready ? 2 : _NODE_615;
    wire [3 : 0] _NODE_617;
    wire [3 : 0] _NODE_618;
    assign _NODE_618 = tlcs_ready ? 1 : 0;
    assign _NODE_617 = eq_142_result ? _NODE_618 : 0;
    assign _NODE_613 = eq_143_result ? _NODE_614 : _NODE_617;
    assign _NODE_605 = eq_144_result ? _NODE_606 : _NODE_613;
    assign _NODE_589 = eq_145_result ? _NODE_590 : _NODE_605;
    assign _NODE_557 = eq_146_result ? _NODE_558 : _NODE_589;
    assign _NODE_556 = tlcs_ready ? 7 : _NODE_557;
    wire [3 : 0] _NODE_619;
    wire [3 : 0] _NODE_620;
    wire [3 : 0] _NODE_621;
    wire [3 : 0] _NODE_622;
    wire [3 : 0] _NODE_623;
    wire [3 : 0] _NODE_624;
    wire [3 : 0] _NODE_625;
    wire [3 : 0] _NODE_626;
    wire [3 : 0] _NODE_627;
    wire [3 : 0] _NODE_628;
    assign _NODE_628 = tlcs_ready ? 1 : 0;
    assign _NODE_627 = eq_142_result ? _NODE_628 : 0;
    assign _NODE_626 = tlcs_ready ? 2 : _NODE_627;
    wire [3 : 0] _NODE_629;
    wire [3 : 0] _NODE_630;
    assign _NODE_630 = tlcs_ready ? 1 : 0;
    assign _NODE_629 = eq_142_result ? _NODE_630 : 0;
    assign _NODE_625 = eq_143_result ? _NODE_626 : _NODE_629;
    assign _NODE_624 = tlcs_ready ? 3 : _NODE_625;
    wire [3 : 0] _NODE_631;
    wire [3 : 0] _NODE_632;
    wire [3 : 0] _NODE_633;
    wire [3 : 0] _NODE_634;
    assign _NODE_634 = tlcs_ready ? 1 : 0;
    assign _NODE_633 = eq_142_result ? _NODE_634 : 0;
    assign _NODE_632 = tlcs_ready ? 2 : _NODE_633;
    wire [3 : 0] _NODE_635;
    wire [3 : 0] _NODE_636;
    assign _NODE_636 = tlcs_ready ? 1 : 0;
    assign _NODE_635 = eq_142_result ? _NODE_636 : 0;
    assign _NODE_631 = eq_143_result ? _NODE_632 : _NODE_635;
    assign _NODE_623 = eq_144_result ? _NODE_624 : _NODE_631;
    assign _NODE_622 = tlcs_ready ? 4 : _NODE_623;
    wire [3 : 0] _NODE_637;
    wire [3 : 0] _NODE_638;
    wire [3 : 0] _NODE_639;
    wire [3 : 0] _NODE_640;
    wire [3 : 0] _NODE_641;
    wire [3 : 0] _NODE_642;
    assign _NODE_642 = tlcs_ready ? 1 : 0;
    assign _NODE_641 = eq_142_result ? _NODE_642 : 0;
    assign _NODE_640 = tlcs_ready ? 2 : _NODE_641;
    wire [3 : 0] _NODE_643;
    wire [3 : 0] _NODE_644;
    assign _NODE_644 = tlcs_ready ? 1 : 0;
    assign _NODE_643 = eq_142_result ? _NODE_644 : 0;
    assign _NODE_639 = eq_143_result ? _NODE_640 : _NODE_643;
    assign _NODE_638 = tlcs_ready ? 3 : _NODE_639;
    wire [3 : 0] _NODE_645;
    wire [3 : 0] _NODE_646;
    wire [3 : 0] _NODE_647;
    wire [3 : 0] _NODE_648;
    assign _NODE_648 = tlcs_ready ? 1 : 0;
    assign _NODE_647 = eq_142_result ? _NODE_648 : 0;
    assign _NODE_646 = tlcs_ready ? 2 : _NODE_647;
    wire [3 : 0] _NODE_649;
    wire [3 : 0] _NODE_650;
    assign _NODE_650 = tlcs_ready ? 1 : 0;
    assign _NODE_649 = eq_142_result ? _NODE_650 : 0;
    assign _NODE_645 = eq_143_result ? _NODE_646 : _NODE_649;
    assign _NODE_637 = eq_144_result ? _NODE_638 : _NODE_645;
    assign _NODE_621 = eq_145_result ? _NODE_622 : _NODE_637;
    assign _NODE_620 = and_26_result ? 5 : _NODE_621;
    wire [3 : 0] _NODE_651;
    wire [3 : 0] _NODE_652;
    wire [3 : 0] _NODE_653;
    wire [3 : 0] _NODE_654;
    wire [3 : 0] _NODE_655;
    wire [3 : 0] _NODE_656;
    wire [3 : 0] _NODE_657;
    wire [3 : 0] _NODE_658;
    assign _NODE_658 = tlcs_ready ? 1 : 0;
    assign _NODE_657 = eq_142_result ? _NODE_658 : 0;
    assign _NODE_656 = tlcs_ready ? 2 : _NODE_657;
    wire [3 : 0] _NODE_659;
    wire [3 : 0] _NODE_660;
    assign _NODE_660 = tlcs_ready ? 1 : 0;
    assign _NODE_659 = eq_142_result ? _NODE_660 : 0;
    assign _NODE_655 = eq_143_result ? _NODE_656 : _NODE_659;
    assign _NODE_654 = tlcs_ready ? 3 : _NODE_655;
    wire [3 : 0] _NODE_661;
    wire [3 : 0] _NODE_662;
    wire [3 : 0] _NODE_663;
    wire [3 : 0] _NODE_664;
    assign _NODE_664 = tlcs_ready ? 1 : 0;
    assign _NODE_663 = eq_142_result ? _NODE_664 : 0;
    assign _NODE_662 = tlcs_ready ? 2 : _NODE_663;
    wire [3 : 0] _NODE_665;
    wire [3 : 0] _NODE_666;
    assign _NODE_666 = tlcs_ready ? 1 : 0;
    assign _NODE_665 = eq_142_result ? _NODE_666 : 0;
    assign _NODE_661 = eq_143_result ? _NODE_662 : _NODE_665;
    assign _NODE_653 = eq_144_result ? _NODE_654 : _NODE_661;
    assign _NODE_652 = tlcs_ready ? 4 : _NODE_653;
    wire [3 : 0] _NODE_667;
    wire [3 : 0] _NODE_668;
    wire [3 : 0] _NODE_669;
    wire [3 : 0] _NODE_670;
    wire [3 : 0] _NODE_671;
    wire [3 : 0] _NODE_672;
    assign _NODE_672 = tlcs_ready ? 1 : 0;
    assign _NODE_671 = eq_142_result ? _NODE_672 : 0;
    assign _NODE_670 = tlcs_ready ? 2 : _NODE_671;
    wire [3 : 0] _NODE_673;
    wire [3 : 0] _NODE_674;
    assign _NODE_674 = tlcs_ready ? 1 : 0;
    assign _NODE_673 = eq_142_result ? _NODE_674 : 0;
    assign _NODE_669 = eq_143_result ? _NODE_670 : _NODE_673;
    assign _NODE_668 = tlcs_ready ? 3 : _NODE_669;
    wire [3 : 0] _NODE_675;
    wire [3 : 0] _NODE_676;
    wire [3 : 0] _NODE_677;
    wire [3 : 0] _NODE_678;
    assign _NODE_678 = tlcs_ready ? 1 : 0;
    assign _NODE_677 = eq_142_result ? _NODE_678 : 0;
    assign _NODE_676 = tlcs_ready ? 2 : _NODE_677;
    wire [3 : 0] _NODE_679;
    wire [3 : 0] _NODE_680;
    assign _NODE_680 = tlcs_ready ? 1 : 0;
    assign _NODE_679 = eq_142_result ? _NODE_680 : 0;
    assign _NODE_675 = eq_143_result ? _NODE_676 : _NODE_679;
    assign _NODE_667 = eq_144_result ? _NODE_668 : _NODE_675;
    assign _NODE_651 = eq_145_result ? _NODE_652 : _NODE_667;
    assign _NODE_619 = eq_146_result ? _NODE_620 : _NODE_651;
    assign _NODE_555 = eq_147_result ? _NODE_556 : _NODE_619;
    assign _NODE_554 = tlcs_ready ? 8 : _NODE_555;
    wire [3 : 0] _NODE_681;
    wire [3 : 0] _NODE_682;
    wire [3 : 0] _NODE_683;
    wire [3 : 0] _NODE_684;
    wire [3 : 0] _NODE_685;
    wire [3 : 0] _NODE_686;
    wire [3 : 0] _NODE_687;
    wire [3 : 0] _NODE_688;
    wire [3 : 0] _NODE_689;
    wire [3 : 0] _NODE_690;
    wire [3 : 0] _NODE_691;
    wire [3 : 0] _NODE_692;
    assign _NODE_692 = tlcs_ready ? 1 : 0;
    assign _NODE_691 = eq_142_result ? _NODE_692 : 0;
    assign _NODE_690 = tlcs_ready ? 2 : _NODE_691;
    wire [3 : 0] _NODE_693;
    wire [3 : 0] _NODE_694;
    assign _NODE_694 = tlcs_ready ? 1 : 0;
    assign _NODE_693 = eq_142_result ? _NODE_694 : 0;
    assign _NODE_689 = eq_143_result ? _NODE_690 : _NODE_693;
    assign _NODE_688 = tlcs_ready ? 3 : _NODE_689;
    wire [3 : 0] _NODE_695;
    wire [3 : 0] _NODE_696;
    wire [3 : 0] _NODE_697;
    wire [3 : 0] _NODE_698;
    assign _NODE_698 = tlcs_ready ? 1 : 0;
    assign _NODE_697 = eq_142_result ? _NODE_698 : 0;
    assign _NODE_696 = tlcs_ready ? 2 : _NODE_697;
    wire [3 : 0] _NODE_699;
    wire [3 : 0] _NODE_700;
    assign _NODE_700 = tlcs_ready ? 1 : 0;
    assign _NODE_699 = eq_142_result ? _NODE_700 : 0;
    assign _NODE_695 = eq_143_result ? _NODE_696 : _NODE_699;
    assign _NODE_687 = eq_144_result ? _NODE_688 : _NODE_695;
    assign _NODE_686 = tlcs_ready ? 4 : _NODE_687;
    wire [3 : 0] _NODE_701;
    wire [3 : 0] _NODE_702;
    wire [3 : 0] _NODE_703;
    wire [3 : 0] _NODE_704;
    wire [3 : 0] _NODE_705;
    wire [3 : 0] _NODE_706;
    assign _NODE_706 = tlcs_ready ? 1 : 0;
    assign _NODE_705 = eq_142_result ? _NODE_706 : 0;
    assign _NODE_704 = tlcs_ready ? 2 : _NODE_705;
    wire [3 : 0] _NODE_707;
    wire [3 : 0] _NODE_708;
    assign _NODE_708 = tlcs_ready ? 1 : 0;
    assign _NODE_707 = eq_142_result ? _NODE_708 : 0;
    assign _NODE_703 = eq_143_result ? _NODE_704 : _NODE_707;
    assign _NODE_702 = tlcs_ready ? 3 : _NODE_703;
    wire [3 : 0] _NODE_709;
    wire [3 : 0] _NODE_710;
    wire [3 : 0] _NODE_711;
    wire [3 : 0] _NODE_712;
    assign _NODE_712 = tlcs_ready ? 1 : 0;
    assign _NODE_711 = eq_142_result ? _NODE_712 : 0;
    assign _NODE_710 = tlcs_ready ? 2 : _NODE_711;
    wire [3 : 0] _NODE_713;
    wire [3 : 0] _NODE_714;
    assign _NODE_714 = tlcs_ready ? 1 : 0;
    assign _NODE_713 = eq_142_result ? _NODE_714 : 0;
    assign _NODE_709 = eq_143_result ? _NODE_710 : _NODE_713;
    assign _NODE_701 = eq_144_result ? _NODE_702 : _NODE_709;
    assign _NODE_685 = eq_145_result ? _NODE_686 : _NODE_701;
    assign _NODE_684 = and_26_result ? 5 : _NODE_685;
    wire [3 : 0] _NODE_715;
    wire [3 : 0] _NODE_716;
    wire [3 : 0] _NODE_717;
    wire [3 : 0] _NODE_718;
    wire [3 : 0] _NODE_719;
    wire [3 : 0] _NODE_720;
    wire [3 : 0] _NODE_721;
    wire [3 : 0] _NODE_722;
    assign _NODE_722 = tlcs_ready ? 1 : 0;
    assign _NODE_721 = eq_142_result ? _NODE_722 : 0;
    assign _NODE_720 = tlcs_ready ? 2 : _NODE_721;
    wire [3 : 0] _NODE_723;
    wire [3 : 0] _NODE_724;
    assign _NODE_724 = tlcs_ready ? 1 : 0;
    assign _NODE_723 = eq_142_result ? _NODE_724 : 0;
    assign _NODE_719 = eq_143_result ? _NODE_720 : _NODE_723;
    assign _NODE_718 = tlcs_ready ? 3 : _NODE_719;
    wire [3 : 0] _NODE_725;
    wire [3 : 0] _NODE_726;
    wire [3 : 0] _NODE_727;
    wire [3 : 0] _NODE_728;
    assign _NODE_728 = tlcs_ready ? 1 : 0;
    assign _NODE_727 = eq_142_result ? _NODE_728 : 0;
    assign _NODE_726 = tlcs_ready ? 2 : _NODE_727;
    wire [3 : 0] _NODE_729;
    wire [3 : 0] _NODE_730;
    assign _NODE_730 = tlcs_ready ? 1 : 0;
    assign _NODE_729 = eq_142_result ? _NODE_730 : 0;
    assign _NODE_725 = eq_143_result ? _NODE_726 : _NODE_729;
    assign _NODE_717 = eq_144_result ? _NODE_718 : _NODE_725;
    assign _NODE_716 = tlcs_ready ? 4 : _NODE_717;
    wire [3 : 0] _NODE_731;
    wire [3 : 0] _NODE_732;
    wire [3 : 0] _NODE_733;
    wire [3 : 0] _NODE_734;
    wire [3 : 0] _NODE_735;
    wire [3 : 0] _NODE_736;
    assign _NODE_736 = tlcs_ready ? 1 : 0;
    assign _NODE_735 = eq_142_result ? _NODE_736 : 0;
    assign _NODE_734 = tlcs_ready ? 2 : _NODE_735;
    wire [3 : 0] _NODE_737;
    wire [3 : 0] _NODE_738;
    assign _NODE_738 = tlcs_ready ? 1 : 0;
    assign _NODE_737 = eq_142_result ? _NODE_738 : 0;
    assign _NODE_733 = eq_143_result ? _NODE_734 : _NODE_737;
    assign _NODE_732 = tlcs_ready ? 3 : _NODE_733;
    wire [3 : 0] _NODE_739;
    wire [3 : 0] _NODE_740;
    wire [3 : 0] _NODE_741;
    wire [3 : 0] _NODE_742;
    assign _NODE_742 = tlcs_ready ? 1 : 0;
    assign _NODE_741 = eq_142_result ? _NODE_742 : 0;
    assign _NODE_740 = tlcs_ready ? 2 : _NODE_741;
    wire [3 : 0] _NODE_743;
    wire [3 : 0] _NODE_744;
    assign _NODE_744 = tlcs_ready ? 1 : 0;
    assign _NODE_743 = eq_142_result ? _NODE_744 : 0;
    assign _NODE_739 = eq_143_result ? _NODE_740 : _NODE_743;
    assign _NODE_731 = eq_144_result ? _NODE_732 : _NODE_739;
    assign _NODE_715 = eq_145_result ? _NODE_716 : _NODE_731;
    assign _NODE_683 = eq_146_result ? _NODE_684 : _NODE_715;
    assign _NODE_682 = tlcs_ready ? 7 : _NODE_683;
    wire [3 : 0] _NODE_745;
    wire [3 : 0] _NODE_746;
    wire [3 : 0] _NODE_747;
    wire [3 : 0] _NODE_748;
    wire [3 : 0] _NODE_749;
    wire [3 : 0] _NODE_750;
    wire [3 : 0] _NODE_751;
    wire [3 : 0] _NODE_752;
    wire [3 : 0] _NODE_753;
    wire [3 : 0] _NODE_754;
    assign _NODE_754 = tlcs_ready ? 1 : 0;
    assign _NODE_753 = eq_142_result ? _NODE_754 : 0;
    assign _NODE_752 = tlcs_ready ? 2 : _NODE_753;
    wire [3 : 0] _NODE_755;
    wire [3 : 0] _NODE_756;
    assign _NODE_756 = tlcs_ready ? 1 : 0;
    assign _NODE_755 = eq_142_result ? _NODE_756 : 0;
    assign _NODE_751 = eq_143_result ? _NODE_752 : _NODE_755;
    assign _NODE_750 = tlcs_ready ? 3 : _NODE_751;
    wire [3 : 0] _NODE_757;
    wire [3 : 0] _NODE_758;
    wire [3 : 0] _NODE_759;
    wire [3 : 0] _NODE_760;
    assign _NODE_760 = tlcs_ready ? 1 : 0;
    assign _NODE_759 = eq_142_result ? _NODE_760 : 0;
    assign _NODE_758 = tlcs_ready ? 2 : _NODE_759;
    wire [3 : 0] _NODE_761;
    wire [3 : 0] _NODE_762;
    assign _NODE_762 = tlcs_ready ? 1 : 0;
    assign _NODE_761 = eq_142_result ? _NODE_762 : 0;
    assign _NODE_757 = eq_143_result ? _NODE_758 : _NODE_761;
    assign _NODE_749 = eq_144_result ? _NODE_750 : _NODE_757;
    assign _NODE_748 = tlcs_ready ? 4 : _NODE_749;
    wire [3 : 0] _NODE_763;
    wire [3 : 0] _NODE_764;
    wire [3 : 0] _NODE_765;
    wire [3 : 0] _NODE_766;
    wire [3 : 0] _NODE_767;
    wire [3 : 0] _NODE_768;
    assign _NODE_768 = tlcs_ready ? 1 : 0;
    assign _NODE_767 = eq_142_result ? _NODE_768 : 0;
    assign _NODE_766 = tlcs_ready ? 2 : _NODE_767;
    wire [3 : 0] _NODE_769;
    wire [3 : 0] _NODE_770;
    assign _NODE_770 = tlcs_ready ? 1 : 0;
    assign _NODE_769 = eq_142_result ? _NODE_770 : 0;
    assign _NODE_765 = eq_143_result ? _NODE_766 : _NODE_769;
    assign _NODE_764 = tlcs_ready ? 3 : _NODE_765;
    wire [3 : 0] _NODE_771;
    wire [3 : 0] _NODE_772;
    wire [3 : 0] _NODE_773;
    wire [3 : 0] _NODE_774;
    assign _NODE_774 = tlcs_ready ? 1 : 0;
    assign _NODE_773 = eq_142_result ? _NODE_774 : 0;
    assign _NODE_772 = tlcs_ready ? 2 : _NODE_773;
    wire [3 : 0] _NODE_775;
    wire [3 : 0] _NODE_776;
    assign _NODE_776 = tlcs_ready ? 1 : 0;
    assign _NODE_775 = eq_142_result ? _NODE_776 : 0;
    assign _NODE_771 = eq_143_result ? _NODE_772 : _NODE_775;
    assign _NODE_763 = eq_144_result ? _NODE_764 : _NODE_771;
    assign _NODE_747 = eq_145_result ? _NODE_748 : _NODE_763;
    assign _NODE_746 = and_26_result ? 5 : _NODE_747;
    wire [3 : 0] _NODE_777;
    wire [3 : 0] _NODE_778;
    wire [3 : 0] _NODE_779;
    wire [3 : 0] _NODE_780;
    wire [3 : 0] _NODE_781;
    wire [3 : 0] _NODE_782;
    wire [3 : 0] _NODE_783;
    wire [3 : 0] _NODE_784;
    assign _NODE_784 = tlcs_ready ? 1 : 0;
    assign _NODE_783 = eq_142_result ? _NODE_784 : 0;
    assign _NODE_782 = tlcs_ready ? 2 : _NODE_783;
    wire [3 : 0] _NODE_785;
    wire [3 : 0] _NODE_786;
    assign _NODE_786 = tlcs_ready ? 1 : 0;
    assign _NODE_785 = eq_142_result ? _NODE_786 : 0;
    assign _NODE_781 = eq_143_result ? _NODE_782 : _NODE_785;
    assign _NODE_780 = tlcs_ready ? 3 : _NODE_781;
    wire [3 : 0] _NODE_787;
    wire [3 : 0] _NODE_788;
    wire [3 : 0] _NODE_789;
    wire [3 : 0] _NODE_790;
    assign _NODE_790 = tlcs_ready ? 1 : 0;
    assign _NODE_789 = eq_142_result ? _NODE_790 : 0;
    assign _NODE_788 = tlcs_ready ? 2 : _NODE_789;
    wire [3 : 0] _NODE_791;
    wire [3 : 0] _NODE_792;
    assign _NODE_792 = tlcs_ready ? 1 : 0;
    assign _NODE_791 = eq_142_result ? _NODE_792 : 0;
    assign _NODE_787 = eq_143_result ? _NODE_788 : _NODE_791;
    assign _NODE_779 = eq_144_result ? _NODE_780 : _NODE_787;
    assign _NODE_778 = tlcs_ready ? 4 : _NODE_779;
    wire [3 : 0] _NODE_793;
    wire [3 : 0] _NODE_794;
    wire [3 : 0] _NODE_795;
    wire [3 : 0] _NODE_796;
    wire [3 : 0] _NODE_797;
    wire [3 : 0] _NODE_798;
    assign _NODE_798 = tlcs_ready ? 1 : 0;
    assign _NODE_797 = eq_142_result ? _NODE_798 : 0;
    assign _NODE_796 = tlcs_ready ? 2 : _NODE_797;
    wire [3 : 0] _NODE_799;
    wire [3 : 0] _NODE_800;
    assign _NODE_800 = tlcs_ready ? 1 : 0;
    assign _NODE_799 = eq_142_result ? _NODE_800 : 0;
    assign _NODE_795 = eq_143_result ? _NODE_796 : _NODE_799;
    assign _NODE_794 = tlcs_ready ? 3 : _NODE_795;
    wire [3 : 0] _NODE_801;
    wire [3 : 0] _NODE_802;
    wire [3 : 0] _NODE_803;
    wire [3 : 0] _NODE_804;
    assign _NODE_804 = tlcs_ready ? 1 : 0;
    assign _NODE_803 = eq_142_result ? _NODE_804 : 0;
    assign _NODE_802 = tlcs_ready ? 2 : _NODE_803;
    wire [3 : 0] _NODE_805;
    wire [3 : 0] _NODE_806;
    assign _NODE_806 = tlcs_ready ? 1 : 0;
    assign _NODE_805 = eq_142_result ? _NODE_806 : 0;
    assign _NODE_801 = eq_143_result ? _NODE_802 : _NODE_805;
    assign _NODE_793 = eq_144_result ? _NODE_794 : _NODE_801;
    assign _NODE_777 = eq_145_result ? _NODE_778 : _NODE_793;
    assign _NODE_745 = eq_146_result ? _NODE_746 : _NODE_777;
    assign _NODE_681 = eq_147_result ? _NODE_682 : _NODE_745;
    assign _NODE_553 = eq_148_result ? _NODE_554 : _NODE_681;
    assign _NODE_552 = tlcs_ready ? 9 : _NODE_553;
    wire [3 : 0] _NODE_807;
    wire [3 : 0] _NODE_808;
    wire [3 : 0] _NODE_809;
    wire [3 : 0] _NODE_810;
    wire [3 : 0] _NODE_811;
    wire [3 : 0] _NODE_812;
    wire [3 : 0] _NODE_813;
    wire [3 : 0] _NODE_814;
    wire [3 : 0] _NODE_815;
    wire [3 : 0] _NODE_816;
    wire [3 : 0] _NODE_817;
    wire [3 : 0] _NODE_818;
    wire [3 : 0] _NODE_819;
    wire [3 : 0] _NODE_820;
    assign _NODE_820 = tlcs_ready ? 1 : 0;
    assign _NODE_819 = eq_142_result ? _NODE_820 : 0;
    assign _NODE_818 = tlcs_ready ? 2 : _NODE_819;
    wire [3 : 0] _NODE_821;
    wire [3 : 0] _NODE_822;
    assign _NODE_822 = tlcs_ready ? 1 : 0;
    assign _NODE_821 = eq_142_result ? _NODE_822 : 0;
    assign _NODE_817 = eq_143_result ? _NODE_818 : _NODE_821;
    assign _NODE_816 = tlcs_ready ? 3 : _NODE_817;
    wire [3 : 0] _NODE_823;
    wire [3 : 0] _NODE_824;
    wire [3 : 0] _NODE_825;
    wire [3 : 0] _NODE_826;
    assign _NODE_826 = tlcs_ready ? 1 : 0;
    assign _NODE_825 = eq_142_result ? _NODE_826 : 0;
    assign _NODE_824 = tlcs_ready ? 2 : _NODE_825;
    wire [3 : 0] _NODE_827;
    wire [3 : 0] _NODE_828;
    assign _NODE_828 = tlcs_ready ? 1 : 0;
    assign _NODE_827 = eq_142_result ? _NODE_828 : 0;
    assign _NODE_823 = eq_143_result ? _NODE_824 : _NODE_827;
    assign _NODE_815 = eq_144_result ? _NODE_816 : _NODE_823;
    assign _NODE_814 = tlcs_ready ? 4 : _NODE_815;
    wire [3 : 0] _NODE_829;
    wire [3 : 0] _NODE_830;
    wire [3 : 0] _NODE_831;
    wire [3 : 0] _NODE_832;
    wire [3 : 0] _NODE_833;
    wire [3 : 0] _NODE_834;
    assign _NODE_834 = tlcs_ready ? 1 : 0;
    assign _NODE_833 = eq_142_result ? _NODE_834 : 0;
    assign _NODE_832 = tlcs_ready ? 2 : _NODE_833;
    wire [3 : 0] _NODE_835;
    wire [3 : 0] _NODE_836;
    assign _NODE_836 = tlcs_ready ? 1 : 0;
    assign _NODE_835 = eq_142_result ? _NODE_836 : 0;
    assign _NODE_831 = eq_143_result ? _NODE_832 : _NODE_835;
    assign _NODE_830 = tlcs_ready ? 3 : _NODE_831;
    wire [3 : 0] _NODE_837;
    wire [3 : 0] _NODE_838;
    wire [3 : 0] _NODE_839;
    wire [3 : 0] _NODE_840;
    assign _NODE_840 = tlcs_ready ? 1 : 0;
    assign _NODE_839 = eq_142_result ? _NODE_840 : 0;
    assign _NODE_838 = tlcs_ready ? 2 : _NODE_839;
    wire [3 : 0] _NODE_841;
    wire [3 : 0] _NODE_842;
    assign _NODE_842 = tlcs_ready ? 1 : 0;
    assign _NODE_841 = eq_142_result ? _NODE_842 : 0;
    assign _NODE_837 = eq_143_result ? _NODE_838 : _NODE_841;
    assign _NODE_829 = eq_144_result ? _NODE_830 : _NODE_837;
    assign _NODE_813 = eq_145_result ? _NODE_814 : _NODE_829;
    assign _NODE_812 = and_26_result ? 5 : _NODE_813;
    wire [3 : 0] _NODE_843;
    wire [3 : 0] _NODE_844;
    wire [3 : 0] _NODE_845;
    wire [3 : 0] _NODE_846;
    wire [3 : 0] _NODE_847;
    wire [3 : 0] _NODE_848;
    wire [3 : 0] _NODE_849;
    wire [3 : 0] _NODE_850;
    assign _NODE_850 = tlcs_ready ? 1 : 0;
    assign _NODE_849 = eq_142_result ? _NODE_850 : 0;
    assign _NODE_848 = tlcs_ready ? 2 : _NODE_849;
    wire [3 : 0] _NODE_851;
    wire [3 : 0] _NODE_852;
    assign _NODE_852 = tlcs_ready ? 1 : 0;
    assign _NODE_851 = eq_142_result ? _NODE_852 : 0;
    assign _NODE_847 = eq_143_result ? _NODE_848 : _NODE_851;
    assign _NODE_846 = tlcs_ready ? 3 : _NODE_847;
    wire [3 : 0] _NODE_853;
    wire [3 : 0] _NODE_854;
    wire [3 : 0] _NODE_855;
    wire [3 : 0] _NODE_856;
    assign _NODE_856 = tlcs_ready ? 1 : 0;
    assign _NODE_855 = eq_142_result ? _NODE_856 : 0;
    assign _NODE_854 = tlcs_ready ? 2 : _NODE_855;
    wire [3 : 0] _NODE_857;
    wire [3 : 0] _NODE_858;
    assign _NODE_858 = tlcs_ready ? 1 : 0;
    assign _NODE_857 = eq_142_result ? _NODE_858 : 0;
    assign _NODE_853 = eq_143_result ? _NODE_854 : _NODE_857;
    assign _NODE_845 = eq_144_result ? _NODE_846 : _NODE_853;
    assign _NODE_844 = tlcs_ready ? 4 : _NODE_845;
    wire [3 : 0] _NODE_859;
    wire [3 : 0] _NODE_860;
    wire [3 : 0] _NODE_861;
    wire [3 : 0] _NODE_862;
    wire [3 : 0] _NODE_863;
    wire [3 : 0] _NODE_864;
    assign _NODE_864 = tlcs_ready ? 1 : 0;
    assign _NODE_863 = eq_142_result ? _NODE_864 : 0;
    assign _NODE_862 = tlcs_ready ? 2 : _NODE_863;
    wire [3 : 0] _NODE_865;
    wire [3 : 0] _NODE_866;
    assign _NODE_866 = tlcs_ready ? 1 : 0;
    assign _NODE_865 = eq_142_result ? _NODE_866 : 0;
    assign _NODE_861 = eq_143_result ? _NODE_862 : _NODE_865;
    assign _NODE_860 = tlcs_ready ? 3 : _NODE_861;
    wire [3 : 0] _NODE_867;
    wire [3 : 0] _NODE_868;
    wire [3 : 0] _NODE_869;
    wire [3 : 0] _NODE_870;
    assign _NODE_870 = tlcs_ready ? 1 : 0;
    assign _NODE_869 = eq_142_result ? _NODE_870 : 0;
    assign _NODE_868 = tlcs_ready ? 2 : _NODE_869;
    wire [3 : 0] _NODE_871;
    wire [3 : 0] _NODE_872;
    assign _NODE_872 = tlcs_ready ? 1 : 0;
    assign _NODE_871 = eq_142_result ? _NODE_872 : 0;
    assign _NODE_867 = eq_143_result ? _NODE_868 : _NODE_871;
    assign _NODE_859 = eq_144_result ? _NODE_860 : _NODE_867;
    assign _NODE_843 = eq_145_result ? _NODE_844 : _NODE_859;
    assign _NODE_811 = eq_146_result ? _NODE_812 : _NODE_843;
    assign _NODE_810 = tlcs_ready ? 7 : _NODE_811;
    wire [3 : 0] _NODE_873;
    wire [3 : 0] _NODE_874;
    wire [3 : 0] _NODE_875;
    wire [3 : 0] _NODE_876;
    wire [3 : 0] _NODE_877;
    wire [3 : 0] _NODE_878;
    wire [3 : 0] _NODE_879;
    wire [3 : 0] _NODE_880;
    wire [3 : 0] _NODE_881;
    wire [3 : 0] _NODE_882;
    assign _NODE_882 = tlcs_ready ? 1 : 0;
    assign _NODE_881 = eq_142_result ? _NODE_882 : 0;
    assign _NODE_880 = tlcs_ready ? 2 : _NODE_881;
    wire [3 : 0] _NODE_883;
    wire [3 : 0] _NODE_884;
    assign _NODE_884 = tlcs_ready ? 1 : 0;
    assign _NODE_883 = eq_142_result ? _NODE_884 : 0;
    assign _NODE_879 = eq_143_result ? _NODE_880 : _NODE_883;
    assign _NODE_878 = tlcs_ready ? 3 : _NODE_879;
    wire [3 : 0] _NODE_885;
    wire [3 : 0] _NODE_886;
    wire [3 : 0] _NODE_887;
    wire [3 : 0] _NODE_888;
    assign _NODE_888 = tlcs_ready ? 1 : 0;
    assign _NODE_887 = eq_142_result ? _NODE_888 : 0;
    assign _NODE_886 = tlcs_ready ? 2 : _NODE_887;
    wire [3 : 0] _NODE_889;
    wire [3 : 0] _NODE_890;
    assign _NODE_890 = tlcs_ready ? 1 : 0;
    assign _NODE_889 = eq_142_result ? _NODE_890 : 0;
    assign _NODE_885 = eq_143_result ? _NODE_886 : _NODE_889;
    assign _NODE_877 = eq_144_result ? _NODE_878 : _NODE_885;
    assign _NODE_876 = tlcs_ready ? 4 : _NODE_877;
    wire [3 : 0] _NODE_891;
    wire [3 : 0] _NODE_892;
    wire [3 : 0] _NODE_893;
    wire [3 : 0] _NODE_894;
    wire [3 : 0] _NODE_895;
    wire [3 : 0] _NODE_896;
    assign _NODE_896 = tlcs_ready ? 1 : 0;
    assign _NODE_895 = eq_142_result ? _NODE_896 : 0;
    assign _NODE_894 = tlcs_ready ? 2 : _NODE_895;
    wire [3 : 0] _NODE_897;
    wire [3 : 0] _NODE_898;
    assign _NODE_898 = tlcs_ready ? 1 : 0;
    assign _NODE_897 = eq_142_result ? _NODE_898 : 0;
    assign _NODE_893 = eq_143_result ? _NODE_894 : _NODE_897;
    assign _NODE_892 = tlcs_ready ? 3 : _NODE_893;
    wire [3 : 0] _NODE_899;
    wire [3 : 0] _NODE_900;
    wire [3 : 0] _NODE_901;
    wire [3 : 0] _NODE_902;
    assign _NODE_902 = tlcs_ready ? 1 : 0;
    assign _NODE_901 = eq_142_result ? _NODE_902 : 0;
    assign _NODE_900 = tlcs_ready ? 2 : _NODE_901;
    wire [3 : 0] _NODE_903;
    wire [3 : 0] _NODE_904;
    assign _NODE_904 = tlcs_ready ? 1 : 0;
    assign _NODE_903 = eq_142_result ? _NODE_904 : 0;
    assign _NODE_899 = eq_143_result ? _NODE_900 : _NODE_903;
    assign _NODE_891 = eq_144_result ? _NODE_892 : _NODE_899;
    assign _NODE_875 = eq_145_result ? _NODE_876 : _NODE_891;
    assign _NODE_874 = and_26_result ? 5 : _NODE_875;
    wire [3 : 0] _NODE_905;
    wire [3 : 0] _NODE_906;
    wire [3 : 0] _NODE_907;
    wire [3 : 0] _NODE_908;
    wire [3 : 0] _NODE_909;
    wire [3 : 0] _NODE_910;
    wire [3 : 0] _NODE_911;
    wire [3 : 0] _NODE_912;
    assign _NODE_912 = tlcs_ready ? 1 : 0;
    assign _NODE_911 = eq_142_result ? _NODE_912 : 0;
    assign _NODE_910 = tlcs_ready ? 2 : _NODE_911;
    wire [3 : 0] _NODE_913;
    wire [3 : 0] _NODE_914;
    assign _NODE_914 = tlcs_ready ? 1 : 0;
    assign _NODE_913 = eq_142_result ? _NODE_914 : 0;
    assign _NODE_909 = eq_143_result ? _NODE_910 : _NODE_913;
    assign _NODE_908 = tlcs_ready ? 3 : _NODE_909;
    wire [3 : 0] _NODE_915;
    wire [3 : 0] _NODE_916;
    wire [3 : 0] _NODE_917;
    wire [3 : 0] _NODE_918;
    assign _NODE_918 = tlcs_ready ? 1 : 0;
    assign _NODE_917 = eq_142_result ? _NODE_918 : 0;
    assign _NODE_916 = tlcs_ready ? 2 : _NODE_917;
    wire [3 : 0] _NODE_919;
    wire [3 : 0] _NODE_920;
    assign _NODE_920 = tlcs_ready ? 1 : 0;
    assign _NODE_919 = eq_142_result ? _NODE_920 : 0;
    assign _NODE_915 = eq_143_result ? _NODE_916 : _NODE_919;
    assign _NODE_907 = eq_144_result ? _NODE_908 : _NODE_915;
    assign _NODE_906 = tlcs_ready ? 4 : _NODE_907;
    wire [3 : 0] _NODE_921;
    wire [3 : 0] _NODE_922;
    wire [3 : 0] _NODE_923;
    wire [3 : 0] _NODE_924;
    wire [3 : 0] _NODE_925;
    wire [3 : 0] _NODE_926;
    assign _NODE_926 = tlcs_ready ? 1 : 0;
    assign _NODE_925 = eq_142_result ? _NODE_926 : 0;
    assign _NODE_924 = tlcs_ready ? 2 : _NODE_925;
    wire [3 : 0] _NODE_927;
    wire [3 : 0] _NODE_928;
    assign _NODE_928 = tlcs_ready ? 1 : 0;
    assign _NODE_927 = eq_142_result ? _NODE_928 : 0;
    assign _NODE_923 = eq_143_result ? _NODE_924 : _NODE_927;
    assign _NODE_922 = tlcs_ready ? 3 : _NODE_923;
    wire [3 : 0] _NODE_929;
    wire [3 : 0] _NODE_930;
    wire [3 : 0] _NODE_931;
    wire [3 : 0] _NODE_932;
    assign _NODE_932 = tlcs_ready ? 1 : 0;
    assign _NODE_931 = eq_142_result ? _NODE_932 : 0;
    assign _NODE_930 = tlcs_ready ? 2 : _NODE_931;
    wire [3 : 0] _NODE_933;
    wire [3 : 0] _NODE_934;
    assign _NODE_934 = tlcs_ready ? 1 : 0;
    assign _NODE_933 = eq_142_result ? _NODE_934 : 0;
    assign _NODE_929 = eq_143_result ? _NODE_930 : _NODE_933;
    assign _NODE_921 = eq_144_result ? _NODE_922 : _NODE_929;
    assign _NODE_905 = eq_145_result ? _NODE_906 : _NODE_921;
    assign _NODE_873 = eq_146_result ? _NODE_874 : _NODE_905;
    assign _NODE_809 = eq_147_result ? _NODE_810 : _NODE_873;
    assign _NODE_808 = tlcs_ready ? 8 : _NODE_809;
    wire [3 : 0] _NODE_935;
    wire [3 : 0] _NODE_936;
    wire [3 : 0] _NODE_937;
    wire [3 : 0] _NODE_938;
    wire [3 : 0] _NODE_939;
    wire [3 : 0] _NODE_940;
    wire [3 : 0] _NODE_941;
    wire [3 : 0] _NODE_942;
    wire [3 : 0] _NODE_943;
    wire [3 : 0] _NODE_944;
    wire [3 : 0] _NODE_945;
    wire [3 : 0] _NODE_946;
    assign _NODE_946 = tlcs_ready ? 1 : 0;
    assign _NODE_945 = eq_142_result ? _NODE_946 : 0;
    assign _NODE_944 = tlcs_ready ? 2 : _NODE_945;
    wire [3 : 0] _NODE_947;
    wire [3 : 0] _NODE_948;
    assign _NODE_948 = tlcs_ready ? 1 : 0;
    assign _NODE_947 = eq_142_result ? _NODE_948 : 0;
    assign _NODE_943 = eq_143_result ? _NODE_944 : _NODE_947;
    assign _NODE_942 = tlcs_ready ? 3 : _NODE_943;
    wire [3 : 0] _NODE_949;
    wire [3 : 0] _NODE_950;
    wire [3 : 0] _NODE_951;
    wire [3 : 0] _NODE_952;
    assign _NODE_952 = tlcs_ready ? 1 : 0;
    assign _NODE_951 = eq_142_result ? _NODE_952 : 0;
    assign _NODE_950 = tlcs_ready ? 2 : _NODE_951;
    wire [3 : 0] _NODE_953;
    wire [3 : 0] _NODE_954;
    assign _NODE_954 = tlcs_ready ? 1 : 0;
    assign _NODE_953 = eq_142_result ? _NODE_954 : 0;
    assign _NODE_949 = eq_143_result ? _NODE_950 : _NODE_953;
    assign _NODE_941 = eq_144_result ? _NODE_942 : _NODE_949;
    assign _NODE_940 = tlcs_ready ? 4 : _NODE_941;
    wire [3 : 0] _NODE_955;
    wire [3 : 0] _NODE_956;
    wire [3 : 0] _NODE_957;
    wire [3 : 0] _NODE_958;
    wire [3 : 0] _NODE_959;
    wire [3 : 0] _NODE_960;
    assign _NODE_960 = tlcs_ready ? 1 : 0;
    assign _NODE_959 = eq_142_result ? _NODE_960 : 0;
    assign _NODE_958 = tlcs_ready ? 2 : _NODE_959;
    wire [3 : 0] _NODE_961;
    wire [3 : 0] _NODE_962;
    assign _NODE_962 = tlcs_ready ? 1 : 0;
    assign _NODE_961 = eq_142_result ? _NODE_962 : 0;
    assign _NODE_957 = eq_143_result ? _NODE_958 : _NODE_961;
    assign _NODE_956 = tlcs_ready ? 3 : _NODE_957;
    wire [3 : 0] _NODE_963;
    wire [3 : 0] _NODE_964;
    wire [3 : 0] _NODE_965;
    wire [3 : 0] _NODE_966;
    assign _NODE_966 = tlcs_ready ? 1 : 0;
    assign _NODE_965 = eq_142_result ? _NODE_966 : 0;
    assign _NODE_964 = tlcs_ready ? 2 : _NODE_965;
    wire [3 : 0] _NODE_967;
    wire [3 : 0] _NODE_968;
    assign _NODE_968 = tlcs_ready ? 1 : 0;
    assign _NODE_967 = eq_142_result ? _NODE_968 : 0;
    assign _NODE_963 = eq_143_result ? _NODE_964 : _NODE_967;
    assign _NODE_955 = eq_144_result ? _NODE_956 : _NODE_963;
    assign _NODE_939 = eq_145_result ? _NODE_940 : _NODE_955;
    assign _NODE_938 = and_26_result ? 5 : _NODE_939;
    wire [3 : 0] _NODE_969;
    wire [3 : 0] _NODE_970;
    wire [3 : 0] _NODE_971;
    wire [3 : 0] _NODE_972;
    wire [3 : 0] _NODE_973;
    wire [3 : 0] _NODE_974;
    wire [3 : 0] _NODE_975;
    wire [3 : 0] _NODE_976;
    assign _NODE_976 = tlcs_ready ? 1 : 0;
    assign _NODE_975 = eq_142_result ? _NODE_976 : 0;
    assign _NODE_974 = tlcs_ready ? 2 : _NODE_975;
    wire [3 : 0] _NODE_977;
    wire [3 : 0] _NODE_978;
    assign _NODE_978 = tlcs_ready ? 1 : 0;
    assign _NODE_977 = eq_142_result ? _NODE_978 : 0;
    assign _NODE_973 = eq_143_result ? _NODE_974 : _NODE_977;
    assign _NODE_972 = tlcs_ready ? 3 : _NODE_973;
    wire [3 : 0] _NODE_979;
    wire [3 : 0] _NODE_980;
    wire [3 : 0] _NODE_981;
    wire [3 : 0] _NODE_982;
    assign _NODE_982 = tlcs_ready ? 1 : 0;
    assign _NODE_981 = eq_142_result ? _NODE_982 : 0;
    assign _NODE_980 = tlcs_ready ? 2 : _NODE_981;
    wire [3 : 0] _NODE_983;
    wire [3 : 0] _NODE_984;
    assign _NODE_984 = tlcs_ready ? 1 : 0;
    assign _NODE_983 = eq_142_result ? _NODE_984 : 0;
    assign _NODE_979 = eq_143_result ? _NODE_980 : _NODE_983;
    assign _NODE_971 = eq_144_result ? _NODE_972 : _NODE_979;
    assign _NODE_970 = tlcs_ready ? 4 : _NODE_971;
    wire [3 : 0] _NODE_985;
    wire [3 : 0] _NODE_986;
    wire [3 : 0] _NODE_987;
    wire [3 : 0] _NODE_988;
    wire [3 : 0] _NODE_989;
    wire [3 : 0] _NODE_990;
    assign _NODE_990 = tlcs_ready ? 1 : 0;
    assign _NODE_989 = eq_142_result ? _NODE_990 : 0;
    assign _NODE_988 = tlcs_ready ? 2 : _NODE_989;
    wire [3 : 0] _NODE_991;
    wire [3 : 0] _NODE_992;
    assign _NODE_992 = tlcs_ready ? 1 : 0;
    assign _NODE_991 = eq_142_result ? _NODE_992 : 0;
    assign _NODE_987 = eq_143_result ? _NODE_988 : _NODE_991;
    assign _NODE_986 = tlcs_ready ? 3 : _NODE_987;
    wire [3 : 0] _NODE_993;
    wire [3 : 0] _NODE_994;
    wire [3 : 0] _NODE_995;
    wire [3 : 0] _NODE_996;
    assign _NODE_996 = tlcs_ready ? 1 : 0;
    assign _NODE_995 = eq_142_result ? _NODE_996 : 0;
    assign _NODE_994 = tlcs_ready ? 2 : _NODE_995;
    wire [3 : 0] _NODE_997;
    wire [3 : 0] _NODE_998;
    assign _NODE_998 = tlcs_ready ? 1 : 0;
    assign _NODE_997 = eq_142_result ? _NODE_998 : 0;
    assign _NODE_993 = eq_143_result ? _NODE_994 : _NODE_997;
    assign _NODE_985 = eq_144_result ? _NODE_986 : _NODE_993;
    assign _NODE_969 = eq_145_result ? _NODE_970 : _NODE_985;
    assign _NODE_937 = eq_146_result ? _NODE_938 : _NODE_969;
    assign _NODE_936 = tlcs_ready ? 7 : _NODE_937;
    wire [3 : 0] _NODE_999;
    wire [3 : 0] _NODE_1000;
    wire [3 : 0] _NODE_1001;
    wire [3 : 0] _NODE_1002;
    wire [3 : 0] _NODE_1003;
    wire [3 : 0] _NODE_1004;
    wire [3 : 0] _NODE_1005;
    wire [3 : 0] _NODE_1006;
    wire [3 : 0] _NODE_1007;
    wire [3 : 0] _NODE_1008;
    assign _NODE_1008 = tlcs_ready ? 1 : 0;
    assign _NODE_1007 = eq_142_result ? _NODE_1008 : 0;
    assign _NODE_1006 = tlcs_ready ? 2 : _NODE_1007;
    wire [3 : 0] _NODE_1009;
    wire [3 : 0] _NODE_1010;
    assign _NODE_1010 = tlcs_ready ? 1 : 0;
    assign _NODE_1009 = eq_142_result ? _NODE_1010 : 0;
    assign _NODE_1005 = eq_143_result ? _NODE_1006 : _NODE_1009;
    assign _NODE_1004 = tlcs_ready ? 3 : _NODE_1005;
    wire [3 : 0] _NODE_1011;
    wire [3 : 0] _NODE_1012;
    wire [3 : 0] _NODE_1013;
    wire [3 : 0] _NODE_1014;
    assign _NODE_1014 = tlcs_ready ? 1 : 0;
    assign _NODE_1013 = eq_142_result ? _NODE_1014 : 0;
    assign _NODE_1012 = tlcs_ready ? 2 : _NODE_1013;
    wire [3 : 0] _NODE_1015;
    wire [3 : 0] _NODE_1016;
    assign _NODE_1016 = tlcs_ready ? 1 : 0;
    assign _NODE_1015 = eq_142_result ? _NODE_1016 : 0;
    assign _NODE_1011 = eq_143_result ? _NODE_1012 : _NODE_1015;
    assign _NODE_1003 = eq_144_result ? _NODE_1004 : _NODE_1011;
    assign _NODE_1002 = tlcs_ready ? 4 : _NODE_1003;
    wire [3 : 0] _NODE_1017;
    wire [3 : 0] _NODE_1018;
    wire [3 : 0] _NODE_1019;
    wire [3 : 0] _NODE_1020;
    wire [3 : 0] _NODE_1021;
    wire [3 : 0] _NODE_1022;
    assign _NODE_1022 = tlcs_ready ? 1 : 0;
    assign _NODE_1021 = eq_142_result ? _NODE_1022 : 0;
    assign _NODE_1020 = tlcs_ready ? 2 : _NODE_1021;
    wire [3 : 0] _NODE_1023;
    wire [3 : 0] _NODE_1024;
    assign _NODE_1024 = tlcs_ready ? 1 : 0;
    assign _NODE_1023 = eq_142_result ? _NODE_1024 : 0;
    assign _NODE_1019 = eq_143_result ? _NODE_1020 : _NODE_1023;
    assign _NODE_1018 = tlcs_ready ? 3 : _NODE_1019;
    wire [3 : 0] _NODE_1025;
    wire [3 : 0] _NODE_1026;
    wire [3 : 0] _NODE_1027;
    wire [3 : 0] _NODE_1028;
    assign _NODE_1028 = tlcs_ready ? 1 : 0;
    assign _NODE_1027 = eq_142_result ? _NODE_1028 : 0;
    assign _NODE_1026 = tlcs_ready ? 2 : _NODE_1027;
    wire [3 : 0] _NODE_1029;
    wire [3 : 0] _NODE_1030;
    assign _NODE_1030 = tlcs_ready ? 1 : 0;
    assign _NODE_1029 = eq_142_result ? _NODE_1030 : 0;
    assign _NODE_1025 = eq_143_result ? _NODE_1026 : _NODE_1029;
    assign _NODE_1017 = eq_144_result ? _NODE_1018 : _NODE_1025;
    assign _NODE_1001 = eq_145_result ? _NODE_1002 : _NODE_1017;
    assign _NODE_1000 = and_26_result ? 5 : _NODE_1001;
    wire [3 : 0] _NODE_1031;
    wire [3 : 0] _NODE_1032;
    wire [3 : 0] _NODE_1033;
    wire [3 : 0] _NODE_1034;
    wire [3 : 0] _NODE_1035;
    wire [3 : 0] _NODE_1036;
    wire [3 : 0] _NODE_1037;
    wire [3 : 0] _NODE_1038;
    assign _NODE_1038 = tlcs_ready ? 1 : 0;
    assign _NODE_1037 = eq_142_result ? _NODE_1038 : 0;
    assign _NODE_1036 = tlcs_ready ? 2 : _NODE_1037;
    wire [3 : 0] _NODE_1039;
    wire [3 : 0] _NODE_1040;
    assign _NODE_1040 = tlcs_ready ? 1 : 0;
    assign _NODE_1039 = eq_142_result ? _NODE_1040 : 0;
    assign _NODE_1035 = eq_143_result ? _NODE_1036 : _NODE_1039;
    assign _NODE_1034 = tlcs_ready ? 3 : _NODE_1035;
    wire [3 : 0] _NODE_1041;
    wire [3 : 0] _NODE_1042;
    wire [3 : 0] _NODE_1043;
    wire [3 : 0] _NODE_1044;
    assign _NODE_1044 = tlcs_ready ? 1 : 0;
    assign _NODE_1043 = eq_142_result ? _NODE_1044 : 0;
    assign _NODE_1042 = tlcs_ready ? 2 : _NODE_1043;
    wire [3 : 0] _NODE_1045;
    wire [3 : 0] _NODE_1046;
    assign _NODE_1046 = tlcs_ready ? 1 : 0;
    assign _NODE_1045 = eq_142_result ? _NODE_1046 : 0;
    assign _NODE_1041 = eq_143_result ? _NODE_1042 : _NODE_1045;
    assign _NODE_1033 = eq_144_result ? _NODE_1034 : _NODE_1041;
    assign _NODE_1032 = tlcs_ready ? 4 : _NODE_1033;
    wire [3 : 0] _NODE_1047;
    wire [3 : 0] _NODE_1048;
    wire [3 : 0] _NODE_1049;
    wire [3 : 0] _NODE_1050;
    wire [3 : 0] _NODE_1051;
    wire [3 : 0] _NODE_1052;
    assign _NODE_1052 = tlcs_ready ? 1 : 0;
    assign _NODE_1051 = eq_142_result ? _NODE_1052 : 0;
    assign _NODE_1050 = tlcs_ready ? 2 : _NODE_1051;
    wire [3 : 0] _NODE_1053;
    wire [3 : 0] _NODE_1054;
    assign _NODE_1054 = tlcs_ready ? 1 : 0;
    assign _NODE_1053 = eq_142_result ? _NODE_1054 : 0;
    assign _NODE_1049 = eq_143_result ? _NODE_1050 : _NODE_1053;
    assign _NODE_1048 = tlcs_ready ? 3 : _NODE_1049;
    wire [3 : 0] _NODE_1055;
    wire [3 : 0] _NODE_1056;
    wire [3 : 0] _NODE_1057;
    wire [3 : 0] _NODE_1058;
    assign _NODE_1058 = tlcs_ready ? 1 : 0;
    assign _NODE_1057 = eq_142_result ? _NODE_1058 : 0;
    assign _NODE_1056 = tlcs_ready ? 2 : _NODE_1057;
    wire [3 : 0] _NODE_1059;
    wire [3 : 0] _NODE_1060;
    assign _NODE_1060 = tlcs_ready ? 1 : 0;
    assign _NODE_1059 = eq_142_result ? _NODE_1060 : 0;
    assign _NODE_1055 = eq_143_result ? _NODE_1056 : _NODE_1059;
    assign _NODE_1047 = eq_144_result ? _NODE_1048 : _NODE_1055;
    assign _NODE_1031 = eq_145_result ? _NODE_1032 : _NODE_1047;
    assign _NODE_999 = eq_146_result ? _NODE_1000 : _NODE_1031;
    assign _NODE_935 = eq_147_result ? _NODE_936 : _NODE_999;
    assign _NODE_807 = eq_148_result ? _NODE_808 : _NODE_935;
    assign _NODE_551 = eq_150_result ? _NODE_552 : _NODE_807;
    assign tlcs_cmd = eq_151_result ? _NODE_40 : _NODE_551;
    assign tlcs_ready = and_25_result;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            layer_mask <= 0;
            disp_counter <= 0;
            layer_counter <= 0;
            state <= 0;
        end
        else begin
            layer_mask <= layer_mask;
            if (eq_141_result) begin
                if (neq_2_result) begin
                    layer_mask <= 1;
                end
            end
            if (eq_149_result) begin
                if (gt_3_result) begin
                    layer_mask <= 0;
                end
            end
            if (eq_153_result) begin
                if (eq_154_result) begin
                    layer_mask <= 0;
                end
                else begin
                    if (eq_155_result) begin
                        layer_mask <= 1;
                    end
                    if (eq_156_result) begin
                        layer_mask <= 2;
                    end
                    if (eq_157_result) begin
                        layer_mask <= 4;
                    end
                    if (eq_158_result) begin
                        layer_mask <= 8;
                    end
                    if (eq_159_result) begin
                        layer_mask <= 16;
                    end
                    if (eq_160_result) begin
                        layer_mask <= 32;
                    end
                    if (eq_161_result) begin
                        layer_mask <= 64;
                    end
                    if (eq_162_result) begin
                        layer_mask <= 128;
                    end
                end
            end
            disp_counter <= disp_counter;
            if (eq_148_result) begin
                if (tlcs_ready) begin
                    disp_counter <= 0;
                end
            end
            if (eq_149_result) begin
                disp_counter <= slice_24_result;
                if (gt_3_result) begin
                    disp_counter <= 0;
                end
            end
            if (eq_152_result) begin
                disp_counter <= slice_24_result;
                if (gt_4_result) begin
                    disp_counter <= 0;
                end
            end
            layer_counter <= layer_counter;
            if (eq_141_result) begin
                if (neq_2_result) begin
                    layer_counter <= 0;
                end
            end
            if (eq_147_result) begin
                if (tlcs_ready) begin
                    layer_counter <= slice_23_result;
                end
            end
            state <= state;
            if (eq_141_result) begin
                if (neq_2_result) begin
                    state <= 1;
                end
            end
            if (eq_142_result) begin
                if (tlcs_ready) begin
                    state <= 2;
                end
            end
            if (eq_143_result) begin
                if (tlcs_ready) begin
                    state <= 3;
                end
            end
            if (eq_144_result) begin
                if (tlcs_ready) begin
                    state <= 4;
                end
            end
            if (eq_145_result) begin
                if (tlcs_ready) begin
                    state <= 6;
                end
            end
            if (eq_146_result) begin
                if (and_26_result) begin
                    state <= 7;
                end
            end
            if (eq_147_result) begin
                if (tlcs_ready) begin
                    state <= 8;
                end
            end
            if (eq_148_result) begin
                if (tlcs_ready) begin
                    state <= 9;
                end
            end
            if (eq_149_result) begin
                if (gt_3_result) begin
                    state <= 11;
                end
            end
            if (eq_150_result) begin
                if (tlcs_ready) begin
                    state <= 10;
                end
            end
            if (eq_151_result) begin
                if (tlcs_ready) begin
                    state <= 12;
                end
            end
            if (eq_152_result) begin
                if (gt_4_result) begin
                    state <= 13;
                end
            end
            if (eq_153_result) begin
                if (eq_154_result) begin
                    state <= 0;
                end
                else begin
                    state <= 1;
                end
            end
        end
    end
endmodule
module I2cController_2de2 (
    input [31 : 0] io_config_clock_threshold,
    input [31 : 0] io_config_clock_period,
    input io_req_valid,
    output io_req_ready,
    input [7 : 0] io_req_data_size,
    input [7 : 0] io_req_data_address,
    input [7 : 0] io_req_data_header,
    input [7 : 0] io_req_data_payload_i0,
    input [7 : 0] io_req_data_payload_i1,
    input [7 : 0] io_req_data_payload_i2,
    input [7 : 0] io_req_data_payload_i3,
    input [7 : 0] io_req_data_payload_i4,
    input [7 : 0] io_req_data_payload_i5,
    input [7 : 0] io_req_data_payload_i6,
    input [7 : 0] io_req_data_payload_i7,
    input [7 : 0] io_req_data_payload_i8,
    input [7 : 0] io_req_data_payload_i9,
    input [7 : 0] io_req_data_payload_i10,
    input [7 : 0] io_req_data_payload_i11,
    input [7 : 0] io_req_data_payload_i12,
    input [7 : 0] io_req_data_payload_i13,
    input [7 : 0] io_req_data_payload_i14,
    input [7 : 0] io_req_data_payload_i15,
    output io_i2c_sda_o,
    input io_i2c_sda_i,
    output io_i2c_scl_o,
    input io_i2c_scl_i,
    output io_error,
    input io_clock,
    input io_reset
);
    // Internal Signal Declarations
    reg [2 : 0] state;
    reg [7 : 0] packet_i0;
    reg [7 : 0] packet_i1;
    reg [7 : 0] packet_i2;
    reg [7 : 0] packet_i3;
    reg [7 : 0] packet_i4;
    reg [7 : 0] packet_i5;
    reg [7 : 0] packet_i6;
    reg [7 : 0] packet_i7;
    reg [7 : 0] packet_i8;
    reg [7 : 0] packet_i9;
    reg [7 : 0] packet_i10;
    reg [7 : 0] packet_i11;
    reg [7 : 0] packet_i12;
    reg [7 : 0] packet_i13;
    reg [7 : 0] packet_i14;
    reg [7 : 0] packet_i15;
    reg [7 : 0] packet_i16;
    reg [7 : 0] packet_i17;
    reg [7 : 0] packet_size;
    reg [31 : 0] clock_counter;
    reg [15 : 0] data_counter;
    reg [15 : 0] beat_counter;
    wire next_data_i0;
    wire next_data_i1;
    wire next_data_i2;
    wire next_data_i3;
    wire next_data_i4;
    wire next_data_i5;
    wire next_data_i6;
    wire next_data_i7;
    reg data_reg_i0;
    reg data_reg_i1;
    reg data_reg_i2;
    reg data_reg_i3;
    reg data_reg_i4;
    reg data_reg_i5;
    reg data_reg_i6;
    reg data_reg_i7;
    wire data_out;
    wire [1 : 0] sda_state;
    wire [1 : 0] scl_state;
    wire ge_2_pulse;
    wire eq_163_rising_edge;
    wire ge_3_beat_finished;
    wire [16 : 0] add_16_result;
    wire [7 : 0] mux_7_result;
    wire slice_26_result;
    wire slice_27_result;
    wire slice_28_result;
    wire slice_29_result;
    wire slice_30_result;
    wire slice_31_result;
    wire slice_32_result;
    wire slice_33_result;
    wire eq_164_result;
    wire eq_165_result;
    wire eq_166_result;
    wire mux_15_result;
    wire [32 : 0] add_24_result;
    wire [31 : 0] slice_34_result;
    wire eq_167_result;
    wire and_27_result;
    wire [8 : 0] add_25_result;
    wire [7 : 0] slice_35_result;
    wire eq_168_result;
    wire slice_36_result;
    wire slice_37_result;
    wire slice_38_result;
    wire slice_39_result;
    wire slice_40_result;
    wire slice_41_result;
    wire slice_42_result;
    wire slice_43_result;
    wire eq_169_result;
    wire eq_170_result;
    wire [16 : 0] add_26_result;
    wire [15 : 0] slice_44_result;
    wire eq_171_result;
    wire [7 : 0] sub_1_result;
    wire eq_172_result;
    wire [15 : 0] slice_45_result;
    wire eq_173_result;
    wire eq_174_result;
    
    // Operator Synthesis
    assign ge_2_pulse = clock_counter >= io_config_clock_threshold;
    assign eq_163_rising_edge = clock_counter == io_config_clock_threshold;
    assign ge_3_beat_finished = clock_counter >= io_config_clock_period;
    assign add_16_result = data_counter + 1;
    wire [7 : 0] _NODE_1061 [17 : 0];
    assign _NODE_1061[0] = packet_i0;
    assign _NODE_1061[1] = packet_i1;
    assign _NODE_1061[2] = packet_i2;
    assign _NODE_1061[3] = packet_i3;
    assign _NODE_1061[4] = packet_i4;
    assign _NODE_1061[5] = packet_i5;
    assign _NODE_1061[6] = packet_i6;
    assign _NODE_1061[7] = packet_i7;
    assign _NODE_1061[8] = packet_i8;
    assign _NODE_1061[9] = packet_i9;
    assign _NODE_1061[10] = packet_i10;
    assign _NODE_1061[11] = packet_i11;
    assign _NODE_1061[12] = packet_i12;
    assign _NODE_1061[13] = packet_i13;
    assign _NODE_1061[14] = packet_i14;
    assign _NODE_1061[15] = packet_i15;
    assign _NODE_1061[16] = packet_i16;
    assign _NODE_1061[17] = packet_i17;
    assign mux_7_result = _NODE_1061[add_16_result];
    assign slice_26_result = mux_7_result[7:7];
    assign slice_27_result = mux_7_result[6:6];
    assign slice_28_result = mux_7_result[5:5];
    assign slice_29_result = mux_7_result[4:4];
    assign slice_30_result = mux_7_result[3:3];
    assign slice_31_result = mux_7_result[2:2];
    assign slice_32_result = mux_7_result[1:1];
    assign slice_33_result = mux_7_result[0:0];
    assign eq_164_result = sda_state == 1;
    assign eq_165_result = sda_state == 2;
    assign eq_166_result = scl_state == 1;
    wire [0 : 0] _NODE_1062 [7 : 0];
    assign _NODE_1062[0] = data_reg_i0;
    assign _NODE_1062[1] = data_reg_i1;
    assign _NODE_1062[2] = data_reg_i2;
    assign _NODE_1062[3] = data_reg_i3;
    assign _NODE_1062[4] = data_reg_i4;
    assign _NODE_1062[5] = data_reg_i5;
    assign _NODE_1062[6] = data_reg_i6;
    assign _NODE_1062[7] = data_reg_i7;
    assign mux_15_result = _NODE_1062[beat_counter];
    assign add_24_result = clock_counter + 1;
    assign slice_34_result = add_24_result[31:0];
    assign eq_167_result = state == 0;
    assign and_27_result = io_req_ready & io_req_valid;
    assign add_25_result = io_req_data_size + 2;
    assign slice_35_result = add_25_result[7:0];
    assign eq_168_result = state == 1;
    assign slice_36_result = packet_i0[7:7];
    assign slice_37_result = packet_i0[6:6];
    assign slice_38_result = packet_i0[5:5];
    assign slice_39_result = packet_i0[4:4];
    assign slice_40_result = packet_i0[3:3];
    assign slice_41_result = packet_i0[2:2];
    assign slice_42_result = packet_i0[1:1];
    assign slice_43_result = packet_i0[0:0];
    assign eq_169_result = state == 2;
    assign eq_170_result = beat_counter == 7;
    assign add_26_result = beat_counter + 1;
    assign slice_44_result = add_26_result[15:0];
    assign eq_171_result = state == 3;
    assign sub_1_result = packet_size - 1;
    assign eq_172_result = data_counter == sub_1_result;
    assign slice_45_result = add_16_result[15:0];
    assign eq_173_result = state == 4;
    assign eq_174_result = state == 5;
    
    // Connections
    assign io_req_ready = eq_167_result ? ge_2_pulse : 0;
    wire _NODE_1063;
    assign _NODE_1063 = eq_164_result ? 0 : 1;
    assign io_i2c_sda_o = eq_165_result ? data_out : _NODE_1063;
    assign io_i2c_scl_o = eq_166_result ? ge_2_pulse : 1;
    assign io_error = eq_173_result ? 1 : 0;
    assign next_data_i0 = slice_26_result;
    assign next_data_i1 = slice_27_result;
    assign next_data_i2 = slice_28_result;
    assign next_data_i3 = slice_29_result;
    assign next_data_i4 = slice_30_result;
    assign next_data_i5 = slice_31_result;
    assign next_data_i6 = slice_32_result;
    assign next_data_i7 = slice_33_result;
    assign data_out = mux_15_result;
    wire [1 : 0] _NODE_1064;
    wire [1 : 0] _NODE_1065;
    assign _NODE_1065 = eq_168_result ? 1 : 0;
    assign _NODE_1064 = eq_169_result ? 2 : _NODE_1065;
    assign sda_state = eq_174_result ? 1 : _NODE_1064;
    wire [1 : 0] _NODE_1066;
    wire [1 : 0] _NODE_1067;
    assign _NODE_1067 = eq_169_result ? 1 : 0;
    assign _NODE_1066 = eq_171_result ? 1 : _NODE_1067;
    assign scl_state = eq_174_result ? 1 : _NODE_1066;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            state <= 0;
            packet_size <= 0;
            clock_counter <= 0;
            data_counter <= 0;
            beat_counter <= 0;
            data_reg_i0 <= 0;
            data_reg_i1 <= 0;
            data_reg_i2 <= 0;
            data_reg_i3 <= 0;
            data_reg_i4 <= 0;
            data_reg_i5 <= 0;
            data_reg_i6 <= 0;
            data_reg_i7 <= 0;
        end
        else begin
            state <= state;
            if (eq_167_result) begin
                if (and_27_result) begin
                    state <= 1;
                end
            end
            if (eq_168_result) begin
                if (ge_2_pulse) begin
                    state <= 2;
                end
            end
            if (eq_169_result) begin
                if (ge_3_beat_finished) begin
                    if (eq_170_result) begin
                        state <= 3;
                    end
                end
            end
            if (eq_171_result) begin
                if (ge_3_beat_finished) begin
                    if (eq_172_result) begin
                        state <= 5;
                    end
                    else begin
                        state <= 2;
                    end
                end
            end
            if (eq_174_result) begin
                if (ge_3_beat_finished) begin
                    state <= 0;
                end
            end
            packet_size <= packet_size;
            if (eq_167_result) begin
                if (and_27_result) begin
                    packet_size <= slice_35_result;
                end
            end
            clock_counter <= clock_counter;
            clock_counter <= slice_34_result;
            if (eq_167_result) begin
                if (and_27_result) begin
                    clock_counter <= 0;
                end
            end
            if (eq_168_result) begin
                if (ge_2_pulse) begin
                    clock_counter <= 0;
                end
            end
            if (eq_169_result) begin
                if (ge_3_beat_finished) begin
                    clock_counter <= 0;
                end
            end
            if (eq_171_result) begin
                if (ge_3_beat_finished) begin
                    clock_counter <= 0;
                end
            end
            if (eq_174_result) begin
                if (ge_3_beat_finished) begin
                    clock_counter <= 0;
                end
            end
            data_counter <= data_counter;
            if (eq_167_result) begin
                if (and_27_result) begin
                    data_counter <= 0;
                end
            end
            if (eq_171_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_172_result) begin
                        data_counter <= slice_45_result;
                    end
                end
            end
            beat_counter <= beat_counter;
            if (eq_167_result) begin
                if (and_27_result) begin
                    beat_counter <= 0;
                end
            end
            if (eq_169_result) begin
                if (ge_3_beat_finished) begin
                    if (eq_170_result) begin
                        beat_counter <= 0;
                    end
                    else begin
                        beat_counter <= slice_44_result;
                    end
                end
            end
            data_reg_i0 <= data_reg_i0;
            if (eq_168_result) begin
                if (ge_2_pulse) begin
                    data_reg_i0 <= slice_36_result;
                end
            end
            if (eq_171_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_172_result) begin
                        data_reg_i0 <= next_data_i0;
                    end
                end
            end
            data_reg_i1 <= data_reg_i1;
            if (eq_168_result) begin
                if (ge_2_pulse) begin
                    data_reg_i1 <= slice_37_result;
                end
            end
            if (eq_171_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_172_result) begin
                        data_reg_i1 <= next_data_i1;
                    end
                end
            end
            data_reg_i2 <= data_reg_i2;
            if (eq_168_result) begin
                if (ge_2_pulse) begin
                    data_reg_i2 <= slice_38_result;
                end
            end
            if (eq_171_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_172_result) begin
                        data_reg_i2 <= next_data_i2;
                    end
                end
            end
            data_reg_i3 <= data_reg_i3;
            if (eq_168_result) begin
                if (ge_2_pulse) begin
                    data_reg_i3 <= slice_39_result;
                end
            end
            if (eq_171_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_172_result) begin
                        data_reg_i3 <= next_data_i3;
                    end
                end
            end
            data_reg_i4 <= data_reg_i4;
            if (eq_168_result) begin
                if (ge_2_pulse) begin
                    data_reg_i4 <= slice_40_result;
                end
            end
            if (eq_171_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_172_result) begin
                        data_reg_i4 <= next_data_i4;
                    end
                end
            end
            data_reg_i5 <= data_reg_i5;
            if (eq_168_result) begin
                if (ge_2_pulse) begin
                    data_reg_i5 <= slice_41_result;
                end
            end
            if (eq_171_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_172_result) begin
                        data_reg_i5 <= next_data_i5;
                    end
                end
            end
            data_reg_i6 <= data_reg_i6;
            if (eq_168_result) begin
                if (ge_2_pulse) begin
                    data_reg_i6 <= slice_42_result;
                end
            end
            if (eq_171_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_172_result) begin
                        data_reg_i6 <= next_data_i6;
                    end
                end
            end
            data_reg_i7 <= data_reg_i7;
            if (eq_168_result) begin
                if (ge_2_pulse) begin
                    data_reg_i7 <= slice_43_result;
                end
            end
            if (eq_171_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_172_result) begin
                        data_reg_i7 <= next_data_i7;
                    end
                end
            end
        end
        packet_i0 <= packet_i0;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i0 <= io_req_data_address;
            end
        end
        packet_i1 <= packet_i1;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i1 <= io_req_data_header;
            end
        end
        packet_i2 <= packet_i2;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i2 <= io_req_data_payload_i0;
            end
        end
        packet_i3 <= packet_i3;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i3 <= io_req_data_payload_i1;
            end
        end
        packet_i4 <= packet_i4;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i4 <= io_req_data_payload_i2;
            end
        end
        packet_i5 <= packet_i5;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i5 <= io_req_data_payload_i3;
            end
        end
        packet_i6 <= packet_i6;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i6 <= io_req_data_payload_i4;
            end
        end
        packet_i7 <= packet_i7;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i7 <= io_req_data_payload_i5;
            end
        end
        packet_i8 <= packet_i8;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i8 <= io_req_data_payload_i6;
            end
        end
        packet_i9 <= packet_i9;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i9 <= io_req_data_payload_i7;
            end
        end
        packet_i10 <= packet_i10;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i10 <= io_req_data_payload_i8;
            end
        end
        packet_i11 <= packet_i11;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i11 <= io_req_data_payload_i9;
            end
        end
        packet_i12 <= packet_i12;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i12 <= io_req_data_payload_i10;
            end
        end
        packet_i13 <= packet_i13;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i13 <= io_req_data_payload_i11;
            end
        end
        packet_i14 <= packet_i14;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i14 <= io_req_data_payload_i12;
            end
        end
        packet_i15 <= packet_i15;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i15 <= io_req_data_payload_i13;
            end
        end
        packet_i16 <= packet_i16;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i16 <= io_req_data_payload_i14;
            end
        end
        packet_i17 <= packet_i17;
        if (eq_167_result) begin
            if (and_27_result) begin
                packet_i17 <= io_req_data_payload_i15;
            end
        end
    end
endmodule
module TlcController (
    output io_i2c_sda_o,
    input io_i2c_sda_i,
    output io_i2c_scl_o,
    input io_i2c_scl_i,
    output io_resetn,
    input [31 : 0] io_config_i2c_config_clock_threshold,
    input [31 : 0] io_config_i2c_config_clock_period,
    input [3 : 0] io_cmd_opcode,
    output io_cmd_ready,
    input [7 : 0] io_args_i0,
    input [7 : 0] io_args_i1,
    input [7 : 0] io_args_i2,
    input [7 : 0] io_args_i3,
    input [7 : 0] io_args_i4,
    input [7 : 0] io_args_i5,
    input [7 : 0] io_args_i6,
    input [7 : 0] io_args_i7,
    input [7 : 0] io_args_i8,
    input [7 : 0] io_args_i9,
    input [7 : 0] io_args_i10,
    input [7 : 0] io_args_i11,
    input [7 : 0] io_args_i12,
    input [7 : 0] io_args_i13,
    input [7 : 0] io_args_i14,
    input [7 : 0] io_args_i15,
    output [31 : 0] io_err_count,
    input io_clock,
    input io_reset
);
    // Internal Signal Declarations
    reg [2 : 0] state;
    reg [31 : 0] error_count;
    reg [15 : 0] reset_counter;
    wire [31 : 0] i2c_ctrl_config_clock_threshold;
    wire [31 : 0] i2c_ctrl_config_clock_period;
    wire i2c_ctrl_req_valid;
    wire i2c_ctrl_req_ready;
    wire [7 : 0] i2c_ctrl_req_data_size;
    wire [7 : 0] i2c_ctrl_req_data_address;
    wire [7 : 0] i2c_ctrl_req_data_header;
    wire [7 : 0] i2c_ctrl_req_data_payload_i0;
    wire [7 : 0] i2c_ctrl_req_data_payload_i1;
    wire [7 : 0] i2c_ctrl_req_data_payload_i2;
    wire [7 : 0] i2c_ctrl_req_data_payload_i3;
    wire [7 : 0] i2c_ctrl_req_data_payload_i4;
    wire [7 : 0] i2c_ctrl_req_data_payload_i5;
    wire [7 : 0] i2c_ctrl_req_data_payload_i6;
    wire [7 : 0] i2c_ctrl_req_data_payload_i7;
    wire [7 : 0] i2c_ctrl_req_data_payload_i8;
    wire [7 : 0] i2c_ctrl_req_data_payload_i9;
    wire [7 : 0] i2c_ctrl_req_data_payload_i10;
    wire [7 : 0] i2c_ctrl_req_data_payload_i11;
    wire [7 : 0] i2c_ctrl_req_data_payload_i12;
    wire [7 : 0] i2c_ctrl_req_data_payload_i13;
    wire [7 : 0] i2c_ctrl_req_data_payload_i14;
    wire [7 : 0] i2c_ctrl_req_data_payload_i15;
    wire i2c_ctrl_i2c_sda_o;
    wire i2c_ctrl_i2c_sda_i;
    wire i2c_ctrl_i2c_scl_o;
    wire i2c_ctrl_i2c_scl_i;
    wire i2c_ctrl_error;
    wire i2c_ctrl_clock;
    wire i2c_ctrl_reset;
    wire eq_175_result;
    wire [16 : 0] add_28_result;
    wire [15 : 0] slice_46_result;
    wire gt_5_result;
    wire gt_6_result;
    wire eq_176_result;
    wire eq_177_result;
    wire eq_178_result;
    wire eq_179_result;
    wire eq_180_result;
    wire eq_181_result;
    wire eq_182_result;
    wire eq_183_result;
    wire eq_184_result;
    wire eq_185_result;
    wire eq_186_result;
    wire eq_187_result;
    wire [32 : 0] add_29_result;
    wire [31 : 0] slice_47_result;
    
    // Operator Synthesis
    I2cController_2de2 i2c_ctrl (
        .io_config_clock_threshold(i2c_ctrl_config_clock_threshold),
        .io_config_clock_period(i2c_ctrl_config_clock_period),
        .io_req_valid(i2c_ctrl_req_valid),
        .io_req_ready(i2c_ctrl_req_ready),
        .io_req_data_size(i2c_ctrl_req_data_size),
        .io_req_data_address(i2c_ctrl_req_data_address),
        .io_req_data_header(i2c_ctrl_req_data_header),
        .io_req_data_payload_i0(i2c_ctrl_req_data_payload_i0),
        .io_req_data_payload_i1(i2c_ctrl_req_data_payload_i1),
        .io_req_data_payload_i2(i2c_ctrl_req_data_payload_i2),
        .io_req_data_payload_i3(i2c_ctrl_req_data_payload_i3),
        .io_req_data_payload_i4(i2c_ctrl_req_data_payload_i4),
        .io_req_data_payload_i5(i2c_ctrl_req_data_payload_i5),
        .io_req_data_payload_i6(i2c_ctrl_req_data_payload_i6),
        .io_req_data_payload_i7(i2c_ctrl_req_data_payload_i7),
        .io_req_data_payload_i8(i2c_ctrl_req_data_payload_i8),
        .io_req_data_payload_i9(i2c_ctrl_req_data_payload_i9),
        .io_req_data_payload_i10(i2c_ctrl_req_data_payload_i10),
        .io_req_data_payload_i11(i2c_ctrl_req_data_payload_i11),
        .io_req_data_payload_i12(i2c_ctrl_req_data_payload_i12),
        .io_req_data_payload_i13(i2c_ctrl_req_data_payload_i13),
        .io_req_data_payload_i14(i2c_ctrl_req_data_payload_i14),
        .io_req_data_payload_i15(i2c_ctrl_req_data_payload_i15),
        .io_i2c_sda_o(i2c_ctrl_i2c_sda_o),
        .io_i2c_sda_i(i2c_ctrl_i2c_sda_i),
        .io_i2c_scl_o(i2c_ctrl_i2c_scl_o),
        .io_i2c_scl_i(i2c_ctrl_i2c_scl_i),
        .io_error(i2c_ctrl_error),
        .io_clock(i2c_ctrl_clock),
        .io_reset(i2c_ctrl_reset)
    );
    assign eq_175_result = state == 0;
    assign add_28_result = reset_counter + 1;
    assign slice_46_result = add_28_result[15:0];
    assign gt_5_result = reset_counter > 50;
    assign gt_6_result = reset_counter > 100;
    assign eq_176_result = state == 1;
    assign eq_177_result = state == 3;
    assign eq_178_result = io_cmd_opcode == 1;
    assign eq_179_result = io_cmd_opcode == 4;
    assign eq_180_result = io_cmd_opcode == 2;
    assign eq_181_result = io_cmd_opcode == 3;
    assign eq_182_result = io_cmd_opcode == 5;
    assign eq_183_result = io_cmd_opcode == 6;
    assign eq_184_result = io_cmd_opcode == 7;
    assign eq_185_result = io_cmd_opcode == 8;
    assign eq_186_result = io_cmd_opcode == 9;
    assign eq_187_result = state == 4;
    assign add_29_result = error_count + 1;
    assign slice_47_result = add_29_result[31:0];
    
    // Connections
    assign io_i2c_sda_o = i2c_ctrl_i2c_sda_o;
    assign io_i2c_scl_o = i2c_ctrl_i2c_scl_o;
    wire _NODE_1068;
    assign _NODE_1068 = gt_5_result ? 1 : 0;
    assign io_resetn = eq_175_result ? _NODE_1068 : 1;
    assign io_cmd_ready = eq_177_result ? i2c_ctrl_req_ready : 0;
    assign io_err_count = error_count;
    assign i2c_ctrl_config_clock_threshold = io_config_i2c_config_clock_threshold;
    assign i2c_ctrl_config_clock_period = io_config_i2c_config_clock_period;
    wire _NODE_1069;
    wire _NODE_1070;
    wire _NODE_1071;
    wire _NODE_1072;
    wire _NODE_1073;
    wire _NODE_1074;
    wire _NODE_1075;
    wire _NODE_1076;
    wire _NODE_1077;
    assign _NODE_1077 = eq_176_result ? 1 : 0;
    assign _NODE_1076 = eq_179_result ? 1 : _NODE_1077;
    assign _NODE_1075 = eq_180_result ? 1 : _NODE_1076;
    assign _NODE_1074 = eq_181_result ? 1 : _NODE_1075;
    assign _NODE_1073 = eq_182_result ? 1 : _NODE_1074;
    assign _NODE_1072 = eq_183_result ? 1 : _NODE_1073;
    assign _NODE_1071 = eq_184_result ? 1 : _NODE_1072;
    assign _NODE_1070 = eq_185_result ? 1 : _NODE_1071;
    assign _NODE_1069 = eq_186_result ? 1 : _NODE_1070;
    wire _NODE_1078;
    assign _NODE_1078 = eq_176_result ? 1 : 0;
    assign i2c_ctrl_req_valid = eq_177_result ? _NODE_1069 : _NODE_1078;
    wire [7 : 0] _NODE_1079;
    wire [7 : 0] _NODE_1080;
    wire [7 : 0] _NODE_1081;
    wire [7 : 0] _NODE_1082;
    wire [7 : 0] _NODE_1083;
    wire [7 : 0] _NODE_1084;
    wire [7 : 0] _NODE_1085;
    wire [7 : 0] _NODE_1086;
    wire [7 : 0] _NODE_1087;
    assign _NODE_1087 = eq_176_result ? 1 : 0;
    assign _NODE_1086 = eq_179_result ? 1 : _NODE_1087;
    assign _NODE_1085 = eq_180_result ? 1 : _NODE_1086;
    assign _NODE_1084 = eq_181_result ? 1 : _NODE_1085;
    assign _NODE_1083 = eq_182_result ? 1 : _NODE_1084;
    assign _NODE_1082 = eq_183_result ? 1 : _NODE_1083;
    assign _NODE_1081 = eq_184_result ? 16 : _NODE_1082;
    assign _NODE_1080 = eq_185_result ? 4 : _NODE_1081;
    assign _NODE_1079 = eq_186_result ? 4 : _NODE_1080;
    wire [7 : 0] _NODE_1088;
    assign _NODE_1088 = eq_176_result ? 1 : 0;
    assign i2c_ctrl_req_data_size = eq_177_result ? _NODE_1079 : _NODE_1088;
    wire [7 : 0] _NODE_1089;
    wire [7 : 0] _NODE_1090;
    wire [7 : 0] _NODE_1091;
    wire [7 : 0] _NODE_1092;
    wire [7 : 0] _NODE_1093;
    wire [7 : 0] _NODE_1094;
    wire [7 : 0] _NODE_1095;
    wire [7 : 0] _NODE_1096;
    wire [7 : 0] _NODE_1097;
    assign _NODE_1097 = eq_176_result ? 214 : 0;
    assign _NODE_1096 = eq_179_result ? 208 : _NODE_1097;
    assign _NODE_1095 = eq_180_result ? 208 : _NODE_1096;
    assign _NODE_1094 = eq_181_result ? 208 : _NODE_1095;
    assign _NODE_1093 = eq_182_result ? 208 : _NODE_1094;
    assign _NODE_1092 = eq_183_result ? 208 : _NODE_1093;
    assign _NODE_1091 = eq_184_result ? 208 : _NODE_1092;
    assign _NODE_1090 = eq_185_result ? 208 : _NODE_1091;
    assign _NODE_1089 = eq_186_result ? 208 : _NODE_1090;
    wire [7 : 0] _NODE_1098;
    assign _NODE_1098 = eq_176_result ? 214 : 0;
    assign i2c_ctrl_req_data_address = eq_177_result ? _NODE_1089 : _NODE_1098;
    wire [7 : 0] _NODE_1099;
    wire [7 : 0] _NODE_1100;
    wire [7 : 0] _NODE_1101;
    wire [7 : 0] _NODE_1102;
    wire [7 : 0] _NODE_1103;
    wire [7 : 0] _NODE_1104;
    wire [7 : 0] _NODE_1105;
    wire [7 : 0] _NODE_1106;
    wire [7 : 0] _NODE_1107;
    assign _NODE_1107 = eq_176_result ? 165 : 0;
    assign _NODE_1106 = eq_179_result ? 156 : _NODE_1107;
    assign _NODE_1105 = eq_180_result ? 128 : _NODE_1106;
    assign _NODE_1104 = eq_181_result ? 129 : _NODE_1105;
    assign _NODE_1103 = eq_182_result ? 128 : _NODE_1104;
    assign _NODE_1102 = eq_183_result ? 128 : _NODE_1103;
    assign _NODE_1101 = eq_184_result ? 130 : _NODE_1102;
    assign _NODE_1100 = eq_185_result ? 148 : _NODE_1101;
    assign _NODE_1099 = eq_186_result ? 148 : _NODE_1100;
    wire [7 : 0] _NODE_1108;
    assign _NODE_1108 = eq_176_result ? 165 : 0;
    assign i2c_ctrl_req_data_header = eq_177_result ? _NODE_1099 : _NODE_1108;
    wire [7 : 0] _NODE_1109;
    wire [7 : 0] _NODE_1110;
    wire [7 : 0] _NODE_1111;
    wire [7 : 0] _NODE_1112;
    wire [7 : 0] _NODE_1113;
    assign _NODE_1113 = eq_176_result ? 90 : io_args_i0;
    assign _NODE_1112 = eq_182_result ? 1 : _NODE_1113;
    assign _NODE_1111 = eq_183_result ? 17 : _NODE_1112;
    assign _NODE_1110 = eq_185_result ? 170 : _NODE_1111;
    assign _NODE_1109 = eq_186_result ? 0 : _NODE_1110;
    wire [7 : 0] _NODE_1114;
    assign _NODE_1114 = eq_176_result ? 90 : io_args_i0;
    assign i2c_ctrl_req_data_payload_i0 = eq_177_result ? _NODE_1109 : _NODE_1114;
    wire [7 : 0] _NODE_1115;
    wire [7 : 0] _NODE_1116;
    assign _NODE_1116 = eq_185_result ? 170 : io_args_i1;
    assign _NODE_1115 = eq_186_result ? 0 : _NODE_1116;
    assign i2c_ctrl_req_data_payload_i1 = eq_177_result ? _NODE_1115 : io_args_i1;
    wire [7 : 0] _NODE_1117;
    wire [7 : 0] _NODE_1118;
    assign _NODE_1118 = eq_185_result ? 170 : io_args_i2;
    assign _NODE_1117 = eq_186_result ? 0 : _NODE_1118;
    assign i2c_ctrl_req_data_payload_i2 = eq_177_result ? _NODE_1117 : io_args_i2;
    wire [7 : 0] _NODE_1119;
    wire [7 : 0] _NODE_1120;
    assign _NODE_1120 = eq_185_result ? 170 : io_args_i3;
    assign _NODE_1119 = eq_186_result ? 0 : _NODE_1120;
    assign i2c_ctrl_req_data_payload_i3 = eq_177_result ? _NODE_1119 : io_args_i3;
    assign i2c_ctrl_req_data_payload_i4 = io_args_i4;
    assign i2c_ctrl_req_data_payload_i5 = io_args_i5;
    assign i2c_ctrl_req_data_payload_i6 = io_args_i6;
    assign i2c_ctrl_req_data_payload_i7 = io_args_i7;
    assign i2c_ctrl_req_data_payload_i8 = io_args_i8;
    assign i2c_ctrl_req_data_payload_i9 = io_args_i9;
    assign i2c_ctrl_req_data_payload_i10 = io_args_i10;
    assign i2c_ctrl_req_data_payload_i11 = io_args_i11;
    assign i2c_ctrl_req_data_payload_i12 = io_args_i12;
    assign i2c_ctrl_req_data_payload_i13 = io_args_i13;
    assign i2c_ctrl_req_data_payload_i14 = io_args_i14;
    assign i2c_ctrl_req_data_payload_i15 = io_args_i15;
    assign i2c_ctrl_i2c_sda_i = io_i2c_sda_i;
    assign i2c_ctrl_i2c_scl_i = io_i2c_scl_i;
    assign i2c_ctrl_clock = io_clock;
    wire _NODE_1121;
    assign _NODE_1121 = gt_5_result ? 0 : 1;
    assign i2c_ctrl_reset = eq_175_result ? _NODE_1121 : io_reset;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            state <= 0;
            error_count <= 0;
            reset_counter <= 0;
        end
        else begin
            state <= state;
            if (eq_175_result) begin
                if (gt_5_result) begin
                    if (gt_6_result) begin
                        state <= 1;
                    end
                end
            end
            if (eq_176_result) begin
                if (i2c_ctrl_req_ready) begin
                    state <= 3;
                end
            end
            if (eq_177_result) begin
                if (eq_178_result) begin
                    state <= 1;
                end
                if (eq_179_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 3;
                    end
                end
                if (eq_180_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 3;
                    end
                end
                if (eq_181_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 3;
                    end
                end
                if (eq_182_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 3;
                    end
                end
                if (eq_183_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 3;
                    end
                end
                if (eq_184_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 3;
                    end
                end
                if (eq_185_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 3;
                    end
                end
                if (eq_186_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 3;
                    end
                end
            end
            if (eq_187_result) begin
                state <= 3;
            end
            error_count <= error_count;
            if (eq_187_result) begin
                error_count <= slice_47_result;
            end
            reset_counter <= reset_counter;
            if (eq_175_result) begin
                reset_counter <= slice_46_result;
                if (gt_5_result) begin
                    if (gt_6_result) begin
                        reset_counter <= 0;
                    end
                end
            end
        end
    end
endmodule
module Cubeware (
    output io_uart_tx,
    input io_uart_rx,
    output io_i2cs_i0_sda_o,
    input io_i2cs_i0_sda_i,
    output io_i2cs_i0_scl_o,
    input io_i2cs_i0_scl_i,
    output io_i2cs_i1_sda_o,
    input io_i2cs_i1_sda_i,
    output io_i2cs_i1_scl_o,
    input io_i2cs_i1_scl_i,
    output io_i2cs_i2_sda_o,
    input io_i2cs_i2_sda_i,
    output io_i2cs_i2_scl_o,
    input io_i2cs_i2_scl_i,
    output io_i2cs_i3_sda_o,
    input io_i2cs_i3_sda_i,
    output io_i2cs_i3_scl_o,
    input io_i2cs_i3_scl_i,
    output io_resetns_i0,
    output io_resetns_i1,
    output io_resetns_i2,
    output io_resetns_i3,
    output [7 : 0] io_layer_mask,
    output [8 : 0] io_ram_read_address,
    input [7 : 0] io_ram_read_data,
    output [8 : 0] io_ram_write_address,
    output io_ram_write_write,
    output [7 : 0] io_ram_write_data,
    input io_clock,
    input io_reset
);
    // Internal Signal Declarations
    reg [7 : 0] reg0_i0;
    reg [7 : 0] reg0_i1;
    reg [7 : 0] reg0_i2;
    reg [7 : 0] reg0_i3;
    reg [7 : 0] reg0_i4;
    reg [7 : 0] reg0_i5;
    reg [7 : 0] reg0_i6;
    reg [7 : 0] reg0_i7;
    reg [7 : 0] reg0_i8;
    reg [7 : 0] reg0_i9;
    reg [7 : 0] reg0_i10;
    reg [7 : 0] reg0_i11;
    reg [7 : 0] reg0_i12;
    reg [7 : 0] reg0_i13;
    reg [7 : 0] reg0_i14;
    reg [7 : 0] reg0_i15;
    reg [7 : 0] reg1_i0;
    reg [7 : 0] reg1_i1;
    reg [7 : 0] reg1_i2;
    reg [7 : 0] reg1_i3;
    reg [7 : 0] reg1_i4;
    reg [7 : 0] reg1_i5;
    reg [7 : 0] reg1_i6;
    reg [7 : 0] reg1_i7;
    reg [7 : 0] reg1_i8;
    reg [7 : 0] reg1_i9;
    reg [7 : 0] reg1_i10;
    reg [7 : 0] reg1_i11;
    reg [7 : 0] reg1_i12;
    reg [7 : 0] reg1_i13;
    reg [7 : 0] reg1_i14;
    reg [7 : 0] reg1_i15;
    reg [7 : 0] reg2_i0;
    reg [7 : 0] reg2_i1;
    reg [7 : 0] reg2_i2;
    reg [7 : 0] reg2_i3;
    reg [7 : 0] reg2_i4;
    reg [7 : 0] reg2_i5;
    reg [7 : 0] reg2_i6;
    reg [7 : 0] reg2_i7;
    reg [7 : 0] reg2_i8;
    reg [7 : 0] reg2_i9;
    reg [7 : 0] reg2_i10;
    reg [7 : 0] reg2_i11;
    reg [7 : 0] reg2_i12;
    reg [7 : 0] reg2_i13;
    reg [7 : 0] reg2_i14;
    reg [7 : 0] reg2_i15;
    reg [7 : 0] reg3_i0;
    reg [7 : 0] reg3_i1;
    reg [7 : 0] reg3_i2;
    reg [7 : 0] reg3_i3;
    reg [7 : 0] reg3_i4;
    reg [7 : 0] reg3_i5;
    reg [7 : 0] reg3_i6;
    reg [7 : 0] reg3_i7;
    reg [7 : 0] reg3_i8;
    reg [7 : 0] reg3_i9;
    reg [7 : 0] reg3_i10;
    reg [7 : 0] reg3_i11;
    reg [7 : 0] reg3_i12;
    reg [7 : 0] reg3_i13;
    reg [7 : 0] reg3_i14;
    reg [7 : 0] reg3_i15;
    wire csrs_write_wen;
    wire [7 : 0] csrs_write_waddr;
    wire [7 : 0] csrs_write_wdata;
    wire [31 : 0] csrs_config_tlc_i2c_config_clock_threshold;
    wire [31 : 0] csrs_config_tlc_i2c_config_clock_period;
    wire [31 : 0] csrs_config_refresh_disp_cycles;
    wire [31 : 0] csrs_config_refresh_delay_cycles;
    wire [7 : 0] csrs_config_refresh_iref;
    wire [7 : 0] csrs_config_refresh_enable;
    wire csrs_clock;
    wire csrs_reset;
    wire uart_tx_uart_tx;
    wire uart_tx_enqueue;
    wire [7 : 0] uart_tx_enqueue_data;
    wire uart_tx_ready;
    wire uart_tx_clock;
    wire uart_tx_reset;
    wire uart_rx_uart_rx;
    wire uart_rx_dequeue;
    wire [7 : 0] uart_rx_cmd;
    wire uart_rx_data_available;
    wire uart_rx_clock;
    wire uart_rx_reset;
    wire [8 : 0] reader_ram_read_address;
    wire [7 : 0] reader_ram_read_data;
    wire reader_start;
    wire [2 : 0] reader_layer;
    wire reader_done;
    wire reader_output_wen;
    wire [1 : 0] reader_output_bank;
    wire [3 : 0] reader_output_index;
    wire [7 : 0] reader_output_data;
    wire reader_clock;
    wire reader_reset;
    wire [31 : 0] rc_config_disp_cycles;
    wire [31 : 0] rc_config_delay_cycles;
    wire [7 : 0] rc_config_iref;
    wire [7 : 0] rc_config_enable;
    wire [3 : 0] rc_tlcs_i0_opcode;
    wire rc_tlcs_i0_ready;
    wire [3 : 0] rc_tlcs_i1_opcode;
    wire rc_tlcs_i1_ready;
    wire [3 : 0] rc_tlcs_i2_opcode;
    wire rc_tlcs_i2_ready;
    wire [3 : 0] rc_tlcs_i3_opcode;
    wire rc_tlcs_i3_ready;
    wire [7 : 0] rc_tlc_args_i0;
    wire [7 : 0] rc_tlc_args_i1;
    wire [7 : 0] rc_tlc_args_i2;
    wire [7 : 0] rc_tlc_args_i3;
    wire [7 : 0] rc_tlc_args_i4;
    wire [7 : 0] rc_tlc_args_i5;
    wire [7 : 0] rc_tlc_args_i6;
    wire [7 : 0] rc_tlc_args_i7;
    wire [7 : 0] rc_tlc_args_i8;
    wire [7 : 0] rc_tlc_args_i9;
    wire [7 : 0] rc_tlc_args_i10;
    wire [7 : 0] rc_tlc_args_i11;
    wire [7 : 0] rc_tlc_args_i12;
    wire [7 : 0] rc_tlc_args_i13;
    wire [7 : 0] rc_tlc_args_i14;
    wire [7 : 0] rc_tlc_args_i15;
    wire rc_tlc_override;
    wire rc_reader_start;
    wire [2 : 0] rc_reader_layer;
    wire rc_reader_done;
    wire [7 : 0] rc_layer_mask;
    wire rc_clock;
    wire rc_reset;
    wire TlcController_0_i2c_sda_o;
    wire TlcController_0_i2c_sda_i;
    wire TlcController_0_i2c_scl_o;
    wire TlcController_0_i2c_scl_i;
    wire TlcController_0_resetn;
    wire [31 : 0] TlcController_0_config_i2c_config_clock_threshold;
    wire [31 : 0] TlcController_0_config_i2c_config_clock_period;
    wire [3 : 0] TlcController_0_cmd_opcode;
    wire TlcController_0_cmd_ready;
    wire [7 : 0] TlcController_0_args_i0;
    wire [7 : 0] TlcController_0_args_i1;
    wire [7 : 0] TlcController_0_args_i2;
    wire [7 : 0] TlcController_0_args_i3;
    wire [7 : 0] TlcController_0_args_i4;
    wire [7 : 0] TlcController_0_args_i5;
    wire [7 : 0] TlcController_0_args_i6;
    wire [7 : 0] TlcController_0_args_i7;
    wire [7 : 0] TlcController_0_args_i8;
    wire [7 : 0] TlcController_0_args_i9;
    wire [7 : 0] TlcController_0_args_i10;
    wire [7 : 0] TlcController_0_args_i11;
    wire [7 : 0] TlcController_0_args_i12;
    wire [7 : 0] TlcController_0_args_i13;
    wire [7 : 0] TlcController_0_args_i14;
    wire [7 : 0] TlcController_0_args_i15;
    wire [31 : 0] TlcController_0_err_count;
    wire TlcController_0_clock;
    wire TlcController_0_reset;
    wire TlcController_1_i2c_sda_o;
    wire TlcController_1_i2c_sda_i;
    wire TlcController_1_i2c_scl_o;
    wire TlcController_1_i2c_scl_i;
    wire TlcController_1_resetn;
    wire [31 : 0] TlcController_1_config_i2c_config_clock_threshold;
    wire [31 : 0] TlcController_1_config_i2c_config_clock_period;
    wire [3 : 0] TlcController_1_cmd_opcode;
    wire TlcController_1_cmd_ready;
    wire [7 : 0] TlcController_1_args_i0;
    wire [7 : 0] TlcController_1_args_i1;
    wire [7 : 0] TlcController_1_args_i2;
    wire [7 : 0] TlcController_1_args_i3;
    wire [7 : 0] TlcController_1_args_i4;
    wire [7 : 0] TlcController_1_args_i5;
    wire [7 : 0] TlcController_1_args_i6;
    wire [7 : 0] TlcController_1_args_i7;
    wire [7 : 0] TlcController_1_args_i8;
    wire [7 : 0] TlcController_1_args_i9;
    wire [7 : 0] TlcController_1_args_i10;
    wire [7 : 0] TlcController_1_args_i11;
    wire [7 : 0] TlcController_1_args_i12;
    wire [7 : 0] TlcController_1_args_i13;
    wire [7 : 0] TlcController_1_args_i14;
    wire [7 : 0] TlcController_1_args_i15;
    wire [31 : 0] TlcController_1_err_count;
    wire TlcController_1_clock;
    wire TlcController_1_reset;
    wire TlcController_2_i2c_sda_o;
    wire TlcController_2_i2c_sda_i;
    wire TlcController_2_i2c_scl_o;
    wire TlcController_2_i2c_scl_i;
    wire TlcController_2_resetn;
    wire [31 : 0] TlcController_2_config_i2c_config_clock_threshold;
    wire [31 : 0] TlcController_2_config_i2c_config_clock_period;
    wire [3 : 0] TlcController_2_cmd_opcode;
    wire TlcController_2_cmd_ready;
    wire [7 : 0] TlcController_2_args_i0;
    wire [7 : 0] TlcController_2_args_i1;
    wire [7 : 0] TlcController_2_args_i2;
    wire [7 : 0] TlcController_2_args_i3;
    wire [7 : 0] TlcController_2_args_i4;
    wire [7 : 0] TlcController_2_args_i5;
    wire [7 : 0] TlcController_2_args_i6;
    wire [7 : 0] TlcController_2_args_i7;
    wire [7 : 0] TlcController_2_args_i8;
    wire [7 : 0] TlcController_2_args_i9;
    wire [7 : 0] TlcController_2_args_i10;
    wire [7 : 0] TlcController_2_args_i11;
    wire [7 : 0] TlcController_2_args_i12;
    wire [7 : 0] TlcController_2_args_i13;
    wire [7 : 0] TlcController_2_args_i14;
    wire [7 : 0] TlcController_2_args_i15;
    wire [31 : 0] TlcController_2_err_count;
    wire TlcController_2_clock;
    wire TlcController_2_reset;
    wire TlcController_3_i2c_sda_o;
    wire TlcController_3_i2c_sda_i;
    wire TlcController_3_i2c_scl_o;
    wire TlcController_3_i2c_scl_i;
    wire TlcController_3_resetn;
    wire [31 : 0] TlcController_3_config_i2c_config_clock_threshold;
    wire [31 : 0] TlcController_3_config_i2c_config_clock_period;
    wire [3 : 0] TlcController_3_cmd_opcode;
    wire TlcController_3_cmd_ready;
    wire [7 : 0] TlcController_3_args_i0;
    wire [7 : 0] TlcController_3_args_i1;
    wire [7 : 0] TlcController_3_args_i2;
    wire [7 : 0] TlcController_3_args_i3;
    wire [7 : 0] TlcController_3_args_i4;
    wire [7 : 0] TlcController_3_args_i5;
    wire [7 : 0] TlcController_3_args_i6;
    wire [7 : 0] TlcController_3_args_i7;
    wire [7 : 0] TlcController_3_args_i8;
    wire [7 : 0] TlcController_3_args_i9;
    wire [7 : 0] TlcController_3_args_i10;
    wire [7 : 0] TlcController_3_args_i11;
    wire [7 : 0] TlcController_3_args_i12;
    wire [7 : 0] TlcController_3_args_i13;
    wire [7 : 0] TlcController_3_args_i14;
    wire [7 : 0] TlcController_3_args_i15;
    wire [31 : 0] TlcController_3_err_count;
    wire TlcController_3_clock;
    wire TlcController_3_reset;
    reg [2 : 0] state;
    reg [9 : 0] idx;
    reg [7 : 0] csr_waddr;
    reg [7 : 0] csr_wdata;
    wire eq_73_result;
    wire eq_74_result;
    wire eq_75_result;
    wire eq_76_result;
    wire eq_77_result;
    wire eq_78_result;
    wire eq_79_result;
    wire eq_80_result;
    wire eq_81_result;
    wire eq_82_result;
    wire eq_83_result;
    wire eq_84_result;
    wire eq_85_result;
    wire eq_86_result;
    wire eq_87_result;
    wire eq_88_result;
    wire eq_89_result;
    wire eq_90_result;
    wire eq_107_result;
    wire eq_124_result;
    wire [8 : 0] slice_48_result;
    wire eq_188_result;
    wire eq_189_result;
    wire eq_190_result;
    wire eq_191_result;
    wire eq_192_result;
    wire eq_193_result;
    wire [10 : 0] add_30_result;
    wire [9 : 0] slice_49_result;
    wire eq_194_result;
    wire eq_195_result;
    wire eq_196_result;
    wire eq_197_result;
    wire eq_198_result;
    wire eq_199_result;
    wire eq_200_result;
    wire eq_201_result;
    
    // Operator Synthesis
    Csrs csrs (
        .io_write_wen(csrs_write_wen),
        .io_write_waddr(csrs_write_waddr),
        .io_write_wdata(csrs_write_wdata),
        .io_config_tlc_i2c_config_clock_threshold(csrs_config_tlc_i2c_config_clock_threshold),
        .io_config_tlc_i2c_config_clock_period(csrs_config_tlc_i2c_config_clock_period),
        .io_config_refresh_disp_cycles(csrs_config_refresh_disp_cycles),
        .io_config_refresh_delay_cycles(csrs_config_refresh_delay_cycles),
        .io_config_refresh_iref(csrs_config_refresh_iref),
        .io_config_refresh_enable(csrs_config_refresh_enable),
        .io_clock(csrs_clock),
        .io_reset(csrs_reset)
    );
    UartTransmitter_b476 uart_tx (
        .io_uart_tx(uart_tx_uart_tx),
        .io_enqueue(uart_tx_enqueue),
        .io_enqueue_data(uart_tx_enqueue_data),
        .io_ready(uart_tx_ready),
        .io_clock(uart_tx_clock),
        .io_reset(uart_tx_reset)
    );
    UartReceiver_b476 uart_rx (
        .io_uart_rx(uart_rx_uart_rx),
        .io_dequeue(uart_rx_dequeue),
        .io_dequeue_data(uart_rx_cmd),
        .io_data_available(uart_rx_data_available),
        .io_clock(uart_rx_clock),
        .io_reset(uart_rx_reset)
    );
    MemReader reader (
        .io_ram_read_address(reader_ram_read_address),
        .io_ram_read_data(reader_ram_read_data),
        .io_start(reader_start),
        .io_layer(reader_layer),
        .io_done(reader_done),
        .io_output_wen(reader_output_wen),
        .io_output_bank(reader_output_bank),
        .io_output_index(reader_output_index),
        .io_output_data(reader_output_data),
        .io_clock(reader_clock),
        .io_reset(reader_reset)
    );
    assign eq_73_result = reader_output_bank == 0;
    assign eq_74_result = reader_output_index == 0;
    assign eq_75_result = reader_output_index == 1;
    assign eq_76_result = reader_output_index == 2;
    assign eq_77_result = reader_output_index == 3;
    assign eq_78_result = reader_output_index == 4;
    assign eq_79_result = reader_output_index == 5;
    assign eq_80_result = reader_output_index == 6;
    assign eq_81_result = reader_output_index == 7;
    assign eq_82_result = reader_output_index == 8;
    assign eq_83_result = reader_output_index == 9;
    assign eq_84_result = reader_output_index == 10;
    assign eq_85_result = reader_output_index == 11;
    assign eq_86_result = reader_output_index == 12;
    assign eq_87_result = reader_output_index == 13;
    assign eq_88_result = reader_output_index == 14;
    assign eq_89_result = reader_output_index == 15;
    assign eq_90_result = reader_output_bank == 1;
    assign eq_107_result = reader_output_bank == 2;
    assign eq_124_result = reader_output_bank == 3;
    RefreshController rc (
        .io_config_disp_cycles(rc_config_disp_cycles),
        .io_config_delay_cycles(rc_config_delay_cycles),
        .io_config_iref(rc_config_iref),
        .io_config_enable(rc_config_enable),
        .io_tlcs_i0_opcode(rc_tlcs_i0_opcode),
        .io_tlcs_i0_ready(rc_tlcs_i0_ready),
        .io_tlcs_i1_opcode(rc_tlcs_i1_opcode),
        .io_tlcs_i1_ready(rc_tlcs_i1_ready),
        .io_tlcs_i2_opcode(rc_tlcs_i2_opcode),
        .io_tlcs_i2_ready(rc_tlcs_i2_ready),
        .io_tlcs_i3_opcode(rc_tlcs_i3_opcode),
        .io_tlcs_i3_ready(rc_tlcs_i3_ready),
        .io_tlc_args_i0(rc_tlc_args_i0),
        .io_tlc_args_i1(rc_tlc_args_i1),
        .io_tlc_args_i2(rc_tlc_args_i2),
        .io_tlc_args_i3(rc_tlc_args_i3),
        .io_tlc_args_i4(rc_tlc_args_i4),
        .io_tlc_args_i5(rc_tlc_args_i5),
        .io_tlc_args_i6(rc_tlc_args_i6),
        .io_tlc_args_i7(rc_tlc_args_i7),
        .io_tlc_args_i8(rc_tlc_args_i8),
        .io_tlc_args_i9(rc_tlc_args_i9),
        .io_tlc_args_i10(rc_tlc_args_i10),
        .io_tlc_args_i11(rc_tlc_args_i11),
        .io_tlc_args_i12(rc_tlc_args_i12),
        .io_tlc_args_i13(rc_tlc_args_i13),
        .io_tlc_args_i14(rc_tlc_args_i14),
        .io_tlc_args_i15(rc_tlc_args_i15),
        .io_tlc_override(rc_tlc_override),
        .io_reader_start(rc_reader_start),
        .io_reader_layer(rc_reader_layer),
        .io_reader_done(rc_reader_done),
        .io_layer_mask(rc_layer_mask),
        .io_clock(rc_clock),
        .io_reset(rc_reset)
    );
    TlcController TlcController_0 (
        .io_i2c_sda_o(TlcController_0_i2c_sda_o),
        .io_i2c_sda_i(TlcController_0_i2c_sda_i),
        .io_i2c_scl_o(TlcController_0_i2c_scl_o),
        .io_i2c_scl_i(TlcController_0_i2c_scl_i),
        .io_resetn(TlcController_0_resetn),
        .io_config_i2c_config_clock_threshold(TlcController_0_config_i2c_config_clock_threshold),
        .io_config_i2c_config_clock_period(TlcController_0_config_i2c_config_clock_period),
        .io_cmd_opcode(TlcController_0_cmd_opcode),
        .io_cmd_ready(TlcController_0_cmd_ready),
        .io_args_i0(TlcController_0_args_i0),
        .io_args_i1(TlcController_0_args_i1),
        .io_args_i2(TlcController_0_args_i2),
        .io_args_i3(TlcController_0_args_i3),
        .io_args_i4(TlcController_0_args_i4),
        .io_args_i5(TlcController_0_args_i5),
        .io_args_i6(TlcController_0_args_i6),
        .io_args_i7(TlcController_0_args_i7),
        .io_args_i8(TlcController_0_args_i8),
        .io_args_i9(TlcController_0_args_i9),
        .io_args_i10(TlcController_0_args_i10),
        .io_args_i11(TlcController_0_args_i11),
        .io_args_i12(TlcController_0_args_i12),
        .io_args_i13(TlcController_0_args_i13),
        .io_args_i14(TlcController_0_args_i14),
        .io_args_i15(TlcController_0_args_i15),
        .io_err_count(TlcController_0_err_count),
        .io_clock(TlcController_0_clock),
        .io_reset(TlcController_0_reset)
    );
    TlcController TlcController_1 (
        .io_i2c_sda_o(TlcController_1_i2c_sda_o),
        .io_i2c_sda_i(TlcController_1_i2c_sda_i),
        .io_i2c_scl_o(TlcController_1_i2c_scl_o),
        .io_i2c_scl_i(TlcController_1_i2c_scl_i),
        .io_resetn(TlcController_1_resetn),
        .io_config_i2c_config_clock_threshold(TlcController_1_config_i2c_config_clock_threshold),
        .io_config_i2c_config_clock_period(TlcController_1_config_i2c_config_clock_period),
        .io_cmd_opcode(TlcController_1_cmd_opcode),
        .io_cmd_ready(TlcController_1_cmd_ready),
        .io_args_i0(TlcController_1_args_i0),
        .io_args_i1(TlcController_1_args_i1),
        .io_args_i2(TlcController_1_args_i2),
        .io_args_i3(TlcController_1_args_i3),
        .io_args_i4(TlcController_1_args_i4),
        .io_args_i5(TlcController_1_args_i5),
        .io_args_i6(TlcController_1_args_i6),
        .io_args_i7(TlcController_1_args_i7),
        .io_args_i8(TlcController_1_args_i8),
        .io_args_i9(TlcController_1_args_i9),
        .io_args_i10(TlcController_1_args_i10),
        .io_args_i11(TlcController_1_args_i11),
        .io_args_i12(TlcController_1_args_i12),
        .io_args_i13(TlcController_1_args_i13),
        .io_args_i14(TlcController_1_args_i14),
        .io_args_i15(TlcController_1_args_i15),
        .io_err_count(TlcController_1_err_count),
        .io_clock(TlcController_1_clock),
        .io_reset(TlcController_1_reset)
    );
    TlcController TlcController_2 (
        .io_i2c_sda_o(TlcController_2_i2c_sda_o),
        .io_i2c_sda_i(TlcController_2_i2c_sda_i),
        .io_i2c_scl_o(TlcController_2_i2c_scl_o),
        .io_i2c_scl_i(TlcController_2_i2c_scl_i),
        .io_resetn(TlcController_2_resetn),
        .io_config_i2c_config_clock_threshold(TlcController_2_config_i2c_config_clock_threshold),
        .io_config_i2c_config_clock_period(TlcController_2_config_i2c_config_clock_period),
        .io_cmd_opcode(TlcController_2_cmd_opcode),
        .io_cmd_ready(TlcController_2_cmd_ready),
        .io_args_i0(TlcController_2_args_i0),
        .io_args_i1(TlcController_2_args_i1),
        .io_args_i2(TlcController_2_args_i2),
        .io_args_i3(TlcController_2_args_i3),
        .io_args_i4(TlcController_2_args_i4),
        .io_args_i5(TlcController_2_args_i5),
        .io_args_i6(TlcController_2_args_i6),
        .io_args_i7(TlcController_2_args_i7),
        .io_args_i8(TlcController_2_args_i8),
        .io_args_i9(TlcController_2_args_i9),
        .io_args_i10(TlcController_2_args_i10),
        .io_args_i11(TlcController_2_args_i11),
        .io_args_i12(TlcController_2_args_i12),
        .io_args_i13(TlcController_2_args_i13),
        .io_args_i14(TlcController_2_args_i14),
        .io_args_i15(TlcController_2_args_i15),
        .io_err_count(TlcController_2_err_count),
        .io_clock(TlcController_2_clock),
        .io_reset(TlcController_2_reset)
    );
    TlcController TlcController_3 (
        .io_i2c_sda_o(TlcController_3_i2c_sda_o),
        .io_i2c_sda_i(TlcController_3_i2c_sda_i),
        .io_i2c_scl_o(TlcController_3_i2c_scl_o),
        .io_i2c_scl_i(TlcController_3_i2c_scl_i),
        .io_resetn(TlcController_3_resetn),
        .io_config_i2c_config_clock_threshold(TlcController_3_config_i2c_config_clock_threshold),
        .io_config_i2c_config_clock_period(TlcController_3_config_i2c_config_clock_period),
        .io_cmd_opcode(TlcController_3_cmd_opcode),
        .io_cmd_ready(TlcController_3_cmd_ready),
        .io_args_i0(TlcController_3_args_i0),
        .io_args_i1(TlcController_3_args_i1),
        .io_args_i2(TlcController_3_args_i2),
        .io_args_i3(TlcController_3_args_i3),
        .io_args_i4(TlcController_3_args_i4),
        .io_args_i5(TlcController_3_args_i5),
        .io_args_i6(TlcController_3_args_i6),
        .io_args_i7(TlcController_3_args_i7),
        .io_args_i8(TlcController_3_args_i8),
        .io_args_i9(TlcController_3_args_i9),
        .io_args_i10(TlcController_3_args_i10),
        .io_args_i11(TlcController_3_args_i11),
        .io_args_i12(TlcController_3_args_i12),
        .io_args_i13(TlcController_3_args_i13),
        .io_args_i14(TlcController_3_args_i14),
        .io_args_i15(TlcController_3_args_i15),
        .io_err_count(TlcController_3_err_count),
        .io_clock(TlcController_3_clock),
        .io_reset(TlcController_3_reset)
    );
    assign slice_48_result = idx[8:0];
    assign eq_188_result = state == 0;
    assign eq_189_result = uart_rx_cmd == 119;
    assign eq_190_result = uart_rx_cmd == 101;
    assign eq_191_result = uart_rx_cmd == 100;
    assign eq_192_result = uart_rx_cmd == 102;
    assign eq_193_result = state == 1;
    assign add_30_result = idx + 1;
    assign slice_49_result = add_30_result[9:0];
    assign eq_194_result = idx == 0;
    assign eq_195_result = idx == 1;
    assign eq_196_result = idx == 2;
    assign eq_197_result = state == 2;
    assign eq_198_result = state == 3;
    assign eq_199_result = state == 4;
    assign eq_200_result = idx == 511;
    assign eq_201_result = state == 5;
    
    // Connections
    assign io_uart_tx = uart_tx_uart_tx;
    assign io_i2cs_i0_sda_o = TlcController_0_i2c_sda_o;
    assign io_i2cs_i0_scl_o = TlcController_0_i2c_scl_o;
    assign io_i2cs_i1_sda_o = TlcController_1_i2c_sda_o;
    assign io_i2cs_i1_scl_o = TlcController_1_i2c_scl_o;
    assign io_i2cs_i2_sda_o = TlcController_2_i2c_sda_o;
    assign io_i2cs_i2_scl_o = TlcController_2_i2c_scl_o;
    assign io_i2cs_i3_sda_o = TlcController_3_i2c_sda_o;
    assign io_i2cs_i3_scl_o = TlcController_3_i2c_scl_o;
    assign io_resetns_i0 = TlcController_0_resetn;
    assign io_resetns_i1 = TlcController_1_resetn;
    assign io_resetns_i2 = TlcController_2_resetn;
    assign io_resetns_i3 = TlcController_3_resetn;
    assign io_layer_mask = rc_layer_mask;
    assign io_ram_read_address = reader_ram_read_address;
    assign io_ram_write_address = slice_48_result;
    wire _NODE_1122;
    assign _NODE_1122 = uart_rx_data_available ? 1 : 0;
    assign io_ram_write_write = eq_199_result ? _NODE_1122 : 0;
    assign io_ram_write_data = uart_rx_cmd;
    wire _NODE_1123;
    wire _NODE_1124;
    wire _NODE_1125;
    wire _NODE_1126;
    assign _NODE_1126 = eq_196_result ? 1 : 0;
    assign _NODE_1125 = uart_rx_data_available ? _NODE_1126 : 0;
    assign _NODE_1124 = eq_193_result ? _NODE_1125 : 0;
    assign _NODE_1123 = eq_197_result ? 1 : _NODE_1124;
    assign csrs_write_wen = eq_198_result ? 1 : _NODE_1123;
    wire [7 : 0] _NODE_1127;
    wire [7 : 0] _NODE_1128;
    wire [7 : 0] _NODE_1129;
    wire [7 : 0] _NODE_1130;
    assign _NODE_1130 = eq_196_result ? csr_waddr : 0;
    assign _NODE_1129 = uart_rx_data_available ? _NODE_1130 : 0;
    assign _NODE_1128 = eq_193_result ? _NODE_1129 : 0;
    assign _NODE_1127 = eq_197_result ? 0 : _NODE_1128;
    assign csrs_write_waddr = eq_198_result ? 0 : _NODE_1127;
    wire [7 : 0] _NODE_1131;
    wire [7 : 0] _NODE_1132;
    wire [7 : 0] _NODE_1133;
    wire [7 : 0] _NODE_1134;
    assign _NODE_1134 = eq_196_result ? csr_wdata : 0;
    assign _NODE_1133 = uart_rx_data_available ? _NODE_1134 : 0;
    assign _NODE_1132 = eq_193_result ? _NODE_1133 : 0;
    assign _NODE_1131 = eq_197_result ? 1 : _NODE_1132;
    assign csrs_write_wdata = eq_198_result ? 0 : _NODE_1131;
    assign csrs_clock = io_clock;
    assign csrs_reset = io_reset;
    assign uart_tx_enqueue = eq_201_result ? 1 : 0;
    assign uart_tx_enqueue_data = eq_201_result ? 115 : 0;
    assign uart_tx_clock = io_clock;
    assign uart_tx_reset = io_reset;
    assign uart_rx_uart_rx = io_uart_rx;
    wire _NODE_1135;
    wire _NODE_1136;
    assign _NODE_1136 = eq_188_result ? 1 : 0;
    assign _NODE_1135 = eq_193_result ? 1 : _NODE_1136;
    assign uart_rx_dequeue = eq_199_result ? 1 : _NODE_1135;
    assign uart_rx_clock = io_clock;
    assign uart_rx_reset = io_reset;
    assign reader_ram_read_data = io_ram_read_data;
    assign reader_start = rc_reader_start;
    assign reader_layer = rc_reader_layer;
    assign reader_clock = io_clock;
    assign reader_reset = io_reset;
    assign rc_config_disp_cycles = csrs_config_refresh_disp_cycles;
    assign rc_config_delay_cycles = csrs_config_refresh_delay_cycles;
    assign rc_config_iref = csrs_config_refresh_iref;
    assign rc_config_enable = csrs_config_refresh_enable;
    assign rc_tlcs_i0_ready = TlcController_0_cmd_ready;
    assign rc_tlcs_i1_ready = TlcController_1_cmd_ready;
    assign rc_tlcs_i2_ready = TlcController_2_cmd_ready;
    assign rc_tlcs_i3_ready = TlcController_3_cmd_ready;
    assign rc_reader_done = reader_done;
    assign rc_clock = io_clock;
    assign rc_reset = io_reset;
    assign TlcController_0_i2c_sda_i = io_i2cs_i0_sda_i;
    assign TlcController_0_i2c_scl_i = io_i2cs_i0_scl_i;
    assign TlcController_0_config_i2c_config_clock_threshold = csrs_config_tlc_i2c_config_clock_threshold;
    assign TlcController_0_config_i2c_config_clock_period = csrs_config_tlc_i2c_config_clock_period;
    assign TlcController_0_cmd_opcode = rc_tlcs_i0_opcode;
    assign TlcController_0_args_i0 = rc_tlc_override ? rc_tlc_args_i0 : reg0_i0;
    assign TlcController_0_args_i1 = rc_tlc_override ? rc_tlc_args_i1 : reg0_i1;
    assign TlcController_0_args_i2 = rc_tlc_override ? rc_tlc_args_i2 : reg0_i2;
    assign TlcController_0_args_i3 = rc_tlc_override ? rc_tlc_args_i3 : reg0_i3;
    assign TlcController_0_args_i4 = rc_tlc_override ? rc_tlc_args_i4 : reg0_i4;
    assign TlcController_0_args_i5 = rc_tlc_override ? rc_tlc_args_i5 : reg0_i5;
    assign TlcController_0_args_i6 = rc_tlc_override ? rc_tlc_args_i6 : reg0_i6;
    assign TlcController_0_args_i7 = rc_tlc_override ? rc_tlc_args_i7 : reg0_i7;
    assign TlcController_0_args_i8 = rc_tlc_override ? rc_tlc_args_i8 : reg0_i8;
    assign TlcController_0_args_i9 = rc_tlc_override ? rc_tlc_args_i9 : reg0_i9;
    assign TlcController_0_args_i10 = rc_tlc_override ? rc_tlc_args_i10 : reg0_i10;
    assign TlcController_0_args_i11 = rc_tlc_override ? rc_tlc_args_i11 : reg0_i11;
    assign TlcController_0_args_i12 = rc_tlc_override ? rc_tlc_args_i12 : reg0_i12;
    assign TlcController_0_args_i13 = rc_tlc_override ? rc_tlc_args_i13 : reg0_i13;
    assign TlcController_0_args_i14 = rc_tlc_override ? rc_tlc_args_i14 : reg0_i14;
    assign TlcController_0_args_i15 = rc_tlc_override ? rc_tlc_args_i15 : reg0_i15;
    assign TlcController_0_clock = io_clock;
    assign TlcController_0_reset = io_reset;
    assign TlcController_1_i2c_sda_i = io_i2cs_i1_sda_i;
    assign TlcController_1_i2c_scl_i = io_i2cs_i1_scl_i;
    assign TlcController_1_config_i2c_config_clock_threshold = csrs_config_tlc_i2c_config_clock_threshold;
    assign TlcController_1_config_i2c_config_clock_period = csrs_config_tlc_i2c_config_clock_period;
    assign TlcController_1_cmd_opcode = rc_tlcs_i1_opcode;
    assign TlcController_1_args_i0 = rc_tlc_override ? rc_tlc_args_i0 : reg1_i0;
    assign TlcController_1_args_i1 = rc_tlc_override ? rc_tlc_args_i1 : reg1_i1;
    assign TlcController_1_args_i2 = rc_tlc_override ? rc_tlc_args_i2 : reg1_i2;
    assign TlcController_1_args_i3 = rc_tlc_override ? rc_tlc_args_i3 : reg1_i3;
    assign TlcController_1_args_i4 = rc_tlc_override ? rc_tlc_args_i4 : reg1_i4;
    assign TlcController_1_args_i5 = rc_tlc_override ? rc_tlc_args_i5 : reg1_i5;
    assign TlcController_1_args_i6 = rc_tlc_override ? rc_tlc_args_i6 : reg1_i6;
    assign TlcController_1_args_i7 = rc_tlc_override ? rc_tlc_args_i7 : reg1_i7;
    assign TlcController_1_args_i8 = rc_tlc_override ? rc_tlc_args_i8 : reg1_i8;
    assign TlcController_1_args_i9 = rc_tlc_override ? rc_tlc_args_i9 : reg1_i9;
    assign TlcController_1_args_i10 = rc_tlc_override ? rc_tlc_args_i10 : reg1_i10;
    assign TlcController_1_args_i11 = rc_tlc_override ? rc_tlc_args_i11 : reg1_i11;
    assign TlcController_1_args_i12 = rc_tlc_override ? rc_tlc_args_i12 : reg1_i12;
    assign TlcController_1_args_i13 = rc_tlc_override ? rc_tlc_args_i13 : reg1_i13;
    assign TlcController_1_args_i14 = rc_tlc_override ? rc_tlc_args_i14 : reg1_i14;
    assign TlcController_1_args_i15 = rc_tlc_override ? rc_tlc_args_i15 : reg1_i15;
    assign TlcController_1_clock = io_clock;
    assign TlcController_1_reset = io_reset;
    assign TlcController_2_i2c_sda_i = io_i2cs_i2_sda_i;
    assign TlcController_2_i2c_scl_i = io_i2cs_i2_scl_i;
    assign TlcController_2_config_i2c_config_clock_threshold = csrs_config_tlc_i2c_config_clock_threshold;
    assign TlcController_2_config_i2c_config_clock_period = csrs_config_tlc_i2c_config_clock_period;
    assign TlcController_2_cmd_opcode = rc_tlcs_i2_opcode;
    assign TlcController_2_args_i0 = rc_tlc_override ? rc_tlc_args_i0 : reg2_i0;
    assign TlcController_2_args_i1 = rc_tlc_override ? rc_tlc_args_i1 : reg2_i1;
    assign TlcController_2_args_i2 = rc_tlc_override ? rc_tlc_args_i2 : reg2_i2;
    assign TlcController_2_args_i3 = rc_tlc_override ? rc_tlc_args_i3 : reg2_i3;
    assign TlcController_2_args_i4 = rc_tlc_override ? rc_tlc_args_i4 : reg2_i4;
    assign TlcController_2_args_i5 = rc_tlc_override ? rc_tlc_args_i5 : reg2_i5;
    assign TlcController_2_args_i6 = rc_tlc_override ? rc_tlc_args_i6 : reg2_i6;
    assign TlcController_2_args_i7 = rc_tlc_override ? rc_tlc_args_i7 : reg2_i7;
    assign TlcController_2_args_i8 = rc_tlc_override ? rc_tlc_args_i8 : reg2_i8;
    assign TlcController_2_args_i9 = rc_tlc_override ? rc_tlc_args_i9 : reg2_i9;
    assign TlcController_2_args_i10 = rc_tlc_override ? rc_tlc_args_i10 : reg2_i10;
    assign TlcController_2_args_i11 = rc_tlc_override ? rc_tlc_args_i11 : reg2_i11;
    assign TlcController_2_args_i12 = rc_tlc_override ? rc_tlc_args_i12 : reg2_i12;
    assign TlcController_2_args_i13 = rc_tlc_override ? rc_tlc_args_i13 : reg2_i13;
    assign TlcController_2_args_i14 = rc_tlc_override ? rc_tlc_args_i14 : reg2_i14;
    assign TlcController_2_args_i15 = rc_tlc_override ? rc_tlc_args_i15 : reg2_i15;
    assign TlcController_2_clock = io_clock;
    assign TlcController_2_reset = io_reset;
    assign TlcController_3_i2c_sda_i = io_i2cs_i3_sda_i;
    assign TlcController_3_i2c_scl_i = io_i2cs_i3_scl_i;
    assign TlcController_3_config_i2c_config_clock_threshold = csrs_config_tlc_i2c_config_clock_threshold;
    assign TlcController_3_config_i2c_config_clock_period = csrs_config_tlc_i2c_config_clock_period;
    assign TlcController_3_cmd_opcode = rc_tlcs_i3_opcode;
    assign TlcController_3_args_i0 = rc_tlc_override ? rc_tlc_args_i0 : reg3_i0;
    assign TlcController_3_args_i1 = rc_tlc_override ? rc_tlc_args_i1 : reg3_i1;
    assign TlcController_3_args_i2 = rc_tlc_override ? rc_tlc_args_i2 : reg3_i2;
    assign TlcController_3_args_i3 = rc_tlc_override ? rc_tlc_args_i3 : reg3_i3;
    assign TlcController_3_args_i4 = rc_tlc_override ? rc_tlc_args_i4 : reg3_i4;
    assign TlcController_3_args_i5 = rc_tlc_override ? rc_tlc_args_i5 : reg3_i5;
    assign TlcController_3_args_i6 = rc_tlc_override ? rc_tlc_args_i6 : reg3_i6;
    assign TlcController_3_args_i7 = rc_tlc_override ? rc_tlc_args_i7 : reg3_i7;
    assign TlcController_3_args_i8 = rc_tlc_override ? rc_tlc_args_i8 : reg3_i8;
    assign TlcController_3_args_i9 = rc_tlc_override ? rc_tlc_args_i9 : reg3_i9;
    assign TlcController_3_args_i10 = rc_tlc_override ? rc_tlc_args_i10 : reg3_i10;
    assign TlcController_3_args_i11 = rc_tlc_override ? rc_tlc_args_i11 : reg3_i11;
    assign TlcController_3_args_i12 = rc_tlc_override ? rc_tlc_args_i12 : reg3_i12;
    assign TlcController_3_args_i13 = rc_tlc_override ? rc_tlc_args_i13 : reg3_i13;
    assign TlcController_3_args_i14 = rc_tlc_override ? rc_tlc_args_i14 : reg3_i14;
    assign TlcController_3_args_i15 = rc_tlc_override ? rc_tlc_args_i15 : reg3_i15;
    assign TlcController_3_clock = io_clock;
    assign TlcController_3_reset = io_reset;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            reg0_i0 <= 0;
            reg0_i1 <= 0;
            reg0_i2 <= 0;
            reg0_i3 <= 0;
            reg0_i4 <= 0;
            reg0_i5 <= 0;
            reg0_i6 <= 0;
            reg0_i7 <= 0;
            reg0_i8 <= 0;
            reg0_i9 <= 0;
            reg0_i10 <= 0;
            reg0_i11 <= 0;
            reg0_i12 <= 0;
            reg0_i13 <= 0;
            reg0_i14 <= 0;
            reg0_i15 <= 0;
            reg1_i0 <= 0;
            reg1_i1 <= 0;
            reg1_i2 <= 0;
            reg1_i3 <= 0;
            reg1_i4 <= 0;
            reg1_i5 <= 0;
            reg1_i6 <= 0;
            reg1_i7 <= 0;
            reg1_i8 <= 0;
            reg1_i9 <= 0;
            reg1_i10 <= 0;
            reg1_i11 <= 0;
            reg1_i12 <= 0;
            reg1_i13 <= 0;
            reg1_i14 <= 0;
            reg1_i15 <= 0;
            reg2_i0 <= 0;
            reg2_i1 <= 0;
            reg2_i2 <= 0;
            reg2_i3 <= 0;
            reg2_i4 <= 0;
            reg2_i5 <= 0;
            reg2_i6 <= 0;
            reg2_i7 <= 0;
            reg2_i8 <= 0;
            reg2_i9 <= 0;
            reg2_i10 <= 0;
            reg2_i11 <= 0;
            reg2_i12 <= 0;
            reg2_i13 <= 0;
            reg2_i14 <= 0;
            reg2_i15 <= 0;
            reg3_i0 <= 0;
            reg3_i1 <= 0;
            reg3_i2 <= 0;
            reg3_i3 <= 0;
            reg3_i4 <= 0;
            reg3_i5 <= 0;
            reg3_i6 <= 0;
            reg3_i7 <= 0;
            reg3_i8 <= 0;
            reg3_i9 <= 0;
            reg3_i10 <= 0;
            reg3_i11 <= 0;
            reg3_i12 <= 0;
            reg3_i13 <= 0;
            reg3_i14 <= 0;
            reg3_i15 <= 0;
            state <= 0;
            idx <= 0;
            csr_waddr <= 0;
            csr_wdata <= 0;
        end
        else begin
            reg0_i0 <= reg0_i0;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_74_result) begin
                        reg0_i0 <= reader_output_data;
                    end
                end
            end
            reg0_i1 <= reg0_i1;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_75_result) begin
                        reg0_i1 <= reader_output_data;
                    end
                end
            end
            reg0_i2 <= reg0_i2;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_76_result) begin
                        reg0_i2 <= reader_output_data;
                    end
                end
            end
            reg0_i3 <= reg0_i3;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_77_result) begin
                        reg0_i3 <= reader_output_data;
                    end
                end
            end
            reg0_i4 <= reg0_i4;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_78_result) begin
                        reg0_i4 <= reader_output_data;
                    end
                end
            end
            reg0_i5 <= reg0_i5;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_79_result) begin
                        reg0_i5 <= reader_output_data;
                    end
                end
            end
            reg0_i6 <= reg0_i6;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_80_result) begin
                        reg0_i6 <= reader_output_data;
                    end
                end
            end
            reg0_i7 <= reg0_i7;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_81_result) begin
                        reg0_i7 <= reader_output_data;
                    end
                end
            end
            reg0_i8 <= reg0_i8;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_82_result) begin
                        reg0_i8 <= reader_output_data;
                    end
                end
            end
            reg0_i9 <= reg0_i9;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_83_result) begin
                        reg0_i9 <= reader_output_data;
                    end
                end
            end
            reg0_i10 <= reg0_i10;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_84_result) begin
                        reg0_i10 <= reader_output_data;
                    end
                end
            end
            reg0_i11 <= reg0_i11;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_85_result) begin
                        reg0_i11 <= reader_output_data;
                    end
                end
            end
            reg0_i12 <= reg0_i12;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_86_result) begin
                        reg0_i12 <= reader_output_data;
                    end
                end
            end
            reg0_i13 <= reg0_i13;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_87_result) begin
                        reg0_i13 <= reader_output_data;
                    end
                end
            end
            reg0_i14 <= reg0_i14;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_88_result) begin
                        reg0_i14 <= reader_output_data;
                    end
                end
            end
            reg0_i15 <= reg0_i15;
            if (reader_output_wen) begin
                if (eq_73_result) begin
                    if (eq_89_result) begin
                        reg0_i15 <= reader_output_data;
                    end
                end
            end
            reg1_i0 <= reg1_i0;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_74_result) begin
                        reg1_i0 <= reader_output_data;
                    end
                end
            end
            reg1_i1 <= reg1_i1;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_75_result) begin
                        reg1_i1 <= reader_output_data;
                    end
                end
            end
            reg1_i2 <= reg1_i2;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_76_result) begin
                        reg1_i2 <= reader_output_data;
                    end
                end
            end
            reg1_i3 <= reg1_i3;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_77_result) begin
                        reg1_i3 <= reader_output_data;
                    end
                end
            end
            reg1_i4 <= reg1_i4;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_78_result) begin
                        reg1_i4 <= reader_output_data;
                    end
                end
            end
            reg1_i5 <= reg1_i5;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_79_result) begin
                        reg1_i5 <= reader_output_data;
                    end
                end
            end
            reg1_i6 <= reg1_i6;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_80_result) begin
                        reg1_i6 <= reader_output_data;
                    end
                end
            end
            reg1_i7 <= reg1_i7;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_81_result) begin
                        reg1_i7 <= reader_output_data;
                    end
                end
            end
            reg1_i8 <= reg1_i8;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_82_result) begin
                        reg1_i8 <= reader_output_data;
                    end
                end
            end
            reg1_i9 <= reg1_i9;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_83_result) begin
                        reg1_i9 <= reader_output_data;
                    end
                end
            end
            reg1_i10 <= reg1_i10;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_84_result) begin
                        reg1_i10 <= reader_output_data;
                    end
                end
            end
            reg1_i11 <= reg1_i11;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_85_result) begin
                        reg1_i11 <= reader_output_data;
                    end
                end
            end
            reg1_i12 <= reg1_i12;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_86_result) begin
                        reg1_i12 <= reader_output_data;
                    end
                end
            end
            reg1_i13 <= reg1_i13;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_87_result) begin
                        reg1_i13 <= reader_output_data;
                    end
                end
            end
            reg1_i14 <= reg1_i14;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_88_result) begin
                        reg1_i14 <= reader_output_data;
                    end
                end
            end
            reg1_i15 <= reg1_i15;
            if (reader_output_wen) begin
                if (eq_90_result) begin
                    if (eq_89_result) begin
                        reg1_i15 <= reader_output_data;
                    end
                end
            end
            reg2_i0 <= reg2_i0;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_74_result) begin
                        reg2_i0 <= reader_output_data;
                    end
                end
            end
            reg2_i1 <= reg2_i1;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_75_result) begin
                        reg2_i1 <= reader_output_data;
                    end
                end
            end
            reg2_i2 <= reg2_i2;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_76_result) begin
                        reg2_i2 <= reader_output_data;
                    end
                end
            end
            reg2_i3 <= reg2_i3;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_77_result) begin
                        reg2_i3 <= reader_output_data;
                    end
                end
            end
            reg2_i4 <= reg2_i4;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_78_result) begin
                        reg2_i4 <= reader_output_data;
                    end
                end
            end
            reg2_i5 <= reg2_i5;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_79_result) begin
                        reg2_i5 <= reader_output_data;
                    end
                end
            end
            reg2_i6 <= reg2_i6;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_80_result) begin
                        reg2_i6 <= reader_output_data;
                    end
                end
            end
            reg2_i7 <= reg2_i7;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_81_result) begin
                        reg2_i7 <= reader_output_data;
                    end
                end
            end
            reg2_i8 <= reg2_i8;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_82_result) begin
                        reg2_i8 <= reader_output_data;
                    end
                end
            end
            reg2_i9 <= reg2_i9;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_83_result) begin
                        reg2_i9 <= reader_output_data;
                    end
                end
            end
            reg2_i10 <= reg2_i10;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_84_result) begin
                        reg2_i10 <= reader_output_data;
                    end
                end
            end
            reg2_i11 <= reg2_i11;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_85_result) begin
                        reg2_i11 <= reader_output_data;
                    end
                end
            end
            reg2_i12 <= reg2_i12;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_86_result) begin
                        reg2_i12 <= reader_output_data;
                    end
                end
            end
            reg2_i13 <= reg2_i13;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_87_result) begin
                        reg2_i13 <= reader_output_data;
                    end
                end
            end
            reg2_i14 <= reg2_i14;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_88_result) begin
                        reg2_i14 <= reader_output_data;
                    end
                end
            end
            reg2_i15 <= reg2_i15;
            if (reader_output_wen) begin
                if (eq_107_result) begin
                    if (eq_89_result) begin
                        reg2_i15 <= reader_output_data;
                    end
                end
            end
            reg3_i0 <= reg3_i0;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_74_result) begin
                        reg3_i0 <= reader_output_data;
                    end
                end
            end
            reg3_i1 <= reg3_i1;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_75_result) begin
                        reg3_i1 <= reader_output_data;
                    end
                end
            end
            reg3_i2 <= reg3_i2;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_76_result) begin
                        reg3_i2 <= reader_output_data;
                    end
                end
            end
            reg3_i3 <= reg3_i3;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_77_result) begin
                        reg3_i3 <= reader_output_data;
                    end
                end
            end
            reg3_i4 <= reg3_i4;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_78_result) begin
                        reg3_i4 <= reader_output_data;
                    end
                end
            end
            reg3_i5 <= reg3_i5;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_79_result) begin
                        reg3_i5 <= reader_output_data;
                    end
                end
            end
            reg3_i6 <= reg3_i6;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_80_result) begin
                        reg3_i6 <= reader_output_data;
                    end
                end
            end
            reg3_i7 <= reg3_i7;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_81_result) begin
                        reg3_i7 <= reader_output_data;
                    end
                end
            end
            reg3_i8 <= reg3_i8;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_82_result) begin
                        reg3_i8 <= reader_output_data;
                    end
                end
            end
            reg3_i9 <= reg3_i9;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_83_result) begin
                        reg3_i9 <= reader_output_data;
                    end
                end
            end
            reg3_i10 <= reg3_i10;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_84_result) begin
                        reg3_i10 <= reader_output_data;
                    end
                end
            end
            reg3_i11 <= reg3_i11;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_85_result) begin
                        reg3_i11 <= reader_output_data;
                    end
                end
            end
            reg3_i12 <= reg3_i12;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_86_result) begin
                        reg3_i12 <= reader_output_data;
                    end
                end
            end
            reg3_i13 <= reg3_i13;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_87_result) begin
                        reg3_i13 <= reader_output_data;
                    end
                end
            end
            reg3_i14 <= reg3_i14;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_88_result) begin
                        reg3_i14 <= reader_output_data;
                    end
                end
            end
            reg3_i15 <= reg3_i15;
            if (reader_output_wen) begin
                if (eq_124_result) begin
                    if (eq_89_result) begin
                        reg3_i15 <= reader_output_data;
                    end
                end
            end
            state <= state;
            if (eq_188_result) begin
                if (uart_rx_data_available) begin
                    if (eq_189_result) begin
                        state <= 1;
                    end
                    if (eq_190_result) begin
                        state <= 2;
                    end
                    if (eq_191_result) begin
                        state <= 3;
                    end
                    if (eq_192_result) begin
                        state <= 4;
                    end
                end
            end
            if (eq_193_result) begin
                if (uart_rx_data_available) begin
                    if (eq_196_result) begin
                        state <= 5;
                    end
                end
            end
            if (eq_197_result) begin
                state <= 5;
            end
            if (eq_198_result) begin
                state <= 5;
            end
            if (eq_199_result) begin
                if (uart_rx_data_available) begin
                    if (eq_200_result) begin
                        state <= 5;
                    end
                end
            end
            if (eq_201_result) begin
                if (uart_tx_ready) begin
                    state <= 0;
                end
            end
            idx <= idx;
            if (eq_188_result) begin
                idx <= 0;
            end
            if (eq_193_result) begin
                if (uart_rx_data_available) begin
                    idx <= slice_49_result;
                end
            end
            if (eq_199_result) begin
                if (uart_rx_data_available) begin
                    idx <= slice_49_result;
                end
            end
            csr_waddr <= csr_waddr;
            if (eq_193_result) begin
                if (uart_rx_data_available) begin
                    if (eq_194_result) begin
                        csr_waddr <= uart_rx_cmd;
                    end
                end
            end
            csr_wdata <= csr_wdata;
            if (eq_193_result) begin
                if (uart_rx_data_available) begin
                    if (eq_195_result) begin
                        csr_wdata <= uart_rx_cmd;
                    end
                end
            end
        end
    end
endmodule
