library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity DisplayU8Bit is
    port (
        i_CLK      : in  std_logic;
        i_Number   : in  std_logic_vector(7 downto 0);
        o_Displays : out std_logic_vector(3 downto 0);
        o_Segments : out std_logic_vector(6 downto 0)
    );
end entity DisplayU8Bit;

architecture rtl of DisplayU8Bit is

    component BCDto7Segs is
        port (
            i_DispPoint       : in  std_logic;                     --Display point enable
            i_ChipEn          : in  std_logic;                     --Chip enable (works with PNP transistors)
            i_Number          : in  std_logic_vector(3 downto 0);  --Number that will be displayed
            o_DisplaySegments : out std_logic_vector(6 downto 0);  --Display segments vector
            o_DispEnable      : out std_logic;                     --Out pin to enable the display (works with i_ChipEn)
            o_DispPoint       : out std_logic                      --Turns up or down the display point (works with i_DispPoint)
        );
    end component BCDto7Segs;

    signal r_Count       : integer range 0 to 100000;
    signal r_Sel         : std_logic_vector(1 downto 0) := "00";
    signal r_DispEnable  : std_logic_vector(3 downto 0) := "0000";
    signal r_BCDNum1, r_BCDNum2, r_BCDNum3    : std_logic_vector(3 downto 0);
    signal r_NumSegs1, r_NumSegs2, r_NumSegs3 : std_logic_vector(6 downto 0) := (others => '0');

begin

    DisplayEncoder1 : BCDto7Segs
    port map (
        i_DispPoint => '0',
        i_ChipEn => '1',
        i_Number => r_BCDNum1,
        o_DisplaySegments => r_NumSegs1
    );

    DisplayEncoder2 : BCDto7Segs
    port map (
        i_DispPoint => '0',
        i_ChipEn => '1',
        i_Number => r_BCDNum2,
        o_DisplaySegments => r_NumSegs2
    );

    DisplayEncoder3 : BCDto7Segs
    port map (
        i_DispPoint => '0',
        i_ChipEn => '1',
        i_Number => r_BCDNum3,
        o_DisplaySegments => r_NumSegs3
    );

    p_DisplayTiming : process(i_CLK)
    begin
        if rising_edge(i_CLK) then
            if r_Count < 100000 then
                r_Count <= r_Count + 1;
            else
                r_Sel <= r_Sel + 1;
                r_Count <= 0;
            end if;
        end if;
    end process;

    p_ShowDisplays : process(r_Sel)
    begin
        case r_Sel is
            when "00" => 
                r_DispEnable <= "1110";
            when "01" =>
                r_DispEnable <= "1101";
            when "10" =>
                r_DispEnable <= "1011";
            when "11" =>
                r_DispEnable <= "0111";
            when others =>
                r_DispEnable <= "1111";
        end case;

        case r_DispEnable is
            when "1110" =>
                o_Segments <= "0000000";
            when "1101" =>
                o_Segments <= r_NumSegs3;
            when "1011" =>
                o_Segments <= r_NumSegs2;
            when "0111" =>
                o_Segments <= r_NumSegs1;
            when others =>
                o_Segments <= "1111111";
        end case;    
    end process;

    o_Displays <= r_DispEnable;

end architecture;