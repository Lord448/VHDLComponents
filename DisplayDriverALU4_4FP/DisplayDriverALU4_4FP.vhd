library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity DisplayDriverALU4_4FP is
    port (
        i_CLK       : in  std_logic;
        i_OpSel     : in  std_logic_vector(1 downto 0);
        i_Number    : in  std_logic_vector(15 downto 0); --Number with fixed point in the middle (0x00.00)
        o_Displays  : out std_logic_vector(3 downto 0);
        o_Segments  : out std_logic_vector(6 downto 0);
        o_DispPoint : out std_logic;
        o_NumSign   : out std_logic
    );
end entity DisplayDriverALU4_4FP;

architecture rtl of DisplayDriverALU4_4FP is
    
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
    
    constant DISP_NEGATIVE_SIGN       : std_logic_vector(6 downto 0) := "0111111";
    constant DISP_POSITIVE_SIGN       : std_logic_vector(6 downto 0) := "1111111";
    --Multiplexor Registers
    signal r_Sel                      : std_logic_vector(1 downto 0) := "00";
    signal r_Show                     : std_logic_vector(3 downto 0) := "0000";
    signal r_Number                   : std_logic_vector(15 downto 0);
    signal r_Number8                  : std_logic_vector(7 downto 0);
    signal r_Count                    : integer range 0 to 100000;
    --Integer Part Registers
    signal r_Segs1, r_Segs2           : std_logic_vector(6 downto 0);
    signal r_SegsConn1, r_SegsConn2   : std_logic_vector(6 downto 0);
    --Decimal Part Registers
    signal r_Segs3, r_Segs4           : std_logic_vector(6 downto 0);
    signal r_SegsConn3, r_SegsConn4   : std_logic_vector(6 downto 0);
    --Signed Logic Registers
    signal r_NumberSign               : std_logic;
    signal r_MultOp                   : std_logic;
    signal r_IntPNumber, r_DecPNumber : std_logic_vector(7 downto 0);
    
begin
    --Integer part displays
    DisplayDecoder1 : BCDTo7Segs port map (
        i_DispPoint       => '1',
        i_ChipEN          => '1',
        i_Number          => r_IntPNumber(7 downto 4),
        o_DisplaySegments => r_SegsConn1
    );

    DisplayDecoder2 : BCDTo7Segs port map (
        i_DispPoint       => '0',
        i_ChipEN          => '1',
        i_Number          => r_IntPNumber(3 downto 0),
        o_DisplaySegments => r_SegsConn2
    );
    --Decimal part displays
    DisplayDecoder3 : BCDTo7Segs port map (
        i_DispPoint       => '0',
        i_ChipEN          => '1',
        i_Number          => r_DecPNumber(7 downto 4),
        o_DisplaySegments => r_SegsConn3
    );

    DisplayDecoder4 : BCDTo7Segs port map (
        i_DispPoint       => '0',
        i_ChipEN          => '1',
        i_Number          => r_DecPNumber(3 downto 0),
        o_DisplaySegments => r_SegsConn4
    );

    clkCount : process(i_CLK)
    begin
        if rising_edge(i_CLK) then
            if r_Count < 100000 then --100000
                r_Count <= r_Count + 1;
            else 
                r_Sel <= r_Sel + 1;
                r_Count <= 0;
            end if;
        end if;
    end process;

    ShowDisplays : process(r_Sel)
    begin
        r_Segs1 <= r_SegsConn1;
        r_Segs2 <= r_SegsConn2;
        r_Segs3 <= r_SegsConn3;
        r_Segs4 <= r_SegsConn4;
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
        
        if r_MultOp = '0' then --Not a multiplication
            case r_Show is
                when "0111" => --Display 1
                    o_DispPoint <= '1'; --Turn off the point led
                    if r_NumberSign = '1' then 
                        o_Segments <= DISP_NEGATIVE_SIGN;
                    else
                        o_Segments <= DISP_POSITIVE_SIGN;
                    end if;
                when "1011" => --Display 2
                    o_Segments  <= r_Segs2;
                    o_DispPoint <= '0'; --Turn on the point led 
                when "1101" => --Display 3
                    o_Segments  <= r_Segs3;
                    o_DispPoint <= '1'; --Turn off the point led
                when others => --Display 4
                    o_Segments  <= "1111111";
                    o_DispPoint <= '1'; --Turn off the point led
            end case;
        else -- Is a Multiplication
            case r_Show is
                when "0111" => --Display 1
                    o_Segments  <= r_Segs1;
                    o_DispPoint <= '1'; --Turn off the point led
                when "1011" => --Display 2
                    o_Segments  <= r_Segs2;
                    o_DispPoint <= '0'; --Turn on the point led 
                when "1101" => --Display 3
                    o_Segments  <= r_Segs3;
                    o_DispPoint <= '1'; --Turn off the point led
                when others => --Display 4
                    o_Segments  <= r_Segs4;
                    o_DispPoint <= '1'; --Turn off the point led
            end case;
        end if;
    end process;
	 
	 --Selecting the sign bit
    with i_OpSel select r_NumberSign <=
        '0' when "00",
        i_Number(7) when "01",
        i_Number(15)  when others; --Multiplication
		  
    --Coverting A2 into Signed Magnitude
    with r_NumberSign select r_Number  <=
        not(i_Number-1) when '1',
        i_Number        when others;
    with r_NumberSign select r_Number8 <=
        not(i_Number(7 downto 0)-1) when '1',
        i_Number(7 downto 0) when others;

    --Integer Part
    with r_MultOp select r_IntPNumber(7 downto 4) <= --0000 XXXX . XXXX XXXX
        (others => '0') when '0',           --No multiplication
        r_Number(15 downto 12) when others; --Multiplication
    with r_MultOp select r_IntPNumber(3 downto 0) <= --XXXX 0000 . XXXX XXXX
        r_Number8(7 downto 4) when '0',     --No multiplication
        r_Number(11 downto 8) when others;  --Multiplication

    --Decimal Part
    with r_MultOp select r_DecPNumber(7 downto 4) <= --XXXX XXXX . 0000 XXXX
        r_Number8(3 downto 0) when '0',     --No multiplication
        r_Number(7 downto 4) when others;   --Multiplication
    with r_MultOp select r_DecPNumber(3 downto 0) <= --XXXX XXXX . XXXX 0000
        (others => '0') when '0',           --No multiplication
        r_Number(3 downto 0) when others;   --Multiplication

    o_Displays <= r_Show;

    r_MultOp <= i_OpSel(1);

    o_NumSign <= not r_NumberSign;

end architecture rtl;