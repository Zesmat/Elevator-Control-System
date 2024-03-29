--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:37:22 12/27/2023
-- Design Name:   
-- Module Name:   D:/AAST/5th semester/Digital Systems Design/Xilinx VHDL projects/Elevator/clock_divider_test.vhd
-- Project Name:  Elevator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clock_divider
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
 
ENTITY clock_divider_test IS
END clock_divider_test;
 
ARCHITECTURE behavior OF clock_divider_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clock_divider
	 Generic(
    IN_FREQ: integer := 100000000; --default 100 MHz
    OUT_FREQ: integer := 10000000); --default 10 MHz
    PORT(
         clk : IN  std_logic;
         clk_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal clk_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clock_divider 
			Generic Map(
			IN_FREQ  => 100000000,  --100 MHZ
			OUT_FREQ => 10000000)  --10 MHz
			PORT MAP (
          clk => clk,
          clk_out => clk_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
