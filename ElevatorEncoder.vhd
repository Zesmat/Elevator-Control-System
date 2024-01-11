----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:13:25 12/31/2023 
-- Design Name: 
-- Module Name:    anotherway - Behavioral 
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

library ieee;
use ieee.std_logic_1164.all;

ENTITY enc_16_4 IS
PORT ( 
    enc_in  : in  std_logic_vector(15 downto 0);
    enable  : in  std_logic;
    enc_out : out std_logic_vector(3 downto 0)
);
END enc_16_4;

ARCHITECTURE encoder OF enc_16_4 IS
BEGIN
    Process(enc_in, enable)
    BEGIN
        if enable = '1' then
            if (enc_in(15) = '1') then 
                enc_out <= "1111";
            elsif (enc_in(14) = '1') then 
                enc_out <= "1110";
            elsif (enc_in(13) = '1') then 
                enc_out <= "1101";
            elsif (enc_in(12) = '1') then 
                enc_out <= "1100";
            elsif (enc_in(11) = '1') then 
                enc_out <= "1011";
            elsif (enc_in(10) = '1') then 
                enc_out <= "1010";
            elsif (enc_in(9) = '1') then 
                enc_out <= "1001";
            elsif (enc_in(8) = '1') then 
                enc_out <= "1000";
            elsif (enc_in(7) = '1') then 
                enc_out <= "0111";
            elsif (enc_in(6) = '1') then 
                enc_out <= "0110";
            elsif (enc_in(5) = '1') then 
                enc_out <= "0101";
            elsif (enc_in(4) = '1') then 
                enc_out <= "0100";
            elsif (enc_in(3) = '1') then 
                enc_out <= "0011";
            elsif (enc_in(2) = '1') then 
                enc_out <= "0010";
            elsif (enc_in(1) = '1') then 
                enc_out <= "0001";
            elsif(enc_in(0) = '1') then
                enc_out <= "0000";
				else
					enc_out <= "UUUU";
            end if;
        else 
            enc_out <= "0000";  -- Default value when enable is '0'
        end if;
    End process;
END encoder;