`default_nettype none
`include "defines.v"

module user_project_wrapper #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout wire vdda1,	// User area 1 3.3V supply
    inout wire vdda2,	// User area 2 3.3V supply
    inout wire vssa1,	// User area 1 analog ground
    inout wire vssa2,	// User area 2 analog ground
    inout wire vccd1,	// User area 1 1.8V supply
    inout wire vccd2,	// User area 2 1.8v supply
    inout wire vssd1,	// User area 1 digital ground
    inout wire vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wire  wb_clk_i,
    input wire  wb_rst_i,

    // Logic Analyzer Signals
    input wire [127:0] la_data_in,
    output wire [127:0] la_data_out
);

user_proj_example mprj (
`ifdef USE_POWER_PINS
    .vccd1(vccd1),	// User area 1 1.8V power
    .vssd1(vssd1),	// User area 1 digital ground
`endif

    .wb_clk_i(wb_clk_i),
    .la_data_in(la_data_in[0]),  // Single bit from la_data_in used
    .la_data_out(la_data_out)    // Full la_data_out used
);

endmodule	// user_project_wrapper

`default_nettype wire

