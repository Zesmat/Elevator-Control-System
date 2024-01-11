--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:00:39 01/01/2024
-- Design Name:   
-- Module Name:   C:/iverilog/Enc_anotherway/test.vhd
-- Project Name:  Enc_anotherway
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: enc
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
 
ENTITY enc_16_4_test IS
END enc_16_4_test;
 
ARCHITECTURE behavior OF enc_16_4_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT enc_16_4
    PORT(
         enc_in : IN  std_logic_vector(15 downto 0);
         enable : IN  std_logic;
         enc_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal enc_in : std_logic_vector(15 downto 0) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal enc_out : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: enc_16_4 PORT MAP (
          enc_in => enc_in,
          enable => enable,
          enc_out => enc_out
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		enc_in<="0000000010100001";
		enable<='1';


      -- insert stimulus here 

      wait;
   end process;

END;
