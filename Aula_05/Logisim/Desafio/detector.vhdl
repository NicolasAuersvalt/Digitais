architecture detetor of Seq is
    TYPE estado IS (A,B,C,D);
begin
    PROCESS(clock)
    VARIABLE cycle : estado;
    BEGIN
        IF(clock'EVENT AND clock = '1') THEN
            CASE cycle IS 
                WHEN A =>
                    IF seq_in = '1' THEN cycle := B;
                    ELSE                 cycle := A;
                    END IF;
                WHEN B =>
                    IF seq_in = '1' THEN cycle := B;
                    ELSE                 cycle := A;
                    END IF;
                WHEN C =>
                    IF seq_in = '1' THEN cycle := B;
                    ELSE                 cycle := A;
                    END IF;
                WHEN D =>
                    cycle := A;
            END CASE;
        END IF;
        CASE cycle IS 
            WHEN D          => det_out <= '1';
            WHEN OTHERS     => det_out <= '0';
        END CASE;
        --- para debug

        case cycle is  
            when A => cicle_out <= "000";
            when B => cicle_out <= "001";
            when C => cicle_out <= "010";
            when D => cicle_out <= "011";
            when others => cicle_out <= "000";
        end case;
    END PROCESS;
end detetor;
