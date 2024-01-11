--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:48:31 12/30/2023
-- Design Name:   
-- Module Name:   D:/AAST/5th semester/Digital Systems Design/Xilinx VHDL projects/Elevator/timer_test.vhd
-- Project Name:  Elevator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Timer
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY timer_test IS
END timer_test;
 
ARCHITECTURE behavior OF timer_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Timer
    PORT(
         CLK : IN  std_logic;
			reset: in STD_LOGIC;
         EN : IN  std_logic;
         Limit : IN  std_logic_vector(3 downto 0);
         EN_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
	signal reset: STD_LOGIC := '0';
   signal EN : std_logic := '0';
   signal Limit : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal EN_out : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Timer PORT MAP (
          CLK => CLK,
			 reset => reset,
          EN => EN,
          Limit => Limit,
          EN_out => EN_out
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
      -- hold reset state for 100 ns.
		Limit <= "0011";
		wait for 50 ns;
		En <= '1';
		wait for 500 ns;
		En <= '0';
		
      -- insert stimulus here 

      wait;
   end process;

END;
