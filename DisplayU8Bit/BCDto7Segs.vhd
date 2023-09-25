library IEEE;
use IEEE.std_logic_1164.all;

--Designed only for CycloneIV displays
entity BCDto7Segs is
    port (
        i_DispPoint       : in  std_logic;                     --Display point enable
        i_ChipEn          : in  std_logic;                     --Chip enable (works with PNP transistors)
        i_Number          : in  std_logic_vector(3 downto 0);  --Number that will be displayed
        o_DisplaySegments : out std_logic_vector(6 downto 0);  --Display segments vector
        o_DispEnable      : out std_logic;                     --Out pin to enable the display (works with i_ChipEn)
        o_DispPoint       : out std_logic                      --Turns up or down the display point (works with i_DispPoint)
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

    with i_Number select
        o_DisplaySegments <= "1111110" when "0000",
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

    o_DispEnable  <= not i_ChipEn;

    o_DispPoint <= i_DispPoint;

end architecture;