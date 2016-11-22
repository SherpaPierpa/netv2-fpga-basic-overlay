-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Mon Oct 31 17:13:52 2016
-- Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_hdcp_snoop_0_0/overlay1_hdcp_snoop_0_0_stub.vhdl
-- Design      : overlay1_hdcp_snoop_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overlay1_hdcp_snoop_0_0 is
  Port ( 
    SCL : in STD_LOGIC;
    SDA : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    reg_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reg_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    An : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Aksv14_write : out STD_LOGIC
  );

end overlay1_hdcp_snoop_0_0;

architecture stub of overlay1_hdcp_snoop_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SCL,SDA,clk,reset,reg_addr[4:0],reg_dout[7:0],An[63:0],Aksv14_write";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hdcp_snoop,Vivado 2016.1";
begin
end;
