
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity reg_8_tb is 
end reg_8_tb;


architecture behavioral of reg_8_tb is
	signal clock_50: std_logic;
	signal entrada: std_logic_vector ( 7 downto 0);
	signal saida: std_logic_vector ( 7 downto 0);
	signal reset: std_logic:='0';


begin
U1: entity work.reg_8 PORT MAP (clock_50, reset, entrada, saida);

relogio: process 
begin
	clock_50 <= '0';
	wait for 50 ps;
	clock_50 <= '1';
	wait for 50 ps;
	
end process;


testa: process
begin
	reset <= '0';
	entrada <= x"04";
	wait for 100 ps;
	entrada <= x"FF";
	wait;

end process;

end behavioral;