--------------------------------------------------------------------------------
-- Project :
-- File    :
-- Autor   :
-- Date    :
--
--------------------------------------------------------------------------------
-- Description :
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY VHDL_XOR IS
  PORT (
  ------------------------------------------------------------------------------
    X	: IN std_logic;
    Y	: IN std_logic;
  ------------------------------------------------------------------------------
    zXOR	: OUT std_logic;
    zAND	: OUT std_logic;
    zOR	: OUT std_logic;
    zNOT	: OUT std_logic;
    zNAND	: OUT std_logic;
    zNOR	: OUT std_logic;
    zXNOR	: OUT std_logic
    );
END VHDL_XOR;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF VHDL_XOR IS

BEGIN

	zXOR <= X XOR Y;
	zAND <= X AND Y;
	zOR <= X OR Y;
	zNOT <= NOT Y;
	zNAND <= X NAND Y;
	zNOR <= X NOR Y;
	zXNOR <= X XNOR Y;


END TypeArchitecture;
