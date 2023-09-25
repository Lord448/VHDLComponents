library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity UInt8ToBCD is
    port (
        i_Number     : in  unsigned(7 downto 0);
        o_BCDNumber1 : out std_logic_vector(3 downto 0);
        o_BCDNumber2 : out std_logic_vector(3 downto 0);
        o_BCDNumber3 : out std_logic_vector(3 downto 0)
    );
end entity UInt8ToBCD;

architecture rtl of UInt8ToBCD is
    
    function division (num : unsigned; den : unsigned) return unsigned is
        variable var_num : unsigned(num'length-1 downto 0) := num;
        variable var_den : unsigned(den'length-1 downto 0) := den;
        variable var_res : unsigned(den'length downto 0) := (others => '0');
        variable i : integer := 0;
    begin
        for i in 0 to den'length-1 loop
            var_res(den'length-1 downto 1) := var_res(den'length-2 downto 0);
            var_res(0) := var_num(num'length-1);
            var_num(num'length-1 downto 1) := var_num(num'length-2 downto 0);
            var_res := var_res-den;
            if(var_res(den'length-1) ='1') then
                var_num(0) :='0';
                var_res := var_res + var_den;
            else
                var_num(0) :='1';
            end if;
        end loop;
        return var_res;
    end function;
                
    signal r_Hundreds  : unsigned(7 downto 0) := (others => '0');
    signal r_Tens      : unsigned(7 downto 0) := (others => '0');
    signal r_Units     : unsigned(7 downto 0) := (others => '0');
    signal r_Number1   : unsigned(7 downto 0) := (others => '0');
    signal r_Number2   : unsigned(7 downto 0) := (others => '0');

begin
    
    p_GetInts : process(i_Number)
    begin
        r_Number1 <= division(i_Number, to_unsigned(100, 7));
        r_Hundreds <= r_Number1(3 downto 0) * 100;
        r_Number2 <= i_Number - r_Hundreds;
        r_Number2 <= division(r_Number2, to_unsigned(10, 7));
        r_Tens <= r_Number2(3 downto 0) * 10;
        r_Units <= (i_Number - r_Hundreds) - r_Tens;
    end process;

    o_BCDNumber1 <= std_logic_vector(r_Units(3 downto 0));
    o_BCDNumber2 <= std_logic_vector(r_Number1(3 downto 0));
    o_BCDNumber3 <= std_logic_vector(r_Number2(3 downto 0));

end architecture rtl;