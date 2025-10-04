--------------------------------------------------------------------------------
-- Project :
-- File    : ex_02_b.vhd
-- Autor   :
-- Date    :
--
--------------------------------------------------------------------------------
-- Description : Latch D implementado com portas NOR
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex_02_b IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    enable, din  : IN  std_logic;                    
  ------------------------------------------------------------------------------
  --Insert output ports below
    q, qn        : OUT std_logic       
    );
END ex_02_b;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF ex_02_b IS
SIGNAL qstate : std_logic := '0';
SIGNAL s, r : std_logic;  -- Sinais internos para SET e RESET

BEGIN
    -- Lógica para gerar os sinais S e R a partir de D e Enable
    -- Para latch D com NOR: quando enable='1', S=D e R=NOT D
    s <= enable AND din;
    r <= enable AND (NOT din);
    
    -- Processo do latch SR NOR
    PROCESS(s, r)
    BEGIN
        IF (s = '1' AND r = '0') THEN      -- SET
            qstate <= '1';
        ELSIF (s = '0' AND r = '1') THEN   -- RESET
            qstate <= '0';
        -- Quando enable='0', ambos s e r são '0' (estado HOLD)
        -- O estado HOLD é implícito (não muda qstate)
        END IF;
    END PROCESS;

    -- Atribuições das saídas
    q  <= qstate;
    qn <= NOT qstate;
    
END TypeArchitecture;