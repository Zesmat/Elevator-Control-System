----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:25:31 12/30/2023 
-- Design Name: 
-- Module Name:    Timer - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Timer is
    Port ( CLK : in  STD_LOGIC;
           EN : in  STD_LOGIC;
			  reset: in STD_LOGIC;
           Limit : in  STD_LOGIC_VECTOR (3 downto 0);
           EN_out : out  STD_LOGIC);
end Timer;


architecture Behavioral of Timer is

component  clock_divider is
	Generic(
    IN_FREQ: integer := 100000000; --default 100 MHz
    OUT_FREQ: integer := 10000000); --default 10 MHz
    Port ( clk : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end component; 

component up_counter_4_bit is
    Port ( CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           Limit : in  STD_LOGIC_VECTOR (3 downto 0);
           Counter : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
signal clk_in: STD_LOGIC;
signal clk_counter: STD_LOGIC;
signal count: STD_LOGIC_VECTOR (3 downto 0);
begin
En_out <= '1' when count = limit else '0';
--generate clock/start timer when enable is 1
clk_in <= clk and En;
Clock: clock_divider generic map(IN_FREQ => 100000000, OUT_FREQ => 10000000) port map(clk => clk_in, clk_out => clk_counter);
Up_Counter: up_counter_4_bit port map(clk => clk_counter, clr => reset, limit => limit, counter => count);


end Behavioral;

