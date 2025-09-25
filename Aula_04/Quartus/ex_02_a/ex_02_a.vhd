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

ENTITY ex_02_a IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    enable,din      : IN  std_logic;                    
  ------------------------------------------------------------------------------
  --Insert output ports below
    q        : OUT std_logic       
    );
END ex_02_a;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF ex_02_a IS

BEGIN
	PROCESS(enable,din)
	begin
		if enable = '1' then q <= din;
		end if;
  END PROCESS;

END TypeArchitecture;
