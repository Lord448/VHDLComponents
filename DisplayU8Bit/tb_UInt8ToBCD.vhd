Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity tb_UInt8ToBCD is
end entity tb_UInt8ToBCD;

architecture rtl of tb_UInt8ToBCD is
    constant PERIOD: time := 1 ns;
    signal i_Number     : unsigned(7 downto 0) := (others => '0');
    signal o_BCDNumber1 : std_logic_vector(3 downto 0) := (others => '0');
    signal o_BCDNumber2 : std_logic_vector(3 downto 0) := (others => '0');
    signal o_BCDNumber3 : std_logic_vector(3 downto 0) := (others => '0');

    component UInt8ToBCD is
        port (
            i_Number     : in  unsigned(7 downto 0);
            o_BCDNumber1 : out std_logic_vector(3 downto 0);
            o_BCDNumber2 : out std_logic_vector(3 downto 0);
            o_BCDNumber3 : out std_logic_vector(3 downto 0)
        );
    end component UInt8ToBCD;

begin
    
    U1 : UInt8ToBCD port map(
        i_Number      => i_Number,
        o_BCDNumber1  => o_BCDNumber1,
        o_BCDNumber2  => o_BCDNumber2,
        o_BCDNumber3  => o_BCDNumber3
    );
    
    stim_proc : process
    begin
        for i in 0 to 255 loop
            i_Number <= unsigned( to_unsigned(i, i_Number'length));
            wait for PERIOD;
        end loop;
        wait;
    end process;

end architecture rtl;