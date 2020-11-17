library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity contador_tb is 
end contador_tb;


architecture behavioral of contador_tb is
	signal clock_50: std_logic;
	signal saida: std_logic_vector ( 3 downto 0);
	signal reset: std_logic:='0';


begin
U1: entity work.contador PORT MAP (clock_50, reset, saida);
relogio: process 
begin
	clock_50 <= '0';
	wait for 50 ps;
	clock_50 <= '1';
	wait for 50 ps;
	
end process;


zera: process
begin
	wait for 200 ps;
	reset <= '1';
	wait for 100 ps;
	reset <= '0';
	wait;

end process;

end behavioral;
