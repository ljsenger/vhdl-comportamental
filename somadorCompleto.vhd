library IEEE;
use ieee.std_logic_1164.all;

entity somadorCompleto is
	port(VemUm, a, b: in std_logic;
	     soma, VaiUm: out std_logic);
end somadorCompleto;

architecture logica of somadorCompleto is
begin
	soma <= a XOR b XOR VemUm;
	VaiUm<= (a AND b) OR (VemUm AND a) OR (VemUm AND b);

end logica;


