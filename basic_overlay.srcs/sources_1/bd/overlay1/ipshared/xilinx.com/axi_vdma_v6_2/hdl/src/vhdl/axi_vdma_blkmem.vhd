-------------------------------------------------------------------------------
--axi_vdma_blkmem.vhd
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
--  (c) Copyright 2010, 2013 Xilinx, Inc. All rights reserved.
--
--  This file contains confidential and proprietary information
--  of Xilinx, Inc. and is protected under U.S. and
--  international copyright and other intellectual property
--  laws.
--
--  DISCLAIMER
--  This disclaimer is not a license and does not grant any
--  rights to the materials distributed herewith. Except as
--  otherwise provided in a valid license issued to you by
--  Xilinx, and to the maximum extent permitted by applicable
--  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
--  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
--  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
--  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
--  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
--  (2) Xilinx shall not be liable (whether in contract or tort,
--  including negligence, or under any other theory of
--  liability) for any loss or damage of any kind or nature
--  related to, arising under or in connection with these
--  materials, including for any direct, or any indirect,
--  special, incidental, or consequential loss or damage
--  (including loss of data, profits, goodwill, or any type of
--  loss or damage suffered as a result of any action brought
--  by a third party) even if such damage or loss was
--  reasonably foreseeable or Xilinx had been advised of the
--  possibility of the same.
--
--  CRITICAL APPLICATIONS
--  Xilinx products are not designed or intended to be fail-
--  safe, or for use in any application requiring fail-safe
--  performance, such as life-support or safety devices or
--  systems, Class III medical devices, nuclear facilities,
--  applications related to the deployment of airbags, or any
--  other applications that could lead to death, personal
--  injury, or severe property or environmental damage
--  (individually and collectively, "Critical
--  Applications"). Customer assumes the sole risk and
--  liability of any use of Xilinx products in Critical
--  Applications, subject only to applicable laws and
--  regulations governing limitations on product liability.
--
--  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
--  PART OF THIS FILE AT ALL TIMES. 
--
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        axi_vdma_blkmem.vhd
--
-- Description:     This file is the top level wrapper for properly configuring
--                  and calling blk_mem_gen_wrapper
--
--
-------------------------------------------------------------------------------
-- Structure:
--                  axi_vdma.vhd
--                   |- axi_vdma_pkg.vhd
--                   |- axi_vdma_intrpt.vhd
--                   |- axi_vdma_rst_module.vhd
--                   |   |- axi_vdma_reset.vhd (mm2s)
--                   |   |   |- axi_vdma_cdc.vhd
--                   |   |- axi_vdma_reset.vhd (s2mm)
--                   |   |   |- axi_vdma_cdc.vhd
--                   |
--                   |- axi_vdma_reg_if.vhd
--                   |   |- axi_vdma_lite_if.vhd
--                   |   |- axi_vdma_cdc.vhd (mm2s)
--                   |   |- axi_vdma_cdc.vhd (s2mm)
--                   |
--                   |- axi_vdma_sg_cdc.vhd (mm2s)
--                   |- axi_vdma_vid_cdc.vhd (mm2s)
--                   |- axi_vdma_fsync_gen.vhd (mm2s)
--                   |- axi_vdma_sof_gen.vhd (mm2s)
--                   |- axi_vdma_reg_module.vhd (mm2s)
--                   |   |- axi_vdma_register.vhd (mm2s)
--                   |   |- axi_vdma_regdirect.vhd (mm2s)
--                   |- axi_vdma_mngr.vhd (mm2s)
--                   |   |- axi_vdma_sg_if.vhd (mm2s)
--                   |   |- axi_vdma_sm.vhd (mm2s)
--                   |   |- axi_vdma_cmdsts_if.vhd (mm2s)
--                   |   |- axi_vdma_vidreg_module.vhd (mm2s)
--                   |   |   |- axi_vdma_sgregister.vhd (mm2s)
--                   |   |   |- axi_vdma_vregister.vhd (mm2s)
--                   |   |   |- axi_vdma_vaddrreg_mux.vhd (mm2s)
--                   |   |   |- axi_vdma_blkmem.vhd (mm2s)
--                   |   |- axi_vdma_genlock_mngr.vhd (mm2s)
--                   |       |- axi_vdma_genlock_mux.vhd (mm2s)
--                   |       |- axi_vdma_greycoder.vhd (mm2s)
--                   |- axi_vdma_mm2s_linebuf.vhd (mm2s)
--                   |   |- axi_vdma_sfifo_autord.vhd (mm2s)
--                   |   |- axi_vdma_afifo_autord.vhd (mm2s)
--                   |   |- axi_vdma_skid_buf.vhd (mm2s)
--                   |   |- axi_vdma_cdc.vhd (mm2s)
--                   |
--                   |- axi_vdma_sg_cdc.vhd (s2mm)
--                   |- axi_vdma_vid_cdc.vhd (s2mm)
--                   |- axi_vdma_fsync_gen.vhd (s2mm)
--                   |- axi_vdma_sof_gen.vhd (s2mm)
--                   |- axi_vdma_reg_module.vhd (s2mm)
--                   |   |- axi_vdma_register.vhd (s2mm)
--                   |   |- axi_vdma_regdirect.vhd (s2mm)
--                   |- axi_vdma_mngr.vhd (s2mm)
--                   |   |- axi_vdma_sg_if.vhd (s2mm)
--                   |   |- axi_vdma_sm.vhd (s2mm)
--                   |   |- axi_vdma_cmdsts_if.vhd (s2mm)
--                   |   |- axi_vdma_vidreg_module.vhd (s2mm)
--                   |   |   |- axi_vdma_sgregister.vhd (s2mm)
--                   |   |   |- axi_vdma_vregister.vhd (s2mm)
--                   |   |   |- axi_vdma_vaddrreg_mux.vhd (s2mm)
--                   |   |   |- axi_vdma_blkmem.vhd (s2mm)
--                   |   |- axi_vdma_genlock_mngr.vhd (s2mm)
--                   |       |- axi_vdma_genlock_mux.vhd (s2mm)
--                   |       |- axi_vdma_greycoder.vhd (s2mm)
--                   |- axi_vdma_s2mm_linebuf.vhd (s2mm)
--                   |   |- axi_vdma_sfifo_autord.vhd (s2mm)
--                   |   |- axi_vdma_afifo_autord.vhd (s2mm)
--                   |   |- axi_vdma_skid_buf.vhd (s2mm)
--                   |   |- axi_vdma_cdc.vhd (s2mm)
--                   |
--                   |- axi_datamover_v3_00_a.axi_datamover.vhd (FULL)
--                   |- axi_sg_v3_00_a.axi_sg.vhd
--
-------------------------------------------------------------------------------
-- Library definitions

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library lib_bmg_v1_0_4;
use lib_bmg_v1_0_4.blk_mem_gen_wrapper;
--use proc_common_v4_0_2.family_support.all;

-------------------------------------------------------------------------------
entity axi_vdma_blkmem is
    generic (
        C_DATA_WIDTH        : integer := 32;
        C_ADDR_WIDTH        : integer := 9;
        C_SELECT_XPM        : integer := 1;
        C_FAMILY            : string  := "virtex7"
      );
    port(
        Clk         : in  std_logic                             ;--
        Rst         : in  std_logic                             ;--
                                                                 --
                                                                 --
        -- Write Port signals                                    --
        Wr_Enable   : in  std_logic                             ;--
        Wr_Req      : in  std_logic                             ;--
        Wr_Address  : in  std_logic_vector(0 to C_ADDR_WIDTH-1) ;--
        Wr_Data     : in  std_logic_vector(0 to C_DATA_WIDTH-1) ;--
                                                                 --
        -- Read Port Signals                                     --
        Rd_Enable   : in  std_logic                             ;--
        Rd_Address  : in  std_logic_vector(0 to C_ADDR_WIDTH-1) ;--
        Rd_Data     : out std_logic_vector(0 to C_DATA_WIDTH-1)  --
    );
end axi_vdma_blkmem ;

-------------------------------------------------------------------------------

architecture implementation of axi_vdma_blkmem is

attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


component  xpm_memory_tdpram
  generic (
  MEMORY_SIZE         : integer :=  4096;
  MEMORY_PRIMITIVE    : string  :=  "blockram";
  CLOCKING_MODE       : string  :=  "common_clock";
  ECC_MODE            : string  :=  "no_ecc";
  MEMORY_INIT_FILE    : string  :=  "none";
  WAKEUP_TIME         : string  :=  "disable_sleep";
  MESSAGE_CONTROL     : integer :=  0;

  WRITE_DATA_WIDTH_A  : integer :=  32;
  READ_DATA_WIDTH_A   : integer :=  32;
  BYTE_WRITE_WIDTH_A  : integer :=  32;
  ADDR_WIDTH_A        : integer :=  12;
  READ_RESET_VALUE_A  : string  := "0";
  READ_LATENCY_A      : integer :=  1;
  WRITE_MODE_A        : string  :=  "write_first";

  WRITE_DATA_WIDTH_B  : integer :=  32;
  READ_DATA_WIDTH_B   : integer :=  32;
  BYTE_WRITE_WIDTH_B  : integer :=  32;
  ADDR_WIDTH_B        : integer :=  12;
  READ_RESET_VALUE_B  : string  := "0";
  READ_LATENCY_B      : integer :=  1;
  WRITE_MODE_B        : string  :=  "write_first"

); 
  port (

  -- Common module ports
   sleep              : in std_logic;

  -- Port A module ports
   clka               : in std_logic;
   rsta               : in std_logic;
   ena                : in std_logic;
   regcea             : in std_logic;
   wea                : in std_logic_vector (0 downto 0);
   addra              : in std_logic_vector (0 to C_ADDR_WIDTH-1); 
   dina               : in std_logic_vector (0 to C_DATA_WIDTH-1);
   injectsbiterra     : in std_logic;
   injectdbiterra     : in std_logic;
   douta              : out std_logic_vector(0 to C_DATA_WIDTH-1);              
   sbiterra           : out std_logic;
   dbiterra           : out std_logic;

-- Port B module ports
   clkb               : in std_logic;
   rstb               : in std_logic;
   enb                : in std_logic;
   regceb             : in std_logic;
   web                : in std_logic_vector (0 downto 0);
   addrb              : in std_logic_vector (0 to C_ADDR_WIDTH-1);
   dinb               : in std_logic_vector (0 to C_DATA_WIDTH-1); 
   injectsbiterrb     : in std_logic;
   injectdbiterrb     : in std_logic;
   doutb              : out std_logic_vector(0 to C_DATA_WIDTH-1);               
   sbiterrb           : out std_logic;
   dbiterrb           : out std_logic
  );
end component;

-------------------------------------------------------------------------------
-- Function Declarations
-------------------------------------------------------------------------------
function get_bram_primitive (target_width: integer)
           return integer is
variable primitive_blk_mem : integer;
constant prim_type_1bit         : integer := 0;     -- ( 1-bit wide)
constant prim_type_2bit         : integer := 1;     -- ( 2-bit wide)
constant prim_type_4bit         : integer := 2;     -- ( 4-bit wide)
constant prim_type_9bit         : integer := 3;     -- ( 9-bit wide)
constant prim_type_18bit        : integer := 4;     -- (18-bit wide)
constant prim_type_36bit        : integer := 5;     -- (36-bit wide)
constant prim_type_72bit        : integer := 6;     -- (72-bit wide, single port only)
begin
    case target_width Is
        when 1  =>
            primitive_blk_mem  := prim_type_1bit;

        when 2  =>
            primitive_blk_mem  := prim_type_2bit;

        when 3 | 4  =>
            primitive_blk_mem  := prim_type_4bit;

        when 5 | 6 | 7 | 8 | 9  =>
            primitive_blk_mem  := prim_type_9bit;

        when 10 | 11 | 12 | 13 | 14 |
          15 | 16 | 17 | 18  =>
            primitive_blk_mem  := prim_type_18bit;

        when others   =>
            primitive_blk_mem  := prim_type_36bit;
    end case;
    return primitive_blk_mem;
end function get_bram_primitive;

----------------------------------------------------------------------------
-- Constants Declarations
----------------------------------------------------------------------------
constant PRIM_TYPE              : integer := get_bram_primitive(C_DATA_WIDTH);
constant MEM_TYPE               : integer := 2;     -- True dual port RAM

-- Determine the number of BRAM storage locations needed
constant FIFO_DEPTH             : integer := 2**C_ADDR_WIDTH;

-------------------------------------------------------------------------------
-- Signal Declarations
-------------------------------------------------------------------------------
signal port_a_addr              : std_logic_vector(C_ADDR_WIDTH-1 downto 0);
signal port_a_data_in           : std_logic_vector(C_DATA_WIDTH-1 downto 0);
signal port_a_enable            : std_logic;
signal port_a_wr_enable         : std_logic_vector(0 downto 0);

signal port_b_addr              : std_logic_vector(C_ADDR_WIDTH-1 downto 0);
signal port_b_data_in           : std_logic_vector(C_DATA_WIDTH-1 downto 0);
signal port_b_data_out          : std_logic_vector(C_DATA_WIDTH-1 downto 0);
signal port_b_enable            : std_logic;
signal port_b_wr_enable         : std_logic_vector(0 downto 0);

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------

begin

-- translate big-endian and little_endian indexes of the
-- data buses
TRANSLATE_DATA : process (Wr_Data, port_b_data_out)
    begin

        port_a_data_in <= (others => '0');
        for i in C_DATA_WIDTH-1 downto 0 loop
            port_a_data_in(i)          <= Wr_Data(C_DATA_WIDTH-1-i);
            Rd_Data(C_DATA_WIDTH-1-i)  <= port_b_data_out(i);
        end loop;

end process TRANSLATE_DATA;


-- translate big-endian and little_endian indexes of the
-- address buses (makes simulation easier)
TRANSLATE_ADDRESS : process (Wr_Address, Rd_Address)
begin

    port_a_addr <= (others => '0');
    port_b_addr <= (others => '0');
    for i in C_ADDR_WIDTH-1 downto 0 loop
        port_a_addr(i)   <=  Wr_Address(C_ADDR_WIDTH-1-i);
        port_b_addr(i)   <=  Rd_Address(C_ADDR_WIDTH-1-i);
    end loop;

end process TRANSLATE_ADDRESS;

port_a_enable           <= Wr_Enable;
port_a_wr_enable(0)     <= Wr_Req;

port_b_enable           <= Rd_Enable;
port_b_data_in          <= (others => '0');
port_b_wr_enable        <= (others => '0');

xpm_mem_gen : if (C_SELECT_XPM = 1) generate 
xpm_memory_inst: xpm_memory_tdpram

   generic map (
      MEMORY_SIZE             =>  FIFO_DEPTH*C_DATA_WIDTH,
      MEMORY_PRIMITIVE        =>  "blockram",
      CLOCKING_MODE           =>  "common_clock",
      ECC_MODE                =>  "no_ecc",
      MEMORY_INIT_FILE        =>  "none",
      WAKEUP_TIME             =>  "disable_sleep",
      MESSAGE_CONTROL         =>  1,

      WRITE_DATA_WIDTH_A      =>  C_DATA_WIDTH,
      READ_DATA_WIDTH_A       =>  C_DATA_WIDTH,
      BYTE_WRITE_WIDTH_A      =>  C_DATA_WIDTH,
      ADDR_WIDTH_A            =>  C_ADDR_WIDTH, 
      READ_RESET_VALUE_A      =>  "0",
      READ_LATENCY_A          =>  1,
      WRITE_MODE_A            =>  "write_first",

      WRITE_DATA_WIDTH_B      =>  C_DATA_WIDTH,
      READ_DATA_WIDTH_B       =>  C_DATA_WIDTH,
      BYTE_WRITE_WIDTH_B      =>  C_DATA_WIDTH,
      ADDR_WIDTH_B            =>  C_ADDR_WIDTH,
      READ_RESET_VALUE_B      =>  "0",
      READ_LATENCY_B          =>  1,
      WRITE_MODE_B            =>  "write_first"
      )
      port map (
       -- Common module ports
      sleep                   =>  '0',
    
     -- Port A module ports
      clka                    => Clk,
      rsta                    => Rst, 
      ena                     => port_a_enable, 
      regcea                  => '0',
      wea                     => port_a_wr_enable,
      addra                   => port_a_addr,
      dina                    => port_a_data_in,
      injectsbiterra          => '0',
      injectdbiterra          => '0',
      douta                   => open,
      sbiterra                => open,
      dbiterra                => open,
    
     -- Port B module ports
      clkb                    => Clk,
      rstb                    => Rst,
      enb                     => port_b_enable,
      regceb                  => '0',
      web                     => port_b_wr_enable,
      addrb                   => port_b_addr,
      dinb                    => port_b_data_in,
      injectsbiterrb          => '0',
      injectdbiterrb          => '0',
      doutb                   => port_b_data_out,
      sbiterrb                => open,
      dbiterrb                => open
      );
end generate;

blk_mem_gen : if (C_SELECT_XPM = 0) generate
-- For V6 and S6 use block memory generator to
-- generate BRAM
I_BLK_MEM : entity lib_bmg_v1_0_4.blk_mem_gen_wrapper
    generic map (
        c_family                  =>  C_FAMILY,
        c_xdevicefamily           =>  C_FAMILY,
        c_mem_type                =>  MEM_TYPE,
        c_algorithm               =>  1,
        c_prim_type               =>  PRIM_TYPE,
        c_byte_size               =>  8,
        c_sim_collision_check     =>  "All",
        c_common_clk              =>  1,
        c_disable_warn_bhv_coll   =>  0,
        c_disable_warn_bhv_range  =>  0,

        c_load_init_file          =>  0,
        c_init_file_name          =>  "no_coe_file_loaded",
        c_use_default_data        =>  0,
        c_default_data            =>  "0",

        -- Port A Settings
        c_has_mem_output_regs_a   =>  0,
        c_has_mux_output_regs_a   =>  0,
        c_write_width_a           =>  C_DATA_WIDTH,
        c_read_width_a            =>  C_DATA_WIDTH,
        c_write_depth_a           =>  FIFO_DEPTH,
        c_read_depth_a            =>  FIFO_DEPTH,
        c_addra_width             =>  C_ADDR_WIDTH,
        c_write_mode_a            =>  "WRITE_FIRST",
        c_has_ena                 =>  1,
        c_has_regcea              =>  0,
        c_has_ssra                =>  0,
        c_sinita_val              =>  "0",

        c_use_byte_wea            =>  0,
        c_wea_width               =>  1,

        -- Port B Settings
        c_has_mem_output_regs_b   =>  0,
        c_has_mux_output_regs_b   =>  0,
        c_write_width_b           =>  C_DATA_WIDTH,
        c_read_width_b            =>  C_DATA_WIDTH,
        c_write_depth_b           =>  FIFO_DEPTH,
        c_read_depth_b            =>  FIFO_DEPTH,
        c_addrb_width             =>  C_ADDR_WIDTH,
        c_write_mode_b            =>  "WRITE_FIRST",
        c_has_enb                 =>  1,
        c_has_regceb              =>  0,
        c_has_ssrb                =>  0,
        c_sinitb_val              =>  "0",
        c_use_byte_web            =>  0,
        c_web_width               =>  1,

        -- Misc Settings
        c_mux_pipeline_stages     =>  0,
        c_use_ecc                 =>  0,
        c_use_ramb16bwer_rst_bhv  =>  0        -- No use of S3A DSP embedded RAM primitives
    )
    port map (
        clka      =>  Clk                       ,
        ssra      =>  Rst                       ,
        dina      =>  port_a_data_in            ,
        addra     =>  port_a_addr               ,
        ena       =>  port_a_enable             ,
        regcea    =>  '0'                       ,
        wea       =>  port_a_wr_enable          ,
        douta     =>  open                      ,

        clkb      =>  Clk                       ,
        ssrb      =>  Rst                       ,
        dinb      =>  port_b_data_in            ,
        addrb     =>  port_b_addr               ,
        enb       =>  port_b_enable             ,
        regceb    =>  '0'                       ,
        web       =>  port_b_wr_enable          ,
        doutb     =>  port_b_data_out           ,

        dbiterr   =>  open                      ,       -- No ECC
        sbiterr   =>  open                              -- No ECC
);
end generate;
end implementation;
