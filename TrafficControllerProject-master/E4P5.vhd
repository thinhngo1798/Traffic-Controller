entity Motor is
port (
	en, cw: in std_logic;
	clock: in std_logic;
	reset: in std_logic
);
end entity Motor;

architecture beh of am is
type StateType is (Idle, S0, S1, S2, S3);
signal state, nextState: StateType;
begin
sync:
process(reset, clock)
begin
	if (reset = '1') then
		state <= Idle;
	elseif (rising_edge(clock)) then
		state <= nextState;
	end if;
end process;

comb
process(en, cw)
begin
	case state is
		when 
end process;
end architecture beh;