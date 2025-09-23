LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- A entidade agora reflete as entradas físicas da placa
ENTITY Aula_03_ex_03 IS
  PORT (
    CLOCK_50MHZ : IN  std_logic;                 -- Clock principal de 50MHz
    RESET_N     : IN  std_logic;                 -- Botão de reset (geralmente ativo em baixo, por isso "_N")
    c_7s        : OUT std_logic_vector(6 DOWNTO 0) -- Saída para o display
  );
END Aula_03_ex_03;

ARCHITECTURE structural OF Aula_03_ex_03 IS

  -- Sinal para conectar a saída do gerador de pulso à entrada do contador
  SIGNAL pulso_enable_1s : std_logic;

  -- Sinal interno para o valor do contador (isso você já tinha)
  SIGNAL cnt_i : std_logic_vector(3 DOWNTO 0);
  
  -- Sinal para o reset. LPM_COUNTER usa reset ativo ALTO.
  -- Se seu botão é ativo BAIXO (RESET_N), precisamos inverter.
  SIGNAL reset_ativo_alto : std_logic;


  -------------------------------------------------------
  -- DECLARAÇÃO DOS COMPONENTES QUE VAMOS USAR
  -------------------------------------------------------

  -- 1. Componente que gera o pulso de 1Hz (o que criamos no Passo 1)
  COMPONENT gerador_pulso_s IS
    PORT (
        clk_in        : IN  std_logic;
        reset         : IN  std_logic;
        pulso_1s_out  : OUT std_logic
    );
  END COMPONENT;

  -- 2. Componente do seu contador hexadecimal (MODIFICADO no Passo 2)
  COMPONENT cnt_1s IS
    PORT (
      clk_en : IN  STD_LOGIC;  -- << NOME NOVO
      clock  : IN  STD_LOGIC;
      q      : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;

BEGIN

  -- Inverte o sinal do botão de reset se ele for ativo em baixo
  reset_ativo_alto <= NOT RESET_N;
  
  -------------------------------------------------------
  -- INSTÂNCIA DOS COMPONENTES (A "FIAÇÃO")
  -------------------------------------------------------
  
  -- 1. Instância do gerador de pulso
  GeradorDePulso: gerador_pulso_s
    PORT MAP (
      clk_in        => CLOCK_50MHZ,
      reset         => reset_ativo_alto,
      pulso_1s_out  => pulso_enable_1s -- A saída de pulso vai para o nosso sinal interno
    );
    
  -- 2. Instância do contador hexadecimal do display
  ContadorDoDisplay: cnt_1s
    PORT MAP (
      clock  => CLOCK_50MHZ,
      clk_en => pulso_enable_1s,  -- << NOME CORRETO
      q      => cnt_i
    );

  -------------------------------------------------------
  -- DECODIFICADOR (permanece exatamente igual)
  -------------------------------------------------------
  WITH cnt_i SELECT
    c_7s <= "1111110" WHEN "0000", -- 0
            "0110000" WHEN "0001", -- 1
            "1101101" WHEN "0010", -- 2
            "1111001" WHEN "0011", -- 3
            "0110011" WHEN "0100", -- 4
            "1011011" WHEN "0101", -- 5
            "1011111" WHEN "0110", -- 6
            "1110000" WHEN "0111", -- 7
            "1111111" WHEN "1000", -- 8
            "1110011" WHEN "1001", -- 9
            "1110111" WHEN "1010", -- A
            "0011111" WHEN "1011", -- b
            "1001110" WHEN "1100", -- C
            "0111101" WHEN "1101", -- d
            "1001111" WHEN "1110", -- E
            "1000111" WHEN "1111", -- F
            "0000000" WHEN OTHERS; -- Segurança

END structural;