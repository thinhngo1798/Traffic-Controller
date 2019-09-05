library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity InputSync is
	port 
	(
		reset: in std_logic;
		clk: in std_logic;
		
		CarEW, CarNS: in std_logic;
		PedEW, PedNS: in std_logic;
		
		SyncCarEW, SyncCarNS, SyncPedEW, SyncPedNS: out std_logic
	);
end InputSync;

architecture beh of InputSync is
begin
Sync:process(reset, clk)
begin
	if (reset = '1') then
		SyncCarEW <= '0';
		SyncCarNS <= '0';
		SyncPedEW <= '0';
		SyncPedNS <= '1';
	elsif (rising_edge(clk)) then
		SyncCarEW <= CarEW;
		SyncCarNS <= CarNS;
		SyncPedEW <= PedEW;
		SyncPedNS <= PedNS;
	end if;
end process;
end beh;