library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Display8Bit is
    port (
        i_CLK      : in  std_logic;
        o_Displays : out std_logic_vector(3 downto 0);
        o_Segments : out std_logic_vector(6 downto 0)
    );
end entity Display8Bit;

architecture rtl of Display8Bit is
    signal r_Count : integer range 0 to 100000;
    signal r_Sel   : std_logic_vector(1 downto 0) := "00";
    signal r_Show  : std_logic_vector(3 downto 0) := "0000";
    signal r_Num1, r_Num2, r_Num3, r_Num4 : std_logic_vector(6 downto 0);
begin
    
    clkCount : process(i_CLK)
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

    ShowDisplays : process(r_Sel)
    begin
        case r_Sel is
            when "00" => 
                r_Show <= "1110";
            when "01" =>
                r_Show <= "1101";
            when "10" =>
                r_Show <= "1011";
            when "11" =>
                r_Show <= "0111";
            when others =>
                r_Show <= "1111";
        end case;

        case r_Show is
            when "1110" =>
                o_Segments <= r_Num4;
            when "1101" =>
                o_Segments <= r_Num3;
            when "1011" =>
                o_Segments <= r_Num2;
            when "0111" =>
                o_Segments <= r_Num1;
            when others =>
                o_Segments <= "1111111";
        end case;    
    end process;

    o_Displays <= r_Show;
    r_Num1 <= "1000000";
    r_Num2 <= "1111001";
    r_Num3 <= "0100100";
    r_Num4 <= "0110000";
    
end architecture rtl;