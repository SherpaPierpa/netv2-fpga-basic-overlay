// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Sun Oct 09 19:20:59 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top overlay1_xlconstant_1_1 -prefix overlay1_xlconstant_1_1_
//               overlay1_xlconstant_1_1_stub.v
// Design      : overlay1_xlconstant_1_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module overlay1_xlconstant_1_1(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[31:0]" */;
  output [31:0]dout;
endmodule
