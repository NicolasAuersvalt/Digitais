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
    a      : IN  std_logic;                    -- input bit example
    b      : IN  std_logic;   
    c      : IN  std_logic;   
    d      : IN  std_logic;   
  ------------------------------------------------------------------------------
  --Insert output ports below
    z        : OUT std_logic                    -- output bit example
    
    );
END Aula_02_ex_02;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF Aula_02_ex_02 IS

BEGIN
	Z <= (NOT (A OR B)) AND ((C AND D));

END TypeArchitecture;
