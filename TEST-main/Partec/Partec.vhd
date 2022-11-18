library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Partec is
	Port (
		a , b , cin : in std_logic;
		res , cout : out std_logic);
	end Partec;

architecture sumador of Partec is
	BEGIN 
		res <= a xor b xor cin;
		cout <= (a and b) or (cin and (a xor b));
	END sumador;