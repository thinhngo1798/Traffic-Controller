Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Timer is
	port 
	(
		reset, clk, clr: in std_logic;
		IsGreenExpired : out std_logic; 
		IsAmberExpired : out std_logic;
		IsWalkExpired	: out std_logic
	);
end Timer;

architecture beh of Timer is
signal count: integer range 0 to 131071;
constant MAX_COUNT: integer := 65536;
constant GREEN_EXPIRED_AFTER: integer := 800;
constant AMBER_EXPIRED_AFTER: integer := 400;
constant WALK_EXPIRED_AFTER: integer := 800;

begin
Main: process(reset, clk)
begin
	-- Dominant, asynchorous behavior --
	if (reset = '1') then
		count <= 0;
		IsAmberExpired <= '0';
		IsGreenExpired <= '0';
		IsWalkExpired <= '0';
	
	elsif (rising_edge(clk)) then
		if (clr = '1') then
			IsAmberExpired <= '0';
			IsGreenExpired <= '0';
			IsWalkExpired <= '0';
			count <= 0;
		else
			if (count < MAX_COUNT) then
				count <= count + 1;
			end if;
			
			if (count > GREEN_EXPIRED_AFTER) then
				isGreenExpired <= '1';
			end if;
			
			if (count > AMBER_EXPIRED_AFTER) then
				isAmberExpired <= '1';
			end if;
			
			if (count > WALK_EXPIRED_AFTER) then
				isWalkExpired <= '1';
			 end if;
		end if;
	end if;
end process;
end beh;