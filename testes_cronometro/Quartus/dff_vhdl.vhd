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

