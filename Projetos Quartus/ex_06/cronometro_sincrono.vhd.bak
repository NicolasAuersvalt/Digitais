library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity cronometro_sincrono is
    port (
        clk, z, ud, sst : in  std_logic; 
        qu_7s, qd_7s    : out std_logic_vector(6 downto 0)
    );
end cronometro_sincrono;

architecture cronometro_sincrono_arch of cronometro_sincrono is
    signal u : std_logic_vector(3 downto 0);
    signal d : std_logic_vector(2 downto 0);
begin

    proc: process(clk, z)
    begin
        if z = '1' then
            -- Reset assíncrono
            if ud = '1' then
                u <= "0000";
                d <= "000";
            else
                u <= "1001";
                d <= "101";
            end if;
            
        elsif rising_edge(clk) then
            -- Contagem só ocorre se sst = '1'
            if sst = '1' then
                if ud = '1' then
                    -- Contagem progressiva (UP): 00 até 59
                    if u < "1001" then
                        u <= u + "0001";
                    else
                        u <= "0000";
                        if d < "101" then
                            d <= d + "001";
                        else 
                            d <= "000";
                        end if;
                    end if;
                else
                    -- Contagem regressiva (DOWN): 59 até 00
                    if u > "0000" then
                        u <= u - "0001";
                    else
                        u <= "1001";
                        if d > "000" then
                            d <= d - "001";
                        else 
                            d <= "101";
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process proc;

    -- Decodificadores 7 segmentos (unidades)
    with u select
        qu_7s <= "1111110" when "0000",
                 "0110000" when "0001",
                 "1101101" when "0010",
                 "1111001" when "0011",
                 "0110011" when "0100",
                 "1011011" when "0101",
                 "1011111" when "0110",
                 "1110000" when "0111",
                 "1111111" when "1000",
                 "1110011" when "1001",
                 "0000000" when others;

    -- Decodificador 7 segmentos (dezenas)
    with d select
        qd_7s <= "1111110" when "000",
                 "0110000" when "001",
                 "1101101" when "010",
                 "1111001" when "011",
                 "0110011" when "100",
                 "1011011" when "101",
                 "0000000" when others;

end cronometro_sincrono_arch;