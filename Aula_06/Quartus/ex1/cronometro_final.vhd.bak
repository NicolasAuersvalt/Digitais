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

    component divider is
        generic(divisor: integer := 5);
        port(
            clk_in  : in  std_logic;
            clk_out : out std_logic
        );
    end component;

    component debounce_v1 is
        generic(counter_size: integer := 1);
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

    -- 1 Hz
    U1: divider
        generic map(divisor => 25000000)
        port map(
            clk_in  => CLK_50MHz,
            clk_out => s_clk_1hz
        );

    -- 100 Hz
    U2: divider
        generic map(divisor => 250000)
        port map(
            clk_in  => CLK_50MHz,
            clk_out => s_clk_100hz
        );

    -- Debouncers
    U3: debounce_v1 
        generic map(counter_size => 4) -- Ex: 4 ciclos de 10ms = 40ms
        port map(clk => s_clk_100hz, button => BTN_SST, result => s_sst_limpo);

    U4: debounce_v1 
        generic map(counter_size => 4)
        port map(clk => s_clk_100hz, button => BTN_Z,   result => s_z_limpo);

    U5: debounce_v1 
        generic map(counter_size => 4)
        port map(clk => s_clk_100hz, button => BTN_UD,  result => s_ud_limpo);

    -- Núcleo do cronômetro
    U6: cronometro_sincrono
        port map(
            clk   => s_clk_1hz,
            z     => s_z_limpo,
            ud    => s_ud_limpo,
            sst   => s_sst_limpo,
            qu_7s => D7S_U,
            qd_7s => D7S_D
        );

    -- Pontos decimais
    DP_DEZ  <= s_clk_1hz;
    DP_UNID <= not s_clk_1hz;

end arch;
