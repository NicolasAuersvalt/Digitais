--------------------------------------------------------------------------------
-- Arquivo : chained_divider.vhd
-- Descrição : Divisor de frequência em cadeia (Cascata)
--             50MHz -> 1kHz -> 100Hz -> 1Hz
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity chained_divider is
    generic(
        -- Valores padrão para clock de entrada de 50 MHz
        N1 : integer := 25000; -- Divisor para gerar 1 kHz (1 ms)
        N2 : integer := 5;     -- Divisor para gerar 100 Hz (10 ms)
        N3 : integer := 50     -- Divisor para gerar 1 Hz (1 s)
    );
    port(
        clk_in   : in  std_logic; -- Clock de 50 MHz da placa
        clk_10ms : out std_logic; -- Saída de 100 Hz (para debounce)
        clk_1s   : out std_logic  -- Saída de 1 Hz (para visualização)
    );
end chained_divider;

architecture behavioral of chained_divider is

    -- Sinais internos para os clocks intermediários
    signal s_clk_1ms  : std_logic := '0';
    signal s_clk_10ms : std_logic := '0';
    signal s_clk_1s   : std_logic := '0';

begin

    -- Estágio 1: 50 MHz -> 1 kHz (Periodo 1ms)
    -- Toggle a cada 25.000 ciclos (25.000 * 20ns = 0.5ms) -> Periodo total 1ms
    process(clk_in)
        variable cnt1 : integer range 0 to N1 := 0;
    begin
        if rising_edge(clk_in) then
            if cnt1 = N1 - 1 then
                s_clk_1ms <= not s_clk_1ms;
                cnt1 := 0;
            else
                cnt1 := cnt1 + 1;
            end if;
        end if;
    end process;

    -- Estágio 2: 1 kHz -> 100 Hz (Periodo 10ms)
    -- Usa o s_clk_1ms gerado acima como clock
    process(s_clk_1ms)
        variable cnt2 : integer range 0 to N2 := 0;
    begin
        if rising_edge(s_clk_1ms) then
            if cnt2 = N2 - 1 then
                s_clk_10ms <= not s_clk_10ms;
                cnt2 := 0;
            else
                cnt2 := cnt2 + 1;
            end if;
        end if;
    end process;

    -- Estágio 3: 100 Hz -> 1 Hz (Periodo 1s)
    -- Usa o s_clk_10ms gerado acima como clock
    process(s_clk_10ms)
        variable cnt3 : integer range 0 to N3 := 0;
    begin
        if rising_edge(s_clk_10ms) then
            if cnt3 = N3 - 1 then
                s_clk_1s <= not s_clk_1s;
                cnt3 := 0;
            else
                cnt3 := cnt3 + 1;
            end if;
        end if;
    end process;

    -- Atribui os sinais internos às saídas
    clk_10ms <= s_clk_10ms;
    clk_1s   <= s_clk_1s;

end behavioral;