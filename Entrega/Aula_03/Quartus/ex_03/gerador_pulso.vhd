-- Salve como: gerador_pulso_s.vhd
LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

ENTITY gerador_pulso_s IS
    PORT (
        clk_in        : IN  std_logic; -- Entrada do clock de 50 MHz
        reset         : IN  std_logic; -- Entrada de reset
        pulso_1s_out  : OUT std_logic  -- Saída do pulso de 1 Hz (enable)
    );
END ENTITY gerador_pulso_s;

ARCHITECTURE rtl OF gerador_pulso_s IS
    SIGNAL cout_wire : std_logic;
BEGIN

    -- Instância do LPM_COUNTER que conta até 50 milhões
    divisor_gigante : lpm_counter
        GENERIC MAP (
            LPM_WIDTH      => 26,
            LPM_MODULUS    => 50000000
        )
        PORT MAP (
            clock => clk_in,
            aclr  => reset,
            cout  => cout_wire
        );

    pulso_1s_out <= cout_wire;

END ARCHITECTURE rtl;