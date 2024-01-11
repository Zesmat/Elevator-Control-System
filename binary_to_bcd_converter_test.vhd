--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:19:46 12/27/2023
-- Design Name:   
-- Module Name:   D:/AAST/5th semester/Digital Systems Design/Xilinx VHDL projects/Elevator/binary_to_bcd_converter_test.vhd
-- Project Name:  Elevator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: binary_to_bcd_converter
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
 
ENTITY binary_to_bcd_converter_test IS
END binary_to_bcd_converter_test;
 
ARCHITECTURE behavior OF binary_to_bcd_converter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT binary_to_bcd_converter
    PORT(
         binary_in : IN  std_logic_vector(3 downto 0);
         bcd0 : OUT  std_logic_vector(3 downto 0);
         bcd1 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal binary_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal bcd0 : std_logic_vector(3 downto 0);
   signal bcd1 : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: binary_to_bcd_converter PORT MAP (
          binary_in => binary_in,
          bcd0 => bcd0,
          bcd1 => bcd1
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 200 ns;
      binary_in <= "0110";
		
      wait for 200 ns;
      binary_in <= "1110";
		
      wait for 200 ns;	
      binary_in <= "1101";            
		-- insert stimulus here 

      wait;
   end process;

END;
