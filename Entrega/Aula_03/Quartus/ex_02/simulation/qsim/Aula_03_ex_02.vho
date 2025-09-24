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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "09/22/2025 03:07:41"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Aula_03_ex_02 IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	c_7s : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Aula_03_ex_02;

-- Design Ports Information


ARCHITECTURE structure OF Aula_03_ex_02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_c_7s : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
c_7s <= ww_c_7s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;

-- Location: PIN_53,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_51,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\clr~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clr,
	combout => \clr~combout\);

-- Location: LC_X6_Y1_N5
\cnt|LPM_COUNTER_component|auto_generated|counter_cella0\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) = DFFEAS((!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0)), GLOBAL(\clk~combout\), !GLOBAL(\clr~combout\), , , , , , )
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	aclr => \clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X6_Y1_N6
\cnt|LPM_COUNTER_component|auto_generated|counter_cella1\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) $ ((((\cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\)))), GLOBAL(\clk~combout\), !GLOBAL(\clr~combout\), , , , , , )
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	aclr => \clr~combout\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X6_Y1_N7
\cnt|LPM_COUNTER_component|auto_generated|counter_cella2\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) $ ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\))), GLOBAL(\clk~combout\), !GLOBAL(\clr~combout\), , , , , , )
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	aclr => \clr~combout\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X6_Y1_N8
\cnt|LPM_COUNTER_component|auto_generated|counter_cella3\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3) = DFFEAS(((\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ $ (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\clr~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3),
	aclr => \clr~combout\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LC_X6_Y1_N0
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3)) # (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) $ (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2))))) # 
-- (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) $ (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef7c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X6_Y1_N9
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3) $ (((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2)))))) # 
-- (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "208e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X5_Y1_N6
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) & (((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) & !\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3))))) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) & 
-- ((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3)))) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "04ce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X5_Y1_N8
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) $ ((!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1))))) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) & 
-- ((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) & !\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3))) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & 
-- (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) & \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9486",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X5_Y1_N5
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0))))) # 
-- (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) & !\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X5_Y1_N2
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3)))) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) & 
-- (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2))))) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) $ 
-- (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e228",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X5_Y1_N4
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3))))) # 
-- (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) $ (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4806",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	oe => VCC,
	padio => ww_c_7s(0));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_c_7s(1));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_c_7s(2));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_c_7s(3));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_c_7s(4));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_c_7s(5));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_c_7s(6));
END structure;


