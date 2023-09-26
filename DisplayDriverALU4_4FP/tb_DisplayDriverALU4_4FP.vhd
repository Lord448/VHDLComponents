library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity tb_DisplayDriverALU4_4FP is
end entity tb_DisplayDriverALU4_4FP;

architecture rtl of tb_DisplayDriverALU4_4FP is
    
    component DisplayDriverALU4_4FP is
        port (
            i_CLK       : in  std_logic;
            i_Number    : in  std_logic_vector(7 downto 0);
            o_Displays  : out std_logic_vector(3 downto 0);
            o_Segments  : out std_logic_vector(6 downto 0);
            o_DispPoint : out std_logic
        );
    end component DisplayDriverALU4_4FP;

    component BCDTo7Segs is
        port (
            i_DispPoint       : in  std_logic;                     --Display point enable
            i_ChipEn          : in  std_logic;                     --Chip enable (works with PNP transistors)
            i_Number          : in  std_logic_vector(3 downto 0);  --Number that will be displayed
            o_DisplaySegments : out std_logic_vector(6 downto 0);  --Display segments vector
            o_DispEnable      : out std_logic;                     --Out pin to enable the display (works with i_ChipEn)
            o_DispPoint       : out std_logic                      --Turns up or down the display point (works with i_DispPoint)
        );
    end component BCDTo7Segs;

    signal i_CLK       : std_logic := '0';
    signal i_Number    : std_logic_vector(7 downto 0) := (others => '0');
    signal o_Displays  : std_logic_vector(3 downto 0) := (others => '0');
    signal o_Segments  : std_logic_vector(6 downto 0) := (others => '0');
    signal int_Number  : integer range 0 to 255;
    signal r_Count     : integer range 0 to 100000;

begin
    
    U1: DisplayDriverALU4_4FP port map(
        i_CLK       => i_CLK,
        i_Number    => i_Number,
        o_Displays  => o_Displays,
        o_Segments  => o_Segments
    );

    clk_proc : process
    begin
        i_CLK <= '1';
        wait for 10 fs;
        i_CLK <= '0';
        wait for 10 fs;
    end process;

    stim_proc : process(i_CLK)
    begin
        if rising_edge(i_CLK) then
            if r_Count < 10 then
                r_Count <= r_Count + 1;
            else
                if int_Number < 255 then
                    i_Number <= std_logic_vector( to_unsigned(int_Number, i_Number'length));
                    int_Number <= int_Number + 1;
                else
                    int_Number <= 0;
                end if;
            end if;
        end if;
    end process;
    
end architecture rtl;