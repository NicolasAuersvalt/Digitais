-- ARQUIVO: cnt_up_mod16_vhdl.vhd
-- (Contador P0, baseado no Lab_exemplo.circ [cite: 524-533])

library ieee;
use ieee.std_logic_1164.all;

entity cnt_up_mod16_vhdl is
  port(
    clk, z  : in  std_logic;					-- entradas clk, rst
    q       : out std_logic_vector(3 downto 0)	-- saída q3 até q0
 );
end cnt_up_mod16_vhdl;

architecture cnt_up_mod16_arch of cnt_up_mod16_vhdl is
	signal zn: std_logic;
	signal qn: std_logic_vector(3 downto 0);
	
	component dff_vhdl is
		port
		(
			d, clk, prs, clr	: in  std_logic;	
			q, qn				: out std_logic		
		);
	end component;
begin
	-- O 'z' que entra (do debouncer) é ativo-alto.
	-- O 'clr' do dff_vhdl é ativo-alto.
	-- Portanto, passamos 'z' diretamente.
	
    -- O contador é assíncrono (ripple counter)
	ff_d0: dff_vhdl port map(d => qn(0), prs => '0', clr => z, clk => clk,   q => q(0), qn => qn(0));
	ff_d1: dff_vhdl port map(d => qn(1), prs => '0', clr => z, clk => qn(0), q => q(1), qn => qn(1));
	ff_d2: dff_vhdl port map(d => qn(2), prs => '0', clr => z, clk => qn(1), q => q(2), qn => qn(2));
	ff_d3: dff_vhdl port map(d => qn(3), prs => '0', clr => z, clk => qn(2), q => q(3), qn => qn(3));
	
end cnt_up_mod16_arch;