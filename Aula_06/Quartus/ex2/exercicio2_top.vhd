library ieee;
use ieee.std_logic_1164.all;

entity exercicio2_top is
    port(
        CLK_50MHz : in  std_logic; -- Pino 12
        BTN_START : in  std_logic; -- Pino 50
        BTN_RST   : in  std_logic; -- Pino 52

        D7S_LSD   : out std_logic_vector(6 downto 0); -- Unidade
        D7S_MSD   : out std_logic_vector(6 downto 0); -- Dezena

        DP_LSD    : out std_logic;
        DP_MSD    : out std_logic
    );
end exercicio2_top;

architecture struct of exercicio2_top is

    component divisor is
        generic(divisor_50M: integer := 25000000; divisor_50M2: integer := 25000);
        port(
            clk_in              : in std_logic;
            clk_out1, clk_out2  : out std_logic
        );
    end component;

    component debounce_v1 is
        generic(counter_size: integer := 4);
        port(
            clk    : in  std_logic;
            button : in  std_logic;
            result : out std_logic
        );
    end component;

    component sequencia_ra_vhdl is
        port (
            clk, start : in  std_logic;
            msd, lsd   : out std_logic_vector(6 downto 0)                
        );
    end component;

    signal s_clk_1hz   : std_logic;
    signal s_clk_100hz : std_logic;
    signal s_start_clean : std_logic;

begin

    
    U1: divisor
        generic map(divisor_50M => 25000000, divisor_50M2 => 250000)
        port map(
            clk_in   => CLK_50MHz, 
            clk_out1 => s_clk_1hz,   -- Clock de 1 segundo
            clk_out2 => s_clk_100hz  -- Clock de 100 Hz
        );

    -- Debounce do Botão Start
    U2: debounce_v1
        port map(clk => s_clk_100hz, button => not BTN_START, result => s_start_clean);

 
    U_CORE: sequencia_ra_vhdl
        port map(
            clk   => s_clk_1hz,      
            start => s_start_clean,  
            msd   => D7S_MSD,        
            lsd   => D7S_LSD         
        );

    -- Debug Visual (Pontos decimais piscando)
    DP_LSD <= s_clk_1hz;
    DP_MSD <= not s_clk_1hz;

end struct;