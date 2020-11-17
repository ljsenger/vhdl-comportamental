library IEEE;
use ieee.std_logic_1164.all;

entity multiplexer is
port (a, b, sel: in std_logic;
	z: out std_logic);
end multiplexer;


architecture behavioral of multiplexer is
begin

mux: PROCESS (a, b, sel)
     BEGIN
	IF sel = '1' 
		THEN z <= a;
		ELSE z <= b;
	END IF;
    END PROCESS mux;
end behavioral;


simulacao: PROCESS
    BEGIN
	 selecao <= '0';
	 bus_a <= "1111";
	 bus_b <= "0000";
	 WAIT FOR 10 ns;
	 selecao <= '1';
	 WAIT;
    END PROCESS simulacao;