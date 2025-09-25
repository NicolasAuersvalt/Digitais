LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Aula_03_ex_02 IS
  PORT (
    clk  : IN  std_logic;
    clr  : IN  std_logic;
    c_7s : OUT std_logic_vector(6 DOWNTO 0) -- saída para o display
  );
END Aula_03_ex_02;

ARCHITECTURE decode OF Aula_03_ex_02 IS

  -- Sinal interno para receber o valor do contador
  SIGNAL cnt_i : std_logic_vector(3 DOWNTO 0);

  -- Componente gerado pelo LPM_COUNTER (entidade cnt_1s)
  COMPONENT cnt_1s IS
    PORT (
      aclr  : IN  STD_LOGIC;
      clock : IN  STD_LOGIC;
      q     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;

BEGIN

  -- Instância do contador
  cnt : cnt_1s PORT MAP(
    aclr  => not clr,   -- Reset ativo alto → adaptado para sua entrada clr
    clock => clk,
    q     => cnt_i
  );

  -- Decodificador para display de 7 segmentos
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
END decode;
