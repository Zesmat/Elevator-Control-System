----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:43:11 12/27/2023 
-- Design Name: 
-- Module Name:    binary_to_bcd_converter - Behavioral 
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

entity binary_to_bcd_converter is
    Port ( binary_in : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd0 : out  STD_LOGIC_VECTOR (3 downto 0);
           bcd1 : out  STD_LOGIC_VECTOR (3 downto 0));
end binary_to_bcd_converter;

architecture Behavioral of binary_to_bcd_converter is
begin
process(binary_in)
variable bcd: STD_LOGIC_VECTOR (7 downto 0) ;  --We used variable because values assgin to signal after the process end
variable i: integer;
begin
bcd := "00000000";
for i in 3 downto 0 loop 
--if bcd digit greater than or equal 5 -> add 3 to that digit
		if (unsigned(bcd(3 downto 0)) >= 5) then
			bcd(3 downto 0) := std_logic_vector(unsigned(bcd(3 downto 0)) + 3); 
		end if;
	--shift bcd left with SI=each bit in binary_in
	bcd := bcd(6 downto 0) & binary_in(i);	
end loop;
bcd1 <= bcd(7 downto 4);
bcd0 <= bcd(3 downto 0);
end process;

end Behavioral;

