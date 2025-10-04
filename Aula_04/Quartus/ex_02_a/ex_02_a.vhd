LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex_02_a IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    enable, din  : IN  std_logic;                    
  ------------------------------------------------------------------------------
  --Insert output ports below
    q, qn        : OUT std_logic       
    );
END ex_02_a;

--------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF ex_02_a IS
SIGNAL qstate : std_logic := '0';  

BEGIN
    PROCESS(enable, din)
    BEGIN
        IF enable = '1' THEN 
            qstate <= din;
        END IF;
    END PROCESS;

    -- Atribuições das saídas
    q  <= qstate;
    qn <= NOT qstate;
    
END TypeArchitecture;