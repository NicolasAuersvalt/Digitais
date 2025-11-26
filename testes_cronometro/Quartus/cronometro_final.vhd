library ieee;
use ieee.std_logic_1164.all;

entity cronometro_final is
    port(
        CLK_50MHz : in  std_logic;
        BTN_SST   : in  std_logic; -- (Não será usado, mas o pino deve ser atribuído)
        BTN_Z     : in  std_logic;
        SW_UD     : in  std_logic; -- (Não será usado, mas o pino deve ser atribuído)
        
        DISPLAY_UNID : out std_logic_vector(6 downto 0);
        DISPLAY_DEZ  : out std_logic_vector(6 downto 0);
        
        DP_UNID      : out std_logic;
        DP_DEZ       : out std_logic;
        LED_PROBE    : out std_logic
    );
end cronometro_final;

architecture arch of cronometro_final is

    -- Componente Divisor (do chain_divider.vhd)
    component divider is
      generic(divisor_1: integer := 250000;
              divisor_2: integer := 100);
      port(
        clk_in		: in  std_logic;
        clk_out_1	: out std_logic;
        clk_out_2	: out std_logic
        );
    end component;
    
    -- Componente Debouncer (do debounce_v1.vhd)
    component debounce_v1 is
        generic( counter_size  :  INTEGER := 1);
        port(
            clk     : IN  STD_LOGIC;
            button  : IN  STD_LOGIC;
            result  : OUT STD_LOGIC
        );
    end component;

    -- Componente P0 (do cnt_up_mod16_vhdl.vhd)
    component cnt_up_mod16_vhdl is
      port(
        clk, z  : in  std_logic;
        q       : out std_logic_vector(3 downto 0)
     );
    end component;

    -- Componente Decodificador (do dec_7seg.vhd)
    component dec_7seg is
        port(
            bin_in  : in  std_logic_vector(3 downto 0);
            seg_out : out std_logic_vector(6 downto 0)
        );
    end component;
    
    -- Sinais internos
    signal s_clk_1hz    : std_logic;
    signal s_clk_100hz  : std_logic;
    signal s_z_limpo    : std_logic; -- Reset (ativo-alto)
    signal s_qu_bin     : std_logic_vector(3 downto 0);
    signal s_zero       : std_logic_vector(3 downto 0) := "0000";
    -- Sinais (não usados) para evitar erros de "pino flutuante"
    signal s_sst_limpo  : std_logic;
    signal s_ud_limpo   : std_logic;

begin

    -- Instância Divisor (Corrigido)
    U_Divisor_Encadeado: divider
        generic map(
            divisor_1 => 250000, -- Gera 100Hz
            divisor_2 => 50      -- Gera 1Hz
        )
        port map(
            clk_in    => CLK_50MHz,
            clk_out_1 => s_clk_100hz,
            clk_out_2 => s_clk_1hz
        );

    -- Instância Debouncer para Zerar
    U4_Debounce_Z: debounce_v1
        generic map( counter_size => 1 )
        port map(
            clk     => s_clk_100hz,
            button  => BTN_Z,
            result  => s_z_limpo
        );

    -- Instanciamos os outros debouncers para que os pinos BTN_SST e SW_UD
    -- não fiquem "flutuando", embora não usemos as saídas.
    U3_Debounce_SST: debounce_v1
        generic map( counter_size => 1 ) port map(
        clk => s_clk_100hz, button => BTN_SST, result  => s_sst_limpo );
    U5_Debounce_UD: debounce_v1
        generic map( counter_size => 1 ) port map(
        clk => s_clk_100hz, button => SW_UD, result  => s_ud_limpo );

    -- Instância do Contador P0
    U_Contador_P0: cnt_up_mod16_vhdl
        port map(
            clk => s_clk_1hz,  -- Clock de 1 segundo
            z   => s_z_limpo,  -- Reset (ativo-alto)
            q   => s_qu_bin    -- Saída de 4 bits
        );

    -- Instância Decodificador de Unidades (conectado ao P0)
    U7_Dec_Unid: dec_7seg
        port map(
            bin_in  => s_qu_bin,
            seg_out => DISPLAY_UNID
        );
        
    -- Desliga o display de Dezenas
    U8_Dec_Dez: dec_7seg
        port map(
            bin_in  => s_zero, -- Sempre "0000"
            seg_out => DISPLAY_DEZ
        );

    -- Saídas de Debug
    DP_DEZ    <= s_clk_1hz;
    DP_UNID   <= not s_clk_1hz;
    LED_PROBE <= s_clk_100hz;

end arch;