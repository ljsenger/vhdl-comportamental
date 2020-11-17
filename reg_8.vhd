library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_8 is
port (  clk, reset: in std_logic;
	d_i: in std_logic_vector (7 downto 0);
	d_o: out std_logic_vector (7 downto 0));
end reg_8;


architecture behavioral of reg_8 is
	signal valor: std_logic_vector (7 downto 0) := x"00";
begin

atualiza: process (reset, clk)
begin
	if reset='1' then
		valor <= "00000000";
	elsif rising_edge(clk) then
		valor <= d_i;
	end if;
end process;

d_o <= valor;
end behavioral;
