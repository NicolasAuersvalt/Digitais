library ieee;
use ieee.std_logic_1164.all;

entity aula07 is
    port(
        CLK_50MHz : in  std_logic; -- Pino 12
        BTN_START : in  std_logic; -- Pino 50
        BTN_RST   : in  std_logic; -- Pino 52

        D7S_LSD   : out std_logic_vector(6 downto 0); -- Unidade
        D7S_MSD   : out std_logic_vector(6 downto 0); -- Dezena

        DP_LSD    : out std_logic;
        DP_MSD    : out std_logic
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


architecture struct of dec_7seg is

    component dec_7seg is
        port (
            bin_in  : in  std_logic_vector(3 downto 0);
            seg_out : out std_logic_vector(6 downto 0) -- (g,f,e,d,c,b,a)             
        );
    end component;

    signal s_clk_1hz   : std_logic;
    signal s_clk_100hz : std_logic;
    signal s_start_clean : std_logic;

begin

end struct;