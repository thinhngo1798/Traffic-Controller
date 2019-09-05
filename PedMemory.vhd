library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Memory is
	port (
		reset, clk: in std_logic;
		loadEnable: in std_logic;
		clr: in std_logic;
		inVal: in std_logic;
		--LightsEW   : in STD_LOGIC_VECTOR (1 downto 0); -- controls EW lights
        --LightsNS   : in STD_LOGIC_VECTOR (1 downto 0);  -- controls NS lights
		result: out std_logic
	);
end Memory;

architecture beh of Memory is
	signal remVal: std_logic;
begin
Memo: process(reset, clk)
begin
	if (reset = '1') then
		remVal <= '0';
		result <= '0';
	elsif rising_edge(clk) then	
		if (clr = '1') then
			remVal <= '0';
			--result <= '0';
		else 
			if (inVal = '1') then
				remVal <= '1';
			end if;
			
			if (loadEnable = '1') then
				result <= remVal;
			end if;
		
		end if;
	end if;
end process;
end beh;