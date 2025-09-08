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

-- DATE "08/21/2025 21:08:33"

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

ENTITY 	VHDL_XOR IS
    PORT (
	X : IN std_logic;
	Y : IN std_logic;
	zXOR : BUFFER std_logic;
	zAND : BUFFER std_logic;
	zOR : BUFFER std_logic;
	zNOT : BUFFER std_logic;
	zNAND : BUFFER std_logic;
	zNOR : BUFFER std_logic;
	zXNOR : BUFFER std_logic
	);
END VHDL_XOR;

-- Design Ports Information


ARCHITECTURE structure OF VHDL_XOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_zXOR : std_logic;
SIGNAL ww_zAND : std_logic;
SIGNAL ww_zOR : std_logic;
SIGNAL ww_zNOT : std_logic;
SIGNAL ww_zNAND : std_logic;
SIGNAL ww_zNOR : std_logic;
SIGNAL ww_zXNOR : std_logic;
SIGNAL \X~combout\ : std_logic;
SIGNAL \Y~combout\ : std_logic;
SIGNAL \zXOR~0_combout\ : std_logic;
SIGNAL \zAND~0_combout\ : std_logic;
SIGNAL \zOR~0_combout\ : std_logic;
SIGNAL \ALT_INV_zOR~0_combout\ : std_logic;
SIGNAL \ALT_INV_zAND~0_combout\ : std_logic;
SIGNAL \ALT_INV_zXOR~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~combout\ : std_logic;

BEGIN

ww_X <= X;
ww_Y <= Y;
zXOR <= ww_zXOR;
zAND <= ww_zAND;
zOR <= ww_zOR;
zNOT <= ww_zNOT;
zNAND <= ww_zNAND;
zNOR <= ww_zNOR;
zXNOR <= ww_zXNOR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_zOR~0_combout\ <= NOT \zOR~0_combout\;
\ALT_INV_zAND~0_combout\ <= NOT \zAND~0_combout\;
\ALT_INV_zXOR~0_combout\ <= NOT \zXOR~0_combout\;
\ALT_INV_Y~combout\ <= NOT \Y~combout\;

-- Location: PIN_50,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\X~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X,
	combout => \X~combout\);

-- Location: PIN_53,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Y~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y,
	combout => \Y~combout\);

-- Location: LC_X4_Y2_N5
\zXOR~0\ : maxii_lcell
-- Equation(s):
-- \zXOR~0_combout\ = (\X~combout\ $ (((\Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\,
	datad => \Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \zXOR~0_combout\);

-- Location: LC_X4_Y2_N2
\zAND~0\ : maxii_lcell
-- Equation(s):
-- \zAND~0_combout\ = ((\X~combout\ & ((\Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\,
	datad => \Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \zAND~0_combout\);

-- Location: LC_X4_Y2_N4
\zOR~0\ : maxii_lcell
-- Equation(s):
-- \zOR~0_combout\ = ((\X~combout\) # ((\Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\,
	datad => \Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \zOR~0_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\zXOR~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \zXOR~0_combout\,
	oe => VCC,
	padio => ww_zXOR);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\zAND~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \zAND~0_combout\,
	oe => VCC,
	padio => ww_zAND);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\zOR~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \zOR~0_combout\,
	oe => VCC,
	padio => ww_zOR);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\zNOT~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Y~combout\,
	oe => VCC,
	padio => ww_zNOT);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\zNAND~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_zAND~0_combout\,
	oe => VCC,
	padio => ww_zNAND);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\zNOR~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_zOR~0_combout\,
	oe => VCC,
	padio => ww_zNOR);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\zXNOR~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_zXOR~0_combout\,
	oe => VCC,
	padio => ww_zXNOR);
END structure;


