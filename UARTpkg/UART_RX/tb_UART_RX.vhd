library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_UART_RX is
end entity;

architecture rtl of tb_UART_RX is

    component UART_RX is 
        generic (
            g_CLKS_PER_BIT: integer := 434; --For 115200 Baudios @ 50MHz
            g_NUMBER_OF_SAMPLES : integer := 8
        );
        port (
            i_CLK        : in  std_logic;
            i_RX_Serial  : in  std_logic;
            i_Parity_Sel : in  std_logic_vector(1 downto 0);
            o_RX_Done    : out std_logic;
            o_RX_Error   : out std_logic;
            o_RX_Byte    : out std_logic_vector(7 downto 0)
        );
    end component UART_RX;

    type t_Parity is (t_Even, t_Odd, t_None);

    signal i_CLK        : std_logic := '0';
    signal i_RX_Serial  : std_logic := '1';
    signal i_Parity_Sel : std_logic_vector(1 downto 0) := (others => '0');
    signal o_RX_Done    : std_logic := '0';
    signal o_RX_Error   : std_logic := '0';
    signal o_RX_Byte    : std_logic_vector(7 downto 0) := (others => '0');
    
    signal r_Parity     : t_Parity := t_None;
    
begin

    U1 : UART_RX 
    generic map(
        (10),
        (8)
    )
    port map(
        i_CLK        => i_CLK,       
        i_RX_Serial  => i_RX_Serial, 
        i_Parity_Sel => i_Parity_Sel,
        o_RX_Done    => o_RX_Done,   
        o_RX_Error   => o_RX_Error,  
        o_RX_Byte    => o_RX_Byte   
    );

    clk_proc : process
    begin
        i_CLK <= '0';
        wait for 1 ps;
        i_CLK <= '1';
        wait for 1 ps;
    end process;

    stim_proc : process
    begin
        i_RX_Serial <= '1'; --IDLE
        wait for 20 ps;

        i_RX_Serial <= '0'; --Start bit
        wait for 20 ps;

        for i in 0 to 7 loop --Data
            i_RX_Serial <= '1'; 
            wait for 20 ps;
        end loop;

        case r_Parity is --Parity
            when t_None =>
            when others =>
                i_RX_Serial <= '0'; 
                wait for 20 ps;
        end case;

        i_RX_Serial <= '1'; --Stop
        wait for 20 ps;

    end process;

    with r_Parity select i_Parity_Sel <=
    "00" when t_Even,
    "01" when t_Odd,
    "10" when others;

end architecture;
