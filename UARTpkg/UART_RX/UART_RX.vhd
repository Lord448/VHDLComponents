library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity UART_RX is 
    generic (
        g_CLKS_PER_BIT: integer := 434 --For 115200 Baudios @ 50MHz
    );
    port (
        i_CLK        : in  std_logic;
        i_RX_Serial  : in  std_logic;
        i_Parity_Sel : in  std_logic_vector(1 downto 0);
        o_RX_Done    : out std_logic;
        o_RX_Error   : out std_logic;
        o_RX_Byte    : out std_logic_vector(7 downto 0)
    );
end entity UART_RX;

architecture rtl of UART_RX is
    type t_SM_Main is (s_Idle, s_RX_Start_Bit, s_RX_Data_Bits,
                        s_Rx_Stop_Bit, s_Parity_Check, s_Cleanup, s_Error);

    type t_Parity is (t_Even, t_Odd, t_None);

    signal r_Parity           : t_Parity;
    signal r_SM_Main          : t_SM_Main := s_Idle;

    signal r_RX_Data_R        : std_logic := '1';
    signal r_RX_Data          : std_logic := '1';

    signal r_CLK_Count        : integer range 0 to g_CLKS_PER_BIT := 0;
    signal r_Bits_to_Wait     : integer range 0 to 10;
    signal r_Frame_Bit_Count  : integer range 0 to 7 := 0;
    signal r_Bit_Index        : integer range 0 to 10 := 0;
    signal r_RX_Byte          : std_logic_vector(7 downto 0) := (others => '0');
    signal r_RX_Done          : std_logic := '0';
    signal r_RX_Error         : std_logic := '0';
    signal r_Parity_Value     : std_logic;
    
begin

    p_PIPELINE : process (i_CLK)
    begin
        if rising_edge (i_CLK) then
            r_RX_Data_R <= i_RX_Serial;
            r_RX_Data   <= r_RX_Data_R;
        end if;
    end process p_PIPELINE;

    p_UART_RX : process(i_CLK)
    begin
        if rising_edge(i_CLK) then
            case r_SM_Main is
                when s_IDLE =>
                    r_RX_Done <= '0';
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
                        r_SM_Main <= s_RX_Data_Bits;
                     else
                        r_CLK_Count            <= 0;
                        r_RX_Byte(r_Bit_Index) <= r_RX_Data;
                        if r_Bit_Index < 7 then
                            r_Bit_Index <= r_Bit_Index + 1;
                            r_SM_Main   <= s_RX_Data_Bits;
                        else
                            case r_Parity is
                                when t_None =>
                                    r_SM_Main <= s_Rx_Stop_Bit;
                                when others =>
                                    r_SM_Main <= s_Parity_Check;
                            end case;
                        end if;
                    end if;

                when s_Parity_Check =>
                    --Change bit index to execute the sampling process
                    r_Bit_Index <= 10; --10 to identify parity check state
                    if r_CLK_Count < g_CLKS_PER_BIT-1 then
                        r_CLK_Count <= r_CLK_Count + 1;
                        r_SM_Main <= s_Parity_Check;
                    else
                        if r_Parity_Value = r_RX_Data then
                            r_SM_Main <= s_Rx_Stop_Bit;                            
                        else
                            r_SM_Main <= s_Error;
                        end if;
                    end if;
                
                when s_Rx_Stop_Bit =>
                    r_Bit_Index <= 0;
                    if r_CLK_Count < g_CLKS_PER_BIT then
                        r_CLK_Count <= r_CLK_Count + 1;
                        r_SM_Main   <= s_Rx_Stop_Bit;
                    else
                        --o_RX_Byte   <= r_RX_Byte;
                        r_RX_Done   <= '1';
                        r_CLK_Count <= 0;
                        r_SM_Main   <= s_Cleanup;                            
                    end if;

                when s_Cleanup =>
                    r_SM_Main   <= s_Idle;
                    r_RX_Done   <= '0';
                    r_RX_Error  <= '0';
                
                when s_Error =>
                    r_RX_Error <= '1';
                    if r_Bit_Index = 10 then --Error in parity check
                        if r_CLK_Count < g_CLKS_PER_BIT then
                            r_CLK_Count <= r_CLK_Count + 1;
                            r_SM_Main   <= s_Error;
                        else
                            r_CLK_Count <= 0;
                            r_SM_Main <= s_Cleanup;
                        end if;
                    else --Error in data receive
                        if r_CLK_Count < g_CLKS_PER_BIT then
                            r_CLK_Count <= r_CLK_Count + 1;
                            r_SM_Main   <= s_Error;
                        else
                            r_CLK_Count <= 0;
                            r_Frame_Bit_Count <= r_Frame_Bit_Count + 1;

                            case r_Parity is
                                when t_None =>
                                    r_Bits_to_Wait <= 6 - r_Bit_Index;
                                when others =>
                                    r_Bits_to_Wait <= 7 - r_Bit_Index;
                            end case;

                            if r_Frame_Bit_Count = r_Bits_to_Wait then
                                r_Frame_Bit_Count <= 0;
                                r_SM_Main <= s_Cleanup;
                            else
                                r_SM_Main <= s_Error;
                            end if;
                        end if;
                    end if;

                when others =>
                    r_SM_Main <= s_Idle;
            
            end case;
        end if;
    end process p_UART_RX;

    with i_Parity_Sel select r_Parity <=
    t_Even when "00",
    t_Odd when "01",
    t_None when others; --1X

    with r_Parity select r_Parity_Value <=
        (r_RX_Byte(0) XOR 
        r_RX_Byte(1) XOR 
        r_RX_Byte(2) XOR 
        r_RX_Byte(3) XOR 
        r_RX_Byte(4) XOR 
        r_RX_Byte(5) XOR 
        r_RX_Byte(6) XOR 
        r_RX_Byte(7)) when t_Even,
        (r_RX_Byte(0) XNOR 
        r_RX_Byte(1) XNOR
        r_RX_Byte(2) XNOR
        r_RX_Byte(3) XNOR 
        r_RX_Byte(4) XNOR
        r_RX_Byte(5) XNOR
        r_RX_Byte(6) XNOR
        r_RX_Byte(7)) when t_Odd,
        'Z' when others;

    o_RX_Done  <= r_RX_Done;
    o_RX_Error <= r_RX_Error;
    o_RX_Byte  <= r_RX_Byte;
    
end rtl;