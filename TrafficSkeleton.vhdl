----------------------------------------------------------------------------------
--  Traffic.vhd
--
-- Traffic light system to control an intersection
--
-- Accepts inputs from two car sensors and two pedestrian call buttons
-- Controls two sets of lights consisting of Red, Amber and Green traffic lights and
-- a pedestrian walk light.
-- Will combine two modules, i.e., Controller and Timer here!
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Traffic is
    Port ( Reset      : in   STD_LOGIC;
           Clock      : in   STD_LOGIC;
           
           -- for debug
           debugLED   : out  std_logic;
           LEDs       : out  std_logic_vector(2 downto 0);

           -- Car and pedestrian buttons
           CarEW      : in   STD_LOGIC; -- Car on EW road
           CarNS      : in   STD_LOGIC; -- Car on NS road
           PedEW      : in   STD_LOGIC; -- Pedestrian moving EW (crossing NS road)
           PedNS      : in   STD_LOGIC; -- Pedestrian moving NS (crossing EW road)
           
           -- Light control
           LightsEW   : out STD_LOGIC_VECTOR (1 downto 0); -- controls EW lights
           LightsNS   : out STD_LOGIC_VECTOR (1 downto 0)  -- controls NS lights
           
           );
end Traffic;

architecture Behavioral of Traffic is

-- Encoding for lights
constant RED   : std_logic_vector(1 downto 0) := "00";
constant AMBER : std_logic_vector(1 downto 0) := "01";
constant GREEN : std_logic_vector(1 downto 0) := "10";
constant WALK  : std_logic_vector(1 downto 0) := "11";

--signal clr: std_logic;
signal isAmberExpired, isWalkExpired, isWaitExpired, clrMemPedNS, clrMemPedEW, LoadPedEW, LoadPedNS: std_logic;
signal syncPedNS, syncPedEW, syncCarNS, syncCarEW: std_logic;
signal remPedNS, remPedEW: std_logic;
signal clrCounter: std_logic;
begin
	-- Show reset status on FPGA LED
	debugLed <= Reset; 

	-- Threee LEDs for debug 
	LEDs     <= "111";

	-- Luck North-south traffic
	--LightsEW <= RED;
	--LightsNS <= WALK;
	
	SyncInput: entity work.InputSync
	Port map (
		reset => reset,
		clk => clock,
		CarEW => CarEW,
		CarNS => CarNS,
		PedEW => PedEW,
		PedNS => PedNS,
		SyncCarEW => syncCarEW,
		SyncCarNS => syncCarNS,
		SyncPedEW => syncPedEW,
		SyncPedNS => syncPedNS
	);
	
	MemoryPedNS: entity work.Memory
	Port map(
		Reset 	=> Reset,
		clk 		=> clock,
		clr 		=> clrMemPedNS,
		loadEnable => loadPedNS,
		inVal => syncPedNS,
		result => remPedNS
	);
	
	MemoryPedEW: entity work.Memory
	Port map(
		Reset => Reset,
		clk => clock,
		clr => clrMemPedEW,
		loadEnable => loadPedEW,
		inVal => syncPedEW,
		result => remPedEW
	);
	
	controller: entity work.SMController
	Port map (
		Reset => Reset,
		Clk => Clock,
		
		CarEW => syncCarEW,
		CarNS => syncCarNS,
		PedEW => remPedEW,
		PedNS => remPedNS,
		LightsEW => LightsEW,
		LightsNS => LightsNS,
		
		isAmberExpired => isAmberExpired,
		isWaitExpired => isWaitExpired,
		isWalkExpired => isWalkExpired,
		clrCounter => clrCounter,
		
		loadPedNS =>loadPedNS,
		loadPedEW => loadPedEW,
		
		clrMemPedEW => clrMemPedEW,
		clrMemPedNS => clrMemPedNS
		);
	
	counter: entity work.Timer
	Port map (
		Reset => Reset,
		Clk => Clock,
		clr => clrCounter,
		isAmberExpired => isAmberExpired,
		isGreenExpired => isWaitExpired,
		isWalkExpired => isWalkExpired
		);
		
end Behavioral;