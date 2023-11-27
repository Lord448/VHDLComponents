library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity UART_RX is 
    generic (
        g_CLKS_PER_BIT: integer := 115
    );
    port (
        i_CLK       : in std_logic;
        i_RX_Serial : in std_logic;
        o_RX_DV     : out std_logic;
        o_RX_Byte   : out std_logic_vector(7 downto 0)
    );
end UART_RX;

architecture rt1 of UART_RX is
    type t_SM_Main is (s_Idle, s_RX_Start_Bit, s_RX_Data_Bits,
                        s_Rx_Stop_Bit, s_Cleanup);
    signal  r_SM_Main : t_SM_Main := s_Idle;

    signal r_RX_Data_R  : std_logic := '0';
    signal r_RX_Data    : std_logic := '0';

    signal r_CLK_Count : integer range 0 to g_CLKS_PER_BIT := 0;
    signal r_Bit_Index : integer range 0 to 7 := 0;
    signal r_RX_Byte   : std_logic_vector(7 downto 0) := (others => '0');
    signal r_RX_DV     : std_logic := '0';
begin
    p_SAMPLE : process (i_CLK)
    begin
        if rising_edge (i_CLK) then
            r_RX_Data_R <= i_RX_Serial;
            r_RX_Data   <= r_RX_Data_R;
        end if;
    end process p_SAMPLE;    

    p_UART_RX : process(i_CLK)
    begin
        if rising_edge(i_CLK) then
            case r_SM_Main is
            
                when s_IDLE =>
                    r_RX_DV <= '0';
                    r_CLK_Count <= 0;
                    r_Bit_Index <= 0;

                    if r_RX_Data = '0' then
                        r_SM_Main <= s_RX_Start_Bit;
                    else
                        r_SM_Main <= s_Idle;
                    end if; 
                
                when s_RX_Start_Bit =>
                    if r_CLK_Count = (g_CLKS_PER_BIT-1)/2 then
                        if r_RX_Data = '0' then
                            r_CLK_Count <= 0;
                            r_SM_Main   <= s_RX_Data_Bits;
                        else
                            r_SM_Main   <= s_Idle;
                        end if;
                    else
                        r_CLK_Count <= r_CLK_Count + 1;
                        r_SM_Main   <= s_RX_Start_Bit;
                    end if;
                    
                when s_RX_Data_Bits =>
                    if r_CLK_Count < g_CLKS_PER_BIT then
                        r_CLK_Count <= r_CLK_Count + 1;
                        r_SM_Main   <= s_RX_Data_Bits;
                     else
                        r_CLK_Count             <= 0;
                        r_RX_Byte(r_Bit_Index)  <= r_RX_Data;   
                        if r_Bit_Index < 7 then
                            r_Bit_Index <= r_Bit_Index + 1;
                            r_SM_Main   <= s_RX_Data_Bits;
                        else
                            r_Bit_Index <= 0;
                            r_SM_Main   <= s_Rx_Stop_Bit;
                        end if;    
                    end if;
                
                when s_Rx_Stop_Bit =>
                    if r_CLK_Count < g_CLKS_PER_BIT then
                        r_CLK_Count <= r_CLK_Count + 1;
                        r_SM_Main   <= s_Rx_Stop_Bit;
                    else
                        r_RX_DV     <= '1';
                        r_CLK_Count <= 0;
                        r_SM_Main   <= s_Cleanup;                            
                    end if ;

                when s_Cleanup =>
                    r_SM_Main <= s_Idle;
                    r_RX_DV   <= '0';    
            
                when others =>
                    r_SM_Main <= s_Idle;
            
            end case;
        end if;
    end process p_UART_RX;  
    
    o_RX_DV     <= r_RX_DV;
    o_RX_Byte   <= r_RX_Byte;

end rt1;