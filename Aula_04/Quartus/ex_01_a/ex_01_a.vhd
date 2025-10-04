LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex_01_a IS
  PORT (
    S,R      : IN  std_logic;                    
    Q,QN     : OUT std_logic                
    );
END ex_01_a;

ARCHITECTURE TypeArchitecture OF ex_01_a IS
SIGNAL qstate : std_logic := '0';  

BEGIN
  PROCESS(S,R)
  BEGIN
    IF (S = '0' AND R = '1') THEN      
      qstate <= '1';
    ELSIF (S = '1' AND R = '0') THEN   
      qstate <= '0';
    ELSIF (S = '0' AND R = '0') THEN   
      qstate <= 'X';  -- Estado indefinido

    END IF;
  END PROCESS;

  Q <= qstate;
  QN <= NOT qstate;

END TypeArchitecture;