--------------------------------------------------------------------------------
-- Project :
-- File    :
-- Autor   :
-- Date    :
--
--------------------------------------------------------------------------------
-- Description :
-- Flip-Flop JK com resposta a flanco positivo (versão original ajustada)
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex_03_b_des IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    J, K, CLRN, PRN, CLK      : IN  std_logic;                  -- input bit example
  ------------------------------------------------------------------------------
  --Insert output ports below
    Q, QN         : OUT std_logic                   -- output bit example
    );
END ex_03_b_des;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE ff_jk_arch OF ex_03_b_des IS


signal qstate: std_logic;

BEGIN
    process(clk,prn,clrn)
    BEGIN
        if clrn = '0' then qstate <= '0';
        elsif prn = '0' then qstate <= '1';
        -- Trocado 'clk = '0'' por 'clk = '1'' para detectar o flanco de SUBIDA (positivo).
        elsif clk = '1' and clk'event then
            if j = '1' and k = '1' then qstate <= not qstate;
            elsif j = '1' and k = '0' then qstate <= '1';
            elsif j = '0' and k = '1' then qstate <= '0';
        end if;
    end if;
end process;

Q <= qstate;
QN <= NOT qstate;

END ff_jk_arch;