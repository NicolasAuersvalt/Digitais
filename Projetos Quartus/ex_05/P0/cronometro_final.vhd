library ieee;
use ieee.std_logic_1164.all;

entity cronometro_final is
    port(
        -- Entradas da Placa (Pinos Físicos)
        CLK_50MHz : in  std_logic;
        BTN_SST   : in  std_logic; -- Mapeado para "CH1 - Sinal de start/stop" [cite: 243]
        BTN_Z     : in  std_logic; -- Mapeado para "CH2 - Tecla Z" [cite: 244]
        SW_UD     : in  std_logic; -- Mapeado para "CH4 - Sinal up/dn" [cite: 245]
        
        -- Saídas para os Displays (Pinos Físicos)
        DISPLAY_UNID : out std_logic_vector(6 downto 0); -- (g,f,e,d,c,b,a)
        DISPLAY_DEZ  : out std_logic_vector(6 downto 0); -- (g,f,e,d,c,b,a)
        
        -- NOVAS SAÍDAS (conforme Aula-17.pdf)
        DP_UNID      : out std_logic; -- "dp display 1" (clock 1s invertido) [cite: 247]
        DP_DEZ       : out std_logic; -- "dp display 2" (clock 1s) [cite: 246]
        LED_PROBE    : out std_logic  -- "Led do kit" (ponta de prova) [cite: 248]
    );
end cronometro_final;

architecture arch of cronometro_final is

    -- COMPONENTE 1: Divisor (basic_divider.vhd)
    component divider is
        generic(divisor: integer := 5);
        port(
            clk_in  : in  std_logic;
            clk_out : out std_logic
        );
    end component;
    
    -- COMPONENTE 2: Debouncer (debounce_v1.vhd)
    component debounce_v1 is
        generic( counter_size  :  INTEGER := 1);
        port(
            clk     : IN  STD_LOGIC;
            button  : IN  STD_LOGIC;
            result  : OUT STD_LOGIC
        );
    end component;

    -- COMPONENTE 3: Contador (cnt_up_mod16_vhdl)
    component cnt_up_mod16_vhdl is
		 port(
			  clk, z  : in  std_logic;
			  q       : out std_logic_vector(3 downto 0)
		 );
	end component;


    -- COMPONENTE 4: Decodificador 7-Segmentos (dec_7seg.vhd)
    component dec_7seg is
        port(
            bin_in  : in  std_logic_vector(3 downto 0);
            seg_out : out std_logic_vector(6 downto 0)
        );
    end component;
    
    -- Sinais internos ("fios" para ligar os componentes)
    signal s_clk_1hz    : std_logic; -- Clock de 1s para o contador
    signal s_clk_100hz  : std_logic; -- Clock de 10ms (100Hz) para o debouncer
    signal s_sst_limpo  : std_logic; -- Nível estável (ativo-alto) do botão SST
    signal s_z_limpo    : std_logic; -- Nível estável (ativo-alto) do botão Z
    signal s_ud_limpo   : std_logic; -- Nível estável da chave UD
    signal s_qu_bin     : std_logic_vector(3 downto 0); -- Saída binária (unidades)
    signal s_qd_bin     : std_logic_vector(3 downto 0); -- Saída binária (dezenas)

begin

    -- Instância 1a: Divisor para 1 Hz (T=1s)
    U1_Div_1Hz: divider
        generic map( divisor => 25000000 )
        port map(
            clk_in  => CLK_50MHz,
            clk_out => s_clk_1hz
        );

    -- Instância 1b: Divisor para 100 Hz (T=10ms)
    U2_Div_100Hz: divider
        generic map( divisor => 250000 )
        port map(
            clk_in  => CLK_50MHz,
            clk_out => s_clk_100hz
        );

    -- Instância 2a: Debouncer para o botão Start/Stop (CH1)
    U3_Debounce_SST: debounce_v1
        generic map( counter_size => 1 )
        port map(
            clk     => s_clk_100hz,
            button  => BTN_SST,
            result  => s_sst_limpo
        );

    -- Instância 2b: Debouncer para o botão Zerar (CH2)
    U4_Debounce_Z: debounce_v1
        generic map( counter_size => 1 )
        port map(
            clk     => s_clk_100hz,
            button  => BTN_Z,
            result  => s_z_limpo
        );

    -- Instância 2c: Debouncer para a chave Up/Down (CH4)
    U5_Debounce_UD: debounce_v1
        generic map( counter_size => 1 )
        port map(
            clk     => s_clk_100hz,
            button  => SW_UD,
            result  => s_ud_limpo
        );

    -- Instância 3: Núcleo do Contador (P12 corrigido)
    U6_Contador: cnt_up_mod16_vhdl
		 port map(
			  clk => s_clk_1hz,
			  z   => s_z_limpo,
			  q   => s_qu_bin
		 );


    -- Instância 4a: Decodificador das Unidades
    U7_Dec_Unid: dec_7seg
        port map(
            bin_in  => s_qu_bin,
            seg_out => DISPLAY_UNID
        );

    -- NOVAS ATRIBUIÇÕES (conforme Aula-17.pdf)
    DP_DEZ    <= s_clk_1hz;     -- "dp display 2" (clock 1s) [cite: 246]
    DP_UNID   <= not s_clk_1hz; -- "dp display 1" (clock 1s invertido) [cite: 247]
    LED_PROBE <= s_clk_100hz;  -- "Led do kit" (ponta de prova) [cite: 248]

end arch;