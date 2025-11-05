--------------------------------------------------------------------------------
-- UTFPR - Universidade Tecnológica Federal do Paraná - Curitiba - PR
-- Projeto  : Prática 5 - Cronômetro
-- Circuito : Implementação de um FF tipo D
-- Arquivo  : dff_vhdl.vhd
-- Autor    : prof. Gortan
-- Data     : Outubro 2021
--------------------------------------------------------------------------------
-- Descrição :
-- Implementa um flip-flop tipo D para ser usado como componente em outros circ.
-- obs.: para evitar que o Logisim-evolution 3.6.1 altere o nome do componente
--       introduzimos um componente "comps" no início do arquivo e o ff tipo d
--       vem em segundo lugar - No Quartus ele deve ser comentado / apagado
--------------------------------------------------------------------------------

--============================= Módulo comps: ==================================
library ieee;
  use ieee.std_logic_1164.all;

-- Comentar a entity comps e sua architecture quando usado no Quartus
-- Esse primeira entity é só um artifício para evitar que o Logisim
-- altere o nome do componente ff tipo d, que vem depois
entity comps is
  port(    a  : in  std_logic );
end comps;

architecture cmp_arch of comps is
-- Não faz nada:
begin
end cmp_arch;
-- Fim do trecho a comentar/apagar no Quartus

--==================== Componente: =============================================
library ieee;
  use ieee.std_logic_1164.all;

entity dff_vhdl is
  port(
    d, clk, prs, clr	: in  std_logic;	-- entradas: dado, clk, preset e clear
    q, qn				: out std_logic		-- saídas:   q e q invertido
 );
end dff_vhdl;

architecture ff_d of dff_vhdl is

	signal qstate: std_logic;

begin
	process(clk, clr, prs)
	begin
		if clr = '1' then qstate <= '0';
		elsif prs = '1' then qstate <= '1';
		elsif clk = '1' and clk' event then qstate <= d;
		end if;
	end process;
	q <= qstate;
	qn <= not qstate;
end ff_d;

