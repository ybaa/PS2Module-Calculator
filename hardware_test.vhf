--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : hardware_test.vhf
-- /___/   /\     Timestamp : 05/24/2017 13:27:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/klawiaturka/PS2_RX/hardware_test.vhf -w C:/Users/lab/Desktop/klawiaturka/PS2_RX/hardware_test.sch
--Design Name: hardware_test
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity hardware_test is
   port ( BTN_SOUTH : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          RS232_RxD : in    std_logic; 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          RS232_TxD : out   std_logic; 
          SF_CE     : out   std_logic; 
          XLXN_15   : out   std_logic; 
          LCD_D     : inout std_logic_vector (3 downto 0));
end hardware_test;

architecture BEHAVIORAL of hardware_test is
   signal aaa       : std_logic_vector (63 downto 0);
   signal XLXN_3    : std_logic_vector (7 downto 0);
   signal XLXN_4    : std_logic;
   signal XLXN_17   : std_logic;
   signal XLXN_40   : std_logic_vector (15 downto 0);
   component RS232
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             RS232_RxD : in    std_logic; 
             TxStart   : in    std_logic; 
             TxDI      : in    std_logic_vector (7 downto 0); 
             TxBusy    : out   std_logic; 
             RxRdy     : out   std_logic; 
             RS232_TxD : out   std_logic; 
             RxDO      : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component PS2_RX
      port ( PS2_Clk  : in    std_logic; 
             PS2_Data : in    std_logic; 
             DO_Rdy   : out   std_logic; 
             DO       : out   std_logic_vector (7 downto 0); 
             Clk      : in    std_logic);
   end component;
   
   component Calculator
      port ( DI_Rdy : in    std_logic; 
             RST    : in    std_logic; 
             Clk    : in    std_logic; 
             DI     : in    std_logic_vector (7 downto 0); 
             y      : out   std_logic; 
             DO_Rdy : out   std_logic; 
             ARG1   : out   std_logic_vector (7 downto 0); 
             ARG2   : out   std_logic_vector (7 downto 0); 
             DO     : out   std_logic_vector (7 downto 0));
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
begin
   aaa(31 downto 0) <= x"00000000";
   XLXN_40(15 downto 0) <= x"24FF";
   XLXI_1 : RS232
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                Reset=>BTN_SOUTH,
                RS232_RxD=>RS232_RxD,
                TxDI(7 downto 0)=>XLXN_3(7 downto 0),
                TxStart=>XLXN_4,
                RS232_TxD=>RS232_TxD,
                RxDO=>open,
                RxRdy=>open,
                TxBusy=>open);
   
   XLXI_2 : PS2_RX
      port map (Clk=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_3(7 downto 0),
                DO_Rdy=>XLXN_4);
   
   XLXI_3 : Calculator
      port map (Clk=>Clk_50MHz,
                DI(7 downto 0)=>XLXN_3(7 downto 0),
                DI_Rdy=>XLXN_4,
                RST=>BTN_SOUTH,
                ARG1(7 downto 0)=>aaa(63 downto 56),
                ARG2(7 downto 0)=>aaa(51 downto 44),
                DO(7 downto 0)=>aaa(39 downto 32),
                DO_Rdy=>open,
                y=>XLXN_15);
   
   XLXI_4 : LCD1x64
      port map (Blank(15 downto 0)=>XLXN_40(15 downto 0),
                Clk_50MHz=>Clk_50MHz,
                Line(63 downto 0)=>aaa(63 downto 0),
                Reset=>BTN_SOUTH,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
end BEHAVIORAL;


