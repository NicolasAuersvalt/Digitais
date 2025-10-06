LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exercicio3c_top IS
    PORT (
        -- Entradas Físicas (Pinos da Placa)
        CLOCK_50MHZ  : IN  std_logic;
        KEY_T        : IN  std_logic; -- Agora temos a entrada T
        KEY_CLK      : IN  std_logic;
        KEY_PRN      : IN  std_logic;
        KEY_CLRN     : IN  std_logic;
        
        -- Saídas Físicas (Pinos da Placa)
        LED_Q        : OUT std_logic;
        LED_QN       : OUT std_logic
    );
END exercicio3c_top;

ARCHITECTURE structural OF exercicio3c_top IS

    -- Declaração dos componentes
    COMPONENT divider IS
        GENERIC (divisor : INTEGER);
        PORT ( clk_in  : IN  std_logic; clk_out : OUT std_logic );
    END COMPONENT;

    COMPONENT debounce_v1 IS
        PORT ( clk : IN  std_logic; button : IN  std_logic; result : OUT std_logic );
    END COMPONENT;

    -- *** MUDANÇA AQUI ***
    -- Componente para o seu Flip-Flop T 
    COMPONENT ex_03_c_des IS
        PORT (
            T, CLRN, PRN, CLK : IN  std_logic;
            Q, QN              : OUT std_logic
        );
    END COMPONENT;

    -- Sinais internos para conectar os componentes
    SIGNAL slow_clk  : std_logic;
    SIGNAL clean_clk : std_logic;

BEGIN

    -- 1. Instância do Divisor (sem alterações)
    Divisor_inst: divider
        GENERIC MAP (divisor => 250000)
        PORT MAP ( clk_in  => CLOCK_50MHZ, clk_out => slow_clk );

    -- 2. Instância do Debouncer (sem alterações)
    Debouncer_inst: debounce_v1
        PORT MAP ( clk => slow_clk, button => KEY_CLK, result => clean_clk );

    -- 3. *** MUDANÇA AQUI ***
    -- Instância do Flip-Flop T
    FlipFlop_T_inst: ex_03_c_des
        PORT MAP (
            CLK  => clean_clk,
            T    => KEY_T, -- Conecta a porta T ao botão KEY_T
            PRN  => KEY_PRN,
            CLRN => KEY_CLRN,
            Q    => LED_Q,
            QN   => LED_QN
        );

END structural;