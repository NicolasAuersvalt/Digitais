LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exercicio3_top IS
    PORT (
        -- Entradas Físicas (Pinos da Placa)
        CLOCK_50MHZ  : IN  std_logic; -- Clock de 50MHz da placa [cite: 105, 107]
        KEY_J        : IN  std_logic;
        KEY_K        : IN  std_logic;
        KEY_CLK      : IN  std_logic; -- O botão de clock com repique [cite: 112, 113]
        KEY_CLRN     : IN  std_logic;
        
        -- Saídas Físicas (Pinos da Placa)
        LED_Q        : OUT std_logic;
        LED_QN       : OUT std_logic
    );
END exercicio3_top;

ARCHITECTURE structural OF exercicio3_top IS

    -- Declaração dos COMPONENTES que vamos conectar
    COMPONENT divider IS
        GENERIC (divisor : INTEGER);
        PORT (
            clk_in  : IN  std_logic;
            clk_out : OUT std_logic
        );
    END COMPONENT;

    -- O nome da entidade no arquivo debounce.vhd é debounce_v1
    COMPONENT debounce_v1 IS
        PORT (
            clk    : IN  std_logic;
            button : IN  std_logic;
            result : OUT std_logic
        );
    END COMPONENT;

    COMPONENT ex_03_b_des IS
        PORT (
            J, K, CLRN, PRN, CLK : IN  std_logic;
            Q, QN                : OUT std_logic
        );
    END COMPONENT;

    -- SINAIS internos para conectar os componentes ("fios virtuais") [cite: 104]
    SIGNAL slow_clk  : std_logic; -- Fio para o clock lento de 100 Hz [cite: 108]
    SIGNAL clean_clk : std_logic; -- Fio para o clock limpo, sem repique 

BEGIN

    -- 1. Instancia o Divisor para gerar 100 Hz a partir de 50 MHz
    Divisor_inst: divider
        GENERIC MAP (divisor => 250000)
        PORT MAP (
            clk_in  => CLOCK_50MHZ, -- Conecta a entrada do divisor ao clock da placa
            clk_out => slow_clk     -- A saída do divisor vai para o sinal slow_clk
        );

    -- 2. Instancia o Debouncer
    Debouncer_inst: debounce_v1
        PORT MAP (
            clk    => slow_clk,     -- Usa o clock lento como referência
            button => KEY_CLK,      -- Monitora o botão de clock com repique
            result => clean_clk     -- Gera o pulso de clock limpo
        );

    -- 3. Instancia o Flip-Flop
    FlipFlop_inst: ex_03_b_des
        PORT MAP (
            CLK  => clean_clk,      -- Usa o clock limpo vindo do debouncer!
            J    => KEY_J,
            K    => KEY_K,
            PRN  => '1',            -- Preset desativado
            CLRN => KEY_CLRN,
            Q    => LED_Q,
            QN   => LED_QN
        );

END structural;