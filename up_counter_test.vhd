--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:21:29 12/27/2023
-- Design Name:   
-- Module Name:   Z:/Elevator/up_counter_test.vhd
-- Project Name:  Elevator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: up_counter_4_bit
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
 
ENTITY up_counter_test IS
END up_counter_test;
 
ARCHITECTURE behavior OF up_counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT up_counter_4_bit
    PORT(
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         Limit : IN  std_logic_vector(3 downto 0);
         Counter : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';
   signal Limit : std_logic_vector(3 downto 0) := (others => '0');
   
 	--Outputs
   signal Counter : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: up_counter_4_bit PORT MAP (
          CLK => CLK,
          CLR => CLR,
          Limit => Limit,
          Counter => Counter
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
      -- hold reset state for 100 ns
		--clr <= '1';
      wait for 100 ns;	
		limit <= "0101";
      clr <= '0';
		wait for 700 ns;
		clr <= '1';
		wait for 50 ns;
		clr <= '0';
   wait;

      -- insert stimulus here 

      wait;
   end process;

END;
