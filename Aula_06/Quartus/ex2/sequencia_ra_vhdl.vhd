library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sequencia_ra_vhdl is
    port (
        clk, start : in  std_logic;
        msd, lsd   : out std_logic_vector(6 downto 0)                
    );
end sequencia_ra_vhdl;

architecture sequencia_qualquer_arch of sequencia_ra_vhdl is
    signal contador: std_logic_vector(4 downto 0) := "00000";
    signal rodando: std_logic := '0';
    signal start_last: std_logic := '0';
begin
    processo: process(clk, start)
    begin
        if rising_edge(clk) then
            -- Detecção de borda de subida do botão start
            if start = '1' and start_last = '0' and rodando = '0' then
                rodando <= '1';
                contador <= "00000";
            end if;
            start_last <= start;
            
            -- Sequência em execução
            if rodando = '1' then
                if contador < "10000" then  -- 16 passos (0 a 15)
                    contador <= contador + "00001";
                else
                    rodando <= '0';  -- Volta ao repouso
                    contador <= "00000";
                end if;
            end if;
        end if;
    end process processo;

    -- Lógica combinacional para displays
    sequencia: process(contador, rodando)
    begin
        if rodando = '0' then
            -- Estado de repouso
            msd <= "0000000";  -- Apagado
            lsd <= "0000001";  -- Hífen (-)
        else
            -- Sequência (RA PAR): 2T 6 2T 4 1T 7 6T - 6T 7 1T 4 2T 6 2T -
            case contador is
                when "00000" => msd <= "0001111"; lsd <= "1101101"; -- T, 2
                when "00001" => msd <= "0000000"; lsd <= "1011111"; -- -, 6
                when "00010" => msd <= "0001111"; lsd <= "1101101"; -- T, 2
                when "00011" => msd <= "0000000"; lsd <= "0110011"; -- -, 4
                when "00100" => msd <= "0001111"; lsd <= "0110000"; -- T, 1
                when "00101" => msd <= "0000000"; lsd <= "1110000"; -- -, 7
                when "00110" => msd <= "0001111"; lsd <= "1011111"; -- T, 6
                when "00111" => msd <= "0000000"; lsd <= "0000001"; -- -, -
                when "01000" => msd <= "0001111"; lsd <= "1011111"; -- T, 6
                when "01001" => msd <= "0000000"; lsd <= "1110000"; -- -, 7
                when "01010" => msd <= "0001111"; lsd <= "0110000"; -- T, 1
                when "01011" => msd <= "0000000"; lsd <= "0110011"; -- -, 4
                when "01100" => msd <= "0001111"; lsd <= "1101101"; -- T, 2
                when "01101" => msd <= "0000000"; lsd <= "1011111"; -- -, 6
                when "01110" => msd <= "0001111"; lsd <= "1101101"; -- T, 2
                when "01111" => msd <= "0000000"; lsd <= "0000001"; -- -, -
                when others  => msd <= "0000000"; lsd <= "0000001"; -- Repouso
            end case;
        end if;
    end process sequencia;

end sequencia_qualquer_arch;