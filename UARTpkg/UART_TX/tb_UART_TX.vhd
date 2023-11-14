library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_UART_TX is
end entity tb_UART_TX;

architecture rtl of tb_UART_TX is

    component UART_TX is
        generic (
            g_CLKS_PER_BIT   : integer := 1 --For 115200 Baudios @ 50MHz
        );
        port (
            i_TX_Data    : in  std_logic_vector(7 downto 0);
            i_Parity_Sel : in  std_logic_vector(1 downto 0);
            i_CLK        : in  std_logic;
            i_TX_Start   : in  std_logic;
            o_Busy       : out std_logic;  --1 When the peripherial is sending data, 0 when is ready to send
            o_TX_Done    : out std_logic;
            o_TX_Serial  : out std_logic
        );
    end component UART_TX;

    type t_Parity is (t_Even, t_Odd, t_None);

    signal i_TX_Data      : std_logic_vector(7 downto 0) := (others => '0');
    signal i_Parity_Sel   : std_logic_vector(1 downto 0) := (others => '0');
    signal i_CLK          : std_logic  := '0';
    signal i_TX_Start     : std_logic  := '0';
    signal o_Busy         : std_logic  := '0';
    signal o_TX_Done      : std_logic  := '0';
    signal o_TX_Serial    : std_logic  := '0';
    signal r_Parity_Value : t_Parity   := t_None;

begin

    U1 : UART_TX 
    generic map(
        (10)
    )
    port map(
        i_TX_Data    => i_TX_Data,
        i_Parity_Sel => i_Parity_Sel,
        i_CLK        => i_CLK,
        i_TX_Start   => i_TX_Start,
        o_Busy       => o_Busy,
        o_TX_Done    => o_TX_Done,
        o_TX_Serial  => o_TX_Serial
    );

    clk_proc : process
    begin
        i_CLK <= '0';
        wait for 20 ps;
        i_CLK <= '1';
        wait for 20 ps;
    end process;

    stim_proc : process
    begin
        i_TX_Data  <= "10101010";
        r_Parity_Value   <= t_None;
        i_TX_Start <= '0';
        wait for 2 ns;
        i_TX_Start <= '1';
        wait for 5 ns;
        i_TX_Start <= '0';
        wait for 5 ns;
    end process;

    with r_Parity_Value select i_Parity_Sel <=
        "00" when t_Even,
        "01" when t_Odd,
        "10" when others;

end architecture;