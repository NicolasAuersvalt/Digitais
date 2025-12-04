-- ARQUIVO: detector_sequencia_top.vhd
library ieee;
use ieee.std_logic_1164.all;

entity detector_sequencia_top is
    port(
        -- Entradas Físicas
        CLK_50MHz : in  std_logic;
        BTN_RST   : in  std_logic; -- Botão de Reset (ativo-baixo)
        SW_SEQ_IN : in  std_logic; -- Chave de entrada de dados (0 ou 1)
        
        -- Saídas Físicas (Displays)
        DISPLAY_ESTADO : out std_logic_vector(6 downto 0); -- Mostra em qual estado está (0-6)
        DISPLAY_RESULT : out std_logic_vector(6 downto 0)  -- Mostra "1" se detectou, "0" se não
    );
end detector_sequencia_top;

architecture arch of detector_sequencia_top is

    -- COMPONENTE 1: Divisor de Clock (Gera 1Hz)
    component chained_divider is
        Generic (N1, N2, N3 : integer);
        port (clk_in : in std_logic; clk_10ms, clk_1s : out std_logic);
    end component;

    -- COMPONENTE 2: Debouncer (Para o Reset)
    component debounce_v1 is
        generic( counter_size : INTEGER := 1);
        port(clk : IN STD_LOGIC; button : IN STD_LOGIC; result : OUT STD_LOGIC);
    end component;

    -- COMPONENTE 3: Seu Detector de Sequência (O arquivo que você enviou)
    component det_seq_100010 is
        port(
            rst, seq_in, clock : in  std_logic;
            det_out            : out std_logic;
            est_out            : out std_logic_vector(3 downto 0)
        );
    end component;

    -- COMPONENTE 4: Decodificador 7-Seg
    component dec_7seg is
        port(bin_in : in std_logic_vector(3 downto 0); seg_out : out std_logic_vector(6 downto 0));
    end component;

    -- Sinais Internos
    signal s_clk_1hz   : std_logic;
    signal s_clk_10ms  : std_logic;
    signal s_rst_limpo : std_logic;
    
    -- Sinais do Detector
    signal s_det_out   : std_logic;
    signal s_est_out   : std_logic_vector(3 downto 0);
    signal s_result_vec: std_logic_vector(3 downto 0); -- Para converter o bit único em vetor pro display

begin

    -- 1. Divisor de Frequência
    U1_DIV: chained_divider
        generic map(N1 => 25000, N2 => 5, N3 => 50) -- Ajuste para 1Hz
        port map(clk_in => CLK_50MHz, clk_10ms => s_clk_10ms, clk_1s => s_clk_1hz);

    -- 2. Debouncer do Reset
    U2_DEB_RST: debounce_v1
        port map(clk => s_clk_10ms, button => BTN_RST, result => s_rst_limpo);

    -- 3. Instância do SEU Detector
    U3_DETECTOR: det_seq_100010
        port map(
            rst     => s_rst_limpo,  -- Reset limpo
            seq_in  => SW_SEQ_IN,    -- Entrada da chave
            clock   => s_clk_1hz,    -- Clock lento (1s) para visualizar
            det_out => s_det_out,    -- Resultado (1 bit)
            est_out => s_est_out     -- Estado atual (4 bits)
        );

    -- 4. Display de Estado (Mostra 0, 1, 2... 6)
    U4_DEC_ESTADO: dec_7seg
        port map(bin_in => s_est_out, seg_out => DISPLAY_ESTADO);

    -- 5. Display de Resultado (Mostra 0 ou 1)
    s_result_vec <= "000" & s_det_out; -- Concatena 3 zeros com o bit de saída
    U5_DEC_RESULT: dec_7seg
        port map(bin_in => s_result_vec, seg_out => DISPLAY_RESULT);

end arch;