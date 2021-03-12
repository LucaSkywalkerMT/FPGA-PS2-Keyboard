library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity PS2 is port( 	PS2C: in STD_LOGIC;
							PS2D: in STD_LOGIC;
							AN : out STD_LOGIC_VECTOR (3 DOWNTO 0);
							LED : out STD_LOGIC_VECTOR (7 downto 0);
							SEG : out STD_LOGIC_VECTOR (6 downto 0));
end PS2;

architecture BEHAVIORAL of PS2 is
	begin
	MAIN: process(PS2C)
	variable State : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	variable Data : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
	begin
		AN(3 DOWNTO 0) <= "1110";
		if falling_edge(PS2C) then
			if State = "0000" then
				if PS2D = '0' then --start
					State := State + 1;
					Data(7 DOWNTO 0) := "00000000";
				end if;
			elsif State = "0001" then --D0
				Data(0) := PS2D;
				State := State + 1;
			elsif State = "0010" then --D1
				Data(1) := PS2D;
				State := State + 1;
			elsif State = "0011" then --D2
				Data(2) := PS2D;
				State := State + 1;
			elsif State = "0100" then --D3
				Data(3) := PS2D;
				State := State + 1;
			elsif State = "0101" then --D4
				Data(4) := PS2D;
				State := State + 1;
			elsif State = "0110" then --D5
				Data(5) := PS2D;
				State := State + 1;
			elsif State = "0111" then --D6
				Data(6) := PS2D;
				State := State + 1;
			elsif State = "1000" then --D7
				Data(7) := PS2D;
				State := State + 1;
			elsif State = "1001" then --Parity
				State := State + 1;
			elsif State = "1010" then --stop
				State := "0000";
			end if;
			case Data is
				when "00011100" => 	SEG(6 DOWNTO 0) <= "0000010";	  --A
				when "00110010" => 	SEG(6 DOWNTO 0) <= "0000100";	  --B
				when "00100001" => 	SEG(6 DOWNTO 0) <= "0110001";	  --C
				when "00100011" => 	SEG(6 DOWNTO 0) <= "1000010";	  --D
				when "00100100" => 	SEG(6 DOWNTO 0) <= "0110000";	  --E
				when "00101011" => 	SEG(6 DOWNTO 0) <= "0111000";	  --F
				when "01000101" => 	SEG(6 DOWNTO 0) <= "0000001";	  --0
				when "00010110" => 	SEG(6 DOWNTO 0) <= "1001111";   --1
				when "00011110" => 	SEG(6 DOWNTO 0) <= "0010010";	  --2
				when "00100110" => 	SEG(6 DOWNTO 0) <= "0000110";	  --3
				when "00100101" => 	SEG(6 DOWNTO 0) <= "1001100";	  --4
				when "00101110" => 	SEG(6 DOWNTO 0) <= "0100100";	  --5
				when "00110110" => 	SEG(6 DOWNTO 0) <= "0100000";   --6
				when "00111101" => 	SEG(6 DOWNTO 0) <= "0001111";   --7
				when "00111110" => 	SEG(6 DOWNTO 0) <= "0000000";   --8
				when "01000110" => 	SEG(6 DOWNTO 0) <= "0000100";   --9
				when others => 		SEG(6 DOWNTO 0) <= "1111111";   -- any other key
			end case;
			LED(7 DOWNTO 0) <= Data;
		end if;
	end process;
end BEHAVIORAL;