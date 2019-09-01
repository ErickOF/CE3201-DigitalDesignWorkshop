library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;


entity fulladder4bits_test is
end fulladder4bits_test;

architecture testbench of fulladder4bits_test is
    signal a, b, y : STD_LOGIC_VECTOR(3 downto 0);
    signal c_out   : STD_LOGIC;
begin
    UUT : entity work.fulladder4bits port map (a => a, b => b, y => y, c_out => c_out);

    a <=  "0000" after 0.05 ns,
          "0000" after 0.15 ns,
          "1111" after 0.25 ns,
          "1010" after 0.35 ns,
          "1111" after 0.45 ns;
    b <=  "0000" after 0.05 ns,
          "1111" after 0.15 ns,
          "0000" after 0.25 ns,
          "0101" after 0.35 ns,
          "1111" after 0.45 ns;

    assert a = "0000" and b = "0000" and y = "0000" and c_out = '0' report "There is an incorrect value on the output led" severity error;
    assert a = "0000" and b = "1111" and y = "1111" and c_out = '0' report "There is an incorrect value on the output led" severity error;
    assert a = "1111" and b = "0000" and y = "1111" and c_out = '0' report "There is an incorrect value on the output led" severity error;
    assert a = "1010" and b = "0101" and y = "0100" and c_out = '1' report "There is an incorrect value on the output led" severity error;
    assert a = "1111" and b = "1111" and y = "1110" and c_out = '1' report "There is an incorrect value on the output led" severity error;
end testbench;