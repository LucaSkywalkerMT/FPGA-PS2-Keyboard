--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: key_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jan 07 17:24:15 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm key -w -dir netgen/synthesis -ofmt vhdl -sim key.ngc key_synthesis.vhd 
-- Device	: xc3s100e-4-cp132
-- Input file	: key.ngc
-- Output file	: C:\Users\Luca\Documents\Personal Work\UNI\2020.21\HDL\Projects\PS2\netgen\synthesis\key_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: key
-- Xilinx	: D:\Software\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity key is
  port (
    PS2C : in STD_LOGIC := 'X'; 
    PS2D : in STD_LOGIC := 'X'; 
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end key;

architecture Structure of key is
  signal PS2C_BUFGP_9 : STD_LOGIC; 
  signal PS2D_IBUF_11 : STD_LOGIC; 
  signal ns : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal ps : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal store : STD_LOGIC_VECTOR ( 8 downto 1 ); 
begin
  ps_0 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ns(0),
      Q => ps(0)
    );
  ps_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ns(1),
      Q => ps(1)
    );
  ps_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ns(2),
      Q => ps(2)
    );
  ps_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ns(3),
      Q => ps(3)
    );
  ps_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ns(4),
      Q => ps(4)
    );
  ps_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ns(5),
      Q => ps(5)
    );
  ps_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ns(6),
      Q => ps(6)
    );
  ps_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ns(7),
      Q => ps(7)
    );
  ps_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ns(8),
      Q => ps(8)
    );
  ps_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ns(9),
      Q => ps(9)
    );
  ns_0 : FD_1
    generic map(
      INIT => '1'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ps(9),
      Q => ns(0)
    );
  ns_1 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ps(0),
      Q => ns(1)
    );
  ns_2 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ps(1),
      Q => ns(2)
    );
  ns_3 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ps(2),
      Q => ns(3)
    );
  ns_4 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ps(3),
      Q => ns(4)
    );
  ns_5 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ps(4),
      Q => ns(5)
    );
  ns_6 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ps(5),
      Q => ns(6)
    );
  ns_7 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ps(6),
      Q => ns(7)
    );
  ns_8 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ps(7),
      Q => ns(8)
    );
  ns_9 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => PS2C_BUFGP_9,
      D => ps(8),
      Q => ns(9)
    );
  store_1 : FDE_1
    port map (
      C => PS2C_BUFGP_9,
      CE => ps(1),
      D => PS2D_IBUF_11,
      Q => store(1)
    );
  store_2 : FDE_1
    port map (
      C => PS2C_BUFGP_9,
      CE => ps(2),
      D => PS2D_IBUF_11,
      Q => store(2)
    );
  store_3 : FDE_1
    port map (
      C => PS2C_BUFGP_9,
      CE => ps(3),
      D => PS2D_IBUF_11,
      Q => store(3)
    );
  store_6 : FDE_1
    port map (
      C => PS2C_BUFGP_9,
      CE => ps(6),
      D => PS2D_IBUF_11,
      Q => store(6)
    );
  store_4 : FDE_1
    port map (
      C => PS2C_BUFGP_9,
      CE => ps(4),
      D => PS2D_IBUF_11,
      Q => store(4)
    );
  store_5 : FDE_1
    port map (
      C => PS2C_BUFGP_9,
      CE => ps(5),
      D => PS2D_IBUF_11,
      Q => store(5)
    );
  store_7 : FDE_1
    port map (
      C => PS2C_BUFGP_9,
      CE => ps(7),
      D => PS2D_IBUF_11,
      Q => store(7)
    );
  store_8 : FDE_1
    port map (
      C => PS2C_BUFGP_9,
      CE => ps(8),
      D => PS2D_IBUF_11,
      Q => store(8)
    );
  PS2D_IBUF : IBUF
    port map (
      I => PS2D,
      O => PS2D_IBUF_11
    );
  LED_7_OBUF : OBUF
    port map (
      I => store(8),
      O => LED(7)
    );
  LED_6_OBUF : OBUF
    port map (
      I => store(7),
      O => LED(6)
    );
  LED_5_OBUF : OBUF
    port map (
      I => store(6),
      O => LED(5)
    );
  LED_4_OBUF : OBUF
    port map (
      I => store(5),
      O => LED(4)
    );
  LED_3_OBUF : OBUF
    port map (
      I => store(4),
      O => LED(3)
    );
  LED_2_OBUF : OBUF
    port map (
      I => store(3),
      O => LED(2)
    );
  LED_1_OBUF : OBUF
    port map (
      I => store(2),
      O => LED(1)
    );
  LED_0_OBUF : OBUF
    port map (
      I => store(1),
      O => LED(0)
    );
  PS2C_BUFGP : BUFGP
    port map (
      I => PS2C,
      O => PS2C_BUFGP_9
    );

end Structure;

