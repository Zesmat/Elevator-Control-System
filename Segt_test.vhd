--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:12:04 01/02/2024
-- Design Name:   
-- Module Name:   C:/iverilog/Seg_new/Segt_test.vhd
-- Project Name:  Seg_new
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCD_Decoder_7Seg
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
 
ENTITY Segt_test IS
END Segt_test;
 
ARCHITECTURE behavior OF Segt_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCD_Decoder_7Seg
    PORT(
         bcd_input : IN  std_logic_vector(3 downto 0);
         enable : IN  std_logic;
         seg_output : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal bcd_input : std_logic_vector(3 downto 0) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal seg_output : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCD_Decoder_7Seg PORT MAP (
          bcd_input => bcd_input,
          enable => enable,
          seg_output => seg_output
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		enable<='1';
		bcd_input<="1000";
		wait for 100 ns;	
		enable<='1';
		bcd_input<="1001";
      wait for 100 ns;	
		enable<='0';
		bcd_input<="1000";
		wait for 100 ns;	
		enable<='0';
		bcd_input<="1001";
		wait for 100 ns;	




      -- insert stimulus here 

      wait;
   end process;

END;
