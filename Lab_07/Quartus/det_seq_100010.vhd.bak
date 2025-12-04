--------------------------------------------------------------------------------
-- UTFPR - Universidade Tecnológica Federal do Paraná - Curitiba - PR
-- Projeto : Detetor de sequência de bits
-- Arquivo : det_100010.vhd
-- Adaptação: Detector de sequência 100010 com Trava (Lock)
--------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity det_seq_100010 is
    port(
    ------------------------------------------------------------------------------
    rst, seq_in, clock  : in  std_logic;                    -- entradas clk e seq
    ------------------------------------------------------------------------------
    det_out             : out std_logic;
    est_out             : out std_logic_vector(3 downto 0) -- display detectado
    );
end det_seq_100010;

--------------------------------------------------------------------------------
architecture detetor of det_seq_100010 is
    -- Adicionado estado G para comportar a sequência de 6 bits e a trava
    type estado is (A, B, C, D, E, F, G);
    signal estado_prs, prx_estado: estado;
    signal idx_estado: integer; 
    
    attribute enum_encoding: string; 
    attribute enum_encoding of estado: type is "sequential";
begin
    ---------------------- Bloco de lógica sequencial: ------------------------
    seq_proc: process(clock,rst)
    begin
        if rst = '1' then estado_prs <= A;
        elsif clock = '1' and clock'event then
            estado_prs <= prx_estado;
        end if;
    end process seq_proc;

    ---------------------- Bloco de lógica combinacional: ----------------------
    -- Sequência Alvo: 1 - 0 - 0 - 0 - 1 - 0
    comb_proc: process(estado_prs,seq_in)
    begin
        case estado_prs is
            -- Estado A: Inicial (0 bits)
            when A =>
                if seq_in = '1' then prx_estado <= B; -- Recebeu 1
                else prx_estado <= A;
                end if;

            -- Estado B: Já tem '1'
            when B =>
                if seq_in = '0' then prx_estado <= C; -- Recebeu 10
                else prx_estado <= B; -- Recebeu 11 (O último 1 serve de início)
                end if;

            -- Estado C: Já tem '10'
            when C =>
                if seq_in = '0' then prx_estado <= D; -- Recebeu 100
                else prx_estado <= B; -- Recebeu 101 (Erro, mas o 1 serve de início)
                end if;

            -- Estado D: Já tem '100'
            when D =>
                if seq_in = '0' then prx_estado <= E; -- Recebeu 1000
                else prx_estado <= B; -- Recebeu 1001 (Erro, mas o 1 serve de início)
                end if;

            -- Estado E: Já tem '1000'
            when E =>
                if seq_in = '1' then prx_estado <= F; -- Recebeu 10001
                else prx_estado <= A; -- Recebeu 10000 (Erro total, reseta)
                end if;

            -- Estado F: Já tem '10001'
            when F =>
                if seq_in = '0' then prx_estado <= G; -- Recebeu 100010 (COMPLETO)
                else prx_estado <= B; -- Recebeu 100011 (Erro, mas o 1 serve de início)
                end if;

            -- Estado G: Detecção Concluída (TRAVA)
            -- Conforme roteiro: "o sistema trava nesse estado"
            when G =>
                prx_estado <= G; -- Mantém no estado G independente da entrada

            when others =>
                prx_estado <= A;
        end case;

        ----------------- Codificação da saída ------------------------
        -- A saída det_out só vai para '1' quando a sequência completa é detectada (Estado G)
        case estado_prs IS
            WHEN G => det_out <= '1';
            WHEN OTHERS => det_out <= '0';
        end case;

    end process comb_proc;

    -- Debug: Número do estado para mostrar no display
    -- A=0, B=1, C=2, D=3, E=4, F=5, G=6
    idx_estado <= estado'POS(estado_prs);
    est_out <= std_logic_vector(to_unsigned(idx_estado, est_out'length));

end detetor;