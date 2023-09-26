library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity HardTestDispDriverALU4_4FP is
    port (
        i_CLK       : in  std_logic;
        o_Displays  : out std_logic_vector(3 downto 0);
        o_Segments  : out std_logic_vector(6 downto 0);
        o_DispPoint : out std_logic
    );
end entity HardTestDispDriverALU4_4FP;

architecture rtl of HardTestDispDriverALU4_4FP is
    
    component DisplayDriverALU4_4FP is
        port (
            i_CLK       : in  std_logic;
            i_Number    : in  std_logic_vector(7 downto 0);
            o_Displays  : out std_logic_vector(3 downto 0);
            o_Segments  : out std_logic_vector(6 downto 0);
            o_DispPoint : out std_logic
        );
    end component DisplayDriverALU4_4FP;
    
    signal r_Number   : std_logic_vector(7 downto 0);
    signal int_Number : integer range 0 to 255;

begin
    
    U1 : DisplayDriverALU4_4FP port map(
        i_CLK       => i_CLK,
        i_Number    => r_Number,
        o_Displays  => o_Displays,
        o_Segments  => o_Segments,
        o_DispPoint => o_DispPoint
    );
    
    stim_proc : process
    begin
        for i in 0 to 255 loop
            r_Number <= std_logic_vector( to_unsigned(i, r_Number'length));
            wait for 500 ms;
        end loop;
    end process;

end architecture rtl;