library ieee;
use ieee.std_logic_1164.all;

entity dec_7seg is
    port(
        bin_in  : in  std_logic_vector(3 downto 0);
        seg_out : out std_logic_vector(6 downto 0) -- (g,f,e,d,c,b,a)
    );
end dec_7seg;

architecture arch of dec_7seg is
begin
    -- Cátodo Comum (LED acende com '1')
    with bin_in select
        seg_out <= 
            "0111111" when "0000", -- 0
            "0000110" when "0001", -- 1
            "1011011" when "0010", -- 2
            "1001111" when "0011", -- 3
            "1100110" when "0100", -- 4
            "1101101" when "0101", -- 5
            "1111101" when "0110", -- 6
            "0000111" when "0111", -- 7
            "1111111" when "1000", -- 8
            "1101111" when "1001", -- 9
            "0000000" when others; -- Apagado
end arch;