--------------------------------------------------------------------------------
-- VERSAO LOGICA
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity ex_03_c_log is
    port(
        T, CLRN, PRN, CLK : in  std_logic;      -- CLK, T e clear e preset

        Q, QN            : out std_logic      -- Saídas Q e Q invertido
    );
end ex_03_c_log;

architecture ff_t_arch of ex_03_c_log is

    signal qstate: std_logic;
begin
    process(clk, prn, clrn)
    begin
        if clrn = '0' then qstate <= '0';
        elsif prn = '0' then qstate <= '1';
        elsif clk = '1' and clk'event then qstate <= T xor qstate;
        end if;
    end process;

    q <= qstate;
    qn <= not qstate;

end ff_t_arch;