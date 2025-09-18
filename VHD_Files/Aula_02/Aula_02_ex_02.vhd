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

ENTITY Aula_02_ex_02 IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    A      : IN  std_logic;
    B      : IN  std_logic;
    C      : IN  std_logic;
    D      : IN  std_logic;

    Z	: OUT std_logic
    
    );
END Aula_02_ex_02;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF Aula_02_ex_02 IS

BEGIN

	Z <= (NOT (A OR B)) AND (C AND D);

END TypeArchitecture;
