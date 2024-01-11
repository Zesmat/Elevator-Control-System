library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD_Decoder_7Seg is
    Port ( bcd_input : in STD_LOGIC_VECTOR (3 downto 0);
           enable : in STD_LOGIC;
           seg_output : out STD_LOGIC_VECTOR (6 downto 0));
end BCD_Decoder_7Seg;

architecture Behavioral of BCD_Decoder_7Seg is
begin
    process(bcd_input, enable)
    begin
        if enable = '1' then
            case bcd_input is
                when "0000" =>
                    seg_output <= "1111110"; -- 0 
                when "0001" =>
                    seg_output <= "0110000"; -- 1 
                when "0010" =>
                    seg_output <= "1101101"; -- 2 
                when "0011" =>
                    seg_output <= "1111001"; -- 3 
                when "0100" =>
                    seg_output <= "0110011"; -- 4 
                when "0101" =>
                    seg_output <= "1011011"; -- 5 
                when "0110" =>
                    seg_output <= "1011011"; -- 6 
                when "0111" =>
                    seg_output <= "1110000"; -- 7 
                when "1000" =>
                    seg_output <= "1111111"; -- 8 
                when "1001" =>
                    seg_output <= "1111011"; -- 9 
                when others =>
                    seg_output <= "0000000"; -- All segments off for invalid input
            end case;
        else
            seg_output <= "0000000"; -- All segments off when enable is '0'
        end if;
    end process;
end Behavioral;