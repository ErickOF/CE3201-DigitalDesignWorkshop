library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fulladder4bits is
    port(A, B  : in  STD_LOGIC_VECTOR(3 downto 0);
         Y     : out STD_LOGIC_VECTOR(3 downto 0);
         c_out : out STD_LOGIC);
end entity fulladder4bits;
 
architecture synth of fulladder4bits is
    signal carry: STD_LOGIC_VECTOR(3 downto 0);
begin
    carry(0) <= '0';
    bit0 : entity work.fulladder port map(a => A(0), b => B(0), sum => Y(0), c_in => carry(0), c_out => carry(1));
    bit1 : entity work.fulladder port map(a => A(1), b => B(1), sum => Y(1), c_in => carry(1), c_out => carry(2));
    bit2 : entity work.fulladder port map(a => A(2), b => B(2), sum => Y(2), c_in => carry(2), c_out => carry(3));
    bit3 : entity work.fulladder port map(a => A(3), b => B(3), sum => Y(3), c_in => carry(3), c_out => c_out);
end architecture synth;