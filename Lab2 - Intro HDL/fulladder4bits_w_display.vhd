library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fulladder4bits_w_display is
    port(A, B   : in  STD_LOGIC_VECTOR(3 downto 0);
         Y1, Y2 : out STD_LOGIC_VECTOR(6 downto 0));
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
    display1      : entity work.decoder        port map(x => sum(3), y => sum(2), z => sum(1), w => sum(0),
                                                        a => Y1(6), b => Y1(5), c => Y1(4), d => Y1(3),
                                                        e => Y1(2), f => Y1(1), g => Y1(0));
	 display2      : entity work.decoder        port map(x => '0', y => '0', z => '0', w => c_out,
                                                        a => Y2(6), b => Y2(5), c => Y2(4), d => Y2(3),
                                                        e => Y2(2), f => Y2(1), g => Y2(0));
end architecture synth;