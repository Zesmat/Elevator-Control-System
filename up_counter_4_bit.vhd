----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:14 12/27/2023 
-- Design Name: 
-- Module Name:    up_counter_4_bit - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity up_counter_4_bit is
    Port ( CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           Limit : in  STD_LOGIC_VECTOR (3 downto 0);
           Counter : out  STD_LOGIC_VECTOR (3 downto 0));
end up_counter_4_bit;

architecture Behavioral of up_counter_4_bit is

signal counter_up: std_logic_vector(3 downto 0):= "0000";
begin
-- up counter
process(clk, clr)
begin
--resets counter if clr =1
if(clr='1') then
    counter_up <= "0000";
    
elsif(rising_edge(clk)) then
--if counter reashes the limit it restart agian
    if(counter_up = limit) then
         counter_up <= "0000";
    else
     --each clk counter increases by 1
        counter_up <= std_logic_vector(unsigned(counter_up) + 1);
    end if;
 end if;
end process;
-- assign value
counter <= counter_up;

end Behavioral;