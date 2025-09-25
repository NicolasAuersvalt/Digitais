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

-- DATE "09/24/2025 22:23:41"

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

ENTITY 	Aula_03_ex_03 IS
    PORT (
	CLOCK_50MHZ : IN std_logic;
	RESET_N : IN std_logic;
	c_7s : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Aula_03_ex_03;

-- Design Ports Information


ARCHITECTURE structure OF Aula_03_ex_03 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50MHZ : std_logic;
SIGNAL ww_RESET_N : std_logic;
SIGNAL ww_c_7s : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50MHZ~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \RESET_N~combout\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella6~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella6~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella11~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella11~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella16~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella16~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella21~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella21~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella25~COUT\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|counter_cella25~COUTCOUT1_1\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\ : std_logic;
SIGNAL \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|safe_q\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_RESET_N~combout\ : std_logic;

BEGIN

ww_CLOCK_50MHZ <= CLOCK_50MHZ;
ww_RESET_N <= RESET_N;
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
\ALT_INV_RESET_N~combout\ <= NOT \RESET_N~combout\;

-- Location: PIN_12,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\CLOCK_50MHZ~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLOCK_50MHZ,
	combout => \CLOCK_50MHZ~combout\);

-- Location: LC_X4_Y1_N2
\~GND\ : maxii_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: PIN_51,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\RESET_N~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RESET_N,
	combout => \RESET_N~combout\);

-- Location: LC_X3_Y2_N2
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella0\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(0) = DFFEAS(((!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(0))), GLOBAL(\CLOCK_50MHZ~combout\), GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , 
-- \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella0~COUT\ = CARRY(((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(0))))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY(((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(0),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(0),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella0~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N3
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella1\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(1) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(1) $ ((((\GeradorDePulso|divisor_gigante|auto_generated|counter_cella0~COUT\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella1~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella0~COUT\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(1)))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella0~COUTCOUT1_1\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(1),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella0~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(1),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella1~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N4
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(2) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(2) $ ((((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella1~COUT\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(2) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella1~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(2),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella1~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(2),
	cout => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\);

-- Location: LC_X3_Y2_N5
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella3\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(3) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(3) $ ((((\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(3)))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUTCOUT1_1\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(3),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(3),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N6
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella4\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(4) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(4) $ ((((!(!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUTCOUT1_1\))))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUT\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(4) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUT\))))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUTCOUT1_1\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(4) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(4),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella3~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(4),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N7
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella5\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(5) = DFFEAS((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(5) $ (((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUTCOUT1_1\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUT\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(5))))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUTCOUT1_1\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUTCOUT1_1\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(5),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella4~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(5),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N8
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella6\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(6) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(6) $ ((((!(!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUTCOUT1_1\))))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella6~COUT\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(6) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUT\))))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella6~COUTCOUT1_1\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(6) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(6),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella5~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(6),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella6~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella6~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N9
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(7) = DFFEAS((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(7) $ (((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella6~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella6~COUTCOUT1_1\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella6~COUTCOUT1_1\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(7),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella2~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella6~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella6~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(7),
	cout => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\);

-- Location: LC_X4_Y2_N0
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella8\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(8) = DFFEAS((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(8) $ ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUT\ = CARRY(((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(8) & !\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\)))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUTCOUT1_1\ = CARRY(((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(8) & !\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(8),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(8),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N1
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella9\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(9) = DFFEAS((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(9) $ (((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUTCOUT1_1\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUT\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(9))))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUTCOUT1_1\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUTCOUT1_1\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(9),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella8~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(9),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N2
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella10\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(10) = DFFEAS((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(10) $ ((!(!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUTCOUT1_1\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUT\ = CARRY(((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(10) & !\GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUT\)))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUTCOUT1_1\ = CARRY(((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(10) & !\GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(10),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella9~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(10),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N3
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella11\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(11) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(11) $ (((((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUTCOUT1_1\))))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella11~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUT\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(11)))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella11~COUTCOUT1_1\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUTCOUT1_1\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(11),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella10~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(11),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella11~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella11~COUTCOUT1_1\);

-- Location: LC_X6_Y2_N3
\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~3\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ = (\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(8)) # ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(9)) # 
-- ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(11)) # (\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(8),
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(9),
	datac => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(11),
	datad => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\);

-- Location: LC_X4_Y2_N4
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(12) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(12) $ ((((!(!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella11~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella11~COUTCOUT1_1\))))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(12) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella11~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(12),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella7~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella11~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella11~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(12),
	cout => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\);

-- Location: LC_X4_Y2_N5
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella13\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(13) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(13) $ ((((\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(13)))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUTCOUT1_1\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(13),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(13),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N6
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella14\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(14) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(14) $ ((((!(!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUTCOUT1_1\))))), 
-- GLOBAL(\CLOCK_50MHZ~combout\), GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUT\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(14) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUT\))))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUTCOUT1_1\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(14) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(14),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella13~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(14),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N7
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella15\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(15) = DFFEAS((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(15) $ (((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUTCOUT1_1\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUT\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(15))))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUTCOUT1_1\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUTCOUT1_1\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(15),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella14~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(15),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUTCOUT1_1\);

-- Location: LC_X6_Y2_N2
\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~4\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ = (\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(12)) # ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(13)) # 
-- ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(15)) # (\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(12),
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(13),
	datac => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(15),
	datad => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\);

-- Location: LC_X4_Y2_N8
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella16\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(16) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(16) $ ((((!(!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUTCOUT1_1\))))), 
-- GLOBAL(\CLOCK_50MHZ~combout\), GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella16~COUT\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(16) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUT\))))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella16~COUTCOUT1_1\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(16) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(16),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella15~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(16),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella16~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella16~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N9
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(17) = DFFEAS((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(17) $ (((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella16~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella16~COUTCOUT1_1\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella16~COUTCOUT1_1\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(17),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella12~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella16~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella16~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(17),
	cout => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\);

-- Location: LC_X5_Y2_N0
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella18\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(18) = DFFEAS((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(18) $ ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUT\ = CARRY(((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(18) & !\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\)))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUTCOUT1_1\ = CARRY(((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(18) & !\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(18),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(18),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N1
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella19\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(19) = DFFEAS((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(19) $ (((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUTCOUT1_1\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUT\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(19))))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUTCOUT1_1\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUTCOUT1_1\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(19),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella18~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(19),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N2
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella20\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(20) = DFFEAS((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(20) $ ((!(!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUTCOUT1_1\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUT\ = CARRY(((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(20) & !\GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUT\)))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUTCOUT1_1\ = CARRY(((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(20) & !\GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(20),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella19~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(20),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N3
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella21\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(21) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(21) $ (((((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUTCOUT1_1\))))), 
-- GLOBAL(\CLOCK_50MHZ~combout\), GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella21~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUT\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(21)))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella21~COUTCOUT1_1\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUTCOUT1_1\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(21),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella20~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(21),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella21~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella21~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N4
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella22\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(22) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(22) $ ((((!(!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella21~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella21~COUTCOUT1_1\))))), 
-- GLOBAL(\CLOCK_50MHZ~combout\), GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(22) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella21~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(22),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella17~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella21~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella21~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(22),
	cout => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\);

-- Location: LC_X5_Y2_N5
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella23\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(23) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(23) $ ((((\GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(23)))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUTCOUT1_1\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\)) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(23)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(23),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(23),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N9
\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~6\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ = (\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(23)) # ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(20)) # 
-- ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(22)) # (\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(23),
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(20),
	datac => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(22),
	datad => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\);

-- Location: LC_X5_Y2_N6
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella24\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(24) = DFFEAS(\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(24) $ ((((!(!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUTCOUT1_1\))))), 
-- GLOBAL(\CLOCK_50MHZ~combout\), GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUT\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(24) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUT\))))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUTCOUT1_1\ = CARRY((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(24) & ((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(24),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella23~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(24),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N7
\GeradorDePulso|divisor_gigante|auto_generated|counter_cella25\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(25) = DFFEAS((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(25) $ (((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUTCOUT1_1\)))), GLOBAL(\CLOCK_50MHZ~combout\), 
-- GLOBAL(\RESET_N~combout\), , , \~GND~combout\, , , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\)
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella25~COUT\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUT\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(25))))
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella25~COUTCOUT1_1\ = CARRY(((!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUTCOUT1_1\) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(25),
	datac => \~GND~combout\,
	aclr => \ALT_INV_RESET_N~combout\,
	sload => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella24~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(25),
	cout0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella25~COUT\,
	cout1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella25~COUTCOUT1_1\);

-- Location: LC_X6_Y2_N9
\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~5\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ = (\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(19)) # ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(17)) # 
-- ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(16)) # (\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(19),
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(17),
	datac => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(16),
	datad => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\);

-- Location: LC_X6_Y2_N4
\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~7\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\ = (\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\) # ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(25)) # 
-- ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(24)) # (\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(25),
	datac => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(24),
	datad => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\);

-- Location: LC_X3_Y2_N0
\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~0\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(1))) # (!\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(0),
	datad => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LC_X3_Y2_N1
\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~1\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(4)) # ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(7)) # 
-- ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(5)) # (\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(4),
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(7),
	datac => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(5),
	datad => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LC_X6_Y2_N0
\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~2\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ = (\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(2)) # ((\GeradorDePulso|divisor_gigante|auto_generated|safe_q\(3)) # 
-- ((\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\) # (\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(2),
	datab => \GeradorDePulso|divisor_gigante|auto_generated|safe_q\(3),
	datac => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datad => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\);

-- Location: LC_X6_Y2_N1
\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire\(0) = (\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\) # ((\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\) # 
-- ((\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\) # (\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\,
	datab => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\,
	datac => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\,
	datad => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire\(0));

-- Location: LC_X5_Y2_N8
\GeradorDePulso|divisor_gigante|auto_generated|cout_bit\ : maxii_lcell
-- Equation(s):
-- \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\ = (((!\GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire\(0)) # (!(!\GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\ & 
-- \GeradorDePulso|divisor_gigante|auto_generated|counter_cella25~COUT\) # (\GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\ & \GeradorDePulso|divisor_gigante|auto_generated|counter_cella25~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \GeradorDePulso|divisor_gigante|auto_generated|cmpr1|aneb_result_wire\(0),
	cin => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella22~COUT\,
	cin0 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella25~COUT\,
	cin1 => \GeradorDePulso|divisor_gigante|auto_generated|counter_cella25~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\);

-- Location: LC_X6_Y2_N5
\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0\ : maxii_lcell
-- Equation(s):
-- \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) = DFFEAS((!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0)), GLOBAL(\CLOCK_50MHZ~combout\), VCC, , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\, , , , 
-- )
-- \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\ = CARRY((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0)))
-- \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0)))

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
	clk => \CLOCK_50MHZ~combout\,
	dataa => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0),
	aclr => GND,
	ena => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0),
	cout0 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\,
	cout1 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X6_Y2_N6
\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1\ : maxii_lcell
-- Equation(s):
-- \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1) = DFFEAS(\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1) $ ((((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\)))), 
-- GLOBAL(\CLOCK_50MHZ~combout\), VCC, , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\, , , , )
-- \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\ = CARRY(((!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\)) # (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1)))
-- \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\)) # (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1)))

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
	clk => \CLOCK_50MHZ~combout\,
	dataa => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1),
	aclr => GND,
	ena => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin0 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\,
	cin1 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1),
	cout0 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\,
	cout1 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X6_Y2_N7
\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella2\ : maxii_lcell
-- Equation(s):
-- \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) = DFFEAS(\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) $ ((((!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\)))), 
-- GLOBAL(\CLOCK_50MHZ~combout\), VCC, , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\, , , , )
-- \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ = CARRY((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\))))
-- \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHZ~combout\,
	dataa => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2),
	aclr => GND,
	ena => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin0 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\,
	cin1 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2),
	cout0 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\,
	cout1 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X6_Y2_N8
\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella3\ : maxii_lcell
-- Equation(s):
-- \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) = DFFEAS(((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ $ (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3)))), 
-- GLOBAL(\CLOCK_50MHZ~combout\), VCC, , \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\, , , , )

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
	clk => \CLOCK_50MHZ~combout\,
	datad => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3),
	aclr => GND,
	ena => \GeradorDePulso|divisor_gigante|auto_generated|modulus_trigger\,
	cin0 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\,
	cin1 => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LC_X5_Y3_N2
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3)) # (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) $ 
-- (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1))))) # (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1)) # 
-- (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) $ (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfda",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X5_Y3_N0
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) $ (((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1)) # 
-- (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2)))))) # (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) & (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
-- (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4584",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X5_Y3_N5
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0)))) # 
-- (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3))) # 
-- (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "445c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X5_Y3_N6
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) $ (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1))))) # 
-- (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & 
-- \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1))) # (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & 
-- !\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c21c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X4_Y3_N9
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1)) # 
-- (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0))))) # (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) & 
-- (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) & \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X4_Y3_N2
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1)))) # 
-- (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2))))) # (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
-- (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1)))))

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
	dataa => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X4_Y3_N5
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) $ 
-- (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3))))) # (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0) & 
-- (\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3) $ (!\ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4086",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => \ContadorDoDisplay|LPM_COUNTER_component|auto_generated|safe_q\(1),
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


