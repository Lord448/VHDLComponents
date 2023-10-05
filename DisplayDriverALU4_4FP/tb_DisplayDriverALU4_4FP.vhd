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
            i_OpSel     : in  std_logic_vector(1 downto 0);
            i_Number    : in  std_logic_vector(15 downto 0); --Number with fixed point in the middle (0x00.00)
            o_Displays  : out std_logic_vector(3 downto 0);
            o_Segments  : out std_logic_vector(6 downto 0);
            o_DispPoint : out std_logic;
            o_NumSign   : out std_logic
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
    signal o_NumSign   : std_logic := '0';
    signal i_Number    : std_logic_vector(15 downto 0) := (others => '0');
    signal o_Displays  : std_logic_vector(3 downto 0) := (others => '0');
    signal o_Segments  : std_logic_vector(6 downto 0) := (others => '0');
    signal i_OpSel     : std_logic_vector(1 downto 0) := (others => '0');
    signal int_Number  : integer range 0 to 65535;
    signal r_Count     : integer range 0 to 100000;

begin
    
    U1: DisplayDriverALU4_4FP port map(
        i_CLK      => i_CLK,
        i_OpSel    => i_OpSel,
        i_Number   => i_Number,
        o_Displays => o_Displays,
        o_Segments => o_Segments,
        o_NumSign  => o_NumSign
    );

    clk_proc : process
    begin
        i_CLK <= '1';
        wait for 10 ns;
        i_CLK <= '0';
        wait for 10 ns;
    end process;
    
    i_Number(15 downto 12) <= (others => '0');
    i_Number(3 downto 0) <= (others => '0');

    stim_proc : process
    begin
        if int_Number < 65535 then
            i_Number <= std_logic_vector( to_unsigned(int_Number, i_Number'length));
            int_Number <= int_Number + 1;
        else
            int_Number <= 0;
            wait;
        end if;
    end process;
    
end architecture rtl;