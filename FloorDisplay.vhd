----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:07 12/28/2023 
-- Design Name: 
-- Module Name:    FloorDisplay - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 7-segment display for floor numbers from 0 to 15
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.components.all;

entity FloorDisplay is
    Port (
        FLOOR : in  STD_LOGIC_VECTOR(3 downto 0);  -- Binary representation of the floor number (0 to 15)
        SEG1  : out STD_LOGIC_VECTOR(6 downto 0); -- Output for DISPLAY1
        SEG2  : out STD_LOGIC_VECTOR(6 downto 0)  -- Output for DISPLAY2
    );
end FloorDisplay;

architecture Behavioral of FloorDisplay is
begin
    process(FLOOR)
    begin
        case FLOOR is
            when "0000" =>  -- Floor 0
                SEG1 <= "1011110";  -- G on display 1 
                SEG2 <= "1111110";  -- 0 on display 2 
            when "0001" =>  -- Floor 1
                SEG1 <= "0110000";  -- 1 on display 1 
                SEG2 <= "1111110";  -- 0 on display 2
            when "0010" =>  -- Floor 2
                SEG1 <= "1101101";  -- 2 on display 1  
                SEG2 <= "1111110";  -- 0 on display 2 
            when "0011" =>  -- Floor 3
                SEG1 <= "1111001";  --3 on display 1 
                SEG2 <= "1111110";  -- 0 on display 2 
            when "0100" =>  -- Floor 4
                SEG1 <= "0110011";  --4 on display 1 
                SEG2 <= "1111110";  -- 0 on display 2
            when "0101" =>  -- Floor 5
                SEG1 <= "1011011";  --5 on display 1 
                SEG2 <= "1111110";  -- 0 on display 2
            when "0110" =>  -- Floor 6
                SEG1 <= "1011011";  --6 on display 1 
                SEG2 <= "1111110";  -- 0 on display 2
            when "0111" =>  -- Floor 7
                SEG1 <= "1110000";  --7 on display 1 
                SEG2 <= "1111110";  -- 0 on display 2
            when "1000" =>  -- Floor 8
                SEG1 <= "1111111";  --8 on display 1 
                SEG2 <= "1111110";  -- 0 on display 2
            when "1001" =>  -- Floor 9
                SEG1 <= "1111011";  --9 on display 1 
                SEG2 <= "1111110";  -- 0 on display 2
            when "1010" =>  -- Floor 10
                SEG1 <= "0110000";  --1 on display 1
                SEG2 <= "1111110";  -- 0 on display 2
            when "1011" =>  -- Floor 11
                SEG1 <= "0110000";  --1 on display 1
                SEG2 <= "0110001";  -- 1 on display 2
            when "1100" =>  -- Floor 12
                SEG1 <= "0110000";  --1 on display 1
                SEG2 <= "0110000";  -- 2 on display 2
            when "1101" =>  -- Floor 13
                SEG1 <= "0110000";  --1 on display 1
                SEG2 <= "1111001";  -- 3 on display 2
            when "1110" =>  -- Floor 14
                SEG1 <= "0110000";  --1 on display 1
                SEG2 <= "0110011";  -- 4 on display 2
            when "1111" =>  -- Floor 15
                SEG1 <= "0110000";  --1 on display 1
                SEG2 <= "1011011";  -- 5 on display 2
            when others =>  -- Undefined floor
                SEG1 <= "1111111";  
                SEG2 <= "1111111";  
        end case;
    end process;
end Behavioral;



architecture binary_to_7seg of FloorDisplay is 
signal bcd0, bcd1: STD_LOGIC_VECTOR(3 downto 0);
begin 
binary_to_bcd : binary_to_bcd_converter Port map ( binary_in => floor, bcd0 => bcd0, bcd1 => bcd1);
segment1 : BCD_Decoder_7Seg Port map ( bcd_input => bcd1, enable => '1', seg_output => seg2);
segment2 : BCD_Decoder_7Seg Port map ( bcd_input => bcd0, enable => '1', seg_output => seg1);

end binary_to_7seg;