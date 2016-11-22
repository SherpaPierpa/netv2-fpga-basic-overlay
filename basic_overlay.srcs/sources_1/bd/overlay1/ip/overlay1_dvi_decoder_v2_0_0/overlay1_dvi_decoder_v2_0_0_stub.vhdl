-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Tue Nov 01 00:07:16 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_dvi_decoder_v2_0_0/overlay1_dvi_decoder_v2_0_0_stub.vhdl
-- Design      : overlay1_dvi_decoder_v2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overlay1_dvi_decoder_v2_0_0 is
  Port ( 
    rx_clk : in STD_LOGIC;
    blue_p : in STD_LOGIC;
    blue_n : in STD_LOGIC;
    green_p : in STD_LOGIC;
    green_n : in STD_LOGIC;
    red_p : in STD_LOGIC;
    red_n : in STD_LOGIC;
    ex_reset : in STD_LOGIC;
    mhz200_clk : in STD_LOGIC;
    reset : out STD_LOGIC;
    p_clk : out STD_LOGIC;
    px5_clk : out STD_LOGIC;
    px1p25_dbg_clk : out STD_LOGIC;
    pll_lckd : out STD_LOGIC;
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    de : out STD_LOGIC;
    basic_de : out STD_LOGIC;
    blue_vld : out STD_LOGIC;
    green_vld : out STD_LOGIC;
    red_vld : out STD_LOGIC;
    blue_rdy : out STD_LOGIC;
    green_rdy : out STD_LOGIC;
    red_rdy : out STD_LOGIC;
    psalgnerr : out STD_LOGIC;
    sdout : out STD_LOGIC_VECTOR ( 29 downto 0 );
    red : out STD_LOGIC_VECTOR ( 7 downto 0 );
    green : out STD_LOGIC_VECTOR ( 7 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 7 downto 0 );
    encoding : out STD_LOGIC;
    hdcp_ena : out STD_LOGIC;
    red_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_di : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_gb : out STD_LOGIC;
    video_gb : out STD_LOGIC;
    ctl_code : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cv : out STD_LOGIC;
    line_end : out STD_LOGIC;
    green_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    blue_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    red_eye : out STD_LOGIC_VECTOR ( 31 downto 0 );
    green_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    blue_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    red_debug : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end overlay1_dvi_decoder_v2_0_0;

architecture stub of overlay1_dvi_decoder_v2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rx_clk,blue_p,blue_n,green_p,green_n,red_p,red_n,ex_reset,mhz200_clk,reset,p_clk,px5_clk,px1p25_dbg_clk,pll_lckd,hsync,vsync,de,basic_de,blue_vld,green_vld,red_vld,blue_rdy,green_rdy,red_rdy,psalgnerr,sdout[29:0],red[7:0],green[7:0],blue[7:0],encoding,hdcp_ena,red_di[3:0],green_di[3:0],blue_di[3:0],data_gb,video_gb,ctl_code[3:0],cv,line_end,green_eye[31:0],blue_eye[31:0],red_eye[31:0],green_debug[31:0],blue_debug[31:0],red_debug[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dvi_decoder,Vivado 2016.1";
begin
end;
