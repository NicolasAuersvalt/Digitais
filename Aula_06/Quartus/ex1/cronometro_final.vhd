library ieee;
use ieee.std_logic_1164.all;

entity cronometro_final is
    port(
        CLK_50MHz : in  std_logic;
        BTN_SST   : in  std_logic;
        BTN_Z     : in  std_logic;
        BTN_UD    : in  std_logic;

        D7S_U     : out std_logic_vector(6 downto 0);
        D7S_D     : out std_logic_vector(6 downto 0);

        DP_UNID   : out std_logic;
        DP_DEZ    : out std_logic
    );
end cronometro_final;

architecture arch of cronometro_final is

    -- Componente Divisor (Compativel com a arquitetura 'divid' do seu log)
    component divisor is
        generic(divisor_50M: integer := 25000000; divisor_50M2: integer := 250000);
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

    component cronometro_sincrono is
        port(
            clk, z, ud, sst : in  std_logic;
            qu_7s, qd_7s    : out std_logic_vector(6 downto 0)
        );
    end component;

    signal s_clk_1hz   : std_logic;
    signal s_clk_100hz : std_logic;

    signal s_sst_limpo : std_logic;
    signal s_z_limpo   : std_logic;
    signal s_ud_limpo  : std_logic;

begin

    -- Instancia o divisor duplo (gera 1Hz e 100Hz simultaneamente)
    U1: divisor
        generic map(divisor_50M => 25000000, divisor_50M2 => 250000)
        port map(
            clk_in   => CLK_50MHz, 
            clk_out1 => s_clk_1hz,   
            clk_out2 => s_clk_100hz 
        );

    -- Debouncers (Invertendo a entrada pois botoes sao geralmente ativos em 0)
    U3: debounce_v1 
        generic map(counter_size => 4) 
        port map(clk => s_clk_100hz, button => not BTN_SST, result => s_sst_limpo);

    U4: debounce_v1 
        generic map(counter_size => 4)
        port map(clk => s_clk_100hz, button => not BTN_Z,   result => s_z_limpo);

    U5: debounce_v1 
        generic map(counter_size => 4)
        port map(clk => s_clk_100hz, button => not BTN_UD,  result => s_ud_limpo);

    -- Conexao com seu codigo original
    -- Usamos o clock de 1Hz na entrada CLK para que ele conte corretamente
    U6: cronometro_sincrono
        port map(
            clk   => s_clk_1hz,
            z     => s_z_limpo,
            ud    => s_ud_limpo,
            sst   => s_sst_limpo,
            qu_7s => D7S_U,
            qd_7s => D7S_D
        );

    DP_DEZ  <= s_clk_1hz;
    DP_UNID <= not s_clk_1hz;

end arch;