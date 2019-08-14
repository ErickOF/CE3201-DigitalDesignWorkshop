library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder is
   port(a, b, c_in     : in  std_logic;
        sum, c_out : out std_logic);
end entity fulladder;
 
architecture synth of fulladder is
begin
   sum   <= a xor b xor c_in; 
   c_out <= (a and b) or (c_in and (a or b));
end architecture synth;