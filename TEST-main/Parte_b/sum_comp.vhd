library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sum_comp is
	port (
		ia, ib, icin, clk : in std_logic;
		ores, ocout : out std_logic);
end sum_comp;

architecture comportamiento of sum_comp is

component PARTEB 
	port (
		D, cl : in std_logic;
		Q : out std_logic);
	end component;
	
	signal
		a,b,cin,cout,res: std_logic;
BEGIN
	res <= a xor b xor cin;
	cout <= (a and b) or (cin and (a xor b));
	
D1 : PARTEB port map (ia, clk ,a);
D2 : PARTEB port map (ib, clk, b);
D3 : PARTEB port map (icin, clk, cin);
D4 : PARTEB port map (cout, clk, ocout);
D5 : PARTEB port map (res, clk, ores);
end comportamiento;