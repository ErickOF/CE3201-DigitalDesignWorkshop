library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;


entity fulladder4bits_w_display_test is
end fulladder4bits_w_display_test;

architecture testbench of fulladder4bits_w_display_test is
    signal a, b : STD_LOGIC_VECTOR(3 downto 0);
    signal y    : STD_LOGIC_VECTOR(6 downto 0);
begin
    UUT : entity work.fulladder4bits_w_display port map (a => a, b => b, y => y);

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
    assert a = "0000" and b = "0000" and y = "1111110" report "Error" severity error;
	 assert a = "0000" and b = "1111" and y = "1000111" report "Error" severity error;
	 assert a = "1111" and b = "0000" and y = "1000111" report "Error" severity error;

end testbench;