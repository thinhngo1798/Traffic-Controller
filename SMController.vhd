library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SMController is
	port 
	(
		reset, clk	: in STD_LOGIC; 
		-- --
		CarEW			: in std_logic; -- after synchronous
		CarNS      	: in STD_LOGIC; 
      PedEW      	: in STD_LOGIC;
      PedNS      	: in STD_LOGIC;
		
		isAmberExpired: in STD_LOGIC;
		isWaitExpired: in STD_LOGIC;
		isWalkExpired: in STD_LOGIC;

		clrCounter		: out std_logic;
		
		clrMemPedEW : out std_logic;
		clrMemPedNS : out std_logic;
		
		LoadPedEW	: out std_logic;
		LoadPedNS	: out std_logic;

		LightsEW   : out STD_LOGIC_VECTOR (1 downto 0);
      LightsNS   : out STD_LOGIC_VECTOR (1 downto 0)
	);
end SMController;

architecture beh of SMController is
-- Encoding for lights
constant RED   : std_logic_vector(1 downto 0) := "00";
constant AMBER : std_logic_vector(1 downto 0) := "01";
constant GREEN : std_logic_vector(1 downto 0) := "10";
constant WALK  : std_logic_vector(1 downto 0) := "11";
type StateType is (GreenEW, GreenWalkEW, AmberEW, 
					GreenNS, GreenWalkNS, AmberNS);
signal state, nextState: StateType;

begin
	Sync: process(reset, clk)
	begin
		if (reset = '1') then
			state <= GreenEW;
		elsif (rising_edge(clk)) then
			state <= nextState;
		end if;
	end process;
	
	Comb: process(state, CarEW, CarNS, PedEW, PedNS,
				isAmberExpired, isWalkExpired, isWaitExpired)
	begin
	--default values
		nextState <= State;
		clrCounter <= '0';
		clrMemPedEW <= '0';
		clrMemPedNS <= '0';
		LoadPedEW <= '1';
		LoadPedNS <= '1';
		LightsEW <= GREEN;
		LightsNS <= RED;
		
		case state is
			when GreenNS =>
				LightsEW <= RED;
				LightsNS <= GREEN;
				if (isWaitExpired = '1') then
					if (CarEW = '1' or PedEW = '1') then
						clrCounter <= '1';
						nextState <= AmberNS;
					elsif (PedNS = '1') then
						clrCounter <= '1';
						nextState <= GreenWalkNS;
					end if;
			
				--else
					--nextState <= GreenNS;
				end if;
			
			when GreenEW =>
				LightsEW <= GREEN;
				LightsNS <= RED;	
				--Merge sudden change after finishing green waiting time--
				if (isWaitExpired = '1') then
					if (CarNS = '1' or PedNS = '1') then
						clrCounter <= '1';
						nextState <= AmberEW;
					elsif (PedEW = '1') then
						clrCounter <= '1';
						nextState <= GreenWalkEW;
						
					end if;
				--else 
					--nextState <= GreenEW;
				end if;
			
			when GreenWalkEW =>
				LightsEW <= WALK;
				LightsNS <= RED;			
				clrMemPedEW <= '1';
				
				if (isWalkExpired = '1') then
					nextState <= GreenEW;
				--else
					--nextState <= GreenWalkEW;
				end if;
				
			
				
			when GreenWalkNS =>
				LightsEW <= RED;
				LightsNS <= WALK;
				clrMemPedNS <= '1';
				
				if (isWalkExpired = '1') then
					nextState <= GreenNS;
				--else
					--nextState <= GreenWalkNS;
				end if;
			
			when AmberNS =>
				LightsNS <= AMBER;
				LightsEW <= RED;
				LoadPedEW <= '0';
				
				if (isAmberExpired = '1') then
					clrCounter <= '1';
					if (PedEW = '1') then
						nextState <= GreenWalkEW;
					else 
						nextState <= GreenEW;
					end if;
				--else 
					--nextState <= AmberNS;
				end if;
				
			when AmberEW =>
				LightsEW <= AMBER;
				LightsNS <= RED;
				LoadPedNS <= '0';
				
				if (isAmberExpired = '1') then
					clrCounter <= '1';
					if (PedNS = '1') then
						nextState <= GreenWalkNS;
					else
						nextState <= GreenNS;
					end if;
				--else
					--nextState <= AmberEW;
				end if;
		end case;
end process;
end beh;