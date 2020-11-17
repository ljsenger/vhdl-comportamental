library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
port ( clk, reset: in std_logic;
       saida: out std_logic_vector (3 downto 0));
end contador;


architecture behavioral of contador is
	signal valor: unsigned (3 downto 0) := "0000";
begin

atualiza: process (reset, clk)
begin
	if reset='1' then
		valor <= "0000";
	elsif rising_edge(clk) then
		if valor = "1111" then
		   valor <= "0000";
		else
		   valor <= valor + "0001";
		end if;
	end if;
end process;

saida <= std_logic_vector(valor);
end behavioral;
