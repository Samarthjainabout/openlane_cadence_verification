`default_nettype none

module user_proj_example (
`ifdef USE_POWER_PINS
    inout wire vccd1,    // User area 1 1.8V supply
    inout wire vssd1,    // User area 1 digital ground
`endif

    // Wishbone clock input
    input wire wb_clk_i,
    input wire wb_rst_i,     // External reset signal

    // Logic Analyzer Signals
    input wire la_data_in,    // Single bit input
    output wire [127:0] la_data_out,  // 128-bit output, but we only drive the first 2 bits
    input wire [127:0] la_oenb  // Enable signals from logic analyzer
);

    // Declare internal signal for controlled clock and reset
    wire controlled_la_data_in;
    wire rst;
     wire clk;
    wire la_write;  // Single-bit la_write
     wire valid;     // Additional valid signal to control logic

    // Use logic analyzer enable signal to control reset and data flow
    // If LA probe [65] is enabled, control the reset with the logic analyzer signal
    
    // Define the valid signal based on some condition (you can adjust this as needed)
    assign valid = (wb_rst_i == 1'b0);  // In this case, valid when reset is not active, adjust as needed
    
    assign rst = (~la_oenb[65]) ? la_data_in : wb_rst_i;
    assign clk = wb_clk_i;
    // If LA probe [0] is enabled, control the input data from LA, otherwise it's high impedance
    assign controlled_la_data_in = la_oenb[0] ? la_data_in : 1'bz;
  // Derive single-bit la_write signal from la_oenb and valid signal
    assign la_write = ~la_oenb[63] & valid;  // Single-bit la_write logic with valid condition


    // Instantiate the tiny_test module with controlled reset
    tiny_test counter(
        .clk(clk),        // Use wb_clk_i as the clock signal
        .rst(rst),             // Reset signal controlled by LA or wb_rst_i
        .d(controlled_la_data_in),  // Input data is now controlled by LA signal
        .q(la_data_out[0]),    // Output q
        .qb(la_data_out[1]),    // Output qb
        .la_write(la_write)      // Single-bit la_write controls data updates
    );

    // Set remaining bits of la_data_out to high impedance to avoid shorts
    assign la_data_out[127:2] = {126{1'bz}};

endmodule

module tiny_test (
    input wire clk,
    input wire d,
    input wire rst,  // Reset signal (controlled by LA or external)
    output reg q,
    output reg qb,
    input wire la_write // Single-bit la_write controls when data is written
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 0;  // Reset q to 0
            qb <= 1;  // Reset qb to 1
        end
        else if (la_write) begin
            q <= d;      // Set q to the input d
            qb <= ~d;    // Set qb to the complement of d
        end
    end
endmodule

`default_nettype wire