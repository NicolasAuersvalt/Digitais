library ieee;
use ieee.std_logic_1164.all;

entity cnt_up_down_mod60_vhdl is
    port(
        clk, z, ud, sst : in  std_logic;
        qu, qd          : out std_logic_vector(3 downto 0)
    );
end cnt_up_down_mod60_vhdl;

architecture cnt_up_down_mod60_arch of cnt_up_down_mod60_vhdl is

    -- Sinais Bloco Mod-10
    signal ff_rst_in, ff_rst_out, qo : std_logic;
    signal q_up_m10, q_down_m10, qstate_up_m10, qstate_down_m10, qn_up_m10, qn_down_m10 : std_logic_vector(3 downto 0);
    signal clk_up_m10, clk_down_m10, clkn_up_m10, clkn_down_m10, rst_m10, zn_m10, reset_m10, rst_alargador_m10, ff_rst_m10, clr_alargador_m10, clr_aux_m10, prs_rst_m10 : std_logic;
    
    -- Sinais Bloco Mod-6
    signal q_up_m6, q_down_m6, qstate_up_m6, qstate_down_m6, qn_up_m6, qn_down_m6 : std_logic_vector(3 downto 0);
    signal clk_up_m6, clk_down_m6, clkn_up_m6, clkn_down_m6, rst_m6, zn_m6, reset_m6, rst_alargador_m6, ff_rst_m6, clr_alargador_m6, clr_aux_m6, prs_rst_m6 : std_logic;
    signal ff_rst_in_m6, ff_rst_out_m6 : std_logic; 

    -- Sinal de clock "habilitado"
    signal clk_gated : std_logic;

    component dff_vhdl is
        port(
            d, clk, prs, clr : in  std_logic;
            q, qn            : out std_logic
        );
    end component;

begin
    ---------------------------------------------------------
    -- START/STOP (P13) - LÓGICA DE HABILITAÇÃO
    ---------------------------------------------------------
    clk_gated <= clk and sst;

    ---------------------------------------------------------
    -- BLOCO MOD10 (Unidades)
    ---------------------------------------------------------
    qu(0) <= q_up_m10(0) when ud = '0' else q_down_m10(0);
    qu(1) <= q_up_m10(1) when ud = '0' else q_down_m10(1);
    qu(2) <= q_up_m10(2) when ud = '0' else q_down_m10(2);
    qu(3) <= q_up_m10(3) when ud = '0' else q_down_m10(3);

    zn_m10 <= not z; -- z é ativo-alto do debouncer
    clk_up_m10 <= clk_gated when ud = '0' else '0'; 
    clk_down_m10 <= clk_gated when ud = '1' else '0'; 
    clkn_up_m10 <= not clk_up_m10;
    clkn_down_m10 <= not clk_down_m10;
    
    prs_rst_m10 <= (zn_m10 or (qstate_up_m10(1) and qstate_up_m10(3))); -- Detecta 10 (1010)

    ff_d0_up_m10: dff_vhdl port map(d => qn_up_m10(0), prs => '0', clr => clr_aux_m10, clk => clk_up_m10, q => qstate_up_m10(0), qn => qn_up_m10(0));
    ff_d1_up_m10: dff_vhdl port map(d => qn_up_m10(1), prs => '0', clr => clr_aux_m10, clk => qn_up_m10(0), q => qstate_up_m10(1), qn => qn_up_m10(1));
    ff_d2_up_m10: dff_vhdl port map(d => qn_up_m10(2), prs => '0', clr => clr_aux_m10, clk => qn_up_m10(1), q => qstate_up_m10(2), qn => qn_up_m10(2));
    ff_d3_up_m10: dff_vhdl port map(d => qn_up_m10(3), prs => '0', clr => clr_aux_m10, clk => qn_up_m10(2), q => qstate_up_m10(3), qn => qn_up_m10(3));
    ff_rst_up_m10: dff_vhdl port map(d => '0', prs => prs_rst_m10, clr => clkn_up_m10, clk => '0', q => clr_aux_m10);

    q_up_m10(0) <= qstate_up_m10(0);
    q_up_m10(1) <= qstate_up_m10(1);
    q_up_m10(2) <= qstate_up_m10(2);
    q_up_m10(3) <= qstate_up_m10(3);

    -- Lógica Regressiva (DOWN) Mod-10
    reset_m10 <= ff_rst_out and (qstate_down_m10(0) and qstate_down_m10(1) and qstate_down_m10(2) and qstate_down_m10(3)); -- Detecta 15 (1111)
    ff_rst_in <= not (qstate_down_m10(0) or qstate_down_m10(1) or qstate_down_m10(2) or qstate_down_m10(3)); -- Detecta 0 (0000)
    rst_alargador_m10 <= reset_m10 or zn_m10;

    ff_d0_down_m10: dff_vhdl port map(d => qn_down_m10(0), prs => rst_m10, clr => '0', clk => clk_down_m10, q => qstate_down_m10(0), qn => qn_down_m10(0));
    ff_d1_down_m10: dff_vhdl port map(d => qn_down_m10(1), prs => '0', clr => ff_rst_m10, clk => qstate_down_m10(0), q => qstate_down_m10(1), qn => qn_down_m10(1));
    ff_d2_down_m10: dff_vhdl port map(d => qn_down_m10(2), prs => '0', clr => ff_rst_m10, clk => qstate_down_m10(1), q => qstate_down_m10(2), qn => qn_down_m10(2));
    ff_d3_down_m10: dff_vhdl port map(d => qn_down_m10(3), prs => rst_m10, clr => '0', clk => qstate_down_m10(2), q => qstate_down_m10(3), qn => qn_down_m10(3));

    ff_rst_down_m10: dff_vhdl port map(d => '0', prs => ff_rst_in, clr => ff_rst_m10, clk => '0', q => ff_rst_out);
    ff_rst_alargador_down_m10: dff_vhdl port map(d => '0', prs => rst_alargador_m10, clr => clkn_down_m10, clk => '0', q => ff_rst_m10);
    ff_rst_alargador_clr_down_m10: dff_vhdl port map(d => '0', prs => rst_alargador_m10, clr => clkn_down_m10, clk => '0', q => clr_alargador_m10);
    
    rst_m10 <= '1' when clr_alargador_m10 = '1' else '0';
    q_down_m10(0) <= qstate_down_m10(0);
    q_down_m10(1) <= qstate_down_m10(1);
    q_down_m10(2) <= qstate_down_m10(2);
    q_down_m10(3) <= qstate_down_m10(3);

    qo <= clr_aux_m10 when ud = '0' else ff_rst_m10;

    ---------------------------------------------------------
    -- BLOCO MOD6 (Dezenas)
    ---------------------------------------------------------
    qd(0) <= q_up_m6(0) when ud = '0' else q_down_m6(0);
    qd(1) <= q_up_m6(1) when ud = '0' else q_down_m6(1);
    qd(2) <= q_up_m6(2) when ud = '0' else q_down_m6(2);
    qd(3) <= q_up_m6(3) when ud = '0' else q_down_m6(3);

    zn_m6 <= not z;
    clk_up_m6 <= qo when ud = '0' else '0';
    clk_down_m6 <= qo when ud = '1' else '0';
    clkn_up_m6 <= not clk_up_m6;
    clkn_down_m6 <= not clk_down_m6;

    prs_rst_m6 <= (zn_m6 or (qstate_up_m6(1) and qstate_up_m6(2))); -- Detecta 6 (0110)

    ff_d0_up_m6: dff_vhdl port map(d => qn_up_m6(0), prs => '0', clr => clr_aux_m6, clk => clk_up_m6,   q => qstate_up_m6(0), qn => qn_up_m6(0));
    ff_d1_up_m6: dff_vhdl port map(d => qn_up_m6(1), prs => '0', clr => clr_aux_m6, clk => qn_up_m6(0), q => qstate_up_m6(1), qn => qn_up_m6(1));
    ff_d2_up_m6: dff_vhdl port map(d => qn_up_m6(2), prs => '0', clr => clr_aux_m6, clk => qn_up_m6(1), q => qstate_up_m6(2), qn => qn_up_m6(2));
    ff_d3_up_m6: dff_vhdl port map(d => qn_up_m6(3), prs => '0', clr => clr_aux_m6, clk => qn_up_m6(2), q => qstate_up_m6(3), qn => qn_up_m6(3));
    
    ff_rst_up_m6: dff_vhdl port map(d => '0', prs => prs_rst_m6, clr => clkn_up_m6, clk => '0', q => clr_aux_m6);
    q_up_m6(0) <= qstate_up_m6(0);
    q_up_m6(1) <= qstate_up_m6(1);
    q_up_m6(2) <= qstate_up_m6(2);
    q_up_m6(3) <= qstate_up_m6(3);
    
    -- Lógica Regressiva (DOWN) Mod-6 (CORREÇÃO P12)
    ff_rst_in_m6 <= not (qstate_down_m6(0) or qstate_down_m6(1) or qstate_down_m6(2) or qstate_down_m6(3));
    ff_rst_down_m6: dff_vhdl port map(d => '0', prs => ff_rst_in_m6, clr => ff_rst_m6, clk => '0', q => ff_rst_out_m6);

    reset_m6 <= ff_rst_out_m6 and (not qstate_down_m6(3)) and qstate_down_m6(2) and qstate_down_m6(1) and qstate_down_m6(0); -- Detecta 7 (0111)
    
    rst_alargador_m6 <= reset_m6 or zn_m6;

    ff_d0_down_m6: dff_vhdl port map(d => qn_down_m6(0), prs => rst_m6, clr => '0', clk => clk_down_m6, q => qstate_down_m6(0), qn => qn_down_m6(0));
    ff_d1_down_m6: dff_vhdl port map(d => qn_down_m6(1), prs => '0', clr => ff_rst_m6, clk => qstate_down_m6(0), q => qstate_down_m6(1), qn => qn_down_m6(1));
    ff_d2_down_m6: dff_vhdl port map(d => qn_down_m6(2), prs => rst_m6, clr => '0', clk => qstate_down_m6(1), q => qstate_down_m6(2), qn => qn_down_m6(2));
    ff_d3_down_m6: dff_vhdl port map(d => qn_down_m6(3), prs => '0', clr => ff_rst_m6, clk => qstate_down_m6(2), q => qstate_down_m6(3), qn => qn_down_m6(3));

    ff_rst_alargador_down_m6: dff_vhdl port map(d => '0', prs => rst_alargador_m6, clr => clkn_down_m6, clk => '0', q => ff_rst_m6);
    ff_rst_alargador_clr_down_m6: dff_vhdl port map(d => '0', prs => rst_alargador_m6, clr => clkn_down_m6, clk => '0', q => clr_alargador_m6);

    rst_m6 <= '1' when clr_alargador_m6 = '1' else '0';
    q_down_m6(0) <= qstate_down_m6(0);
    q_down_m6(1) <= qstate_down_m6(1);
    q_down_m6(2) <= qstate_down_m6(2);
    q_down_m6(3) <= qstate_down_m6(3);
    
end cnt_up_down_mod60_arch;