library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity PARTEA1_testbench  is end PARTEA1_testbench;

ARCHITECTURE behavior OF PARTEA1_testbench IS

	COMPONENT PARTEA 
	PORT (
	 SW1 : in STD_LOGIC;
	 SW2 : in STD_LOGIC;
	 LED : out STD_LOGIC);
	END COMPONENT;
	
	signal SW1 : std_logic:= '0';
	signal SW2 : std_logic:= '0';
	signal LED : std_logic;
	
	BEGIN
	uut: PARTEA PORT MAP (
	SW1 => SW1,
	SW2 => SW2,
	LED => LED);
	stim_proc: process 
	begin 
		SW1<='0' ; SW2<= '0'; wait for 10ns;
		SW1<='0'; SW2<= '1'; wait for 10ns;
		SW1<='1' ; SW2<= '0'; wait for 10ns;
		SW1<='1' ; SW2<= '1'; wait for 10ns;
	 wait;
	 end process;
END;
		