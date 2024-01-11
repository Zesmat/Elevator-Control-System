--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:21:22 01/01/2024
-- Design Name:   
-- Module Name:   C:/iverilog/Seg_Sevvv22/test.vhd
-- Project Name:  Seg_Sevvv22
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FloorDisplay
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
 
ENTITY FloorDisplay_test IS
END FloorDisplay_test;
 
ARCHITECTURE behavior OF FloorDisplay_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FloorDisplay
    PORT(
         FLOOR : IN  std_logic_vector(3 downto 0);
         SEG1 : OUT  std_logic_vector(6 downto 0);
         SEG2 : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal FLOOR : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal SEG1 : std_logic_vector(6 downto 0);
   signal SEG2 : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	
	
	--configuration: binary_to_7seg or behavioral
	for uut: FloorDisplay USE ENTITY WORK.FloorDisplay(behavioral);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FloorDisplay PORT MAP (
          FLOOR => FLOOR,
          SEG1 => SEG1,
          SEG2 => SEG2
        );

   -- Clock process definitions
   
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		FLOOR<="1111";


      -- insert stimulus here 

   end process;

END;
