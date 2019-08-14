library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;


entity fulladder4bits_test is
end fulladder4bits_test;

architecture tb of fulladder4bits_test is
    signal a, b, y : STD_LOGIC_VECTOR(3 downto 0);
    signal c_out : STD_LOGIC;
begin
    UUT : entity work.fulladder4bits port map (a => a, b => b, y => y, c_out => c_out);
end tb ;