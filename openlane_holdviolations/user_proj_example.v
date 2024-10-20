`default_nettype none

module user_proj_example (
`ifdef USE_POWER_PINS
    inout wire vccd1,    // User area 1 1.8V supply
    inout wire vssd1,    // User area 1 digital ground
`endif

    // Wishbone clock input
    input wire wb_clk_i,

    // Logic Analyzer Signals
    input wire la_data_in,   // Single bit input
    output wire [127:0] la_data_out  // 128-bit output, but we only drive the first 2 bits
);

    reg la_data_in_delayed;  // Register for introducing delay

    // Introduce delay on la_data_in using an always block
    always @(posedge wb_clk_i) begin
        la_data_in_delayed <= la_data_in;  // Delay la_data_in by one clock cycle
    end

    tiny_test counter(
        .clk(wb_clk_i),      // Use wb_clk_i as the clock signal
        .rst(1'b0),          // Hardwire reset to 0 if you don't need a reset signal
        .d(la_data_in_delayed),      // Input data is la_data_in
        .q(la_data_out[0]),  // Output q
        .qb(la_data_out[1])  // Output qb
    );

    // Set remaining bits of la_data_out to high impedance to avoid shorts
    assign la_data_out[127:2] = {126{1'bz}};

endmodule

module tiny_test (
    input wire clk,
    input wire d,
    input wire rst,
    output reg q,
    output reg qb
);

    always @(posedge clk) begin
        if (rst)
            q <= 0;
        else
            q <= d;
        qb <= ~q;  // Complement of q
    end

endmodule

`default_nettype wire

