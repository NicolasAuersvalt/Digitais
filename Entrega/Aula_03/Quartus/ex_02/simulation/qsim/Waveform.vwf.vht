-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/22/2025 03:07:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula_03_ex_02
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula_03_ex_02_vhd_vec_tst IS
END Aula_03_ex_02_vhd_vec_tst;
ARCHITECTURE Aula_03_ex_02_arch OF Aula_03_ex_02_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c_7s : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
COMPONENT Aula_03_ex_02
	PORT (
	c_7s : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Aula_03_ex_02
	PORT MAP (
-- list connections between master ports and signals
	c_7s => c_7s,
	clk => clk,
	clr => clr
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;
END Aula_03_ex_02_arch;
