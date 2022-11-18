LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sum_comp_tb is end sum_comp_tb;

architecture comport of sum_comp_tb is 

	component sum_comp 
	port (
		ia , ib , icin , clk : in std_logic;
		ores, ocout : out std_logic);
	end component;
	
	signal ia : std_logic := '0';
	signal ib : std_logic := '0';
	signal icin : std_logic := '0';
	signal clk : std_logic := '0';
	signal ores : std_logic;
	signal ocout : std_logic;
	constant periodo : time:= 20ns;

BEGIN
	uut : sum_comp port map (
	ia => ia,
	ib => ib,
	icin => icin,
	clk => clk, 
	ores => ores,
	ocout => ocout);
	
	process 
		begin
			clk <= '0';
			wait for periodo/2;
			clk <= '1';
			wait for periodo/2;
	end process;
	
	process
		begin
			ia <= '0'; ib <= '0'; icin <= '0'; wait for 30ns;
			ia <= '0'; ib <= '0'; icin <= '1'; wait for 30ns;
			ia <= '0'; ib <= '1'; icin <= '0'; wait for 30ns;
			ia <= '0'; ib <= '1'; icin <= '1'; wait for 30ns;
			ia <= '1'; ib <= '0'; icin <= '0'; wait for 30ns;
			ia <= '1'; ib <= '0'; icin <= '1'; wait for 30ns;
			ia <= '1'; ib <= '1'; icin <= '0'; wait for 30ns;
			ia <= '1'; ib <= '1'; icin <= '1'; wait for 30ns;
			wait;
	end process;
END;