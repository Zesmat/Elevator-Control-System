----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:32:26 12/27/2023 
-- Design Name: 
-- Module Name:    clock_divider - Behavioral 
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

entity clock_divider is
	Generic(
    IN_FREQ: integer := 100000000; --default 100 MHz
    OUT_FREQ: integer := 10000000); --default 10 MHz
    Port ( clk : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is
signal count : integer :=1;
signal temp : STD_LOGIC:='0';
begin
process(clk) 
begin
if(rising_edge(clk)) then
	count <=count+1;
	--0.5*in_freq/out_freq or 0.5*out_period/in_period 
	if(count = (IN_FREQ/OUT_FREQ)/2) then
		temp <= not temp;
		count <=1;
	end if;
end if;
clk_out<=temp;
end process;

end Behavioral;

