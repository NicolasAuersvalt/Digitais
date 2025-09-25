--------------------------------------------------------------------------------
-- VERSAO LOGICA
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex_03_b_log IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    J, K, CLRN, PRN, CLK      : IN  std_logic;                  -- input bit example
  ------------------------------------------------------------------------------
  --Insert output ports below
    Q, QN         : OUT std_logic                   -- output bit example
    );
END ex_03_b_log;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE ff_jk_arch OF ex_03_b_log IS

signal qstate: std_logic;

BEGIN
    process(clk,prn,clrn)
    BEGIN
        if clrn = '0' then qstate <= '0';
        elsif prn = '0' then qstate <= '1';
        elsif clk = '1' and clk'event then
            qstate <= (j and not qstate) or (not k and qstate);
        end if;
end process;

Q <= qstate;
QN <= NOT qstate;

END ff_jk_arch;