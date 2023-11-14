library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.float_pkg.all;

entity BaudCalculator is
    port (
        i_Baudios  : in  unsigned range 0 to 115200;
        i_CLK_Freq : in  float32;
        o_Result   : out unsigned(15 downto 0)
    );
end entity BaudCalculator;

architecture rtl of BaudCalculator is

    signal r_Period     : float32;
    signal r_TimePerBit : float32;

begin
    
    r_Period <= 1 / i_CLK_Freq;
    r_TimePerBit <= 1 / i_Baudios;

end architecture;