module top_5205#

()

(
output [1:0] control_mode_5205,
input reset,
input reg_reset,

input main_clk,
input start,
output reg A4,
output reg A5,
output reg A3_csa,
output reg A2_faa,
output reg A1_clka,
output reg A0_data,

inout B5_spi_sdio,
output reg B4_sclk,

  output reg B3_csb_gs1,
  output reg B2_fab_gs0,
  output reg B1_clkb,
  output reg B0_datb

);
