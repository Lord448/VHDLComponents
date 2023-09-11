library IEEE;
use IEEE.std_logic_1164.all;

--Designed only for Cyclone4 displays
entity BCDto7Segs is
    port (
        DPEN    : in std_logic;                     --Display point enable
        CEN     : in  std_logic;                    --Chip enable (works with PNP transistors)
        NUM     : in  std_logic_vector(3 downto 0); --Number that will be displayed
        DISP    : out std_logic_vector(6 downto 0); --Display segments vector
        DISPEN  : out std_logic;                    --Out pin to enable the display (works with CEN)
        POINTEN : out std_logic                     --Turns up or down the display point (works with DPEN)
    );
end entity BCDto7Segs;

architecture rtl of BCDto7Segs is
    --Segments connection on board
    --a  - 128
    --b  - 121 
    --c  - 125 
    --d  - 129
    --e  - 132
    --f  - 126
    --g  - 124   
    --dp - 127
    --Enable Disp 1 - 133
    --Enable Disp 2 - 135
    --Enable Disp 3 - 136
    --Enable Disp 4 - 137
begin

    with NUM select
        DISP <= "1111110" when "0000",
                "0110000" when "0001",
                "1101101" when "0010",
                "1111001" when "0011",
                "0110011" when "0100",
                "1011011" when "0101",
                "1011111" when "0110",
                "1110000" when "0111",
                "1111111" when "1000",
                "1110011" when "1001",
                "1110111" when "1010",
                "0011111" when "1011",
                "0001101" when "1100",
                "0111101" when "1101",
                "0011111" when "1110",
                "1000111" when others;

    DISPEN  <= not CEN;

    POINTEN <= DPEN;

end architecture;