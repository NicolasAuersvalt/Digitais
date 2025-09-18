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

ENTITY Aula_02_ex_03 IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    A      : IN  std_logic;                    -- input bit example
    B      : IN  std_logic;                    -- input bit example
    C      : IN  std_logic;                    -- input bit example
    D      : IN  std_logic; 

  ------------------------------------------------------------------------------
  --Insert output ports below
    X        : OUT std_logic;                   -- output bit example
    Y        : OUT std_logic                   -- output bit example


    );
END Aula_02_ex_03;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF Aula_02_ex_03 IS

BEGIN


	X <= NOT(NOT A OR NOT B) AND B AND C;
	Y <= (NOT A AND NOT B AND NOT C) OR (A AND NOT B AND NOT C) OR (NOT A AND NOT B AND D);

END TypeArchitecture;
