library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity det_seq_111 is
    port(
    ------------------------------------------------------------------------------
    rst, seq_in, clock  : in  std_logic;
    ------------------------------------------------------------------------------
    det_out             : out std_logic;                    -- 1 bit (LED)
    res_out             : out std_logic_vector(3 downto 0); -- 4 bits (Display Resultado)
    est_out             : out std_logic_vector(3 downto 0)  -- 4 bits (Display Estado)
    );
end det_seq_111;

--------------------------------------------------------------------------------
architecture detetor of det_seq_111 is
    type estado is (A, B, C, D, E, F, G);
    signal estado_prs, prx_estado: estado;
    
    -- Sinal auxiliar para converter o estado em número inteiro
    signal idx_estado_int : integer range 0 to 7;

    attribute enum_encoding: string;
    attribute enum_encoding of estado: type is "sequential";
begin

    ---------------------- Bloco de lógica sequencial ------------------------
    seq_proc: process(clock,rst)
    begin
        if rst = '1' then 
            estado_prs <= A;
        elsif rising_edge(clock) then
            estado_prs <= prx_estado;
        end if;
    end process seq_proc;

    ---------------------- Bloco de lógica combinacional ----------------------
    comb_proc: process(estado_prs, seq_in)
    begin
        -- Lógica de transição de estados (Mantida conforme seu código original)
        case estado_prs is
            when A =>
                if seq_in = '1' then prx_estado <= B; else prx_estado <= A; end if;
            when B =>
                if seq_in = '0' then prx_estado <= C; else prx_estado <= B; end if;
            when C =>
                if seq_in = '0' then prx_estado <= D; else prx_estado <= B; end if;
            when D =>
                if seq_in = '0' then prx_estado <= E; else prx_estado <= B; end if;
            when E =>
                if seq_in = '1' then prx_estado <= F; else prx_estado <= A; end if;
            when F =>
                if seq_in = '0' then prx_estado <= G; else prx_estado <= A; end if;
            when G =>
                -- Aqui você define se ela trava em G ou volta para buscar nova sequência.
                -- O código original mantinha em G se seq_in=0.
                if seq_in = '0' then prx_estado <= G; else prx_estado <= G; end if;
        end case;

        ----------------- Codificação da saída (DETECÇÃO) --------------------
        -- AQUI ESTÁ A ALTERAÇÃO: Saída '1' apenas no estado G
        case estado_prs IS
            when G => 
                det_out <= '1'; 
                res_out <= "0001"; -- Resultado numérico 1
            when others => 
                det_out <= '0'; 
                res_out <= "0000"; -- Resultado numérico 0
        end case;
        
    end process comb_proc;

    idx_estado_int <= estado'POS(estado_prs);
    
    -- Joga o número do estado na saída est_out
    est_out <= std_logic_vector(to_unsigned(idx_estado_int, 4));

end detetor;