library ieee;
use ieee.std_logic_1164.all;

entity aula07 is
    port(
    ------------------------------------------------------------------------------
    rst, seq_in, clock  : in  std_logic;
    ------------------------------------------------------------------------------
    det_out             : out std_logic;                    -- 1 bit (LED)
    res_out             : out std_logic_vector(3 downto 0); -- 4 bits (Display Resultado)
    est_out             : out std_logic_vector(3 downto 0)  -- 4 bits (Display Estado)
    );
end aula07;

architecture struct of aula07 is

    component det_seq_111 is
        port (
            clk, start : in  std_logic;
            msd, lsd   : out std_logic_vector(6 downto 0)                
        );
    end component;

    signal s_clk_1hz   : std_logic;
    signal s_clk_100hz : std_logic;
    signal s_start_clean : std_logic;

begin

    component dec_7seg is
        port (
            bin_in  : in  std_logic_vector(3 downto 0);
            seg_out : out std_logic_vector(6 downto 0) -- (g,f,e,d,c,b,a)             
        );
    end component;


end struct;