library ieee;
  use ieee.std_logic_1164.all;
  --use ieee.numeric_std.all;

entity divisor is
	generic(divisor_50M: integer := 25000000;
				divisor_50M2: integer := 25000);
	port(
		clk_in					: in std_logic;
		clk_out1, clk_out2	: out std_logic
		);
end divisor;

architecture divid of divisor is
signal temp1, temp2: std_logic := '0';

begin
	P_div: process(clk_in)
	variable count1: integer range 0 to divisor_50M;
	variable count2: integer range 0 to divisor_50M2;
	
	begin
		if clk_in' event and clk_in = '1' then
			count1 := count1 + 1;
			count2 := count2 + 1;
			if (count1 = divisor_50M) then
				temp1 <= not temp1;
				count1 := 0;
			end if;
			if (count2 = divisor_50M2) then
				temp2 <= not temp2;
				count2 := 0;
			end if;
		end if;
	end process P_div;
	clk_out1 <= temp1;
	clk_out2 <= temp2;

end divid;