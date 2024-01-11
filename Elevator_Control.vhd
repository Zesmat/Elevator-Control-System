----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:26:55 12/31/2023 
-- Design Name: 
-- Module Name:    Elevator_Control - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use work.components.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Elevator_Control is
    Port (
			CLK : in STD_LOGIC;
			Keypad : in  STD_LOGIC_VECTOR (15 downto 0);
           power : in  STD_LOGIC;
           floor_detected : in  STD_LOGIC;
           open_btn : in  STD_LOGIC;
           close_btn : in  STD_LOGIC;
           weight : in  integer;
           person_detected : in  STD_LOGIC;
           Door_open : out  STD_LOGIC;
           Display1 : out  STD_LOGIC_VECTOR (6 downto 0);
           Display2 : out  STD_LOGIC_VECTOR (6 downto 0)
			  );
end Elevator_Control;

architecture Behavioral of Elevator_Control is

type motor_direction is (up, down, stationary);
type state is (Idle, moving_down, moving_up, door_opening, door_closing, Emergency, Emergency_moving_down, Emergency_open);


type floors_array is array (0 to 15) of std_logic_vector(3 downto 0);
signal queue: floors_array; --queue for floor requests (First Come First Serve)
signal i: integer := 0;  --back of queue (first empty place)

signal j: integer := 0;  --front of queue (first filled place)


signal dequeued: std_logic := '0';
signal new_floor_request : std_logic_vector(3 downto 0);

signal P_S: state := idle;
signal N_S: state := idle;
signal motor: motor_direction := stationary;
signal current_floor: STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal next_floor: STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal overweight_limit: STD_LOGIC;
signal start_timer: STD_LOGIC := '0';
signal reset_timer: STD_LOGIC := '0';
signal timer_done: STD_LOGIC;

--configuration: binary_to_7seg or behavioral
for display: FloorDisplay USE ENTITY WORK.FloorDisplay(binary_to_7seg);

begin
sync: process(clk)
begin
	if rising_edge(clk) then
		p_s <= n_s;
		current_floor <= next_floor;
	end if;
end process;

--any new requests are added to queue
enqueue : process(new_floor_request) 
begin
	if new_floor_request'event and new_floor_request /= "UUUU" then
		queue(i) <= new_floor_request;
		i <= (i+1) mod 16; --circular queue
	end if;
end process;

state_control : process(p_s, i, timer_done, keypad, power, floor_detected, open_btn, close_btn, weight, person_detected)
variable floor_request: STD_LOGIC_VECTOR (3 downto 0);  --floor_request is variable so that assignment happens immediately
begin
	case p_s is
	
	when idle =>
		door_open <= '0';
		motor <= stationary;
		if power = '0' then
			n_s <= emergency;
		elsif j = i then --queue is empty, no requests are made
			n_s <= p_s;
		elsif j /= i then --queue is not empty, pull from queue into floor_request
			floor_request := queue(j);
			j <= (j+1) mod 16;  --circular queue
			if floor_request = current_floor then 
				n_s <= door_opening;
			elsif unsigned(floor_request) > unsigned(current_floor) then
				n_s <= moving_up;
			elsif unsigned(floor_request) < unsigned(current_floor) then 
				n_s <= moving_down;
			end if;
		end if;
		
		
	when moving_down =>
		door_open <= '0';
		motor <= down;
		if power = '0' then
			n_s <= emergency_moving_down;
		elsif floor_detected = '0' then
			n_s <= p_s;
		elsif current_floor = floor_request then 
			n_s <= door_opening;
		else
			next_floor <= std_logic_vector(unsigned(current_floor) -1);
			n_s <= p_s;
		end if;
		
		
		
	when moving_up =>
		door_open <= '0';
		motor <= up;
		if power = '0' then
			n_s <= emergency;
		elsif floor_detected = '0' then
			n_s <= p_s;
		elsif current_floor = floor_request then 
			n_s <= door_opening;
		else
			next_floor <= std_logic_vector(unsigned(current_floor) +1);
			n_s <= p_s;
		end if;
		
		
		
	when door_opening =>
		door_open <= '1';
		motor <= stationary;
		reset_timer <= '0';
		if power = '0' then
			n_s <= emergency_open;
		elsif overweight_limit = '1' then 
			n_s <= p_s;
		else
			start_timer <= '1';
			if person_detected = '1' then
				reset_timer <= '1';         --reset timer
				n_s <= p_s;
			elsif open_btn = '1' and close_btn = '0' then 
				reset_timer <= '1';
				n_s <= p_s;
			elsif open_btn = '0' and close_btn = '1' then 
				n_s <= door_closing;
			elsif timer_done = '1' then 
				n_s <= door_closing;
			end if;
		end if;
		
		
		
	when door_closing =>
		door_open <= '0';
		motor <= stationary;
		if power = '0' then
			n_s <= emergency_open;
		elsif open_btn = '1' then
			n_s <= door_opening;
		else
			n_s <= Idle;
		end if;
		
		
	when emergency =>
		door_open <= '0';
		motor <= stationary;
		if floor_detected = '1' then
			n_s <= emergency_open;
		else
			n_s <= emergency_moving_down;
		end if;
		
		
	when Emergency_moving_down =>
		door_open <= '0';
		motor <= down;
		if floor_detected = '1' then
			n_s <= emergency_open;
		else
			next_floor <= std_logic_vector(unsigned(current_floor) -1);
			n_s <= emergency_moving_down;
		end if;
		
		
	when Emergency_open =>
		door_open <= '1';
		motor <= stationary;
		if power = '1' then
			n_s <= idle;
		else
			n_s <= p_s;
		end if;
 	end case;
end process;


overweight_limit <= '1' when weight > 300 else '0';  --weight limit 300 kg  
display: FloorDisplay port map (floor => current_floor, seg1 => display1, seg2 => display2); 
timer_close: Timer port map (clk => clk, en => start_timer, reset => reset_timer, Limit => "0101", en_out => timer_done); --timer for closing door

encoder: enc_16_4 port map (enc_in => keypad, enable => '1', enc_out => new_floor_request);
end Behavioral;






