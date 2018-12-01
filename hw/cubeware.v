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
