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
    inout io_i2c_sda,
    inout io_i2c_scl,
    output io_i2c_resetn,
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
    wire ge_0_result;
    wire eq_0_result;
    wire ge_1_result;
    wire [16 : 0] add_0_result;
    wire [7 : 0] mux_0_result;
    wire slice_0_result;
    wire slice_1_result;
    wire slice_2_result;
    wire slice_3_result;
    wire slice_4_result;
    wire slice_5_result;
    wire slice_6_result;
    wire slice_7_result;
    wire eq_1_result;
    wire eq_2_result;
    wire eq_3_result;
    wire [15 : 0] sub_0_result;
    wire mux_8_result;
    wire [32 : 0] add_8_result;
    wire eq_4_result;
    wire and_0_result;
    wire [8 : 0] add_9_result;
    wire eq_5_result;
    wire slice_8_result;
    wire slice_9_result;
    wire slice_10_result;
    wire slice_11_result;
    wire slice_12_result;
    wire slice_13_result;
    wire slice_14_result;
    wire slice_15_result;
    wire eq_6_result;
    wire not_0_result;
    wire and_1_result;
    wire eq_7_result;
    wire [16 : 0] add_10_result;
    wire eq_8_result;
    wire [7 : 0] sub_1_result;
    wire eq_9_result;
    wire and_2_result;
    wire eq_10_result;
    wire eq_11_result;
    
    // Operator Synthesis
    assign ge_0_result = clock_counter >= io_config_clock_threshold;
    assign eq_0_result = clock_counter == io_config_clock_threshold;
    assign ge_1_result = clock_counter >= io_config_clock_period;
    assign add_0_result = data_counter + 1;
    wire [7 : 0] _NODE_0 [17 : 0];
    assign _NODE_0[0] = packet_i0;
    assign _NODE_0[1] = packet_i1;
    assign _NODE_0[2] = packet_i2;
    assign _NODE_0[3] = packet_i3;
    assign _NODE_0[4] = packet_i4;
    assign _NODE_0[5] = packet_i5;
    assign _NODE_0[6] = packet_i6;
    assign _NODE_0[7] = packet_i7;
    assign _NODE_0[8] = packet_i8;
    assign _NODE_0[9] = packet_i9;
    assign _NODE_0[10] = packet_i10;
    assign _NODE_0[11] = packet_i11;
    assign _NODE_0[12] = packet_i12;
    assign _NODE_0[13] = packet_i13;
    assign _NODE_0[14] = packet_i14;
    assign _NODE_0[15] = packet_i15;
    assign _NODE_0[16] = packet_i16;
    assign _NODE_0[17] = packet_i17;
    assign mux_0_result = _NODE_0[add_0_result];
    assign slice_0_result = mux_0_result[0:0];
    assign slice_1_result = mux_0_result[1:1];
    assign slice_2_result = mux_0_result[2:2];
    assign slice_3_result = mux_0_result[3:3];
    assign slice_4_result = mux_0_result[4:4];
    assign slice_5_result = mux_0_result[5:5];
    assign slice_6_result = mux_0_result[6:6];
    assign slice_7_result = mux_0_result[7:7];
    assign eq_1_result = sda_state == 1;
    assign eq_2_result = sda_state == 2;
    assign eq_3_result = scl_state == 1;
    assign sub_0_result = beat_counter - 7;
    wire [0 : 0] _NODE_1 [7 : 0];
    assign _NODE_1[0] = data_reg_i0;
    assign _NODE_1[1] = data_reg_i1;
    assign _NODE_1[2] = data_reg_i2;
    assign _NODE_1[3] = data_reg_i3;
    assign _NODE_1[4] = data_reg_i4;
    assign _NODE_1[5] = data_reg_i5;
    assign _NODE_1[6] = data_reg_i6;
    assign _NODE_1[7] = data_reg_i7;
    assign mux_8_result = _NODE_1[sub_0_result];
    assign add_8_result = clock_counter + 1;
    assign eq_4_result = state == 0;
    assign and_0_result = io_req_ready & io_req_valid;
    assign add_9_result = io_req_data_size + 2;
    assign eq_5_result = state == 1;
    assign slice_8_result = packet_i0[0:0];
    assign slice_9_result = packet_i0[1:1];
    assign slice_10_result = packet_i0[2:2];
    assign slice_11_result = packet_i0[3:3];
    assign slice_12_result = packet_i0[4:4];
    assign slice_13_result = packet_i0[5:5];
    assign slice_14_result = packet_i0[6:6];
    assign slice_15_result = packet_i0[7:7];
    assign eq_6_result = state == 2;
    assign not_0_result = ~io_i2c_scl;
    assign and_1_result = ge_0_result & not_0_result;
    assign eq_7_result = beat_counter == 7;
    assign add_10_result = beat_counter + 1;
    assign eq_8_result = state == 3;
    assign sub_1_result = packet_size - 1;
    assign eq_9_result = data_counter == sub_1_result;
    assign and_2_result = eq_0_result & io_i2c_sda;
    assign eq_10_result = state == 4;
    assign eq_11_result = state == 5;
    
    // Connections
    assign io_req_ready = eq_4_result ? ge_0_result : 0;
    wire _NODE_2;
    assign _NODE_2 = eq_1_result ? 0 : 1'bZ;
    assign io_i2c_sda = eq_2_result ? data_out : _NODE_2;
    assign io_i2c_scl = eq_3_result ? ge_0_result : 1'bZ;
    assign io_i2c_resetn = 0;
    assign io_error = eq_10_result ? 1 : 0;
    assign next_data_i0 = slice_0_result;
    assign next_data_i1 = slice_1_result;
    assign next_data_i2 = slice_2_result;
    assign next_data_i3 = slice_3_result;
    assign next_data_i4 = slice_4_result;
    assign next_data_i5 = slice_5_result;
    assign next_data_i6 = slice_6_result;
    assign next_data_i7 = slice_7_result;
    assign data_out = mux_8_result;
    wire [1 : 0] _NODE_3;
    wire [1 : 0] _NODE_4;
    assign _NODE_4 = eq_5_result ? 1 : 0;
    assign _NODE_3 = eq_6_result ? 2 : _NODE_4;
    assign sda_state = eq_11_result ? 1 : _NODE_3;
    wire [1 : 0] _NODE_5;
    wire [1 : 0] _NODE_6;
    assign _NODE_6 = eq_6_result ? 1 : 0;
    assign _NODE_5 = eq_8_result ? 1 : _NODE_6;
    assign scl_state = eq_11_result ? 1 : _NODE_5;
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
            if (eq_4_result) begin
                if (and_0_result) begin
                    state <= 1;
                end
            end
            if (eq_5_result) begin
                if (ge_0_result) begin
                    state <= 2;
                end
            end
            if (eq_6_result) begin
                if (!and_1_result) begin
                    if (ge_1_result) begin
                        if (eq_7_result) begin
                            state <= 3;
                        end
                    end
                end
            end
            if (eq_8_result) begin
                if (ge_1_result) begin
                    if (eq_9_result) begin
                        state <= 5;
                    end
                    else begin
                        state <= 2;
                    end
                end
                if (and_2_result) begin
                    state <= 4;
                end
            end
            if (eq_11_result) begin
                if (ge_1_result) begin
                    state <= 0;
                end
            end
            packet_size <= packet_size;
            if (eq_4_result) begin
                if (and_0_result) begin
                    packet_size <= add_9_result;
                end
            end
            clock_counter <= clock_counter;
            clock_counter <= add_8_result;
            if (eq_4_result) begin
                if (and_0_result) begin
                    clock_counter <= 0;
                end
            end
            if (eq_5_result) begin
                if (ge_0_result) begin
                    clock_counter <= 0;
                end
            end
            if (eq_6_result) begin
                if (and_1_result) begin
                    clock_counter <= clock_counter;
                end
                else begin
                    if (ge_1_result) begin
                        clock_counter <= 0;
                    end
                end
            end
            if (eq_8_result) begin
                if (ge_1_result) begin
                    clock_counter <= 0;
                end
            end
            if (eq_11_result) begin
                if (ge_1_result) begin
                    clock_counter <= 0;
                end
            end
            data_counter <= data_counter;
            if (eq_4_result) begin
                if (and_0_result) begin
                    data_counter <= 0;
                end
            end
            if (eq_8_result) begin
                if (ge_1_result) begin
                    if (!eq_9_result) begin
                        data_counter <= add_0_result;
                    end
                end
            end
            beat_counter <= beat_counter;
            if (eq_4_result) begin
                if (and_0_result) begin
                    beat_counter <= 0;
                end
            end
            if (eq_6_result) begin
                if (!and_1_result) begin
                    if (ge_1_result) begin
                        if (eq_7_result) begin
                            beat_counter <= 0;
                        end
                        else begin
                            beat_counter <= add_10_result;
                        end
                    end
                end
            end
            data_reg_i0 <= data_reg_i0;
            if (eq_5_result) begin
                if (ge_0_result) begin
                    data_reg_i0 <= slice_8_result;
                end
            end
            if (eq_8_result) begin
                if (ge_1_result) begin
                    if (!eq_9_result) begin
                        data_reg_i0 <= next_data_i0;
                    end
                end
            end
            data_reg_i1 <= data_reg_i1;
            if (eq_5_result) begin
                if (ge_0_result) begin
                    data_reg_i1 <= slice_9_result;
                end
            end
            if (eq_8_result) begin
                if (ge_1_result) begin
                    if (!eq_9_result) begin
                        data_reg_i1 <= next_data_i1;
                    end
                end
            end
            data_reg_i2 <= data_reg_i2;
            if (eq_5_result) begin
                if (ge_0_result) begin
                    data_reg_i2 <= slice_10_result;
                end
            end
            if (eq_8_result) begin
                if (ge_1_result) begin
                    if (!eq_9_result) begin
                        data_reg_i2 <= next_data_i2;
                    end
                end
            end
            data_reg_i3 <= data_reg_i3;
            if (eq_5_result) begin
                if (ge_0_result) begin
                    data_reg_i3 <= slice_11_result;
                end
            end
            if (eq_8_result) begin
                if (ge_1_result) begin
                    if (!eq_9_result) begin
                        data_reg_i3 <= next_data_i3;
                    end
                end
            end
            data_reg_i4 <= data_reg_i4;
            if (eq_5_result) begin
                if (ge_0_result) begin
                    data_reg_i4 <= slice_12_result;
                end
            end
            if (eq_8_result) begin
                if (ge_1_result) begin
                    if (!eq_9_result) begin
                        data_reg_i4 <= next_data_i4;
                    end
                end
            end
            data_reg_i5 <= data_reg_i5;
            if (eq_5_result) begin
                if (ge_0_result) begin
                    data_reg_i5 <= slice_13_result;
                end
            end
            if (eq_8_result) begin
                if (ge_1_result) begin
                    if (!eq_9_result) begin
                        data_reg_i5 <= next_data_i5;
                    end
                end
            end
            data_reg_i6 <= data_reg_i6;
            if (eq_5_result) begin
                if (ge_0_result) begin
                    data_reg_i6 <= slice_14_result;
                end
            end
            if (eq_8_result) begin
                if (ge_1_result) begin
                    if (!eq_9_result) begin
                        data_reg_i6 <= next_data_i6;
                    end
                end
            end
            data_reg_i7 <= data_reg_i7;
            if (eq_5_result) begin
                if (ge_0_result) begin
                    data_reg_i7 <= slice_15_result;
                end
            end
            if (eq_8_result) begin
                if (ge_1_result) begin
                    if (!eq_9_result) begin
                        data_reg_i7 <= next_data_i7;
                    end
                end
            end
        end
        packet_i0 <= packet_i0;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i0 <= io_req_data_address;
            end
        end
        packet_i1 <= packet_i1;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i1 <= io_req_data_header;
            end
        end
        packet_i2 <= packet_i2;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i2 <= io_req_data_payload_i0;
            end
        end
        packet_i3 <= packet_i3;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i3 <= io_req_data_payload_i1;
            end
        end
        packet_i4 <= packet_i4;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i4 <= io_req_data_payload_i2;
            end
        end
        packet_i5 <= packet_i5;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i5 <= io_req_data_payload_i3;
            end
        end
        packet_i6 <= packet_i6;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i6 <= io_req_data_payload_i4;
            end
        end
        packet_i7 <= packet_i7;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i7 <= io_req_data_payload_i5;
            end
        end
        packet_i8 <= packet_i8;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i8 <= io_req_data_payload_i6;
            end
        end
        packet_i9 <= packet_i9;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i9 <= io_req_data_payload_i7;
            end
        end
        packet_i10 <= packet_i10;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i10 <= io_req_data_payload_i8;
            end
        end
        packet_i11 <= packet_i11;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i11 <= io_req_data_payload_i9;
            end
        end
        packet_i12 <= packet_i12;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i12 <= io_req_data_payload_i10;
            end
        end
        packet_i13 <= packet_i13;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i13 <= io_req_data_payload_i11;
            end
        end
        packet_i14 <= packet_i14;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i14 <= io_req_data_payload_i12;
            end
        end
        packet_i15 <= packet_i15;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i15 <= io_req_data_payload_i13;
            end
        end
        packet_i16 <= packet_i16;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i16 <= io_req_data_payload_i14;
            end
        end
        packet_i17 <= packet_i17;
        if (eq_4_result) begin
            if (and_0_result) begin
                packet_i17 <= io_req_data_payload_i15;
            end
        end
    end
endmodule
module TlcController (
    input [31 : 0] io_config_i2c_config_clock_threshold,
    input [31 : 0] io_config_i2c_config_clock_period,
    input [7 : 0] io_config_mode1,
    input [7 : 0] io_config_mode2,
    input [7 : 0] io_config_iref,
    input io_clear,
    input io_update,
    output io_ready,
    inout io_i2c_sda,
    inout io_i2c_scl,
    output io_i2c_resetn,
    input [7 : 0] io_led_state_in_i0,
    input [7 : 0] io_led_state_in_i1,
    input [7 : 0] io_led_state_in_i2,
    input [7 : 0] io_led_state_in_i3,
    input [7 : 0] io_led_state_in_i4,
    input [7 : 0] io_led_state_in_i5,
    input [7 : 0] io_led_state_in_i6,
    input [7 : 0] io_led_state_in_i7,
    input [7 : 0] io_led_state_in_i8,
    input [7 : 0] io_led_state_in_i9,
    input [7 : 0] io_led_state_in_i10,
    input [7 : 0] io_led_state_in_i11,
    input [7 : 0] io_led_state_in_i12,
    input [7 : 0] io_led_state_in_i13,
    input [7 : 0] io_led_state_in_i14,
    input [7 : 0] io_led_state_in_i15,
    input io_clock,
    input io_reset
);
    // Internal Signal Declarations
    reg [2 : 0] state;
    wire [31 : 0] I2cController_2de2_0_config_clock_threshold;
    wire [31 : 0] I2cController_2de2_0_config_clock_period;
    wire I2cController_2de2_0_req_valid;
    wire I2cController_2de2_0_req_ready;
    wire [7 : 0] I2cController_2de2_0_req_data_size;
    wire [7 : 0] I2cController_2de2_0_req_data_address;
    wire [7 : 0] I2cController_2de2_0_req_data_header;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i0;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i1;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i2;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i3;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i4;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i5;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i6;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i7;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i8;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i9;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i10;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i11;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i12;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i13;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i14;
    wire [7 : 0] I2cController_2de2_0_req_data_payload_i15;
    wire I2cController_2de2_0_i2c_sda;
    wire I2cController_2de2_0_i2c_scl;
    wire I2cController_2de2_0_i2c_resetn;
    wire I2cController_2de2_0_error;
    wire I2cController_2de2_0_clock;
    wire I2cController_2de2_0_reset;
    wire eq_12_result;
    wire eq_13_result;
    wire eq_14_result;
    wire eq_15_result;
    wire eq_16_result;
    wire eq_17_result;
    wire eq_18_result;
    wire eq_19_result;
    
    // Operator Synthesis
    I2cController_2de2 I2cController_2de2_0 (
        .io_config_clock_threshold(I2cController_2de2_0_config_clock_threshold),
        .io_config_clock_period(I2cController_2de2_0_config_clock_period),
        .io_req_valid(I2cController_2de2_0_req_valid),
        .io_req_ready(I2cController_2de2_0_req_ready),
        .io_req_data_size(I2cController_2de2_0_req_data_size),
        .io_req_data_address(I2cController_2de2_0_req_data_address),
        .io_req_data_header(I2cController_2de2_0_req_data_header),
        .io_req_data_payload_i0(I2cController_2de2_0_req_data_payload_i0),
        .io_req_data_payload_i1(I2cController_2de2_0_req_data_payload_i1),
        .io_req_data_payload_i2(I2cController_2de2_0_req_data_payload_i2),
        .io_req_data_payload_i3(I2cController_2de2_0_req_data_payload_i3),
        .io_req_data_payload_i4(I2cController_2de2_0_req_data_payload_i4),
        .io_req_data_payload_i5(I2cController_2de2_0_req_data_payload_i5),
        .io_req_data_payload_i6(I2cController_2de2_0_req_data_payload_i6),
        .io_req_data_payload_i7(I2cController_2de2_0_req_data_payload_i7),
        .io_req_data_payload_i8(I2cController_2de2_0_req_data_payload_i8),
        .io_req_data_payload_i9(I2cController_2de2_0_req_data_payload_i9),
        .io_req_data_payload_i10(I2cController_2de2_0_req_data_payload_i10),
        .io_req_data_payload_i11(I2cController_2de2_0_req_data_payload_i11),
        .io_req_data_payload_i12(I2cController_2de2_0_req_data_payload_i12),
        .io_req_data_payload_i13(I2cController_2de2_0_req_data_payload_i13),
        .io_req_data_payload_i14(I2cController_2de2_0_req_data_payload_i14),
        .io_req_data_payload_i15(I2cController_2de2_0_req_data_payload_i15),
        .io_i2c_sda(I2cController_2de2_0_i2c_sda),
        .io_i2c_scl(I2cController_2de2_0_i2c_scl),
        .io_i2c_resetn(I2cController_2de2_0_i2c_resetn),
        .io_error(I2cController_2de2_0_error),
        .io_clock(I2cController_2de2_0_clock),
        .io_reset(I2cController_2de2_0_reset)
    );
    assign eq_12_result = state == 0;
    assign eq_13_result = state == 1;
    assign eq_14_result = state == 2;
    assign eq_15_result = state == 3;
    assign eq_16_result = state == 4;
    assign eq_17_result = state == 5;
    assign eq_18_result = state == 6;
    assign eq_19_result = state == 7;
    
    // Connections
    assign io_ready = eq_15_result ? 1 : 0;
    assign io_i2c_sda = I2cController_2de2_0_i2c_sda;
    assign io_i2c_scl = I2cController_2de2_0_i2c_scl;
    assign io_i2c_resetn = eq_19_result ? 0 : I2cController_2de2_0_i2c_resetn;
    assign I2cController_2de2_0_config_clock_threshold = io_config_i2c_config_clock_threshold;
    assign I2cController_2de2_0_config_clock_period = io_config_i2c_config_clock_period;
    wire _NODE_7;
    wire _NODE_8;
    wire _NODE_9;
    wire _NODE_10;
    wire _NODE_11;
    assign _NODE_11 = eq_12_result ? 1 : 0;
    assign _NODE_10 = eq_13_result ? 1 : _NODE_11;
    assign _NODE_9 = eq_14_result ? 1 : _NODE_10;
    assign _NODE_8 = eq_16_result ? 1 : _NODE_9;
    assign _NODE_7 = eq_17_result ? 1 : _NODE_8;
    assign I2cController_2de2_0_req_valid = eq_18_result ? 1 : _NODE_7;
    wire [7 : 0] _NODE_12;
    wire [7 : 0] _NODE_13;
    wire [7 : 0] _NODE_14;
    wire [7 : 0] _NODE_15;
    wire [7 : 0] _NODE_16;
    assign _NODE_16 = eq_12_result ? 1 : 0;
    assign _NODE_15 = eq_13_result ? 2 : _NODE_16;
    assign _NODE_14 = eq_14_result ? 1 : _NODE_15;
    assign _NODE_13 = eq_16_result ? 4 : _NODE_14;
    assign _NODE_12 = eq_17_result ? 16 : _NODE_13;
    assign I2cController_2de2_0_req_data_size = eq_18_result ? 4 : _NODE_12;
    wire [7 : 0] _NODE_17;
    wire [7 : 0] _NODE_18;
    wire [7 : 0] _NODE_19;
    wire [7 : 0] _NODE_20;
    wire [7 : 0] _NODE_21;
    assign _NODE_21 = eq_12_result ? 214 : 0;
    assign _NODE_20 = eq_13_result ? 208 : _NODE_21;
    assign _NODE_19 = eq_14_result ? 208 : _NODE_20;
    assign _NODE_18 = eq_16_result ? 208 : _NODE_19;
    assign _NODE_17 = eq_17_result ? 208 : _NODE_18;
    assign I2cController_2de2_0_req_data_address = eq_18_result ? 208 : _NODE_17;
    wire [7 : 0] _NODE_22;
    wire [7 : 0] _NODE_23;
    wire [7 : 0] _NODE_24;
    wire [7 : 0] _NODE_25;
    wire [7 : 0] _NODE_26;
    assign _NODE_26 = eq_12_result ? 165 : 0;
    assign _NODE_25 = eq_13_result ? 128 : _NODE_26;
    assign _NODE_24 = eq_14_result ? 128 : _NODE_25;
    assign _NODE_23 = eq_16_result ? 148 : _NODE_24;
    assign _NODE_22 = eq_17_result ? 130 : _NODE_23;
    assign I2cController_2de2_0_req_data_header = eq_18_result ? 148 : _NODE_22;
    wire [7 : 0] _NODE_27;
    wire [7 : 0] _NODE_28;
    wire [7 : 0] _NODE_29;
    wire [7 : 0] _NODE_30;
    wire [7 : 0] _NODE_31;
    assign _NODE_31 = eq_12_result ? 90 : 0;
    assign _NODE_30 = eq_13_result ? io_config_mode1 : _NODE_31;
    assign _NODE_29 = eq_14_result ? io_config_iref : _NODE_30;
    assign _NODE_28 = eq_16_result ? 0 : _NODE_29;
    assign _NODE_27 = eq_17_result ? io_led_state_in_i0 : _NODE_28;
    assign I2cController_2de2_0_req_data_payload_i0 = eq_18_result ? 170 : _NODE_27;
    wire [7 : 0] _NODE_32;
    wire [7 : 0] _NODE_33;
    assign _NODE_33 = eq_13_result ? io_config_mode2 : 0;
    assign _NODE_32 = eq_17_result ? io_led_state_in_i1 : _NODE_33;
    assign I2cController_2de2_0_req_data_payload_i1 = eq_18_result ? 170 : _NODE_32;
    wire [7 : 0] _NODE_34;
    assign _NODE_34 = eq_17_result ? io_led_state_in_i2 : 0;
    assign I2cController_2de2_0_req_data_payload_i2 = eq_18_result ? 170 : _NODE_34;
    wire [7 : 0] _NODE_35;
    assign _NODE_35 = eq_17_result ? io_led_state_in_i3 : 0;
    assign I2cController_2de2_0_req_data_payload_i3 = eq_18_result ? 170 : _NODE_35;
    assign I2cController_2de2_0_req_data_payload_i4 = eq_17_result ? io_led_state_in_i4 : 0;
    assign I2cController_2de2_0_req_data_payload_i5 = eq_17_result ? io_led_state_in_i5 : 0;
    assign I2cController_2de2_0_req_data_payload_i6 = eq_17_result ? io_led_state_in_i6 : 0;
    assign I2cController_2de2_0_req_data_payload_i7 = eq_17_result ? io_led_state_in_i7 : 0;
    assign I2cController_2de2_0_req_data_payload_i8 = eq_17_result ? io_led_state_in_i8 : 0;
    assign I2cController_2de2_0_req_data_payload_i9 = eq_17_result ? io_led_state_in_i9 : 0;
    assign I2cController_2de2_0_req_data_payload_i10 = eq_17_result ? io_led_state_in_i10 : 0;
    assign I2cController_2de2_0_req_data_payload_i11 = eq_17_result ? io_led_state_in_i11 : 0;
    assign I2cController_2de2_0_req_data_payload_i12 = eq_17_result ? io_led_state_in_i12 : 0;
    assign I2cController_2de2_0_req_data_payload_i13 = eq_17_result ? io_led_state_in_i13 : 0;
    assign I2cController_2de2_0_req_data_payload_i14 = eq_17_result ? io_led_state_in_i14 : 0;
    assign I2cController_2de2_0_req_data_payload_i15 = eq_17_result ? io_led_state_in_i15 : 0;
    assign I2cController_2de2_0_clock = io_clock;
    assign I2cController_2de2_0_reset = io_reset;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            state <= 0;
        end
        else begin
            state <= state;
            if (I2cController_2de2_0_error) begin
                state <= 7;
            end
            if (eq_12_result) begin
                if (I2cController_2de2_0_req_ready) begin
                    state <= 1;
                end
            end
            if (eq_13_result) begin
                if (I2cController_2de2_0_req_ready) begin
                    state <= 2;
                end
            end
            if (eq_14_result) begin
                if (I2cController_2de2_0_req_ready) begin
                    state <= 3;
                end
            end
            if (eq_15_result) begin
                if (io_clear) begin
                    state <= 4;
                end
                if (io_update) begin
                    state <= 5;
                end
            end
            if (eq_16_result) begin
                if (I2cController_2de2_0_req_ready) begin
                    state <= 3;
                end
            end
            if (eq_17_result) begin
                if (I2cController_2de2_0_req_ready) begin
                    state <= 6;
                end
            end
            if (eq_18_result) begin
                if (I2cController_2de2_0_req_ready) begin
                    state <= 3;
                end
            end
            if (eq_19_result) begin
                state <= 0;
            end
        end
    end
endmodule
module MemReader_cfa9 (
    output [8 : 0] io_ram_read_address,
    input [7 : 0] io_ram_read_data,
    input io_start,
    input [2 : 0] io_layer,
    output [7 : 0] io_led_state_out_i0,
    output [7 : 0] io_led_state_out_i1,
    output [7 : 0] io_led_state_out_i2,
    output [7 : 0] io_led_state_out_i3,
    output [7 : 0] io_led_state_out_i4,
    output [7 : 0] io_led_state_out_i5,
    output [7 : 0] io_led_state_out_i6,
    output [7 : 0] io_led_state_out_i7,
    output [7 : 0] io_led_state_out_i8,
    output [7 : 0] io_led_state_out_i9,
    output [7 : 0] io_led_state_out_i10,
    output [7 : 0] io_led_state_out_i11,
    output [7 : 0] io_led_state_out_i12,
    output [7 : 0] io_led_state_out_i13,
    output [7 : 0] io_led_state_out_i14,
    output [7 : 0] io_led_state_out_i15,
    output [7 : 0] io_led_state_out_i16,
    output [7 : 0] io_led_state_out_i17,
    output [7 : 0] io_led_state_out_i18,
    output [7 : 0] io_led_state_out_i19,
    output [7 : 0] io_led_state_out_i20,
    output [7 : 0] io_led_state_out_i21,
    output [7 : 0] io_led_state_out_i22,
    output [7 : 0] io_led_state_out_i23,
    output [7 : 0] io_led_state_out_i24,
    output [7 : 0] io_led_state_out_i25,
    output [7 : 0] io_led_state_out_i26,
    output [7 : 0] io_led_state_out_i27,
    output [7 : 0] io_led_state_out_i28,
    output [7 : 0] io_led_state_out_i29,
    output [7 : 0] io_led_state_out_i30,
    output [7 : 0] io_led_state_out_i31,
    output [7 : 0] io_led_state_out_i32,
    output [7 : 0] io_led_state_out_i33,
    output [7 : 0] io_led_state_out_i34,
    output [7 : 0] io_led_state_out_i35,
    output [7 : 0] io_led_state_out_i36,
    output [7 : 0] io_led_state_out_i37,
    output [7 : 0] io_led_state_out_i38,
    output [7 : 0] io_led_state_out_i39,
    output [7 : 0] io_led_state_out_i40,
    output [7 : 0] io_led_state_out_i41,
    output [7 : 0] io_led_state_out_i42,
    output [7 : 0] io_led_state_out_i43,
    output [7 : 0] io_led_state_out_i44,
    output [7 : 0] io_led_state_out_i45,
    output [7 : 0] io_led_state_out_i46,
    output [7 : 0] io_led_state_out_i47,
    output [7 : 0] io_led_state_out_i48,
    output [7 : 0] io_led_state_out_i49,
    output [7 : 0] io_led_state_out_i50,
    output [7 : 0] io_led_state_out_i51,
    output [7 : 0] io_led_state_out_i52,
    output [7 : 0] io_led_state_out_i53,
    output [7 : 0] io_led_state_out_i54,
    output [7 : 0] io_led_state_out_i55,
    output [7 : 0] io_led_state_out_i56,
    output [7 : 0] io_led_state_out_i57,
    output [7 : 0] io_led_state_out_i58,
    output [7 : 0] io_led_state_out_i59,
    output [7 : 0] io_led_state_out_i60,
    output [7 : 0] io_led_state_out_i61,
    output [7 : 0] io_led_state_out_i62,
    output [7 : 0] io_led_state_out_i63,
    output io_done,
    input io_clock,
    input io_reset
);
    // Internal Signal Declarations
    reg [7 : 0] led_state_i0;
    reg [7 : 0] led_state_i1;
    reg [7 : 0] led_state_i2;
    reg [7 : 0] led_state_i3;
    reg [7 : 0] led_state_i4;
    reg [7 : 0] led_state_i5;
    reg [7 : 0] led_state_i6;
    reg [7 : 0] led_state_i7;
    reg [7 : 0] led_state_i8;
    reg [7 : 0] led_state_i9;
    reg [7 : 0] led_state_i10;
    reg [7 : 0] led_state_i11;
    reg [7 : 0] led_state_i12;
    reg [7 : 0] led_state_i13;
    reg [7 : 0] led_state_i14;
    reg [7 : 0] led_state_i15;
    reg [7 : 0] led_state_i16;
    reg [7 : 0] led_state_i17;
    reg [7 : 0] led_state_i18;
    reg [7 : 0] led_state_i19;
    reg [7 : 0] led_state_i20;
    reg [7 : 0] led_state_i21;
    reg [7 : 0] led_state_i22;
    reg [7 : 0] led_state_i23;
    reg [7 : 0] led_state_i24;
    reg [7 : 0] led_state_i25;
    reg [7 : 0] led_state_i26;
    reg [7 : 0] led_state_i27;
    reg [7 : 0] led_state_i28;
    reg [7 : 0] led_state_i29;
    reg [7 : 0] led_state_i30;
    reg [7 : 0] led_state_i31;
    reg [7 : 0] led_state_i32;
    reg [7 : 0] led_state_i33;
    reg [7 : 0] led_state_i34;
    reg [7 : 0] led_state_i35;
    reg [7 : 0] led_state_i36;
    reg [7 : 0] led_state_i37;
    reg [7 : 0] led_state_i38;
    reg [7 : 0] led_state_i39;
    reg [7 : 0] led_state_i40;
    reg [7 : 0] led_state_i41;
    reg [7 : 0] led_state_i42;
    reg [7 : 0] led_state_i43;
    reg [7 : 0] led_state_i44;
    reg [7 : 0] led_state_i45;
    reg [7 : 0] led_state_i46;
    reg [7 : 0] led_state_i47;
    reg [7 : 0] led_state_i48;
    reg [7 : 0] led_state_i49;
    reg [7 : 0] led_state_i50;
    reg [7 : 0] led_state_i51;
    reg [7 : 0] led_state_i52;
    reg [7 : 0] led_state_i53;
    reg [7 : 0] led_state_i54;
    reg [7 : 0] led_state_i55;
    reg [7 : 0] led_state_i56;
    reg [7 : 0] led_state_i57;
    reg [7 : 0] led_state_i58;
    reg [7 : 0] led_state_i59;
    reg [7 : 0] led_state_i60;
    reg [7 : 0] led_state_i61;
    reg [7 : 0] led_state_i62;
    reg [7 : 0] led_state_i63;
    reg [31 : 0] read_counter;
    reg [31 : 0] base_address;
    reg done;
    reg capture_read;
    reg [31 : 0] capture_counter;
    wire eq_20_result;
    wire eq_21_result;
    wire eq_22_result;
    wire eq_23_result;
    wire eq_24_result;
    wire eq_25_result;
    wire eq_26_result;
    wire eq_27_result;
    wire [32 : 0] add_12_result;
    wire not_1_result;
    wire lt_0_result;
    wire [32 : 0] add_13_result;
    wire eq_28_result;
    wire [7 : 0] mux_9_result;
    wire eq_29_result;
    wire eq_30_result;
    wire eq_31_result;
    wire eq_32_result;
    wire eq_33_result;
    wire eq_34_result;
    wire eq_35_result;
    wire eq_36_result;
    wire eq_37_result;
    wire eq_38_result;
    wire eq_39_result;
    wire eq_40_result;
    wire eq_41_result;
    wire eq_42_result;
    wire eq_43_result;
    wire eq_44_result;
    wire eq_45_result;
    wire eq_46_result;
    wire eq_47_result;
    wire eq_48_result;
    wire eq_49_result;
    wire eq_50_result;
    wire eq_51_result;
    wire eq_52_result;
    wire eq_53_result;
    wire eq_54_result;
    wire eq_55_result;
    wire eq_56_result;
    wire eq_57_result;
    wire eq_58_result;
    wire eq_59_result;
    wire eq_60_result;
    wire eq_61_result;
    wire eq_62_result;
    wire eq_63_result;
    wire eq_64_result;
    wire eq_65_result;
    wire eq_66_result;
    wire eq_67_result;
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
    wire eq_86_result;
    wire eq_87_result;
    wire eq_88_result;
    wire eq_89_result;
    wire eq_90_result;
    wire eq_91_result;
    wire eq_92_result;
    
    // Operator Synthesis
    assign eq_20_result = io_layer == 0;
    assign eq_21_result = io_layer == 1;
    assign eq_22_result = io_layer == 2;
    assign eq_23_result = io_layer == 3;
    assign eq_24_result = io_layer == 4;
    assign eq_25_result = io_layer == 5;
    assign eq_26_result = io_layer == 6;
    assign eq_27_result = io_layer == 7;
    assign add_12_result = base_address + read_counter;
    assign not_1_result = ~done;
    assign lt_0_result = read_counter < 64;
    assign add_13_result = read_counter + 1;
    assign eq_28_result = read_counter == 64;
    wire [7 : 0] _NODE_36 [63 : 0];
    assign _NODE_36[0] = led_state_i0;
    assign _NODE_36[1] = led_state_i1;
    assign _NODE_36[2] = led_state_i2;
    assign _NODE_36[3] = led_state_i3;
    assign _NODE_36[4] = led_state_i4;
    assign _NODE_36[5] = led_state_i5;
    assign _NODE_36[6] = led_state_i6;
    assign _NODE_36[7] = led_state_i7;
    assign _NODE_36[8] = led_state_i8;
    assign _NODE_36[9] = led_state_i9;
    assign _NODE_36[10] = led_state_i10;
    assign _NODE_36[11] = led_state_i11;
    assign _NODE_36[12] = led_state_i12;
    assign _NODE_36[13] = led_state_i13;
    assign _NODE_36[14] = led_state_i14;
    assign _NODE_36[15] = led_state_i15;
    assign _NODE_36[16] = led_state_i16;
    assign _NODE_36[17] = led_state_i17;
    assign _NODE_36[18] = led_state_i18;
    assign _NODE_36[19] = led_state_i19;
    assign _NODE_36[20] = led_state_i20;
    assign _NODE_36[21] = led_state_i21;
    assign _NODE_36[22] = led_state_i22;
    assign _NODE_36[23] = led_state_i23;
    assign _NODE_36[24] = led_state_i24;
    assign _NODE_36[25] = led_state_i25;
    assign _NODE_36[26] = led_state_i26;
    assign _NODE_36[27] = led_state_i27;
    assign _NODE_36[28] = led_state_i28;
    assign _NODE_36[29] = led_state_i29;
    assign _NODE_36[30] = led_state_i30;
    assign _NODE_36[31] = led_state_i31;
    assign _NODE_36[32] = led_state_i32;
    assign _NODE_36[33] = led_state_i33;
    assign _NODE_36[34] = led_state_i34;
    assign _NODE_36[35] = led_state_i35;
    assign _NODE_36[36] = led_state_i36;
    assign _NODE_36[37] = led_state_i37;
    assign _NODE_36[38] = led_state_i38;
    assign _NODE_36[39] = led_state_i39;
    assign _NODE_36[40] = led_state_i40;
    assign _NODE_36[41] = led_state_i41;
    assign _NODE_36[42] = led_state_i42;
    assign _NODE_36[43] = led_state_i43;
    assign _NODE_36[44] = led_state_i44;
    assign _NODE_36[45] = led_state_i45;
    assign _NODE_36[46] = led_state_i46;
    assign _NODE_36[47] = led_state_i47;
    assign _NODE_36[48] = led_state_i48;
    assign _NODE_36[49] = led_state_i49;
    assign _NODE_36[50] = led_state_i50;
    assign _NODE_36[51] = led_state_i51;
    assign _NODE_36[52] = led_state_i52;
    assign _NODE_36[53] = led_state_i53;
    assign _NODE_36[54] = led_state_i54;
    assign _NODE_36[55] = led_state_i55;
    assign _NODE_36[56] = led_state_i56;
    assign _NODE_36[57] = led_state_i57;
    assign _NODE_36[58] = led_state_i58;
    assign _NODE_36[59] = led_state_i59;
    assign _NODE_36[60] = led_state_i60;
    assign _NODE_36[61] = led_state_i61;
    assign _NODE_36[62] = led_state_i62;
    assign _NODE_36[63] = led_state_i63;
    assign mux_9_result = _NODE_36[capture_counter];
    assign eq_29_result = capture_counter == 0;
    assign eq_30_result = capture_counter == 1;
    assign eq_31_result = capture_counter == 2;
    assign eq_32_result = capture_counter == 3;
    assign eq_33_result = capture_counter == 4;
    assign eq_34_result = capture_counter == 5;
    assign eq_35_result = capture_counter == 6;
    assign eq_36_result = capture_counter == 7;
    assign eq_37_result = capture_counter == 8;
    assign eq_38_result = capture_counter == 9;
    assign eq_39_result = capture_counter == 10;
    assign eq_40_result = capture_counter == 11;
    assign eq_41_result = capture_counter == 12;
    assign eq_42_result = capture_counter == 13;
    assign eq_43_result = capture_counter == 14;
    assign eq_44_result = capture_counter == 15;
    assign eq_45_result = capture_counter == 16;
    assign eq_46_result = capture_counter == 17;
    assign eq_47_result = capture_counter == 18;
    assign eq_48_result = capture_counter == 19;
    assign eq_49_result = capture_counter == 20;
    assign eq_50_result = capture_counter == 21;
    assign eq_51_result = capture_counter == 22;
    assign eq_52_result = capture_counter == 23;
    assign eq_53_result = capture_counter == 24;
    assign eq_54_result = capture_counter == 25;
    assign eq_55_result = capture_counter == 26;
    assign eq_56_result = capture_counter == 27;
    assign eq_57_result = capture_counter == 28;
    assign eq_58_result = capture_counter == 29;
    assign eq_59_result = capture_counter == 30;
    assign eq_60_result = capture_counter == 31;
    assign eq_61_result = capture_counter == 32;
    assign eq_62_result = capture_counter == 33;
    assign eq_63_result = capture_counter == 34;
    assign eq_64_result = capture_counter == 35;
    assign eq_65_result = capture_counter == 36;
    assign eq_66_result = capture_counter == 37;
    assign eq_67_result = capture_counter == 38;
    assign eq_68_result = capture_counter == 39;
    assign eq_69_result = capture_counter == 40;
    assign eq_70_result = capture_counter == 41;
    assign eq_71_result = capture_counter == 42;
    assign eq_72_result = capture_counter == 43;
    assign eq_73_result = capture_counter == 44;
    assign eq_74_result = capture_counter == 45;
    assign eq_75_result = capture_counter == 46;
    assign eq_76_result = capture_counter == 47;
    assign eq_77_result = capture_counter == 48;
    assign eq_78_result = capture_counter == 49;
    assign eq_79_result = capture_counter == 50;
    assign eq_80_result = capture_counter == 51;
    assign eq_81_result = capture_counter == 52;
    assign eq_82_result = capture_counter == 53;
    assign eq_83_result = capture_counter == 54;
    assign eq_84_result = capture_counter == 55;
    assign eq_85_result = capture_counter == 56;
    assign eq_86_result = capture_counter == 57;
    assign eq_87_result = capture_counter == 58;
    assign eq_88_result = capture_counter == 59;
    assign eq_89_result = capture_counter == 60;
    assign eq_90_result = capture_counter == 61;
    assign eq_91_result = capture_counter == 62;
    assign eq_92_result = capture_counter == 63;
    
    // Connections
    assign io_ram_read_address = add_12_result;
    assign io_led_state_out_i0 = led_state_i0;
    assign io_led_state_out_i1 = led_state_i1;
    assign io_led_state_out_i2 = led_state_i2;
    assign io_led_state_out_i3 = led_state_i3;
    assign io_led_state_out_i4 = led_state_i4;
    assign io_led_state_out_i5 = led_state_i5;
    assign io_led_state_out_i6 = led_state_i6;
    assign io_led_state_out_i7 = led_state_i7;
    assign io_led_state_out_i8 = led_state_i8;
    assign io_led_state_out_i9 = led_state_i9;
    assign io_led_state_out_i10 = led_state_i10;
    assign io_led_state_out_i11 = led_state_i11;
    assign io_led_state_out_i12 = led_state_i12;
    assign io_led_state_out_i13 = led_state_i13;
    assign io_led_state_out_i14 = led_state_i14;
    assign io_led_state_out_i15 = led_state_i15;
    assign io_led_state_out_i16 = led_state_i16;
    assign io_led_state_out_i17 = led_state_i17;
    assign io_led_state_out_i18 = led_state_i18;
    assign io_led_state_out_i19 = led_state_i19;
    assign io_led_state_out_i20 = led_state_i20;
    assign io_led_state_out_i21 = led_state_i21;
    assign io_led_state_out_i22 = led_state_i22;
    assign io_led_state_out_i23 = led_state_i23;
    assign io_led_state_out_i24 = led_state_i24;
    assign io_led_state_out_i25 = led_state_i25;
    assign io_led_state_out_i26 = led_state_i26;
    assign io_led_state_out_i27 = led_state_i27;
    assign io_led_state_out_i28 = led_state_i28;
    assign io_led_state_out_i29 = led_state_i29;
    assign io_led_state_out_i30 = led_state_i30;
    assign io_led_state_out_i31 = led_state_i31;
    assign io_led_state_out_i32 = led_state_i32;
    assign io_led_state_out_i33 = led_state_i33;
    assign io_led_state_out_i34 = led_state_i34;
    assign io_led_state_out_i35 = led_state_i35;
    assign io_led_state_out_i36 = led_state_i36;
    assign io_led_state_out_i37 = led_state_i37;
    assign io_led_state_out_i38 = led_state_i38;
    assign io_led_state_out_i39 = led_state_i39;
    assign io_led_state_out_i40 = led_state_i40;
    assign io_led_state_out_i41 = led_state_i41;
    assign io_led_state_out_i42 = led_state_i42;
    assign io_led_state_out_i43 = led_state_i43;
    assign io_led_state_out_i44 = led_state_i44;
    assign io_led_state_out_i45 = led_state_i45;
    assign io_led_state_out_i46 = led_state_i46;
    assign io_led_state_out_i47 = led_state_i47;
    assign io_led_state_out_i48 = led_state_i48;
    assign io_led_state_out_i49 = led_state_i49;
    assign io_led_state_out_i50 = led_state_i50;
    assign io_led_state_out_i51 = led_state_i51;
    assign io_led_state_out_i52 = led_state_i52;
    assign io_led_state_out_i53 = led_state_i53;
    assign io_led_state_out_i54 = led_state_i54;
    assign io_led_state_out_i55 = led_state_i55;
    assign io_led_state_out_i56 = led_state_i56;
    assign io_led_state_out_i57 = led_state_i57;
    assign io_led_state_out_i58 = led_state_i58;
    assign io_led_state_out_i59 = led_state_i59;
    assign io_led_state_out_i60 = led_state_i60;
    assign io_led_state_out_i61 = led_state_i61;
    assign io_led_state_out_i62 = led_state_i62;
    assign io_led_state_out_i63 = led_state_i63;
    assign io_done = done;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            led_state_i0 <= 0;
            led_state_i1 <= 0;
            led_state_i2 <= 0;
            led_state_i3 <= 0;
            led_state_i4 <= 0;
            led_state_i5 <= 0;
            led_state_i6 <= 0;
            led_state_i7 <= 0;
            led_state_i8 <= 0;
            led_state_i9 <= 0;
            led_state_i10 <= 0;
            led_state_i11 <= 0;
            led_state_i12 <= 0;
            led_state_i13 <= 0;
            led_state_i14 <= 0;
            led_state_i15 <= 0;
            led_state_i16 <= 0;
            led_state_i17 <= 0;
            led_state_i18 <= 0;
            led_state_i19 <= 0;
            led_state_i20 <= 0;
            led_state_i21 <= 0;
            led_state_i22 <= 0;
            led_state_i23 <= 0;
            led_state_i24 <= 0;
            led_state_i25 <= 0;
            led_state_i26 <= 0;
            led_state_i27 <= 0;
            led_state_i28 <= 0;
            led_state_i29 <= 0;
            led_state_i30 <= 0;
            led_state_i31 <= 0;
            led_state_i32 <= 0;
            led_state_i33 <= 0;
            led_state_i34 <= 0;
            led_state_i35 <= 0;
            led_state_i36 <= 0;
            led_state_i37 <= 0;
            led_state_i38 <= 0;
            led_state_i39 <= 0;
            led_state_i40 <= 0;
            led_state_i41 <= 0;
            led_state_i42 <= 0;
            led_state_i43 <= 0;
            led_state_i44 <= 0;
            led_state_i45 <= 0;
            led_state_i46 <= 0;
            led_state_i47 <= 0;
            led_state_i48 <= 0;
            led_state_i49 <= 0;
            led_state_i50 <= 0;
            led_state_i51 <= 0;
            led_state_i52 <= 0;
            led_state_i53 <= 0;
            led_state_i54 <= 0;
            led_state_i55 <= 0;
            led_state_i56 <= 0;
            led_state_i57 <= 0;
            led_state_i58 <= 0;
            led_state_i59 <= 0;
            led_state_i60 <= 0;
            led_state_i61 <= 0;
            led_state_i62 <= 0;
            led_state_i63 <= 0;
            read_counter <= 0;
            base_address <= 0;
            done <= 0;
            capture_read <= 0;
        end
        else begin
            led_state_i0 <= led_state_i0;
            if (capture_read) begin
                if (eq_29_result) begin
                    led_state_i0 <= io_ram_read_data;
                end
            end
            led_state_i1 <= led_state_i1;
            if (capture_read) begin
                if (eq_30_result) begin
                    led_state_i1 <= io_ram_read_data;
                end
            end
            led_state_i2 <= led_state_i2;
            if (capture_read) begin
                if (eq_31_result) begin
                    led_state_i2 <= io_ram_read_data;
                end
            end
            led_state_i3 <= led_state_i3;
            if (capture_read) begin
                if (eq_32_result) begin
                    led_state_i3 <= io_ram_read_data;
                end
            end
            led_state_i4 <= led_state_i4;
            if (capture_read) begin
                if (eq_33_result) begin
                    led_state_i4 <= io_ram_read_data;
                end
            end
            led_state_i5 <= led_state_i5;
            if (capture_read) begin
                if (eq_34_result) begin
                    led_state_i5 <= io_ram_read_data;
                end
            end
            led_state_i6 <= led_state_i6;
            if (capture_read) begin
                if (eq_35_result) begin
                    led_state_i6 <= io_ram_read_data;
                end
            end
            led_state_i7 <= led_state_i7;
            if (capture_read) begin
                if (eq_36_result) begin
                    led_state_i7 <= io_ram_read_data;
                end
            end
            led_state_i8 <= led_state_i8;
            if (capture_read) begin
                if (eq_37_result) begin
                    led_state_i8 <= io_ram_read_data;
                end
            end
            led_state_i9 <= led_state_i9;
            if (capture_read) begin
                if (eq_38_result) begin
                    led_state_i9 <= io_ram_read_data;
                end
            end
            led_state_i10 <= led_state_i10;
            if (capture_read) begin
                if (eq_39_result) begin
                    led_state_i10 <= io_ram_read_data;
                end
            end
            led_state_i11 <= led_state_i11;
            if (capture_read) begin
                if (eq_40_result) begin
                    led_state_i11 <= io_ram_read_data;
                end
            end
            led_state_i12 <= led_state_i12;
            if (capture_read) begin
                if (eq_41_result) begin
                    led_state_i12 <= io_ram_read_data;
                end
            end
            led_state_i13 <= led_state_i13;
            if (capture_read) begin
                if (eq_42_result) begin
                    led_state_i13 <= io_ram_read_data;
                end
            end
            led_state_i14 <= led_state_i14;
            if (capture_read) begin
                if (eq_43_result) begin
                    led_state_i14 <= io_ram_read_data;
                end
            end
            led_state_i15 <= led_state_i15;
            if (capture_read) begin
                if (eq_44_result) begin
                    led_state_i15 <= io_ram_read_data;
                end
            end
            led_state_i16 <= led_state_i16;
            if (capture_read) begin
                if (eq_45_result) begin
                    led_state_i16 <= io_ram_read_data;
                end
            end
            led_state_i17 <= led_state_i17;
            if (capture_read) begin
                if (eq_46_result) begin
                    led_state_i17 <= io_ram_read_data;
                end
            end
            led_state_i18 <= led_state_i18;
            if (capture_read) begin
                if (eq_47_result) begin
                    led_state_i18 <= io_ram_read_data;
                end
            end
            led_state_i19 <= led_state_i19;
            if (capture_read) begin
                if (eq_48_result) begin
                    led_state_i19 <= io_ram_read_data;
                end
            end
            led_state_i20 <= led_state_i20;
            if (capture_read) begin
                if (eq_49_result) begin
                    led_state_i20 <= io_ram_read_data;
                end
            end
            led_state_i21 <= led_state_i21;
            if (capture_read) begin
                if (eq_50_result) begin
                    led_state_i21 <= io_ram_read_data;
                end
            end
            led_state_i22 <= led_state_i22;
            if (capture_read) begin
                if (eq_51_result) begin
                    led_state_i22 <= io_ram_read_data;
                end
            end
            led_state_i23 <= led_state_i23;
            if (capture_read) begin
                if (eq_52_result) begin
                    led_state_i23 <= io_ram_read_data;
                end
            end
            led_state_i24 <= led_state_i24;
            if (capture_read) begin
                if (eq_53_result) begin
                    led_state_i24 <= io_ram_read_data;
                end
            end
            led_state_i25 <= led_state_i25;
            if (capture_read) begin
                if (eq_54_result) begin
                    led_state_i25 <= io_ram_read_data;
                end
            end
            led_state_i26 <= led_state_i26;
            if (capture_read) begin
                if (eq_55_result) begin
                    led_state_i26 <= io_ram_read_data;
                end
            end
            led_state_i27 <= led_state_i27;
            if (capture_read) begin
                if (eq_56_result) begin
                    led_state_i27 <= io_ram_read_data;
                end
            end
            led_state_i28 <= led_state_i28;
            if (capture_read) begin
                if (eq_57_result) begin
                    led_state_i28 <= io_ram_read_data;
                end
            end
            led_state_i29 <= led_state_i29;
            if (capture_read) begin
                if (eq_58_result) begin
                    led_state_i29 <= io_ram_read_data;
                end
            end
            led_state_i30 <= led_state_i30;
            if (capture_read) begin
                if (eq_59_result) begin
                    led_state_i30 <= io_ram_read_data;
                end
            end
            led_state_i31 <= led_state_i31;
            if (capture_read) begin
                if (eq_60_result) begin
                    led_state_i31 <= io_ram_read_data;
                end
            end
            led_state_i32 <= led_state_i32;
            if (capture_read) begin
                if (eq_61_result) begin
                    led_state_i32 <= io_ram_read_data;
                end
            end
            led_state_i33 <= led_state_i33;
            if (capture_read) begin
                if (eq_62_result) begin
                    led_state_i33 <= io_ram_read_data;
                end
            end
            led_state_i34 <= led_state_i34;
            if (capture_read) begin
                if (eq_63_result) begin
                    led_state_i34 <= io_ram_read_data;
                end
            end
            led_state_i35 <= led_state_i35;
            if (capture_read) begin
                if (eq_64_result) begin
                    led_state_i35 <= io_ram_read_data;
                end
            end
            led_state_i36 <= led_state_i36;
            if (capture_read) begin
                if (eq_65_result) begin
                    led_state_i36 <= io_ram_read_data;
                end
            end
            led_state_i37 <= led_state_i37;
            if (capture_read) begin
                if (eq_66_result) begin
                    led_state_i37 <= io_ram_read_data;
                end
            end
            led_state_i38 <= led_state_i38;
            if (capture_read) begin
                if (eq_67_result) begin
                    led_state_i38 <= io_ram_read_data;
                end
            end
            led_state_i39 <= led_state_i39;
            if (capture_read) begin
                if (eq_68_result) begin
                    led_state_i39 <= io_ram_read_data;
                end
            end
            led_state_i40 <= led_state_i40;
            if (capture_read) begin
                if (eq_69_result) begin
                    led_state_i40 <= io_ram_read_data;
                end
            end
            led_state_i41 <= led_state_i41;
            if (capture_read) begin
                if (eq_70_result) begin
                    led_state_i41 <= io_ram_read_data;
                end
            end
            led_state_i42 <= led_state_i42;
            if (capture_read) begin
                if (eq_71_result) begin
                    led_state_i42 <= io_ram_read_data;
                end
            end
            led_state_i43 <= led_state_i43;
            if (capture_read) begin
                if (eq_72_result) begin
                    led_state_i43 <= io_ram_read_data;
                end
            end
            led_state_i44 <= led_state_i44;
            if (capture_read) begin
                if (eq_73_result) begin
                    led_state_i44 <= io_ram_read_data;
                end
            end
            led_state_i45 <= led_state_i45;
            if (capture_read) begin
                if (eq_74_result) begin
                    led_state_i45 <= io_ram_read_data;
                end
            end
            led_state_i46 <= led_state_i46;
            if (capture_read) begin
                if (eq_75_result) begin
                    led_state_i46 <= io_ram_read_data;
                end
            end
            led_state_i47 <= led_state_i47;
            if (capture_read) begin
                if (eq_76_result) begin
                    led_state_i47 <= io_ram_read_data;
                end
            end
            led_state_i48 <= led_state_i48;
            if (capture_read) begin
                if (eq_77_result) begin
                    led_state_i48 <= io_ram_read_data;
                end
            end
            led_state_i49 <= led_state_i49;
            if (capture_read) begin
                if (eq_78_result) begin
                    led_state_i49 <= io_ram_read_data;
                end
            end
            led_state_i50 <= led_state_i50;
            if (capture_read) begin
                if (eq_79_result) begin
                    led_state_i50 <= io_ram_read_data;
                end
            end
            led_state_i51 <= led_state_i51;
            if (capture_read) begin
                if (eq_80_result) begin
                    led_state_i51 <= io_ram_read_data;
                end
            end
            led_state_i52 <= led_state_i52;
            if (capture_read) begin
                if (eq_81_result) begin
                    led_state_i52 <= io_ram_read_data;
                end
            end
            led_state_i53 <= led_state_i53;
            if (capture_read) begin
                if (eq_82_result) begin
                    led_state_i53 <= io_ram_read_data;
                end
            end
            led_state_i54 <= led_state_i54;
            if (capture_read) begin
                if (eq_83_result) begin
                    led_state_i54 <= io_ram_read_data;
                end
            end
            led_state_i55 <= led_state_i55;
            if (capture_read) begin
                if (eq_84_result) begin
                    led_state_i55 <= io_ram_read_data;
                end
            end
            led_state_i56 <= led_state_i56;
            if (capture_read) begin
                if (eq_85_result) begin
                    led_state_i56 <= io_ram_read_data;
                end
            end
            led_state_i57 <= led_state_i57;
            if (capture_read) begin
                if (eq_86_result) begin
                    led_state_i57 <= io_ram_read_data;
                end
            end
            led_state_i58 <= led_state_i58;
            if (capture_read) begin
                if (eq_87_result) begin
                    led_state_i58 <= io_ram_read_data;
                end
            end
            led_state_i59 <= led_state_i59;
            if (capture_read) begin
                if (eq_88_result) begin
                    led_state_i59 <= io_ram_read_data;
                end
            end
            led_state_i60 <= led_state_i60;
            if (capture_read) begin
                if (eq_89_result) begin
                    led_state_i60 <= io_ram_read_data;
                end
            end
            led_state_i61 <= led_state_i61;
            if (capture_read) begin
                if (eq_90_result) begin
                    led_state_i61 <= io_ram_read_data;
                end
            end
            led_state_i62 <= led_state_i62;
            if (capture_read) begin
                if (eq_91_result) begin
                    led_state_i62 <= io_ram_read_data;
                end
            end
            led_state_i63 <= led_state_i63;
            if (capture_read) begin
                if (eq_92_result) begin
                    led_state_i63 <= io_ram_read_data;
                end
            end
            read_counter <= read_counter;
            if (io_start) begin
                read_counter <= 0;
            end
            if (not_1_result) begin
                read_counter <= add_13_result;
            end
            base_address <= base_address;
            if (io_start) begin
                if (eq_20_result) begin
                    base_address <= 0;
                end
                if (eq_21_result) begin
                    base_address <= 64;
                end
                if (eq_22_result) begin
                    base_address <= 128;
                end
                if (eq_23_result) begin
                    base_address <= 192;
                end
                if (eq_24_result) begin
                    base_address <= 256;
                end
                if (eq_25_result) begin
                    base_address <= 320;
                end
                if (eq_26_result) begin
                    base_address <= 384;
                end
                if (eq_27_result) begin
                    base_address <= 448;
                end
            end
            done <= done;
            if (io_start) begin
                done <= 0;
            end
            if (not_1_result) begin
                if (eq_28_result) begin
                    done <= 1;
                end
            end
            capture_read <= capture_read;
            capture_read <= 0;
            if (not_1_result) begin
                capture_read <= lt_0_result;
            end
        end
        capture_counter <= capture_counter;
        capture_counter <= read_counter;
    end
endmodule
module RefreshController (
    input [31 : 0] io_config_tlc_config_i2c_config_clock_threshold,
    input [31 : 0] io_config_tlc_config_i2c_config_clock_period,
    input [7 : 0] io_config_tlc_config_mode1,
    input [7 : 0] io_config_tlc_config_mode2,
    input [7 : 0] io_config_tlc_config_iref,
    input [31 : 0] io_config_display_cycles,
    inout io_i2cs_i0_sda,
    inout io_i2cs_i0_scl,
    output io_i2cs_i0_resetn,
    inout io_i2cs_i1_sda,
    inout io_i2cs_i1_scl,
    output io_i2cs_i1_resetn,
    inout io_i2cs_i2_sda,
    inout io_i2cs_i2_scl,
    output io_i2cs_i2_resetn,
    inout io_i2cs_i3_sda,
    inout io_i2cs_i3_scl,
    output io_i2cs_i3_resetn,
    output [7 : 0] io_layer_mask,
    output [8 : 0] io_ram_read_address,
    input [7 : 0] io_ram_read_data,
    input io_clock,
    input io_reset
);
    // Internal Signal Declarations
    reg [1 : 0] state;
    wire [31 : 0] TlcController_0_config_i2c_config_clock_threshold;
    wire [31 : 0] TlcController_0_config_i2c_config_clock_period;
    wire [7 : 0] TlcController_0_config_mode1;
    wire [7 : 0] TlcController_0_config_mode2;
    wire [7 : 0] TlcController_0_config_iref;
    wire TlcController_0_clear;
    wire TlcController_0_update;
    wire TlcController_0_ready;
    wire TlcController_0_i2c_sda;
    wire TlcController_0_i2c_scl;
    wire TlcController_0_i2c_resetn;
    wire [7 : 0] TlcController_0_led_state_in_i0;
    wire [7 : 0] TlcController_0_led_state_in_i1;
    wire [7 : 0] TlcController_0_led_state_in_i2;
    wire [7 : 0] TlcController_0_led_state_in_i3;
    wire [7 : 0] TlcController_0_led_state_in_i4;
    wire [7 : 0] TlcController_0_led_state_in_i5;
    wire [7 : 0] TlcController_0_led_state_in_i6;
    wire [7 : 0] TlcController_0_led_state_in_i7;
    wire [7 : 0] TlcController_0_led_state_in_i8;
    wire [7 : 0] TlcController_0_led_state_in_i9;
    wire [7 : 0] TlcController_0_led_state_in_i10;
    wire [7 : 0] TlcController_0_led_state_in_i11;
    wire [7 : 0] TlcController_0_led_state_in_i12;
    wire [7 : 0] TlcController_0_led_state_in_i13;
    wire [7 : 0] TlcController_0_led_state_in_i14;
    wire [7 : 0] TlcController_0_led_state_in_i15;
    wire TlcController_0_clock;
    wire TlcController_0_reset;
    wire [31 : 0] TlcController_1_config_i2c_config_clock_threshold;
    wire [31 : 0] TlcController_1_config_i2c_config_clock_period;
    wire [7 : 0] TlcController_1_config_mode1;
    wire [7 : 0] TlcController_1_config_mode2;
    wire [7 : 0] TlcController_1_config_iref;
    wire TlcController_1_clear;
    wire TlcController_1_update;
    wire TlcController_1_ready;
    wire TlcController_1_i2c_sda;
    wire TlcController_1_i2c_scl;
    wire TlcController_1_i2c_resetn;
    wire [7 : 0] TlcController_1_led_state_in_i0;
    wire [7 : 0] TlcController_1_led_state_in_i1;
    wire [7 : 0] TlcController_1_led_state_in_i2;
    wire [7 : 0] TlcController_1_led_state_in_i3;
    wire [7 : 0] TlcController_1_led_state_in_i4;
    wire [7 : 0] TlcController_1_led_state_in_i5;
    wire [7 : 0] TlcController_1_led_state_in_i6;
    wire [7 : 0] TlcController_1_led_state_in_i7;
    wire [7 : 0] TlcController_1_led_state_in_i8;
    wire [7 : 0] TlcController_1_led_state_in_i9;
    wire [7 : 0] TlcController_1_led_state_in_i10;
    wire [7 : 0] TlcController_1_led_state_in_i11;
    wire [7 : 0] TlcController_1_led_state_in_i12;
    wire [7 : 0] TlcController_1_led_state_in_i13;
    wire [7 : 0] TlcController_1_led_state_in_i14;
    wire [7 : 0] TlcController_1_led_state_in_i15;
    wire TlcController_1_clock;
    wire TlcController_1_reset;
    wire [31 : 0] TlcController_2_config_i2c_config_clock_threshold;
    wire [31 : 0] TlcController_2_config_i2c_config_clock_period;
    wire [7 : 0] TlcController_2_config_mode1;
    wire [7 : 0] TlcController_2_config_mode2;
    wire [7 : 0] TlcController_2_config_iref;
    wire TlcController_2_clear;
    wire TlcController_2_update;
    wire TlcController_2_ready;
    wire TlcController_2_i2c_sda;
    wire TlcController_2_i2c_scl;
    wire TlcController_2_i2c_resetn;
    wire [7 : 0] TlcController_2_led_state_in_i0;
    wire [7 : 0] TlcController_2_led_state_in_i1;
    wire [7 : 0] TlcController_2_led_state_in_i2;
    wire [7 : 0] TlcController_2_led_state_in_i3;
    wire [7 : 0] TlcController_2_led_state_in_i4;
    wire [7 : 0] TlcController_2_led_state_in_i5;
    wire [7 : 0] TlcController_2_led_state_in_i6;
    wire [7 : 0] TlcController_2_led_state_in_i7;
    wire [7 : 0] TlcController_2_led_state_in_i8;
    wire [7 : 0] TlcController_2_led_state_in_i9;
    wire [7 : 0] TlcController_2_led_state_in_i10;
    wire [7 : 0] TlcController_2_led_state_in_i11;
    wire [7 : 0] TlcController_2_led_state_in_i12;
    wire [7 : 0] TlcController_2_led_state_in_i13;
    wire [7 : 0] TlcController_2_led_state_in_i14;
    wire [7 : 0] TlcController_2_led_state_in_i15;
    wire TlcController_2_clock;
    wire TlcController_2_reset;
    wire [31 : 0] TlcController_3_config_i2c_config_clock_threshold;
    wire [31 : 0] TlcController_3_config_i2c_config_clock_period;
    wire [7 : 0] TlcController_3_config_mode1;
    wire [7 : 0] TlcController_3_config_mode2;
    wire [7 : 0] TlcController_3_config_iref;
    wire TlcController_3_clear;
    wire TlcController_3_update;
    wire TlcController_3_ready;
    wire TlcController_3_i2c_sda;
    wire TlcController_3_i2c_scl;
    wire TlcController_3_i2c_resetn;
    wire [7 : 0] TlcController_3_led_state_in_i0;
    wire [7 : 0] TlcController_3_led_state_in_i1;
    wire [7 : 0] TlcController_3_led_state_in_i2;
    wire [7 : 0] TlcController_3_led_state_in_i3;
    wire [7 : 0] TlcController_3_led_state_in_i4;
    wire [7 : 0] TlcController_3_led_state_in_i5;
    wire [7 : 0] TlcController_3_led_state_in_i6;
    wire [7 : 0] TlcController_3_led_state_in_i7;
    wire [7 : 0] TlcController_3_led_state_in_i8;
    wire [7 : 0] TlcController_3_led_state_in_i9;
    wire [7 : 0] TlcController_3_led_state_in_i10;
    wire [7 : 0] TlcController_3_led_state_in_i11;
    wire [7 : 0] TlcController_3_led_state_in_i12;
    wire [7 : 0] TlcController_3_led_state_in_i13;
    wire [7 : 0] TlcController_3_led_state_in_i14;
    wire [7 : 0] TlcController_3_led_state_in_i15;
    wire TlcController_3_clock;
    wire TlcController_3_reset;
    wire [8 : 0] MemReader_cfa9_0_ram_read_address;
    wire [7 : 0] MemReader_cfa9_0_ram_read_data;
    wire MemReader_cfa9_0_start;
    wire [2 : 0] MemReader_cfa9_0_layer;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i0;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i1;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i2;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i3;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i4;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i5;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i6;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i7;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i8;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i9;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i10;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i11;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i12;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i13;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i14;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i15;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i16;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i17;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i18;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i19;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i20;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i21;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i22;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i23;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i24;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i25;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i26;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i27;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i28;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i29;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i30;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i31;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i32;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i33;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i34;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i35;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i36;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i37;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i38;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i39;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i40;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i41;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i42;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i43;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i44;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i45;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i46;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i47;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i48;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i49;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i50;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i51;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i52;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i53;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i54;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i55;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i56;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i57;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i58;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i59;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i60;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i61;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i62;
    wire [7 : 0] MemReader_cfa9_0_led_state_out_i63;
    wire MemReader_cfa9_0_done;
    wire MemReader_cfa9_0_clock;
    wire MemReader_cfa9_0_reset;
    reg [2 : 0] layer_counter;
    wire [2 : 0] next_layer;
    reg [31 : 0] cycle_counter;
    wire layer_mask_i0;
    wire layer_mask_i1;
    wire layer_mask_i2;
    wire layer_mask_i3;
    wire layer_mask_i4;
    wire layer_mask_i5;
    wire layer_mask_i6;
    wire layer_mask_i7;
    wire controllers_ready;
    wire controllers_clear;
    wire controllers_update;
    wire [7 : 0] cat_0_result;
    wire [3 : 0] add_14_result;
    wire and_3_result;
    wire and_4_result;
    wire and_5_result;
    wire eq_93_result;
    wire eq_94_result;
    wire [32 : 0] add_15_result;
    wire eq_95_result;
    wire eq_96_result;
    wire eq_97_result;
    wire eq_98_result;
    wire eq_99_result;
    wire eq_100_result;
    wire eq_101_result;
    wire eq_102_result;
    wire eq_103_result;
    wire eq_104_result;
    wire eq_105_result;
    wire and_6_result;
    
    // Operator Synthesis
    TlcController TlcController_0 (
        .io_config_i2c_config_clock_threshold(TlcController_0_config_i2c_config_clock_threshold),
        .io_config_i2c_config_clock_period(TlcController_0_config_i2c_config_clock_period),
        .io_config_mode1(TlcController_0_config_mode1),
        .io_config_mode2(TlcController_0_config_mode2),
        .io_config_iref(TlcController_0_config_iref),
        .io_clear(TlcController_0_clear),
        .io_update(TlcController_0_update),
        .io_ready(TlcController_0_ready),
        .io_i2c_sda(TlcController_0_i2c_sda),
        .io_i2c_scl(TlcController_0_i2c_scl),
        .io_i2c_resetn(TlcController_0_i2c_resetn),
        .io_led_state_in_i0(TlcController_0_led_state_in_i0),
        .io_led_state_in_i1(TlcController_0_led_state_in_i1),
        .io_led_state_in_i2(TlcController_0_led_state_in_i2),
        .io_led_state_in_i3(TlcController_0_led_state_in_i3),
        .io_led_state_in_i4(TlcController_0_led_state_in_i4),
        .io_led_state_in_i5(TlcController_0_led_state_in_i5),
        .io_led_state_in_i6(TlcController_0_led_state_in_i6),
        .io_led_state_in_i7(TlcController_0_led_state_in_i7),
        .io_led_state_in_i8(TlcController_0_led_state_in_i8),
        .io_led_state_in_i9(TlcController_0_led_state_in_i9),
        .io_led_state_in_i10(TlcController_0_led_state_in_i10),
        .io_led_state_in_i11(TlcController_0_led_state_in_i11),
        .io_led_state_in_i12(TlcController_0_led_state_in_i12),
        .io_led_state_in_i13(TlcController_0_led_state_in_i13),
        .io_led_state_in_i14(TlcController_0_led_state_in_i14),
        .io_led_state_in_i15(TlcController_0_led_state_in_i15),
        .io_clock(TlcController_0_clock),
        .io_reset(TlcController_0_reset)
    );
    TlcController TlcController_1 (
        .io_config_i2c_config_clock_threshold(TlcController_1_config_i2c_config_clock_threshold),
        .io_config_i2c_config_clock_period(TlcController_1_config_i2c_config_clock_period),
        .io_config_mode1(TlcController_1_config_mode1),
        .io_config_mode2(TlcController_1_config_mode2),
        .io_config_iref(TlcController_1_config_iref),
        .io_clear(TlcController_1_clear),
        .io_update(TlcController_1_update),
        .io_ready(TlcController_1_ready),
        .io_i2c_sda(TlcController_1_i2c_sda),
        .io_i2c_scl(TlcController_1_i2c_scl),
        .io_i2c_resetn(TlcController_1_i2c_resetn),
        .io_led_state_in_i0(TlcController_1_led_state_in_i0),
        .io_led_state_in_i1(TlcController_1_led_state_in_i1),
        .io_led_state_in_i2(TlcController_1_led_state_in_i2),
        .io_led_state_in_i3(TlcController_1_led_state_in_i3),
        .io_led_state_in_i4(TlcController_1_led_state_in_i4),
        .io_led_state_in_i5(TlcController_1_led_state_in_i5),
        .io_led_state_in_i6(TlcController_1_led_state_in_i6),
        .io_led_state_in_i7(TlcController_1_led_state_in_i7),
        .io_led_state_in_i8(TlcController_1_led_state_in_i8),
        .io_led_state_in_i9(TlcController_1_led_state_in_i9),
        .io_led_state_in_i10(TlcController_1_led_state_in_i10),
        .io_led_state_in_i11(TlcController_1_led_state_in_i11),
        .io_led_state_in_i12(TlcController_1_led_state_in_i12),
        .io_led_state_in_i13(TlcController_1_led_state_in_i13),
        .io_led_state_in_i14(TlcController_1_led_state_in_i14),
        .io_led_state_in_i15(TlcController_1_led_state_in_i15),
        .io_clock(TlcController_1_clock),
        .io_reset(TlcController_1_reset)
    );
    TlcController TlcController_2 (
        .io_config_i2c_config_clock_threshold(TlcController_2_config_i2c_config_clock_threshold),
        .io_config_i2c_config_clock_period(TlcController_2_config_i2c_config_clock_period),
        .io_config_mode1(TlcController_2_config_mode1),
        .io_config_mode2(TlcController_2_config_mode2),
        .io_config_iref(TlcController_2_config_iref),
        .io_clear(TlcController_2_clear),
        .io_update(TlcController_2_update),
        .io_ready(TlcController_2_ready),
        .io_i2c_sda(TlcController_2_i2c_sda),
        .io_i2c_scl(TlcController_2_i2c_scl),
        .io_i2c_resetn(TlcController_2_i2c_resetn),
        .io_led_state_in_i0(TlcController_2_led_state_in_i0),
        .io_led_state_in_i1(TlcController_2_led_state_in_i1),
        .io_led_state_in_i2(TlcController_2_led_state_in_i2),
        .io_led_state_in_i3(TlcController_2_led_state_in_i3),
        .io_led_state_in_i4(TlcController_2_led_state_in_i4),
        .io_led_state_in_i5(TlcController_2_led_state_in_i5),
        .io_led_state_in_i6(TlcController_2_led_state_in_i6),
        .io_led_state_in_i7(TlcController_2_led_state_in_i7),
        .io_led_state_in_i8(TlcController_2_led_state_in_i8),
        .io_led_state_in_i9(TlcController_2_led_state_in_i9),
        .io_led_state_in_i10(TlcController_2_led_state_in_i10),
        .io_led_state_in_i11(TlcController_2_led_state_in_i11),
        .io_led_state_in_i12(TlcController_2_led_state_in_i12),
        .io_led_state_in_i13(TlcController_2_led_state_in_i13),
        .io_led_state_in_i14(TlcController_2_led_state_in_i14),
        .io_led_state_in_i15(TlcController_2_led_state_in_i15),
        .io_clock(TlcController_2_clock),
        .io_reset(TlcController_2_reset)
    );
    TlcController TlcController_3 (
        .io_config_i2c_config_clock_threshold(TlcController_3_config_i2c_config_clock_threshold),
        .io_config_i2c_config_clock_period(TlcController_3_config_i2c_config_clock_period),
        .io_config_mode1(TlcController_3_config_mode1),
        .io_config_mode2(TlcController_3_config_mode2),
        .io_config_iref(TlcController_3_config_iref),
        .io_clear(TlcController_3_clear),
        .io_update(TlcController_3_update),
        .io_ready(TlcController_3_ready),
        .io_i2c_sda(TlcController_3_i2c_sda),
        .io_i2c_scl(TlcController_3_i2c_scl),
        .io_i2c_resetn(TlcController_3_i2c_resetn),
        .io_led_state_in_i0(TlcController_3_led_state_in_i0),
        .io_led_state_in_i1(TlcController_3_led_state_in_i1),
        .io_led_state_in_i2(TlcController_3_led_state_in_i2),
        .io_led_state_in_i3(TlcController_3_led_state_in_i3),
        .io_led_state_in_i4(TlcController_3_led_state_in_i4),
        .io_led_state_in_i5(TlcController_3_led_state_in_i5),
        .io_led_state_in_i6(TlcController_3_led_state_in_i6),
        .io_led_state_in_i7(TlcController_3_led_state_in_i7),
        .io_led_state_in_i8(TlcController_3_led_state_in_i8),
        .io_led_state_in_i9(TlcController_3_led_state_in_i9),
        .io_led_state_in_i10(TlcController_3_led_state_in_i10),
        .io_led_state_in_i11(TlcController_3_led_state_in_i11),
        .io_led_state_in_i12(TlcController_3_led_state_in_i12),
        .io_led_state_in_i13(TlcController_3_led_state_in_i13),
        .io_led_state_in_i14(TlcController_3_led_state_in_i14),
        .io_led_state_in_i15(TlcController_3_led_state_in_i15),
        .io_clock(TlcController_3_clock),
        .io_reset(TlcController_3_reset)
    );
    MemReader_cfa9 MemReader_cfa9_0 (
        .io_ram_read_address(MemReader_cfa9_0_ram_read_address),
        .io_ram_read_data(MemReader_cfa9_0_ram_read_data),
        .io_start(MemReader_cfa9_0_start),
        .io_layer(MemReader_cfa9_0_layer),
        .io_led_state_out_i0(MemReader_cfa9_0_led_state_out_i0),
        .io_led_state_out_i1(MemReader_cfa9_0_led_state_out_i1),
        .io_led_state_out_i2(MemReader_cfa9_0_led_state_out_i2),
        .io_led_state_out_i3(MemReader_cfa9_0_led_state_out_i3),
        .io_led_state_out_i4(MemReader_cfa9_0_led_state_out_i4),
        .io_led_state_out_i5(MemReader_cfa9_0_led_state_out_i5),
        .io_led_state_out_i6(MemReader_cfa9_0_led_state_out_i6),
        .io_led_state_out_i7(MemReader_cfa9_0_led_state_out_i7),
        .io_led_state_out_i8(MemReader_cfa9_0_led_state_out_i8),
        .io_led_state_out_i9(MemReader_cfa9_0_led_state_out_i9),
        .io_led_state_out_i10(MemReader_cfa9_0_led_state_out_i10),
        .io_led_state_out_i11(MemReader_cfa9_0_led_state_out_i11),
        .io_led_state_out_i12(MemReader_cfa9_0_led_state_out_i12),
        .io_led_state_out_i13(MemReader_cfa9_0_led_state_out_i13),
        .io_led_state_out_i14(MemReader_cfa9_0_led_state_out_i14),
        .io_led_state_out_i15(MemReader_cfa9_0_led_state_out_i15),
        .io_led_state_out_i16(MemReader_cfa9_0_led_state_out_i16),
        .io_led_state_out_i17(MemReader_cfa9_0_led_state_out_i17),
        .io_led_state_out_i18(MemReader_cfa9_0_led_state_out_i18),
        .io_led_state_out_i19(MemReader_cfa9_0_led_state_out_i19),
        .io_led_state_out_i20(MemReader_cfa9_0_led_state_out_i20),
        .io_led_state_out_i21(MemReader_cfa9_0_led_state_out_i21),
        .io_led_state_out_i22(MemReader_cfa9_0_led_state_out_i22),
        .io_led_state_out_i23(MemReader_cfa9_0_led_state_out_i23),
        .io_led_state_out_i24(MemReader_cfa9_0_led_state_out_i24),
        .io_led_state_out_i25(MemReader_cfa9_0_led_state_out_i25),
        .io_led_state_out_i26(MemReader_cfa9_0_led_state_out_i26),
        .io_led_state_out_i27(MemReader_cfa9_0_led_state_out_i27),
        .io_led_state_out_i28(MemReader_cfa9_0_led_state_out_i28),
        .io_led_state_out_i29(MemReader_cfa9_0_led_state_out_i29),
        .io_led_state_out_i30(MemReader_cfa9_0_led_state_out_i30),
        .io_led_state_out_i31(MemReader_cfa9_0_led_state_out_i31),
        .io_led_state_out_i32(MemReader_cfa9_0_led_state_out_i32),
        .io_led_state_out_i33(MemReader_cfa9_0_led_state_out_i33),
        .io_led_state_out_i34(MemReader_cfa9_0_led_state_out_i34),
        .io_led_state_out_i35(MemReader_cfa9_0_led_state_out_i35),
        .io_led_state_out_i36(MemReader_cfa9_0_led_state_out_i36),
        .io_led_state_out_i37(MemReader_cfa9_0_led_state_out_i37),
        .io_led_state_out_i38(MemReader_cfa9_0_led_state_out_i38),
        .io_led_state_out_i39(MemReader_cfa9_0_led_state_out_i39),
        .io_led_state_out_i40(MemReader_cfa9_0_led_state_out_i40),
        .io_led_state_out_i41(MemReader_cfa9_0_led_state_out_i41),
        .io_led_state_out_i42(MemReader_cfa9_0_led_state_out_i42),
        .io_led_state_out_i43(MemReader_cfa9_0_led_state_out_i43),
        .io_led_state_out_i44(MemReader_cfa9_0_led_state_out_i44),
        .io_led_state_out_i45(MemReader_cfa9_0_led_state_out_i45),
        .io_led_state_out_i46(MemReader_cfa9_0_led_state_out_i46),
        .io_led_state_out_i47(MemReader_cfa9_0_led_state_out_i47),
        .io_led_state_out_i48(MemReader_cfa9_0_led_state_out_i48),
        .io_led_state_out_i49(MemReader_cfa9_0_led_state_out_i49),
        .io_led_state_out_i50(MemReader_cfa9_0_led_state_out_i50),
        .io_led_state_out_i51(MemReader_cfa9_0_led_state_out_i51),
        .io_led_state_out_i52(MemReader_cfa9_0_led_state_out_i52),
        .io_led_state_out_i53(MemReader_cfa9_0_led_state_out_i53),
        .io_led_state_out_i54(MemReader_cfa9_0_led_state_out_i54),
        .io_led_state_out_i55(MemReader_cfa9_0_led_state_out_i55),
        .io_led_state_out_i56(MemReader_cfa9_0_led_state_out_i56),
        .io_led_state_out_i57(MemReader_cfa9_0_led_state_out_i57),
        .io_led_state_out_i58(MemReader_cfa9_0_led_state_out_i58),
        .io_led_state_out_i59(MemReader_cfa9_0_led_state_out_i59),
        .io_led_state_out_i60(MemReader_cfa9_0_led_state_out_i60),
        .io_led_state_out_i61(MemReader_cfa9_0_led_state_out_i61),
        .io_led_state_out_i62(MemReader_cfa9_0_led_state_out_i62),
        .io_led_state_out_i63(MemReader_cfa9_0_led_state_out_i63),
        .io_done(MemReader_cfa9_0_done),
        .io_clock(MemReader_cfa9_0_clock),
        .io_reset(MemReader_cfa9_0_reset)
    );
    assign cat_0_result = {layer_mask_i7, layer_mask_i6, layer_mask_i5, layer_mask_i4, layer_mask_i3, layer_mask_i2, layer_mask_i1, layer_mask_i0};
    assign add_14_result = layer_counter + 1;
    assign and_3_result = TlcController_0_ready & TlcController_1_ready;
    assign and_4_result = and_3_result & TlcController_2_ready;
    assign and_5_result = and_4_result & TlcController_3_ready;
    assign eq_93_result = state == 0;
    assign eq_94_result = state == 1;
    assign add_15_result = cycle_counter + 1;
    assign eq_95_result = layer_counter == 0;
    assign eq_96_result = layer_counter == 1;
    assign eq_97_result = layer_counter == 2;
    assign eq_98_result = layer_counter == 3;
    assign eq_99_result = layer_counter == 4;
    assign eq_100_result = layer_counter == 5;
    assign eq_101_result = layer_counter == 6;
    assign eq_102_result = layer_counter == 7;
    assign eq_103_result = cycle_counter == 0;
    assign eq_104_result = cycle_counter == io_config_display_cycles;
    assign eq_105_result = state == 2;
    assign and_6_result = controllers_ready & MemReader_cfa9_0_done;
    
    // Connections
    assign io_i2cs_i0_sda = TlcController_0_i2c_sda;
    assign io_i2cs_i0_scl = TlcController_0_i2c_scl;
    assign io_i2cs_i0_resetn = TlcController_0_i2c_resetn;
    assign io_i2cs_i1_sda = TlcController_1_i2c_sda;
    assign io_i2cs_i1_scl = TlcController_1_i2c_scl;
    assign io_i2cs_i1_resetn = TlcController_1_i2c_resetn;
    assign io_i2cs_i2_sda = TlcController_2_i2c_sda;
    assign io_i2cs_i2_scl = TlcController_2_i2c_scl;
    assign io_i2cs_i2_resetn = TlcController_2_i2c_resetn;
    assign io_i2cs_i3_sda = TlcController_3_i2c_sda;
    assign io_i2cs_i3_scl = TlcController_3_i2c_scl;
    assign io_i2cs_i3_resetn = TlcController_3_i2c_resetn;
    assign io_layer_mask = cat_0_result;
    assign io_ram_read_address = MemReader_cfa9_0_ram_read_address;
    assign TlcController_0_config_i2c_config_clock_threshold = io_config_tlc_config_i2c_config_clock_threshold;
    assign TlcController_0_config_i2c_config_clock_period = io_config_tlc_config_i2c_config_clock_period;
    assign TlcController_0_config_mode1 = io_config_tlc_config_mode1;
    assign TlcController_0_config_mode2 = io_config_tlc_config_mode2;
    assign TlcController_0_config_iref = io_config_tlc_config_iref;
    assign TlcController_0_clear = controllers_clear;
    assign TlcController_0_update = controllers_update;
    assign TlcController_0_led_state_in_i0 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i1 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i2 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i3 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i4 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i5 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i6 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i7 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i8 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i9 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i10 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i11 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i12 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i13 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i14 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_led_state_in_i15 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_0_clock = io_clock;
    assign TlcController_0_reset = io_reset;
    assign TlcController_1_config_i2c_config_clock_threshold = io_config_tlc_config_i2c_config_clock_threshold;
    assign TlcController_1_config_i2c_config_clock_period = io_config_tlc_config_i2c_config_clock_period;
    assign TlcController_1_config_mode1 = io_config_tlc_config_mode1;
    assign TlcController_1_config_mode2 = io_config_tlc_config_mode2;
    assign TlcController_1_config_iref = io_config_tlc_config_iref;
    assign TlcController_1_clear = controllers_clear;
    assign TlcController_1_update = controllers_update;
    assign TlcController_1_led_state_in_i0 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_1_led_state_in_i1 = MemReader_cfa9_0_led_state_out_i1;
    assign TlcController_1_led_state_in_i2 = MemReader_cfa9_0_led_state_out_i2;
    assign TlcController_1_led_state_in_i3 = MemReader_cfa9_0_led_state_out_i3;
    assign TlcController_1_led_state_in_i4 = MemReader_cfa9_0_led_state_out_i4;
    assign TlcController_1_led_state_in_i5 = MemReader_cfa9_0_led_state_out_i5;
    assign TlcController_1_led_state_in_i6 = MemReader_cfa9_0_led_state_out_i6;
    assign TlcController_1_led_state_in_i7 = MemReader_cfa9_0_led_state_out_i7;
    assign TlcController_1_led_state_in_i8 = MemReader_cfa9_0_led_state_out_i8;
    assign TlcController_1_led_state_in_i9 = MemReader_cfa9_0_led_state_out_i9;
    assign TlcController_1_led_state_in_i10 = MemReader_cfa9_0_led_state_out_i10;
    assign TlcController_1_led_state_in_i11 = MemReader_cfa9_0_led_state_out_i11;
    assign TlcController_1_led_state_in_i12 = MemReader_cfa9_0_led_state_out_i12;
    assign TlcController_1_led_state_in_i13 = MemReader_cfa9_0_led_state_out_i13;
    assign TlcController_1_led_state_in_i14 = MemReader_cfa9_0_led_state_out_i14;
    assign TlcController_1_led_state_in_i15 = MemReader_cfa9_0_led_state_out_i15;
    assign TlcController_1_clock = io_clock;
    assign TlcController_1_reset = io_reset;
    assign TlcController_2_config_i2c_config_clock_threshold = io_config_tlc_config_i2c_config_clock_threshold;
    assign TlcController_2_config_i2c_config_clock_period = io_config_tlc_config_i2c_config_clock_period;
    assign TlcController_2_config_mode1 = io_config_tlc_config_mode1;
    assign TlcController_2_config_mode2 = io_config_tlc_config_mode2;
    assign TlcController_2_config_iref = io_config_tlc_config_iref;
    assign TlcController_2_clear = controllers_clear;
    assign TlcController_2_update = controllers_update;
    assign TlcController_2_led_state_in_i0 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_2_led_state_in_i1 = MemReader_cfa9_0_led_state_out_i2;
    assign TlcController_2_led_state_in_i2 = MemReader_cfa9_0_led_state_out_i4;
    assign TlcController_2_led_state_in_i3 = MemReader_cfa9_0_led_state_out_i6;
    assign TlcController_2_led_state_in_i4 = MemReader_cfa9_0_led_state_out_i8;
    assign TlcController_2_led_state_in_i5 = MemReader_cfa9_0_led_state_out_i10;
    assign TlcController_2_led_state_in_i6 = MemReader_cfa9_0_led_state_out_i12;
    assign TlcController_2_led_state_in_i7 = MemReader_cfa9_0_led_state_out_i14;
    assign TlcController_2_led_state_in_i8 = MemReader_cfa9_0_led_state_out_i16;
    assign TlcController_2_led_state_in_i9 = MemReader_cfa9_0_led_state_out_i18;
    assign TlcController_2_led_state_in_i10 = MemReader_cfa9_0_led_state_out_i20;
    assign TlcController_2_led_state_in_i11 = MemReader_cfa9_0_led_state_out_i22;
    assign TlcController_2_led_state_in_i12 = MemReader_cfa9_0_led_state_out_i24;
    assign TlcController_2_led_state_in_i13 = MemReader_cfa9_0_led_state_out_i26;
    assign TlcController_2_led_state_in_i14 = MemReader_cfa9_0_led_state_out_i28;
    assign TlcController_2_led_state_in_i15 = MemReader_cfa9_0_led_state_out_i30;
    assign TlcController_2_clock = io_clock;
    assign TlcController_2_reset = io_reset;
    assign TlcController_3_config_i2c_config_clock_threshold = io_config_tlc_config_i2c_config_clock_threshold;
    assign TlcController_3_config_i2c_config_clock_period = io_config_tlc_config_i2c_config_clock_period;
    assign TlcController_3_config_mode1 = io_config_tlc_config_mode1;
    assign TlcController_3_config_mode2 = io_config_tlc_config_mode2;
    assign TlcController_3_config_iref = io_config_tlc_config_iref;
    assign TlcController_3_clear = controllers_clear;
    assign TlcController_3_update = controllers_update;
    assign TlcController_3_led_state_in_i0 = MemReader_cfa9_0_led_state_out_i0;
    assign TlcController_3_led_state_in_i1 = MemReader_cfa9_0_led_state_out_i3;
    assign TlcController_3_led_state_in_i2 = MemReader_cfa9_0_led_state_out_i6;
    assign TlcController_3_led_state_in_i3 = MemReader_cfa9_0_led_state_out_i9;
    assign TlcController_3_led_state_in_i4 = MemReader_cfa9_0_led_state_out_i12;
    assign TlcController_3_led_state_in_i5 = MemReader_cfa9_0_led_state_out_i15;
    assign TlcController_3_led_state_in_i6 = MemReader_cfa9_0_led_state_out_i18;
    assign TlcController_3_led_state_in_i7 = MemReader_cfa9_0_led_state_out_i21;
    assign TlcController_3_led_state_in_i8 = MemReader_cfa9_0_led_state_out_i24;
    assign TlcController_3_led_state_in_i9 = MemReader_cfa9_0_led_state_out_i27;
    assign TlcController_3_led_state_in_i10 = MemReader_cfa9_0_led_state_out_i30;
    assign TlcController_3_led_state_in_i11 = MemReader_cfa9_0_led_state_out_i33;
    assign TlcController_3_led_state_in_i12 = MemReader_cfa9_0_led_state_out_i36;
    assign TlcController_3_led_state_in_i13 = MemReader_cfa9_0_led_state_out_i39;
    assign TlcController_3_led_state_in_i14 = MemReader_cfa9_0_led_state_out_i42;
    assign TlcController_3_led_state_in_i15 = MemReader_cfa9_0_led_state_out_i45;
    assign TlcController_3_clock = io_clock;
    assign TlcController_3_reset = io_reset;
    assign MemReader_cfa9_0_ram_read_data = io_ram_read_data;
    wire _NODE_37;
    wire _NODE_38;
    assign _NODE_38 = eq_93_result ? 1 : 0;
    assign _NODE_37 = eq_103_result ? 1 : _NODE_38;
    wire _NODE_39;
    assign _NODE_39 = eq_93_result ? 1 : 0;
    assign MemReader_cfa9_0_start = eq_94_result ? _NODE_37 : _NODE_39;
    assign MemReader_cfa9_0_layer = next_layer;
    assign MemReader_cfa9_0_clock = io_clock;
    assign MemReader_cfa9_0_reset = io_reset;
    assign next_layer = add_14_result;
    wire _NODE_40;
    assign _NODE_40 = eq_95_result ? 1 : 0;
    assign layer_mask_i0 = eq_94_result ? _NODE_40 : 0;
    wire _NODE_41;
    assign _NODE_41 = eq_96_result ? 1 : 0;
    assign layer_mask_i1 = eq_94_result ? _NODE_41 : 0;
    wire _NODE_42;
    assign _NODE_42 = eq_97_result ? 1 : 0;
    assign layer_mask_i2 = eq_94_result ? _NODE_42 : 0;
    wire _NODE_43;
    assign _NODE_43 = eq_98_result ? 1 : 0;
    assign layer_mask_i3 = eq_94_result ? _NODE_43 : 0;
    wire _NODE_44;
    assign _NODE_44 = eq_99_result ? 1 : 0;
    assign layer_mask_i4 = eq_94_result ? _NODE_44 : 0;
    wire _NODE_45;
    assign _NODE_45 = eq_100_result ? 1 : 0;
    assign layer_mask_i5 = eq_94_result ? _NODE_45 : 0;
    wire _NODE_46;
    assign _NODE_46 = eq_101_result ? 1 : 0;
    assign layer_mask_i6 = eq_94_result ? _NODE_46 : 0;
    wire _NODE_47;
    assign _NODE_47 = eq_102_result ? 1 : 0;
    assign layer_mask_i7 = eq_94_result ? _NODE_47 : 0;
    assign controllers_ready = and_5_result;
    assign controllers_clear = 0;
    wire _NODE_48;
    assign _NODE_48 = and_6_result ? 1 : 0;
    assign controllers_update = eq_105_result ? _NODE_48 : 0;
    always @(posedge(io_clock)) begin
        if (io_reset) begin
            state <= 0;
            layer_counter <= 0;
            cycle_counter <= 0;
        end
        else begin
            state <= state;
            if (eq_93_result) begin
                state <= 2;
            end
            if (eq_94_result) begin
                if (eq_104_result) begin
                    state <= 2;
                end
            end
            if (eq_105_result) begin
                if (and_6_result) begin
                    state <= 1;
                end
            end
            layer_counter <= layer_counter;
            if (eq_105_result) begin
                if (and_6_result) begin
                    layer_counter <= next_layer;
                end
            end
            cycle_counter <= cycle_counter;
            if (eq_94_result) begin
                cycle_counter <= add_15_result;
            end
            if (eq_105_result) begin
                if (and_6_result) begin
                    cycle_counter <= 0;
                end
            end
        end
    end
endmodule
