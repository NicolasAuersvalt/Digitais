
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
	ff_d0: dff_vhdl port map(d => qn(0), prs => '0', clr => zn, clk => clk,   q => q(0), qn => qn(0));
	ff_d1: dff_vhdl port map(d => qn(1), prs => '0', clr => zn, clk => qn(0), q => q(1), qn => qn(1));
	ff_d2: dff_vhdl port map(d => qn(2), prs => '0', clr => zn, clk => qn(1), q => q(2), qn => qn(2));
	ff_d3: dff_vhdl port map(d => qn(3), prs => '0', clr => zn, clk => qn(2), q => q(3), qn => qn(3));

end cnt_up_mod16_arch;

