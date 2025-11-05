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

ENTITY Seq IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    clock, seq_in      : IN  std_logic;                    -- input bit example
    
    cicle_out          : OUT std_logic_vector(2 downto 0) -- debug
    det_out            : out std_logic
    );
END Seq;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF Seq IS

BEGIN


END TypeArchitecture;
