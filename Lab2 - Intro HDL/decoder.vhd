library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decoder is
    port(x, y, z, w          : in  std_logic;
         a, b, c, d, e, f, g : out std_logic);
end entity decoder;
 
architecture synth of decoder is
begin
	 a <= not ((x and not w) or (not x and z) or (y and z) or (not x and y and w) or (x and not y and not z));
    b <= not ((not x and not y and w) or (not y and z and not w) or (not x and z and w) or (x and not y and not z) or (x and not z and w) or (not x and y and not z and not w));
    c <= not ((not x and w) or (not z and w) or (not x and y) or (x and not y));
    d <= not ((not x and not y and z) or (not y and z and w) or (y and not z and w) or (y and z and not w) or (x and not z and not w));
    e <= not ((z and not w) or (x and not w) or (x and z) or (x and y));
    f <= not ((y and not w) or (x and not y) or (x and z) or (not x and y and not z));
    g <= not ((not y and z) or (z and not w) or (x and not y) or (x and w) or (not x and y and not z));
end architecture synth;
