-------------------- ------------------------------------------------------------
-- UTFPR - Universidade Tecnológica Federal do Paraná - Curitiba - PR
-- Projeto  : Prática 5 - Cronômetro
-- Circuito : Contador assíncrono ascendente módulo 16
-- Arquivo  : cnt_up_mod16_vhdl.vhd
-- Autor    : prof. Gortan
-- Data     : Outubro 2021
--------------------------------------------------------------------------------
-- Descrição :
-- Implementa um contador assíncrono ascendente módulo 16
-- Utiliza ffs tipo D com resposta a flanco positivo do clock e clear e preset
-- assíncronos ativos em alto (componente dff_vhdl)
--------------------------------------------------------------------------------

--============================= Nível Superior: =========================================
library ieee;
  use ieee.std_logic_1164.all;

entity cnt_up_mod16_vhdl is
  port(
    clk, z  : in  std_logic;					-- entradas clk, rst
    q       : out std_logic_vector(3 downto 0)	-- saída q3 até q0
 );
end cnt_up_mod16_vhdl;

architecture cnt_up_mod16_arch of cnt_up_mod16_vhdl is
	signal zn, rts: std_logic;
	signal qn: std_logic_vector(3 downto 0);	-- liga qn com d
	component dff_vhdl is
		port
		(
			d, clk, prs, clr	: in  std_logic;	-- entradas: dado, clk, preset e clear
			q, qn				: out std_logic		-- saídas:   q e q invertido
		);
	end component;
begin
	zn <= not z;
	rts <= -- zn or (qn(1) and qn(3))
	ff_d0: dff_vhdl port map(d => qn(0), prs => '0', clr => rts, clk => clk,   q => q(0), qn => qn(0));
	ff_d1: dff_vhdl port map(d => qn(1), prs => '0', clr => rts, clk => qn(0), q => q(1), qn => qn(1));
	ff_d2: dff_vhdl port map(d => qn(2), prs => '0', clr => rts, clk => qn(1), q => q(2), qn => qn(2));
	ff_d3: dff_vhdl port map(d => qn(3), prs => '0', clr => rts, clk => qn(2), q => q(3), qn => qn(3));

end cnt_up_mod16_arch;

