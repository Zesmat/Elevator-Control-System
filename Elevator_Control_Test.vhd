--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:29:49 12/31/2023
-- Design Name:   
-- Module Name:   D:/AAST/5th semester/Digital Systems Design/Xilinx VHDL projects/Elevator/Elevator_Control_Test.vhd
-- Project Name:  Elevator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Elevator_Control
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.components.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Elevator_Control_Test IS
END Elevator_Control_Test;
 
ARCHITECTURE behavior OF Elevator_Control_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Elevator_Control
    PORT(
         CLK : IN  std_logic;
         Keypad : IN  std_logic_vector(15 downto 0);
         power : IN  std_logic;
         floor_detected : IN  std_logic;
         open_btn : IN  std_logic;
         close_btn : IN  std_logic;
         weight : IN  integer;
         person_detected : IN  std_logic;
         Door_open : OUT  std_logic;
         Display1 : OUT  std_logic_vector(6 downto 0);
         Display2 : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal Keypad : std_logic_vector(15 downto 0) := (others => '0');
   signal power : std_logic := '1';
   signal floor_detected : std_logic := '1';
   signal open_btn : std_logic := '0';
   signal close_btn : std_logic := '0';
   signal weight : integer := 0;
   signal person_detected : std_logic := '0';

 	--Outputs
   signal Door_open : std_logic;
   signal Display1 : std_logic_vector(6 downto 0);
   signal Display2 : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Elevator_Control PORT MAP (
          CLK => CLK,
          Keypad => Keypad,
          power => power,
          floor_detected => floor_detected,
          open_btn => open_btn,
          close_btn => close_btn,
          weight => weight,
          person_detected => person_detected,
          Door_open => Door_open,
          Display1 => Display1,
          Display2 => Display2
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
	
   -- Stimulus process
   stim_proc: process
	
   begin		
      -- hold initial state for 20 ns.
      wait for 20 ns;	
		keypad(3) <= '1';  --3rd floor requested
		--move 3 floors
		for i in 1 to 3 loop
			floor_detected <= '0';
			wait for 100 ns;
			floor_detected <= '1';
			wait for 20 ns;
		end loop;
		--1st floor requested
		keypad(3) <= '0';
		keypad(1) <= '1';
		wait for 300 ns;
		open_btn <= '1'; -- open door
		wait for 20 ns;
		open_btn <= '0';
		person_detected <= '1';  --person entered
		wait for 100 ns;
		weight <= 50;
		wait for 50 ns;
		weight <= 350;  --weight limit exceeded (300 kg)
		person_detected <= '0';
		wait for 200 ns;
		close_btn <= '1'; --close door (won't close as weight limit is exceeded)
		wait for 20 ns; 
		close_btn <= '0';  
		wait for 20 ns;
		weight <= 150;  --weight under limit 
		
		wait until door_open = '0'; --wait until door closes
		floor_detected <= '0';
		wait for 100 ns;
		floor_detected <= '1'; --reached 2nd floor
		wait for 20 ns;
		floor_detected <= '0';
		wait for 100 ns;
	
		floor_detected <= '1'; --reached 1st floor  
		wait for 100 ns;
		keypad(1) <= '0';  --no floor requested
		wait for 400 ns;
		power <= '0';   --power cut, elevator goes into emergency mode
      wait;
   end process;
	

END;


