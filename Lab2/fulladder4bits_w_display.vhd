library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fulladder4bits_w_display is
    port(A, B : in  STD_LOGIC_VECTOR(3 downto 0);
         Y    : out STD_LOGIC_VECTOR(6 downto 0));
end entity fulladder4bits_w_display;
 
architecture synth of fulladder4bits_w_display is
    component disp_deco
    port(x, y, z, w          : in  STD_LOGIC;
         a, b, c, d, e, f, g : out STD_LOGIC);
    end component;

    signal c_out : STD_LOGIC;
    signal sum   : STD_LOGIC_VECTOR(3 downto 0);
begin
    fulladder4bit : entity work.fulladder4bits port map(a => A, b => B, Y => sum, c_out => c_out);
    display       : disp_deco                  port map(x => sum(3), y => sum(2), z => sum(1), w => sum(0),
                                                        a => Y(6), b => Y(5), c => Y(4), d => Y(3),
                                                        e => Y(2), f => Y(1), g => Y(0));
end architecture synth;