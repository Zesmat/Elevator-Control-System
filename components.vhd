--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package components is

component  FloorDisplay is
    Port (
        FLOOR : in  STD_LOGIC_VECTOR(3 downto 0);  -- Binary representation of the floor number (0 to 15)
        SEG1  : out STD_LOGIC_VECTOR(6 downto 0); -- Output for DISPLAY1
        SEG2  : out STD_LOGIC_VECTOR(6 downto 0)  -- Output for DISPLAY2
    );
end component;


component enc_16_4 IS
	PORT ( 
    enc_in  : in  std_logic_vector(15 downto 0);
    enable  : in  std_logic;
    enc_out : out std_logic_vector(3 downto 0)
		);
end component;
	
component Timer is
    Port ( CLK : in  STD_LOGIC;
				reset: in STD_LOGIC;
           EN : in  STD_LOGIC;
           Limit : in  STD_LOGIC_VECTOR (3 downto 0);
           EN_out : out  STD_LOGIC);
end component;


component binary_to_bcd_converter is
    Port ( binary_in : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd0 : out  STD_LOGIC_VECTOR (3 downto 0);
           bcd1 : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component BCD_Decoder_7Seg is
    Port ( bcd_input : in STD_LOGIC_VECTOR (3 downto 0);
           enable : in STD_LOGIC;
           seg_output : out STD_LOGIC_VECTOR (6 downto 0));
end component;
 



-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end components;

package body components is


---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end components;
