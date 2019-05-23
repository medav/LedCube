module Csrs (
    input io_write_wen,
    input [7 : 0] io_write_waddr,
    input [7 : 0] io_write_wdata,
    output [31 : 0] io_config_tlc_i2c_config_clock_threshold,
    output [31 : 0] io_config_tlc_i2c_config_clock_period,
    output [31 : 0] io_config_refresh_disp_cycles,
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
    reg [7 : 0] reg7;
    wire [31 : 0] cat_0_result;
    wire [31 : 0] cat_1_result;
    wire [31 : 0] cat_2_result;
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
    
    // Operator Synthesis
    assign cat_0_result = {reg5_i3, reg5_i2, reg5_i1, reg5_i0};
    assign cat_1_result = {reg4_i3, reg4_i2, reg4_i1, reg4_i0};
    assign cat_2_result = {reg6_i3, reg6_i2, reg6_i1, reg6_i0};
    assign eq_0_result = io_write_waddr == 0;
    assign and_0_result = eq_0_result & io_write_wen;
    assign eq_1_result = io_write_waddr == 4;
    assign and_1_result = eq_1_result & io_write_wen;
    assign eq_2_result = io_write_waddr == 8;
    assign and_2_result = eq_2_result & io_write_wen;
    assign eq_3_result = io_write_waddr == 12;
    assign and_3_result = eq_3_result & io_write_wen;
    assign eq_4_result = io_write_waddr == 5;
    assign and_4_result = eq_4_result & io_write_wen;
    assign eq_5_result = io_write_waddr == 9;
    assign and_5_result = eq_5_result & io_write_wen;
    assign eq_6_result = io_write_waddr == 13;
    assign and_6_result = eq_6_result & io_write_wen;
    assign eq_7_result = io_write_waddr == 6;
    assign and_7_result = eq_7_result & io_write_wen;
    assign eq_8_result = io_write_waddr == 10;
    assign and_8_result = eq_8_result & io_write_wen;
    assign eq_9_result = io_write_waddr == 14;
    assign and_9_result = eq_9_result & io_write_wen;
    assign eq_10_result = io_write_waddr == 7;
    assign and_10_result = eq_10_result & io_write_wen;
    assign eq_11_result = io_write_waddr == 11;
    assign and_11_result = eq_11_result & io_write_wen;
    assign eq_12_result = io_write_waddr == 15;
    assign and_12_result = eq_12_result & io_write_wen;
    
    // Connections
    assign io_config_tlc_i2c_config_clock_threshold = cat_0_result;
    assign io_config_tlc_i2c_config_clock_period = cat_1_result;
    assign io_config_refresh_disp_cycles = cat_2_result;
    assign io_config_refresh_enable = reg7;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            reg4_i0 <= 0;
            reg4_i1 <= 0;
            reg4_i2 <= 0;
            reg4_i3 <= 100;
            reg5_i0 <= 0;
            reg5_i1 <= 0;
            reg5_i2 <= 0;
            reg5_i3 <= 50;
            reg6_i0 <= 0;
            reg6_i1 <= 1;
            reg6_i2 <= 17;
            reg6_i3 <= 112;
            reg7 <= 1;
        end
        else begin
            reg4_i0 <= reg4_i0;
            if (and_1_result) begin
                reg4_i0 <= io_write_wdata;
            end
            reg4_i1 <= reg4_i1;
            if (and_4_result) begin
                reg4_i1 <= io_write_wdata;
            end
            reg4_i2 <= reg4_i2;
            if (and_7_result) begin
                reg4_i2 <= io_write_wdata;
            end
            reg4_i3 <= reg4_i3;
            if (and_10_result) begin
                reg4_i3 <= io_write_wdata;
            end
            reg5_i0 <= reg5_i0;
            if (and_2_result) begin
                reg5_i0 <= io_write_wdata;
            end
            reg5_i1 <= reg5_i1;
            if (and_5_result) begin
                reg5_i1 <= io_write_wdata;
            end
            reg5_i2 <= reg5_i2;
            if (and_8_result) begin
                reg5_i2 <= io_write_wdata;
            end
            reg5_i3 <= reg5_i3;
            if (and_11_result) begin
                reg5_i3 <= io_write_wdata;
            end
            reg6_i0 <= reg6_i0;
            if (and_3_result) begin
                reg6_i0 <= io_write_wdata;
            end
            reg6_i1 <= reg6_i1;
            if (and_6_result) begin
                reg6_i1 <= io_write_wdata;
            end
            reg6_i2 <= reg6_i2;
            if (and_9_result) begin
                reg6_i2 <= io_write_wdata;
            end
            reg6_i3 <= reg6_i3;
            if (and_12_result) begin
                reg6_i3 <= io_write_wdata;
            end
            reg7 <= reg7;
            if (and_0_result) begin
                reg7 <= io_write_wdata;
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
    wire eq_13_result;
    wire [7 : 0] mux_0_result;
    wire not_0_result;
    wire or_0_result;
    wire not_1_result;
    wire and_13_result;
    wire not_2_result;
    wire [8 : 0] sub_0_result;
    wire [3 : 0] add_0_result;
    wire [2 : 0] slice_0_result;
    wire not_3_result;
    wire and_14_result;
    wire [9 : 0] add_1_result;
    wire [8 : 0] slice_1_result;
    wire [3 : 0] add_2_result;
    wire [2 : 0] slice_2_result;
    wire [7 : 0] mux_1_result;
    wire eq_14_result;
    wire eq_15_result;
    wire eq_16_result;
    wire eq_17_result;
    wire eq_18_result;
    wire eq_19_result;
    wire eq_20_result;
    wire eq_21_result;
    wire and_15_result;
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
    wire eq_30_result;
    wire eq_31_result;
    wire gt_0_result;
    wire eq_32_result;
    wire mux_3_result;
    wire eq_33_result;
    wire [4 : 0] add_6_result;
    wire [3 : 0] slice_14_result;
    wire eq_34_result;
    
    // Operator Synthesis
    assign ge_0_result = data_count >= 8;
    assign eq_13_result = data_count == 0;
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
    assign and_13_result = not_1_result & dequeue;
    assign not_2_result = ~empty;
    assign sub_0_result = data_count - 1;
    assign add_0_result = deq_addr + 1;
    assign slice_0_result = add_0_result[2:0];
    assign not_3_result = ~dequeue;
    assign and_14_result = io_enqueue & not_3_result;
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
    assign eq_14_result = enq_addr == 0;
    assign eq_15_result = enq_addr == 1;
    assign eq_16_result = enq_addr == 2;
    assign eq_17_result = enq_addr == 3;
    assign eq_18_result = enq_addr == 4;
    assign eq_19_result = enq_addr == 5;
    assign eq_20_result = enq_addr == 6;
    assign eq_21_result = enq_addr == 7;
    assign and_15_result = io_enqueue & dequeue;
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
    assign eq_30_result = state == 0;
    assign eq_31_result = state == 1;
    assign gt_0_result = clock_counter > 50;
    assign eq_32_result = state == 2;
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
    assign eq_33_result = bit_counter == 7;
    assign add_6_result = bit_counter + 1;
    assign slice_14_result = add_6_result[3:0];
    assign eq_34_result = state == 3;
    
    // Connections
    wire _NODE_3;
    assign _NODE_3 = eq_31_result ? 0 : 1;
    assign io_uart_tx = eq_32_result ? mux_3_result : _NODE_3;
    assign io_ready = or_0_result;
    assign full = ge_0_result;
    assign empty = eq_13_result;
    wire _NODE_4;
    assign _NODE_4 = not_2_result ? 1 : 0;
    assign dequeue = eq_30_result ? _NODE_4 : 0;
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
            if (eq_30_result) begin
                if (not_2_result) begin
                    state <= 1;
                end
            end
            if (eq_31_result) begin
                if (gt_0_result) begin
                    state <= 2;
                end
            end
            if (eq_32_result) begin
                if (gt_0_result) begin
                    if (eq_33_result) begin
                        state <= 3;
                    end
                end
            end
            if (eq_34_result) begin
                if (gt_0_result) begin
                    state <= 0;
                end
            end
            clock_counter <= clock_counter;
            clock_counter <= slice_13_result;
            if (eq_30_result) begin
                clock_counter <= 0;
            end
            if (eq_31_result) begin
                if (gt_0_result) begin
                    clock_counter <= 0;
                end
            end
            if (eq_32_result) begin
                if (gt_0_result) begin
                    clock_counter <= 0;
                end
            end
            bit_counter <= bit_counter;
            if (eq_30_result) begin
                bit_counter <= 0;
            end
            if (eq_32_result) begin
                if (gt_0_result) begin
                    if (!eq_33_result) begin
                        bit_counter <= slice_14_result;
                    end
                end
            end
            data_reg <= data_reg;
            enq_addr <= enq_addr;
            if (and_14_result) begin
                if (not_0_result) begin
                    enq_addr <= slice_2_result;
                end
            end
            if (and_15_result) begin
                enq_addr <= slice_2_result;
            end
            deq_addr <= deq_addr;
            if (and_13_result) begin
                if (not_2_result) begin
                    deq_addr <= slice_0_result;
                end
            end
            if (and_15_result) begin
                deq_addr <= slice_0_result;
            end
            data_count <= data_count;
            if (and_13_result) begin
                if (not_2_result) begin
                    data_count <= sub_0_result;
                end
            end
            if (and_14_result) begin
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
        if (and_14_result) begin
            if (not_0_result) begin
                if (eq_14_result) begin
                    fifo_ram_i0 <= io_enqueue_data;
                end
            end
        end
        if (and_15_result) begin
            if (eq_14_result) begin
                fifo_ram_i0 <= io_enqueue_data;
            end
        end
        fifo_ram_i1 <= fifo_ram_i1;
        if (and_14_result) begin
            if (not_0_result) begin
                if (eq_15_result) begin
                    fifo_ram_i1 <= io_enqueue_data;
                end
            end
        end
        if (and_15_result) begin
            if (eq_15_result) begin
                fifo_ram_i1 <= io_enqueue_data;
            end
        end
        fifo_ram_i2 <= fifo_ram_i2;
        if (and_14_result) begin
            if (not_0_result) begin
                if (eq_16_result) begin
                    fifo_ram_i2 <= io_enqueue_data;
                end
            end
        end
        if (and_15_result) begin
            if (eq_16_result) begin
                fifo_ram_i2 <= io_enqueue_data;
            end
        end
        fifo_ram_i3 <= fifo_ram_i3;
        if (and_14_result) begin
            if (not_0_result) begin
                if (eq_17_result) begin
                    fifo_ram_i3 <= io_enqueue_data;
                end
            end
        end
        if (and_15_result) begin
            if (eq_17_result) begin
                fifo_ram_i3 <= io_enqueue_data;
            end
        end
        fifo_ram_i4 <= fifo_ram_i4;
        if (and_14_result) begin
            if (not_0_result) begin
                if (eq_18_result) begin
                    fifo_ram_i4 <= io_enqueue_data;
                end
            end
        end
        if (and_15_result) begin
            if (eq_18_result) begin
                fifo_ram_i4 <= io_enqueue_data;
            end
        end
        fifo_ram_i5 <= fifo_ram_i5;
        if (and_14_result) begin
            if (not_0_result) begin
                if (eq_19_result) begin
                    fifo_ram_i5 <= io_enqueue_data;
                end
            end
        end
        if (and_15_result) begin
            if (eq_19_result) begin
                fifo_ram_i5 <= io_enqueue_data;
            end
        end
        fifo_ram_i6 <= fifo_ram_i6;
        if (and_14_result) begin
            if (not_0_result) begin
                if (eq_20_result) begin
                    fifo_ram_i6 <= io_enqueue_data;
                end
            end
        end
        if (and_15_result) begin
            if (eq_20_result) begin
                fifo_ram_i6 <= io_enqueue_data;
            end
        end
        fifo_ram_i7 <= fifo_ram_i7;
        if (and_14_result) begin
            if (not_0_result) begin
                if (eq_21_result) begin
                    fifo_ram_i7 <= io_enqueue_data;
                end
            end
        end
        if (and_15_result) begin
            if (eq_21_result) begin
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
    wire [7 : 0] cat_3_enqueue_data;
    wire [32 : 0] add_7_result;
    wire [31 : 0] slice_15_result;
    wire neq_0_result;
    wire [7 : 0] mux_4_result;
    wire [7 : 0] mux_5_result;
    wire eq_35_result;
    wire eq_36_result;
    wire eq_37_result;
    wire eq_38_result;
    wire eq_39_result;
    wire eq_40_result;
    wire eq_41_result;
    wire eq_42_result;
    wire [3 : 0] add_8_result;
    wire [2 : 0] slice_16_result;
    wire and_16_result;
    wire [3 : 0] add_9_result;
    wire [2 : 0] slice_17_result;
    wire eq_43_result;
    wire not_6_result;
    wire eq_44_result;
    wire lt_0_result;
    wire and_17_result;
    wire ge_1_result;
    wire eq_45_result;
    wire eq_46_result;
    wire mux_6_result;
    wire eq_47_result;
    wire eq_48_result;
    wire eq_49_result;
    wire eq_50_result;
    wire eq_51_result;
    wire eq_52_result;
    wire eq_53_result;
    wire eq_54_result;
    wire eq_55_result;
    wire [4 : 0] add_10_result;
    wire [3 : 0] slice_18_result;
    wire eq_57_result;
    
    // Operator Synthesis
    assign cat_3_enqueue_data = {data_reg_i7, data_reg_i6, data_reg_i5, data_reg_i4, data_reg_i3, data_reg_i2, data_reg_i1, data_reg_i0};
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
    assign eq_35_result = enq_addr == 0;
    assign eq_36_result = enq_addr == 1;
    assign eq_37_result = enq_addr == 2;
    assign eq_38_result = enq_addr == 3;
    assign eq_39_result = enq_addr == 4;
    assign eq_40_result = enq_addr == 5;
    assign eq_41_result = enq_addr == 6;
    assign eq_42_result = enq_addr == 7;
    assign add_8_result = enq_addr + 1;
    assign slice_16_result = add_8_result[2:0];
    assign and_16_result = io_dequeue & neq_0_result;
    assign add_9_result = deq_addr + 1;
    assign slice_17_result = add_9_result[2:0];
    assign eq_43_result = state == 0;
    assign not_6_result = ~io_uart_rx;
    assign eq_44_result = state == 1;
    assign lt_0_result = clock_counter < 25;
    assign and_17_result = io_uart_rx & lt_0_result;
    assign ge_1_result = clock_counter >= 50;
    assign eq_45_result = state == 2;
    assign eq_46_result = clock_counter == 25;
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
    assign eq_47_result = bit_counter == 0;
    assign eq_48_result = bit_counter == 1;
    assign eq_49_result = bit_counter == 2;
    assign eq_50_result = bit_counter == 3;
    assign eq_51_result = bit_counter == 4;
    assign eq_52_result = bit_counter == 5;
    assign eq_53_result = bit_counter == 6;
    assign eq_54_result = bit_counter == 7;
    assign eq_55_result = clock_counter == 50;
    assign add_10_result = bit_counter + 1;
    assign slice_18_result = add_10_result[3:0];
    assign eq_57_result = state == 3;
    
    // Connections
    assign io_dequeue_data = mux_4_result;
    assign io_data_available = neq_0_result;
    wire _NODE_8;
    assign _NODE_8 = eq_55_result ? 1 : 0;
    assign enqueue = eq_57_result ? _NODE_8 : 0;
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
            if (eq_43_result) begin
                if (not_6_result) begin
                    state <= 1;
                end
            end
            if (eq_44_result) begin
                if (and_17_result) begin
                    state <= 0;
                end
                if (ge_1_result) begin
                    state <= 2;
                end
            end
            if (eq_45_result) begin
                if (eq_55_result) begin
                    if (eq_54_result) begin
                        state <= 3;
                    end
                end
            end
            if (eq_57_result) begin
                if (eq_55_result) begin
                    state <= 0;
                end
            end
            data_reg_i0 <= data_reg_i0;
            if (eq_44_result) begin
                if (ge_1_result) begin
                    data_reg_i0 <= 0;
                end
            end
            if (eq_45_result) begin
                if (eq_46_result) begin
                    if (eq_47_result) begin
                        data_reg_i0 <= io_uart_rx;
                    end
                end
            end
            data_reg_i1 <= data_reg_i1;
            if (eq_44_result) begin
                if (ge_1_result) begin
                    data_reg_i1 <= 0;
                end
            end
            if (eq_45_result) begin
                if (eq_46_result) begin
                    if (eq_48_result) begin
                        data_reg_i1 <= io_uart_rx;
                    end
                end
            end
            data_reg_i2 <= data_reg_i2;
            if (eq_44_result) begin
                if (ge_1_result) begin
                    data_reg_i2 <= 0;
                end
            end
            if (eq_45_result) begin
                if (eq_46_result) begin
                    if (eq_49_result) begin
                        data_reg_i2 <= io_uart_rx;
                    end
                end
            end
            data_reg_i3 <= data_reg_i3;
            if (eq_44_result) begin
                if (ge_1_result) begin
                    data_reg_i3 <= 0;
                end
            end
            if (eq_45_result) begin
                if (eq_46_result) begin
                    if (eq_50_result) begin
                        data_reg_i3 <= io_uart_rx;
                    end
                end
            end
            data_reg_i4 <= data_reg_i4;
            if (eq_44_result) begin
                if (ge_1_result) begin
                    data_reg_i4 <= 0;
                end
            end
            if (eq_45_result) begin
                if (eq_46_result) begin
                    if (eq_51_result) begin
                        data_reg_i4 <= io_uart_rx;
                    end
                end
            end
            data_reg_i5 <= data_reg_i5;
            if (eq_44_result) begin
                if (ge_1_result) begin
                    data_reg_i5 <= 0;
                end
            end
            if (eq_45_result) begin
                if (eq_46_result) begin
                    if (eq_52_result) begin
                        data_reg_i5 <= io_uart_rx;
                    end
                end
            end
            data_reg_i6 <= data_reg_i6;
            if (eq_44_result) begin
                if (ge_1_result) begin
                    data_reg_i6 <= 0;
                end
            end
            if (eq_45_result) begin
                if (eq_46_result) begin
                    if (eq_53_result) begin
                        data_reg_i6 <= io_uart_rx;
                    end
                end
            end
            data_reg_i7 <= data_reg_i7;
            if (eq_44_result) begin
                if (ge_1_result) begin
                    data_reg_i7 <= 0;
                end
            end
            if (eq_45_result) begin
                if (eq_46_result) begin
                    if (eq_54_result) begin
                        data_reg_i7 <= io_uart_rx;
                    end
                end
            end
            fifo_ram_i0 <= fifo_ram_i0;
            if (enqueue) begin
                if (eq_35_result) begin
                    fifo_ram_i0 <= cat_3_enqueue_data;
                end
            end
            fifo_ram_i1 <= fifo_ram_i1;
            if (enqueue) begin
                if (eq_36_result) begin
                    fifo_ram_i1 <= cat_3_enqueue_data;
                end
            end
            fifo_ram_i2 <= fifo_ram_i2;
            if (enqueue) begin
                if (eq_37_result) begin
                    fifo_ram_i2 <= cat_3_enqueue_data;
                end
            end
            fifo_ram_i3 <= fifo_ram_i3;
            if (enqueue) begin
                if (eq_38_result) begin
                    fifo_ram_i3 <= cat_3_enqueue_data;
                end
            end
            fifo_ram_i4 <= fifo_ram_i4;
            if (enqueue) begin
                if (eq_39_result) begin
                    fifo_ram_i4 <= cat_3_enqueue_data;
                end
            end
            fifo_ram_i5 <= fifo_ram_i5;
            if (enqueue) begin
                if (eq_40_result) begin
                    fifo_ram_i5 <= cat_3_enqueue_data;
                end
            end
            fifo_ram_i6 <= fifo_ram_i6;
            if (enqueue) begin
                if (eq_41_result) begin
                    fifo_ram_i6 <= cat_3_enqueue_data;
                end
            end
            fifo_ram_i7 <= fifo_ram_i7;
            if (enqueue) begin
                if (eq_42_result) begin
                    fifo_ram_i7 <= cat_3_enqueue_data;
                end
            end
            enq_addr <= enq_addr;
            if (enqueue) begin
                enq_addr <= slice_16_result;
            end
            deq_addr <= deq_addr;
            if (and_16_result) begin
                deq_addr <= slice_17_result;
            end
            clock_counter <= clock_counter;
            clock_counter <= slice_15_result;
            if (eq_43_result) begin
                clock_counter <= 0;
            end
            if (eq_44_result) begin
                if (ge_1_result) begin
                    clock_counter <= 0;
                end
            end
            if (eq_45_result) begin
                if (eq_55_result) begin
                    clock_counter <= 0;
                end
            end
            bit_counter <= bit_counter;
            if (eq_44_result) begin
                if (ge_1_result) begin
                    bit_counter <= 0;
                end
            end
            if (eq_45_result) begin
                if (eq_55_result) begin
                    if (!eq_54_result) begin
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
    wire eq_59_result;
    wire eq_60_result;
    wire eq_61_result;
    wire eq_62_result;
    wire eq_63_result;
    wire eq_64_result;
    wire eq_65_result;
    wire eq_66_result;
    wire [9 : 0] add_11_result;
    wire [8 : 0] slice_19_result;
    wire not_7_result;
    wire lt_1_result;
    wire [9 : 0] add_12_result;
    wire [8 : 0] slice_20_result;
    wire eq_67_result;
    wire [1 : 0] slice_21_result;
    wire [3 : 0] slice_22_result;
    
    // Operator Synthesis
    assign eq_59_result = io_layer == 0;
    assign eq_60_result = io_layer == 1;
    assign eq_61_result = io_layer == 2;
    assign eq_62_result = io_layer == 3;
    assign eq_63_result = io_layer == 4;
    assign eq_64_result = io_layer == 5;
    assign eq_65_result = io_layer == 6;
    assign eq_66_result = io_layer == 7;
    assign add_11_result = base_address + read_counter;
    assign slice_19_result = add_11_result[8:0];
    assign not_7_result = ~done;
    assign lt_1_result = read_counter < 64;
    assign add_12_result = read_counter + 1;
    assign slice_20_result = add_12_result[8:0];
    assign eq_67_result = read_counter == 64;
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
                if (eq_67_result) begin
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
                if (eq_59_result) begin
                    base_address <= 0;
                end
                if (eq_60_result) begin
                    base_address <= 64;
                end
                if (eq_61_result) begin
                    base_address <= 128;
                end
                if (eq_62_result) begin
                    base_address <= 192;
                end
                if (eq_63_result) begin
                    base_address <= 256;
                end
                if (eq_64_result) begin
                    base_address <= 320;
                end
                if (eq_65_result) begin
                    base_address <= 384;
                end
                if (eq_66_result) begin
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
    input [7 : 0] io_config_enable,
    output [3 : 0] io_tlcs_i0_opcode,
    input io_tlcs_i0_ready,
    output [3 : 0] io_tlcs_i1_opcode,
    input io_tlcs_i1_ready,
    output [3 : 0] io_tlcs_i2_opcode,
    input io_tlcs_i2_ready,
    output [3 : 0] io_tlcs_i3_opcode,
    input io_tlcs_i3_ready,
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
    reg [2 : 0] state;
    wire and_18_result;
    wire and_19_result;
    wire and_20_result;
    wire eq_136_result;
    wire neq_2_result;
    wire and_21_result;
    wire eq_137_result;
    wire eq_138_result;
    wire and_22_result;
    wire eq_139_result;
    wire [3 : 0] add_13_result;
    wire [2 : 0] slice_23_result;
    wire eq_140_result;
    wire eq_141_result;
    wire [32 : 0] add_14_result;
    wire [31 : 0] slice_24_result;
    wire gt_3_result;
    wire eq_142_result;
    wire eq_143_result;
    wire eq_144_result;
    wire eq_145_result;
    wire eq_146_result;
    wire eq_147_result;
    wire eq_148_result;
    wire eq_149_result;
    wire eq_150_result;
    wire eq_151_result;
    wire eq_152_result;
    
    // Operator Synthesis
    assign and_18_result = io_tlcs_i0_ready & io_tlcs_i1_ready;
    assign and_19_result = and_18_result & io_tlcs_i2_ready;
    assign and_20_result = and_19_result & io_tlcs_i3_ready;
    assign eq_136_result = state == 0;
    assign neq_2_result = io_config_enable != 0;
    assign and_21_result = tlcs_ready & neq_2_result;
    assign eq_137_result = state == 1;
    assign eq_138_result = state == 2;
    assign and_22_result = tlcs_ready & io_reader_done;
    assign eq_139_result = state == 3;
    assign add_13_result = layer_counter + 1;
    assign slice_23_result = add_13_result[2:0];
    assign eq_140_result = state == 4;
    assign eq_141_result = state == 5;
    assign add_14_result = disp_counter + 1;
    assign slice_24_result = add_14_result[31:0];
    assign gt_3_result = disp_counter > io_config_disp_cycles;
    assign eq_142_result = state == 6;
    assign eq_143_result = state == 7;
    assign eq_144_result = io_config_enable == 0;
    assign eq_145_result = layer_counter == 0;
    assign eq_146_result = layer_counter == 1;
    assign eq_147_result = layer_counter == 2;
    assign eq_148_result = layer_counter == 3;
    assign eq_149_result = layer_counter == 4;
    assign eq_150_result = layer_counter == 5;
    assign eq_151_result = layer_counter == 6;
    assign eq_152_result = layer_counter == 7;
    
    // Connections
    assign io_tlcs_i0_opcode = tlcs_cmd;
    assign io_tlcs_i1_opcode = tlcs_cmd;
    assign io_tlcs_i2_opcode = tlcs_cmd;
    assign io_tlcs_i3_opcode = tlcs_cmd;
    wire _NODE_9;
    wire _NODE_10;
    wire _NODE_11;
    assign _NODE_11 = and_21_result ? 1 : 0;
    assign _NODE_10 = eq_136_result ? _NODE_11 : 0;
    assign _NODE_9 = tlcs_ready ? 1 : _NODE_10;
    wire _NODE_12;
    wire _NODE_13;
    assign _NODE_13 = and_21_result ? 1 : 0;
    assign _NODE_12 = eq_136_result ? _NODE_13 : 0;
    assign io_reader_start = eq_140_result ? _NODE_9 : _NODE_12;
    assign io_reader_layer = layer_counter;
    assign io_layer_mask = layer_mask;
    wire [3 : 0] _NODE_14;
    wire [3 : 0] _NODE_15;
    wire [3 : 0] _NODE_16;
    wire [3 : 0] _NODE_17;
    assign _NODE_17 = eq_137_result ? 1 : 0;
    assign _NODE_16 = eq_138_result ? 5 : _NODE_17;
    assign _NODE_15 = eq_139_result ? 7 : _NODE_16;
    assign _NODE_14 = eq_140_result ? 8 : _NODE_15;
    assign tlcs_cmd = eq_142_result ? 6 : _NODE_14;
    assign tlcs_ready = and_20_result;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            layer_mask <= 0;
            disp_counter <= 0;
            layer_counter <= 0;
            state <= 0;
        end
        else begin
            layer_mask <= layer_mask;
            if (eq_143_result) begin
                if (eq_144_result) begin
                    layer_mask <= 0;
                end
                else begin
                    if (eq_145_result) begin
                        layer_mask <= 1;
                    end
                    if (eq_146_result) begin
                        layer_mask <= 2;
                    end
                    if (eq_147_result) begin
                        layer_mask <= 4;
                    end
                    if (eq_148_result) begin
                        layer_mask <= 8;
                    end
                    if (eq_149_result) begin
                        layer_mask <= 16;
                    end
                    if (eq_150_result) begin
                        layer_mask <= 32;
                    end
                    if (eq_151_result) begin
                        layer_mask <= 64;
                    end
                    if (eq_152_result) begin
                        layer_mask <= 128;
                    end
                end
            end
            disp_counter <= disp_counter;
            if (eq_140_result) begin
                if (tlcs_ready) begin
                    disp_counter <= 0;
                end
            end
            if (eq_141_result) begin
                disp_counter <= slice_24_result;
                if (gt_3_result) begin
                    disp_counter <= 0;
                end
            end
            layer_counter <= layer_counter;
            if (eq_136_result) begin
                if (and_21_result) begin
                    layer_counter <= 0;
                end
            end
            if (eq_139_result) begin
                if (tlcs_ready) begin
                    layer_counter <= slice_23_result;
                end
            end
            state <= state;
            if (eq_136_result) begin
                if (and_21_result) begin
                    state <= 1;
                end
            end
            if (eq_137_result) begin
                if (tlcs_ready) begin
                    state <= 2;
                end
            end
            if (eq_138_result) begin
                if (and_22_result) begin
                    state <= 3;
                end
            end
            if (eq_139_result) begin
                if (tlcs_ready) begin
                    state <= 4;
                end
            end
            if (eq_140_result) begin
                if (tlcs_ready) begin
                    state <= 5;
                end
            end
            if (eq_141_result) begin
                if (gt_3_result) begin
                    state <= 6;
                end
            end
            if (eq_142_result) begin
                if (tlcs_ready) begin
                    state <= 7;
                end
            end
            if (eq_143_result) begin
                if (eq_144_result) begin
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
    wire eq_153_rising_edge;
    wire ge_3_beat_finished;
    wire [16 : 0] add_15_result;
    wire [7 : 0] mux_7_result;
    wire slice_25_result;
    wire slice_26_result;
    wire slice_27_result;
    wire slice_28_result;
    wire slice_29_result;
    wire slice_30_result;
    wire slice_31_result;
    wire slice_32_result;
    wire eq_154_result;
    wire eq_155_result;
    wire eq_156_result;
    wire mux_15_result;
    wire [32 : 0] add_23_result;
    wire [31 : 0] slice_33_result;
    wire eq_157_result;
    wire and_23_result;
    wire [8 : 0] add_24_result;
    wire [7 : 0] slice_34_result;
    wire eq_158_result;
    wire slice_35_result;
    wire slice_36_result;
    wire slice_37_result;
    wire slice_38_result;
    wire slice_39_result;
    wire slice_40_result;
    wire slice_41_result;
    wire slice_42_result;
    wire eq_159_result;
    wire eq_160_result;
    wire [16 : 0] add_25_result;
    wire [15 : 0] slice_43_result;
    wire eq_161_result;
    wire [7 : 0] sub_1_result;
    wire eq_162_result;
    wire [15 : 0] slice_44_result;
    wire eq_163_result;
    wire eq_164_result;
    
    // Operator Synthesis
    assign ge_2_pulse = clock_counter >= io_config_clock_threshold;
    assign eq_153_rising_edge = clock_counter == io_config_clock_threshold;
    assign ge_3_beat_finished = clock_counter >= io_config_clock_period;
    assign add_15_result = data_counter + 1;
    wire [7 : 0] _NODE_18 [17 : 0];
    assign _NODE_18[0] = packet_i0;
    assign _NODE_18[1] = packet_i1;
    assign _NODE_18[2] = packet_i2;
    assign _NODE_18[3] = packet_i3;
    assign _NODE_18[4] = packet_i4;
    assign _NODE_18[5] = packet_i5;
    assign _NODE_18[6] = packet_i6;
    assign _NODE_18[7] = packet_i7;
    assign _NODE_18[8] = packet_i8;
    assign _NODE_18[9] = packet_i9;
    assign _NODE_18[10] = packet_i10;
    assign _NODE_18[11] = packet_i11;
    assign _NODE_18[12] = packet_i12;
    assign _NODE_18[13] = packet_i13;
    assign _NODE_18[14] = packet_i14;
    assign _NODE_18[15] = packet_i15;
    assign _NODE_18[16] = packet_i16;
    assign _NODE_18[17] = packet_i17;
    assign mux_7_result = _NODE_18[add_15_result];
    assign slice_25_result = mux_7_result[7:7];
    assign slice_26_result = mux_7_result[6:6];
    assign slice_27_result = mux_7_result[5:5];
    assign slice_28_result = mux_7_result[4:4];
    assign slice_29_result = mux_7_result[3:3];
    assign slice_30_result = mux_7_result[2:2];
    assign slice_31_result = mux_7_result[1:1];
    assign slice_32_result = mux_7_result[0:0];
    assign eq_154_result = sda_state == 1;
    assign eq_155_result = sda_state == 2;
    assign eq_156_result = scl_state == 1;
    wire [0 : 0] _NODE_19 [7 : 0];
    assign _NODE_19[0] = data_reg_i0;
    assign _NODE_19[1] = data_reg_i1;
    assign _NODE_19[2] = data_reg_i2;
    assign _NODE_19[3] = data_reg_i3;
    assign _NODE_19[4] = data_reg_i4;
    assign _NODE_19[5] = data_reg_i5;
    assign _NODE_19[6] = data_reg_i6;
    assign _NODE_19[7] = data_reg_i7;
    assign mux_15_result = _NODE_19[beat_counter];
    assign add_23_result = clock_counter + 1;
    assign slice_33_result = add_23_result[31:0];
    assign eq_157_result = state == 0;
    assign and_23_result = io_req_ready & io_req_valid;
    assign add_24_result = io_req_data_size + 2;
    assign slice_34_result = add_24_result[7:0];
    assign eq_158_result = state == 1;
    assign slice_35_result = packet_i0[7:7];
    assign slice_36_result = packet_i0[6:6];
    assign slice_37_result = packet_i0[5:5];
    assign slice_38_result = packet_i0[4:4];
    assign slice_39_result = packet_i0[3:3];
    assign slice_40_result = packet_i0[2:2];
    assign slice_41_result = packet_i0[1:1];
    assign slice_42_result = packet_i0[0:0];
    assign eq_159_result = state == 2;
    assign eq_160_result = beat_counter == 7;
    assign add_25_result = beat_counter + 1;
    assign slice_43_result = add_25_result[15:0];
    assign eq_161_result = state == 3;
    assign sub_1_result = packet_size - 1;
    assign eq_162_result = data_counter == sub_1_result;
    assign slice_44_result = add_15_result[15:0];
    assign eq_163_result = state == 4;
    assign eq_164_result = state == 5;
    
    // Connections
    assign io_req_ready = eq_157_result ? ge_2_pulse : 0;
    wire _NODE_20;
    assign _NODE_20 = eq_154_result ? 0 : 1;
    assign io_i2c_sda_o = eq_155_result ? data_out : _NODE_20;
    assign io_i2c_scl_o = eq_156_result ? ge_2_pulse : 1;
    assign io_error = eq_163_result ? 1 : 0;
    assign next_data_i0 = slice_25_result;
    assign next_data_i1 = slice_26_result;
    assign next_data_i2 = slice_27_result;
    assign next_data_i3 = slice_28_result;
    assign next_data_i4 = slice_29_result;
    assign next_data_i5 = slice_30_result;
    assign next_data_i6 = slice_31_result;
    assign next_data_i7 = slice_32_result;
    assign data_out = mux_15_result;
    wire [1 : 0] _NODE_21;
    wire [1 : 0] _NODE_22;
    assign _NODE_22 = eq_158_result ? 1 : 0;
    assign _NODE_21 = eq_159_result ? 2 : _NODE_22;
    assign sda_state = eq_164_result ? 1 : _NODE_21;
    wire [1 : 0] _NODE_23;
    wire [1 : 0] _NODE_24;
    assign _NODE_24 = eq_159_result ? 1 : 0;
    assign _NODE_23 = eq_161_result ? 1 : _NODE_24;
    assign scl_state = eq_164_result ? 1 : _NODE_23;
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
            if (eq_157_result) begin
                if (and_23_result) begin
                    state <= 1;
                end
            end
            if (eq_158_result) begin
                if (ge_2_pulse) begin
                    state <= 2;
                end
            end
            if (eq_159_result) begin
                if (ge_3_beat_finished) begin
                    if (eq_160_result) begin
                        state <= 3;
                    end
                end
            end
            if (eq_161_result) begin
                if (ge_3_beat_finished) begin
                    if (eq_162_result) begin
                        state <= 5;
                    end
                    else begin
                        state <= 2;
                    end
                end
            end
            if (eq_164_result) begin
                if (ge_3_beat_finished) begin
                    state <= 0;
                end
            end
            packet_size <= packet_size;
            if (eq_157_result) begin
                if (and_23_result) begin
                    packet_size <= slice_34_result;
                end
            end
            clock_counter <= clock_counter;
            clock_counter <= slice_33_result;
            if (eq_157_result) begin
                if (and_23_result) begin
                    clock_counter <= 0;
                end
            end
            if (eq_158_result) begin
                if (ge_2_pulse) begin
                    clock_counter <= 0;
                end
            end
            if (eq_159_result) begin
                if (ge_3_beat_finished) begin
                    clock_counter <= 0;
                end
            end
            if (eq_161_result) begin
                if (ge_3_beat_finished) begin
                    clock_counter <= 0;
                end
            end
            if (eq_164_result) begin
                if (ge_3_beat_finished) begin
                    clock_counter <= 0;
                end
            end
            data_counter <= data_counter;
            if (eq_157_result) begin
                if (and_23_result) begin
                    data_counter <= 0;
                end
            end
            if (eq_161_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_162_result) begin
                        data_counter <= slice_44_result;
                    end
                end
            end
            beat_counter <= beat_counter;
            if (eq_157_result) begin
                if (and_23_result) begin
                    beat_counter <= 0;
                end
            end
            if (eq_159_result) begin
                if (ge_3_beat_finished) begin
                    if (eq_160_result) begin
                        beat_counter <= 0;
                    end
                    else begin
                        beat_counter <= slice_43_result;
                    end
                end
            end
            data_reg_i0 <= data_reg_i0;
            if (eq_158_result) begin
                if (ge_2_pulse) begin
                    data_reg_i0 <= slice_35_result;
                end
            end
            if (eq_161_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_162_result) begin
                        data_reg_i0 <= next_data_i0;
                    end
                end
            end
            data_reg_i1 <= data_reg_i1;
            if (eq_158_result) begin
                if (ge_2_pulse) begin
                    data_reg_i1 <= slice_36_result;
                end
            end
            if (eq_161_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_162_result) begin
                        data_reg_i1 <= next_data_i1;
                    end
                end
            end
            data_reg_i2 <= data_reg_i2;
            if (eq_158_result) begin
                if (ge_2_pulse) begin
                    data_reg_i2 <= slice_37_result;
                end
            end
            if (eq_161_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_162_result) begin
                        data_reg_i2 <= next_data_i2;
                    end
                end
            end
            data_reg_i3 <= data_reg_i3;
            if (eq_158_result) begin
                if (ge_2_pulse) begin
                    data_reg_i3 <= slice_38_result;
                end
            end
            if (eq_161_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_162_result) begin
                        data_reg_i3 <= next_data_i3;
                    end
                end
            end
            data_reg_i4 <= data_reg_i4;
            if (eq_158_result) begin
                if (ge_2_pulse) begin
                    data_reg_i4 <= slice_39_result;
                end
            end
            if (eq_161_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_162_result) begin
                        data_reg_i4 <= next_data_i4;
                    end
                end
            end
            data_reg_i5 <= data_reg_i5;
            if (eq_158_result) begin
                if (ge_2_pulse) begin
                    data_reg_i5 <= slice_40_result;
                end
            end
            if (eq_161_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_162_result) begin
                        data_reg_i5 <= next_data_i5;
                    end
                end
            end
            data_reg_i6 <= data_reg_i6;
            if (eq_158_result) begin
                if (ge_2_pulse) begin
                    data_reg_i6 <= slice_41_result;
                end
            end
            if (eq_161_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_162_result) begin
                        data_reg_i6 <= next_data_i6;
                    end
                end
            end
            data_reg_i7 <= data_reg_i7;
            if (eq_158_result) begin
                if (ge_2_pulse) begin
                    data_reg_i7 <= slice_42_result;
                end
            end
            if (eq_161_result) begin
                if (ge_3_beat_finished) begin
                    if (!eq_162_result) begin
                        data_reg_i7 <= next_data_i7;
                    end
                end
            end
        end
        packet_i0 <= packet_i0;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i0 <= io_req_data_address;
            end
        end
        packet_i1 <= packet_i1;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i1 <= io_req_data_header;
            end
        end
        packet_i2 <= packet_i2;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i2 <= io_req_data_payload_i0;
            end
        end
        packet_i3 <= packet_i3;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i3 <= io_req_data_payload_i1;
            end
        end
        packet_i4 <= packet_i4;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i4 <= io_req_data_payload_i2;
            end
        end
        packet_i5 <= packet_i5;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i5 <= io_req_data_payload_i3;
            end
        end
        packet_i6 <= packet_i6;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i6 <= io_req_data_payload_i4;
            end
        end
        packet_i7 <= packet_i7;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i7 <= io_req_data_payload_i5;
            end
        end
        packet_i8 <= packet_i8;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i8 <= io_req_data_payload_i6;
            end
        end
        packet_i9 <= packet_i9;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i9 <= io_req_data_payload_i7;
            end
        end
        packet_i10 <= packet_i10;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i10 <= io_req_data_payload_i8;
            end
        end
        packet_i11 <= packet_i11;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i11 <= io_req_data_payload_i9;
            end
        end
        packet_i12 <= packet_i12;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i12 <= io_req_data_payload_i10;
            end
        end
        packet_i13 <= packet_i13;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i13 <= io_req_data_payload_i11;
            end
        end
        packet_i14 <= packet_i14;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i14 <= io_req_data_payload_i12;
            end
        end
        packet_i15 <= packet_i15;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i15 <= io_req_data_payload_i13;
            end
        end
        packet_i16 <= packet_i16;
        if (eq_157_result) begin
            if (and_23_result) begin
                packet_i16 <= io_req_data_payload_i14;
            end
        end
        packet_i17 <= packet_i17;
        if (eq_157_result) begin
            if (and_23_result) begin
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
    reg [1 : 0] state;
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
    wire eq_165_result;
    wire [16 : 0] add_27_result;
    wire [15 : 0] slice_45_result;
    wire gt_4_result;
    wire gt_5_result;
    wire eq_166_result;
    wire eq_167_result;
    wire eq_168_result;
    wire eq_169_result;
    wire eq_170_result;
    wire eq_171_result;
    wire eq_172_result;
    wire eq_173_result;
    wire eq_174_result;
    wire eq_175_result;
    wire [32 : 0] add_28_result;
    wire [31 : 0] slice_46_result;
    
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
    assign eq_165_result = state == 0;
    assign add_27_result = reset_counter + 1;
    assign slice_45_result = add_27_result[15:0];
    assign gt_4_result = reset_counter > 50;
    assign gt_5_result = reset_counter > 100;
    assign eq_166_result = state == 1;
    assign eq_167_result = state == 2;
    assign eq_168_result = io_cmd_opcode == 1;
    assign eq_169_result = io_cmd_opcode == 4;
    assign eq_170_result = io_cmd_opcode == 5;
    assign eq_171_result = io_cmd_opcode == 6;
    assign eq_172_result = io_cmd_opcode == 7;
    assign eq_173_result = io_cmd_opcode == 8;
    assign eq_174_result = io_cmd_opcode == 9;
    assign eq_175_result = state == 3;
    assign add_28_result = error_count + 1;
    assign slice_46_result = add_28_result[31:0];
    
    // Connections
    assign io_i2c_sda_o = i2c_ctrl_i2c_sda_o;
    assign io_i2c_scl_o = i2c_ctrl_i2c_scl_o;
    wire _NODE_25;
    assign _NODE_25 = gt_4_result ? 1 : 0;
    assign io_resetn = eq_165_result ? _NODE_25 : 1;
    assign io_cmd_ready = eq_167_result ? i2c_ctrl_req_ready : 0;
    assign io_err_count = error_count;
    assign i2c_ctrl_config_clock_threshold = io_config_i2c_config_clock_threshold;
    assign i2c_ctrl_config_clock_period = io_config_i2c_config_clock_period;
    wire _NODE_26;
    wire _NODE_27;
    wire _NODE_28;
    wire _NODE_29;
    wire _NODE_30;
    wire _NODE_31;
    wire _NODE_32;
    assign _NODE_32 = eq_166_result ? 1 : 0;
    assign _NODE_31 = eq_169_result ? 1 : _NODE_32;
    assign _NODE_30 = eq_170_result ? 1 : _NODE_31;
    assign _NODE_29 = eq_171_result ? 1 : _NODE_30;
    assign _NODE_28 = eq_172_result ? 1 : _NODE_29;
    assign _NODE_27 = eq_173_result ? 1 : _NODE_28;
    assign _NODE_26 = eq_174_result ? 1 : _NODE_27;
    wire _NODE_33;
    assign _NODE_33 = eq_166_result ? 1 : 0;
    assign i2c_ctrl_req_valid = eq_167_result ? _NODE_26 : _NODE_33;
    wire [7 : 0] _NODE_34;
    wire [7 : 0] _NODE_35;
    wire [7 : 0] _NODE_36;
    wire [7 : 0] _NODE_37;
    wire [7 : 0] _NODE_38;
    wire [7 : 0] _NODE_39;
    wire [7 : 0] _NODE_40;
    assign _NODE_40 = eq_166_result ? 1 : 0;
    assign _NODE_39 = eq_169_result ? 1 : _NODE_40;
    assign _NODE_38 = eq_170_result ? 1 : _NODE_39;
    assign _NODE_37 = eq_171_result ? 1 : _NODE_38;
    assign _NODE_36 = eq_172_result ? 16 : _NODE_37;
    assign _NODE_35 = eq_173_result ? 4 : _NODE_36;
    assign _NODE_34 = eq_174_result ? 4 : _NODE_35;
    wire [7 : 0] _NODE_41;
    assign _NODE_41 = eq_166_result ? 1 : 0;
    assign i2c_ctrl_req_data_size = eq_167_result ? _NODE_34 : _NODE_41;
    wire [7 : 0] _NODE_42;
    wire [7 : 0] _NODE_43;
    wire [7 : 0] _NODE_44;
    wire [7 : 0] _NODE_45;
    wire [7 : 0] _NODE_46;
    wire [7 : 0] _NODE_47;
    wire [7 : 0] _NODE_48;
    assign _NODE_48 = eq_166_result ? 214 : 0;
    assign _NODE_47 = eq_169_result ? 208 : _NODE_48;
    assign _NODE_46 = eq_170_result ? 208 : _NODE_47;
    assign _NODE_45 = eq_171_result ? 208 : _NODE_46;
    assign _NODE_44 = eq_172_result ? 208 : _NODE_45;
    assign _NODE_43 = eq_173_result ? 208 : _NODE_44;
    assign _NODE_42 = eq_174_result ? 208 : _NODE_43;
    wire [7 : 0] _NODE_49;
    assign _NODE_49 = eq_166_result ? 214 : 0;
    assign i2c_ctrl_req_data_address = eq_167_result ? _NODE_42 : _NODE_49;
    wire [7 : 0] _NODE_50;
    wire [7 : 0] _NODE_51;
    wire [7 : 0] _NODE_52;
    wire [7 : 0] _NODE_53;
    wire [7 : 0] _NODE_54;
    wire [7 : 0] _NODE_55;
    wire [7 : 0] _NODE_56;
    assign _NODE_56 = eq_166_result ? 165 : 0;
    assign _NODE_55 = eq_169_result ? 128 : _NODE_56;
    assign _NODE_54 = eq_170_result ? 128 : _NODE_55;
    assign _NODE_53 = eq_171_result ? 128 : _NODE_54;
    assign _NODE_52 = eq_172_result ? 130 : _NODE_53;
    assign _NODE_51 = eq_173_result ? 148 : _NODE_52;
    assign _NODE_50 = eq_174_result ? 148 : _NODE_51;
    wire [7 : 0] _NODE_57;
    assign _NODE_57 = eq_166_result ? 165 : 0;
    assign i2c_ctrl_req_data_header = eq_167_result ? _NODE_50 : _NODE_57;
    wire [7 : 0] _NODE_58;
    wire [7 : 0] _NODE_59;
    wire [7 : 0] _NODE_60;
    wire [7 : 0] _NODE_61;
    wire [7 : 0] _NODE_62;
    assign _NODE_62 = eq_166_result ? 90 : io_args_i0;
    assign _NODE_61 = eq_170_result ? 1 : _NODE_62;
    assign _NODE_60 = eq_171_result ? 17 : _NODE_61;
    assign _NODE_59 = eq_173_result ? 170 : _NODE_60;
    assign _NODE_58 = eq_174_result ? 0 : _NODE_59;
    wire [7 : 0] _NODE_63;
    assign _NODE_63 = eq_166_result ? 90 : io_args_i0;
    assign i2c_ctrl_req_data_payload_i0 = eq_167_result ? _NODE_58 : _NODE_63;
    wire [7 : 0] _NODE_64;
    wire [7 : 0] _NODE_65;
    assign _NODE_65 = eq_173_result ? 170 : io_args_i1;
    assign _NODE_64 = eq_174_result ? 0 : _NODE_65;
    assign i2c_ctrl_req_data_payload_i1 = eq_167_result ? _NODE_64 : io_args_i1;
    wire [7 : 0] _NODE_66;
    wire [7 : 0] _NODE_67;
    assign _NODE_67 = eq_173_result ? 170 : io_args_i2;
    assign _NODE_66 = eq_174_result ? 0 : _NODE_67;
    assign i2c_ctrl_req_data_payload_i2 = eq_167_result ? _NODE_66 : io_args_i2;
    wire [7 : 0] _NODE_68;
    wire [7 : 0] _NODE_69;
    assign _NODE_69 = eq_173_result ? 170 : io_args_i3;
    assign _NODE_68 = eq_174_result ? 0 : _NODE_69;
    assign i2c_ctrl_req_data_payload_i3 = eq_167_result ? _NODE_68 : io_args_i3;
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
    wire _NODE_70;
    assign _NODE_70 = gt_4_result ? 0 : 1;
    assign i2c_ctrl_reset = eq_165_result ? _NODE_70 : io_reset;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            state <= 0;
            error_count <= 0;
            reset_counter <= 0;
        end
        else begin
            state <= state;
            if (eq_165_result) begin
                if (gt_4_result) begin
                    if (gt_5_result) begin
                        state <= 1;
                    end
                end
            end
            if (eq_166_result) begin
                if (i2c_ctrl_req_ready) begin
                    state <= 2;
                end
            end
            if (eq_167_result) begin
                if (eq_168_result) begin
                    state <= 1;
                end
                if (eq_169_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 2;
                    end
                end
                if (eq_170_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 2;
                    end
                end
                if (eq_171_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 2;
                    end
                end
                if (eq_172_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 2;
                    end
                end
                if (eq_173_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 2;
                    end
                end
                if (eq_174_result) begin
                    if (i2c_ctrl_req_ready) begin
                        state <= 2;
                    end
                end
            end
            if (eq_175_result) begin
                state <= 2;
            end
            error_count <= error_count;
            if (eq_175_result) begin
                error_count <= slice_46_result;
            end
            reset_counter <= reset_counter;
            if (eq_165_result) begin
                reset_counter <= slice_45_result;
                if (gt_4_result) begin
                    if (gt_5_result) begin
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
    wire [7 : 0] rc_config_enable;
    wire [3 : 0] rc_tlcs_i0_opcode;
    wire rc_tlcs_i0_ready;
    wire [3 : 0] rc_tlcs_i1_opcode;
    wire rc_tlcs_i1_ready;
    wire [3 : 0] rc_tlcs_i2_opcode;
    wire rc_tlcs_i2_ready;
    wire [3 : 0] rc_tlcs_i3_opcode;
    wire rc_tlcs_i3_ready;
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
    wire eq_68_result;
    wire eq_69_result;
    wire eq_70_result;
    wire eq_71_result;
    wire eq_72_result;
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
    wire eq_102_result;
    wire eq_119_result;
    wire [8 : 0] slice_47_result;
    wire eq_176_result;
    wire eq_177_result;
    wire eq_178_result;
    wire eq_179_result;
    wire eq_180_result;
    wire eq_181_result;
    wire [10 : 0] add_29_result;
    wire [9 : 0] slice_48_result;
    wire eq_182_result;
    wire eq_183_result;
    wire eq_184_result;
    wire eq_185_result;
    wire eq_186_result;
    wire eq_187_result;
    wire eq_188_result;
    wire eq_189_result;
    
    // Operator Synthesis
    Csrs csrs (
        .io_write_wen(csrs_write_wen),
        .io_write_waddr(csrs_write_waddr),
        .io_write_wdata(csrs_write_wdata),
        .io_config_tlc_i2c_config_clock_threshold(csrs_config_tlc_i2c_config_clock_threshold),
        .io_config_tlc_i2c_config_clock_period(csrs_config_tlc_i2c_config_clock_period),
        .io_config_refresh_disp_cycles(csrs_config_refresh_disp_cycles),
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
    assign eq_68_result = reader_output_bank == 0;
    assign eq_69_result = reader_output_index == 0;
    assign eq_70_result = reader_output_index == 1;
    assign eq_71_result = reader_output_index == 2;
    assign eq_72_result = reader_output_index == 3;
    assign eq_73_result = reader_output_index == 4;
    assign eq_74_result = reader_output_index == 5;
    assign eq_75_result = reader_output_index == 6;
    assign eq_76_result = reader_output_index == 7;
    assign eq_77_result = reader_output_index == 8;
    assign eq_78_result = reader_output_index == 9;
    assign eq_79_result = reader_output_index == 10;
    assign eq_80_result = reader_output_index == 11;
    assign eq_81_result = reader_output_index == 12;
    assign eq_82_result = reader_output_index == 13;
    assign eq_83_result = reader_output_index == 14;
    assign eq_84_result = reader_output_index == 15;
    assign eq_85_result = reader_output_bank == 1;
    assign eq_102_result = reader_output_bank == 2;
    assign eq_119_result = reader_output_bank == 3;
    RefreshController rc (
        .io_config_disp_cycles(rc_config_disp_cycles),
        .io_config_enable(rc_config_enable),
        .io_tlcs_i0_opcode(rc_tlcs_i0_opcode),
        .io_tlcs_i0_ready(rc_tlcs_i0_ready),
        .io_tlcs_i1_opcode(rc_tlcs_i1_opcode),
        .io_tlcs_i1_ready(rc_tlcs_i1_ready),
        .io_tlcs_i2_opcode(rc_tlcs_i2_opcode),
        .io_tlcs_i2_ready(rc_tlcs_i2_ready),
        .io_tlcs_i3_opcode(rc_tlcs_i3_opcode),
        .io_tlcs_i3_ready(rc_tlcs_i3_ready),
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
    assign slice_47_result = idx[8:0];
    assign eq_176_result = state == 0;
    assign eq_177_result = uart_rx_cmd == 119;
    assign eq_178_result = uart_rx_cmd == 101;
    assign eq_179_result = uart_rx_cmd == 100;
    assign eq_180_result = uart_rx_cmd == 102;
    assign eq_181_result = state == 1;
    assign add_29_result = idx + 1;
    assign slice_48_result = add_29_result[9:0];
    assign eq_182_result = idx == 0;
    assign eq_183_result = idx == 1;
    assign eq_184_result = idx == 2;
    assign eq_185_result = state == 2;
    assign eq_186_result = state == 3;
    assign eq_187_result = state == 4;
    assign eq_188_result = idx == 511;
    assign eq_189_result = state == 5;
    
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
    assign io_ram_write_address = slice_47_result;
    wire _NODE_71;
    assign _NODE_71 = uart_rx_data_available ? 1 : 0;
    assign io_ram_write_write = eq_187_result ? _NODE_71 : 0;
    assign io_ram_write_data = uart_rx_cmd;
    wire _NODE_72;
    wire _NODE_73;
    wire _NODE_74;
    wire _NODE_75;
    assign _NODE_75 = eq_184_result ? 1 : 0;
    assign _NODE_74 = uart_rx_data_available ? _NODE_75 : 0;
    assign _NODE_73 = eq_181_result ? _NODE_74 : 0;
    assign _NODE_72 = eq_185_result ? 1 : _NODE_73;
    assign csrs_write_wen = eq_186_result ? 1 : _NODE_72;
    wire [7 : 0] _NODE_76;
    wire [7 : 0] _NODE_77;
    wire [7 : 0] _NODE_78;
    wire [7 : 0] _NODE_79;
    assign _NODE_79 = eq_184_result ? csr_waddr : 0;
    assign _NODE_78 = uart_rx_data_available ? _NODE_79 : 0;
    assign _NODE_77 = eq_181_result ? _NODE_78 : 0;
    assign _NODE_76 = eq_185_result ? 0 : _NODE_77;
    assign csrs_write_waddr = eq_186_result ? 0 : _NODE_76;
    wire [7 : 0] _NODE_80;
    wire [7 : 0] _NODE_81;
    wire [7 : 0] _NODE_82;
    wire [7 : 0] _NODE_83;
    assign _NODE_83 = eq_184_result ? csr_wdata : 0;
    assign _NODE_82 = uart_rx_data_available ? _NODE_83 : 0;
    assign _NODE_81 = eq_181_result ? _NODE_82 : 0;
    assign _NODE_80 = eq_185_result ? 1 : _NODE_81;
    assign csrs_write_wdata = eq_186_result ? 0 : _NODE_80;
    assign csrs_clock = io_clock;
    assign csrs_reset = io_reset;
    assign uart_tx_enqueue = eq_189_result ? 1 : 0;
    assign uart_tx_enqueue_data = eq_189_result ? 115 : 0;
    assign uart_tx_clock = io_clock;
    assign uart_tx_reset = io_reset;
    assign uart_rx_uart_rx = io_uart_rx;
    wire _NODE_84;
    wire _NODE_85;
    assign _NODE_85 = eq_176_result ? 1 : 0;
    assign _NODE_84 = eq_181_result ? 1 : _NODE_85;
    assign uart_rx_dequeue = eq_187_result ? 1 : _NODE_84;
    assign uart_rx_clock = io_clock;
    assign uart_rx_reset = io_reset;
    assign reader_ram_read_data = io_ram_read_data;
    assign reader_start = rc_reader_start;
    assign reader_layer = rc_reader_layer;
    assign reader_clock = io_clock;
    assign reader_reset = io_reset;
    assign rc_config_disp_cycles = csrs_config_refresh_disp_cycles;
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
    assign TlcController_0_args_i0 = reg0_i0;
    assign TlcController_0_args_i1 = reg0_i1;
    assign TlcController_0_args_i2 = reg0_i2;
    assign TlcController_0_args_i3 = reg0_i3;
    assign TlcController_0_args_i4 = reg0_i4;
    assign TlcController_0_args_i5 = reg0_i5;
    assign TlcController_0_args_i6 = reg0_i6;
    assign TlcController_0_args_i7 = reg0_i7;
    assign TlcController_0_args_i8 = reg0_i8;
    assign TlcController_0_args_i9 = reg0_i9;
    assign TlcController_0_args_i10 = reg0_i10;
    assign TlcController_0_args_i11 = reg0_i11;
    assign TlcController_0_args_i12 = reg0_i12;
    assign TlcController_0_args_i13 = reg0_i13;
    assign TlcController_0_args_i14 = reg0_i14;
    assign TlcController_0_args_i15 = reg0_i15;
    assign TlcController_0_clock = io_clock;
    assign TlcController_0_reset = io_reset;
    assign TlcController_1_i2c_sda_i = io_i2cs_i1_sda_i;
    assign TlcController_1_i2c_scl_i = io_i2cs_i1_scl_i;
    assign TlcController_1_config_i2c_config_clock_threshold = csrs_config_tlc_i2c_config_clock_threshold;
    assign TlcController_1_config_i2c_config_clock_period = csrs_config_tlc_i2c_config_clock_period;
    assign TlcController_1_cmd_opcode = rc_tlcs_i1_opcode;
    assign TlcController_1_args_i0 = reg1_i0;
    assign TlcController_1_args_i1 = reg1_i1;
    assign TlcController_1_args_i2 = reg1_i2;
    assign TlcController_1_args_i3 = reg1_i3;
    assign TlcController_1_args_i4 = reg1_i4;
    assign TlcController_1_args_i5 = reg1_i5;
    assign TlcController_1_args_i6 = reg1_i6;
    assign TlcController_1_args_i7 = reg1_i7;
    assign TlcController_1_args_i8 = reg1_i8;
    assign TlcController_1_args_i9 = reg1_i9;
    assign TlcController_1_args_i10 = reg1_i10;
    assign TlcController_1_args_i11 = reg1_i11;
    assign TlcController_1_args_i12 = reg1_i12;
    assign TlcController_1_args_i13 = reg1_i13;
    assign TlcController_1_args_i14 = reg1_i14;
    assign TlcController_1_args_i15 = reg1_i15;
    assign TlcController_1_clock = io_clock;
    assign TlcController_1_reset = io_reset;
    assign TlcController_2_i2c_sda_i = io_i2cs_i2_sda_i;
    assign TlcController_2_i2c_scl_i = io_i2cs_i2_scl_i;
    assign TlcController_2_config_i2c_config_clock_threshold = csrs_config_tlc_i2c_config_clock_threshold;
    assign TlcController_2_config_i2c_config_clock_period = csrs_config_tlc_i2c_config_clock_period;
    assign TlcController_2_cmd_opcode = rc_tlcs_i2_opcode;
    assign TlcController_2_args_i0 = reg2_i0;
    assign TlcController_2_args_i1 = reg2_i1;
    assign TlcController_2_args_i2 = reg2_i2;
    assign TlcController_2_args_i3 = reg2_i3;
    assign TlcController_2_args_i4 = reg2_i4;
    assign TlcController_2_args_i5 = reg2_i5;
    assign TlcController_2_args_i6 = reg2_i6;
    assign TlcController_2_args_i7 = reg2_i7;
    assign TlcController_2_args_i8 = reg2_i8;
    assign TlcController_2_args_i9 = reg2_i9;
    assign TlcController_2_args_i10 = reg2_i10;
    assign TlcController_2_args_i11 = reg2_i11;
    assign TlcController_2_args_i12 = reg2_i12;
    assign TlcController_2_args_i13 = reg2_i13;
    assign TlcController_2_args_i14 = reg2_i14;
    assign TlcController_2_args_i15 = reg2_i15;
    assign TlcController_2_clock = io_clock;
    assign TlcController_2_reset = io_reset;
    assign TlcController_3_i2c_sda_i = io_i2cs_i3_sda_i;
    assign TlcController_3_i2c_scl_i = io_i2cs_i3_scl_i;
    assign TlcController_3_config_i2c_config_clock_threshold = csrs_config_tlc_i2c_config_clock_threshold;
    assign TlcController_3_config_i2c_config_clock_period = csrs_config_tlc_i2c_config_clock_period;
    assign TlcController_3_cmd_opcode = rc_tlcs_i3_opcode;
    assign TlcController_3_args_i0 = reg3_i0;
    assign TlcController_3_args_i1 = reg3_i1;
    assign TlcController_3_args_i2 = reg3_i2;
    assign TlcController_3_args_i3 = reg3_i3;
    assign TlcController_3_args_i4 = reg3_i4;
    assign TlcController_3_args_i5 = reg3_i5;
    assign TlcController_3_args_i6 = reg3_i6;
    assign TlcController_3_args_i7 = reg3_i7;
    assign TlcController_3_args_i8 = reg3_i8;
    assign TlcController_3_args_i9 = reg3_i9;
    assign TlcController_3_args_i10 = reg3_i10;
    assign TlcController_3_args_i11 = reg3_i11;
    assign TlcController_3_args_i12 = reg3_i12;
    assign TlcController_3_args_i13 = reg3_i13;
    assign TlcController_3_args_i14 = reg3_i14;
    assign TlcController_3_args_i15 = reg3_i15;
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
                if (eq_68_result) begin
                    if (eq_69_result) begin
                        reg0_i0 <= reader_output_data;
                    end
                end
            end
            reg0_i1 <= reg0_i1;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_70_result) begin
                        reg0_i1 <= reader_output_data;
                    end
                end
            end
            reg0_i2 <= reg0_i2;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_71_result) begin
                        reg0_i2 <= reader_output_data;
                    end
                end
            end
            reg0_i3 <= reg0_i3;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_72_result) begin
                        reg0_i3 <= reader_output_data;
                    end
                end
            end
            reg0_i4 <= reg0_i4;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_73_result) begin
                        reg0_i4 <= reader_output_data;
                    end
                end
            end
            reg0_i5 <= reg0_i5;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_74_result) begin
                        reg0_i5 <= reader_output_data;
                    end
                end
            end
            reg0_i6 <= reg0_i6;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_75_result) begin
                        reg0_i6 <= reader_output_data;
                    end
                end
            end
            reg0_i7 <= reg0_i7;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_76_result) begin
                        reg0_i7 <= reader_output_data;
                    end
                end
            end
            reg0_i8 <= reg0_i8;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_77_result) begin
                        reg0_i8 <= reader_output_data;
                    end
                end
            end
            reg0_i9 <= reg0_i9;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_78_result) begin
                        reg0_i9 <= reader_output_data;
                    end
                end
            end
            reg0_i10 <= reg0_i10;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_79_result) begin
                        reg0_i10 <= reader_output_data;
                    end
                end
            end
            reg0_i11 <= reg0_i11;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_80_result) begin
                        reg0_i11 <= reader_output_data;
                    end
                end
            end
            reg0_i12 <= reg0_i12;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_81_result) begin
                        reg0_i12 <= reader_output_data;
                    end
                end
            end
            reg0_i13 <= reg0_i13;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_82_result) begin
                        reg0_i13 <= reader_output_data;
                    end
                end
            end
            reg0_i14 <= reg0_i14;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_83_result) begin
                        reg0_i14 <= reader_output_data;
                    end
                end
            end
            reg0_i15 <= reg0_i15;
            if (reader_output_wen) begin
                if (eq_68_result) begin
                    if (eq_84_result) begin
                        reg0_i15 <= reader_output_data;
                    end
                end
            end
            reg1_i0 <= reg1_i0;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_69_result) begin
                        reg1_i0 <= reader_output_data;
                    end
                end
            end
            reg1_i1 <= reg1_i1;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_70_result) begin
                        reg1_i1 <= reader_output_data;
                    end
                end
            end
            reg1_i2 <= reg1_i2;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_71_result) begin
                        reg1_i2 <= reader_output_data;
                    end
                end
            end
            reg1_i3 <= reg1_i3;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_72_result) begin
                        reg1_i3 <= reader_output_data;
                    end
                end
            end
            reg1_i4 <= reg1_i4;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_73_result) begin
                        reg1_i4 <= reader_output_data;
                    end
                end
            end
            reg1_i5 <= reg1_i5;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_74_result) begin
                        reg1_i5 <= reader_output_data;
                    end
                end
            end
            reg1_i6 <= reg1_i6;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_75_result) begin
                        reg1_i6 <= reader_output_data;
                    end
                end
            end
            reg1_i7 <= reg1_i7;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_76_result) begin
                        reg1_i7 <= reader_output_data;
                    end
                end
            end
            reg1_i8 <= reg1_i8;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_77_result) begin
                        reg1_i8 <= reader_output_data;
                    end
                end
            end
            reg1_i9 <= reg1_i9;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_78_result) begin
                        reg1_i9 <= reader_output_data;
                    end
                end
            end
            reg1_i10 <= reg1_i10;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_79_result) begin
                        reg1_i10 <= reader_output_data;
                    end
                end
            end
            reg1_i11 <= reg1_i11;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_80_result) begin
                        reg1_i11 <= reader_output_data;
                    end
                end
            end
            reg1_i12 <= reg1_i12;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_81_result) begin
                        reg1_i12 <= reader_output_data;
                    end
                end
            end
            reg1_i13 <= reg1_i13;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_82_result) begin
                        reg1_i13 <= reader_output_data;
                    end
                end
            end
            reg1_i14 <= reg1_i14;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_83_result) begin
                        reg1_i14 <= reader_output_data;
                    end
                end
            end
            reg1_i15 <= reg1_i15;
            if (reader_output_wen) begin
                if (eq_85_result) begin
                    if (eq_84_result) begin
                        reg1_i15 <= reader_output_data;
                    end
                end
            end
            reg2_i0 <= reg2_i0;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_69_result) begin
                        reg2_i0 <= reader_output_data;
                    end
                end
            end
            reg2_i1 <= reg2_i1;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_70_result) begin
                        reg2_i1 <= reader_output_data;
                    end
                end
            end
            reg2_i2 <= reg2_i2;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_71_result) begin
                        reg2_i2 <= reader_output_data;
                    end
                end
            end
            reg2_i3 <= reg2_i3;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_72_result) begin
                        reg2_i3 <= reader_output_data;
                    end
                end
            end
            reg2_i4 <= reg2_i4;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_73_result) begin
                        reg2_i4 <= reader_output_data;
                    end
                end
            end
            reg2_i5 <= reg2_i5;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_74_result) begin
                        reg2_i5 <= reader_output_data;
                    end
                end
            end
            reg2_i6 <= reg2_i6;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_75_result) begin
                        reg2_i6 <= reader_output_data;
                    end
                end
            end
            reg2_i7 <= reg2_i7;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_76_result) begin
                        reg2_i7 <= reader_output_data;
                    end
                end
            end
            reg2_i8 <= reg2_i8;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_77_result) begin
                        reg2_i8 <= reader_output_data;
                    end
                end
            end
            reg2_i9 <= reg2_i9;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_78_result) begin
                        reg2_i9 <= reader_output_data;
                    end
                end
            end
            reg2_i10 <= reg2_i10;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_79_result) begin
                        reg2_i10 <= reader_output_data;
                    end
                end
            end
            reg2_i11 <= reg2_i11;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_80_result) begin
                        reg2_i11 <= reader_output_data;
                    end
                end
            end
            reg2_i12 <= reg2_i12;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_81_result) begin
                        reg2_i12 <= reader_output_data;
                    end
                end
            end
            reg2_i13 <= reg2_i13;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_82_result) begin
                        reg2_i13 <= reader_output_data;
                    end
                end
            end
            reg2_i14 <= reg2_i14;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_83_result) begin
                        reg2_i14 <= reader_output_data;
                    end
                end
            end
            reg2_i15 <= reg2_i15;
            if (reader_output_wen) begin
                if (eq_102_result) begin
                    if (eq_84_result) begin
                        reg2_i15 <= reader_output_data;
                    end
                end
            end
            reg3_i0 <= reg3_i0;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_69_result) begin
                        reg3_i0 <= reader_output_data;
                    end
                end
            end
            reg3_i1 <= reg3_i1;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_70_result) begin
                        reg3_i1 <= reader_output_data;
                    end
                end
            end
            reg3_i2 <= reg3_i2;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_71_result) begin
                        reg3_i2 <= reader_output_data;
                    end
                end
            end
            reg3_i3 <= reg3_i3;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_72_result) begin
                        reg3_i3 <= reader_output_data;
                    end
                end
            end
            reg3_i4 <= reg3_i4;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_73_result) begin
                        reg3_i4 <= reader_output_data;
                    end
                end
            end
            reg3_i5 <= reg3_i5;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_74_result) begin
                        reg3_i5 <= reader_output_data;
                    end
                end
            end
            reg3_i6 <= reg3_i6;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_75_result) begin
                        reg3_i6 <= reader_output_data;
                    end
                end
            end
            reg3_i7 <= reg3_i7;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_76_result) begin
                        reg3_i7 <= reader_output_data;
                    end
                end
            end
            reg3_i8 <= reg3_i8;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_77_result) begin
                        reg3_i8 <= reader_output_data;
                    end
                end
            end
            reg3_i9 <= reg3_i9;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_78_result) begin
                        reg3_i9 <= reader_output_data;
                    end
                end
            end
            reg3_i10 <= reg3_i10;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_79_result) begin
                        reg3_i10 <= reader_output_data;
                    end
                end
            end
            reg3_i11 <= reg3_i11;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_80_result) begin
                        reg3_i11 <= reader_output_data;
                    end
                end
            end
            reg3_i12 <= reg3_i12;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_81_result) begin
                        reg3_i12 <= reader_output_data;
                    end
                end
            end
            reg3_i13 <= reg3_i13;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_82_result) begin
                        reg3_i13 <= reader_output_data;
                    end
                end
            end
            reg3_i14 <= reg3_i14;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_83_result) begin
                        reg3_i14 <= reader_output_data;
                    end
                end
            end
            reg3_i15 <= reg3_i15;
            if (reader_output_wen) begin
                if (eq_119_result) begin
                    if (eq_84_result) begin
                        reg3_i15 <= reader_output_data;
                    end
                end
            end
            state <= state;
            if (eq_176_result) begin
                if (uart_rx_data_available) begin
                    if (eq_177_result) begin
                        state <= 1;
                    end
                    if (eq_178_result) begin
                        state <= 2;
                    end
                    if (eq_179_result) begin
                        state <= 3;
                    end
                    if (eq_180_result) begin
                        state <= 4;
                    end
                end
            end
            if (eq_181_result) begin
                if (uart_rx_data_available) begin
                    if (eq_184_result) begin
                        state <= 5;
                    end
                end
            end
            if (eq_185_result) begin
                state <= 5;
            end
            if (eq_186_result) begin
                state <= 5;
            end
            if (eq_187_result) begin
                if (uart_rx_data_available) begin
                    if (eq_188_result) begin
                        state <= 5;
                    end
                end
            end
            if (eq_189_result) begin
                if (uart_tx_ready) begin
                    state <= 0;
                end
            end
            idx <= idx;
            if (eq_176_result) begin
                idx <= 0;
            end
            if (eq_181_result) begin
                if (uart_rx_data_available) begin
                    idx <= slice_48_result;
                end
            end
            if (eq_187_result) begin
                if (uart_rx_data_available) begin
                    idx <= slice_48_result;
                end
            end
            csr_waddr <= csr_waddr;
            if (eq_181_result) begin
                if (uart_rx_data_available) begin
                    if (eq_182_result) begin
                        csr_waddr <= uart_rx_cmd;
                    end
                end
            end
            csr_wdata <= csr_wdata;
            if (eq_181_result) begin
                if (uart_rx_data_available) begin
                    if (eq_183_result) begin
                        csr_wdata <= uart_rx_cmd;
                    end
                end
            end
        end
    end
endmodule
