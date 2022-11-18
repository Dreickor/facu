library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PARTEB is
port ( 
	D, cl : in std_logic;
	Q : out std_logic);
end PARTEB;

architecture ffd of PARTEB is
BEGIN
	process(cl)
	begin
		if (cl='1' and cl'EVENT) then
			Q <= D;
		end if;
	end process;
end ffd;
	