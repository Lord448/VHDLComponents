library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
USE WORK.COMANDOS_LCD_REVC.ALL;

entity LCDDriver is
    generic (
        g_CLKS_PER_BIT : integer := 434 --For 115200 Baudios @ 50MHz
    );
    port (
        i_CLK        : in std_logic;
        -------------------------------------------------------
        -------------PUERTOS DE LA LCD (NO BORRAR)-------------
        RS           : OUT STD_LOGIC;	  
        RW           : OUT STD_LOGIC;	  
        ENA          : OUT STD_LOGIC;
        CORD         : IN STD_LOGIC;
        CORI         : IN STD_LOGIC;
        DATA_LCD     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);    
        BLCD         :  OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        -------------------------------------------------------
        -------------PUERTOS DE LA LCD (NO BORRAR)-------------
        i_Parity_Sel : in  std_logic_vector(1 downto 0);
        i_TX_Data    : in  std_logic_vector(7 downto 0);
        btn_TX_Send  : in  std_logic;
        btn_Set_Num  : in  std_logic;
        btn_TX_Clear : in  std_logic;
        i_RX_Serial  : in  std_logic;
        o_TX_Serial  : out std_logic
    );
end entity;

architecture rtl of LCDDriver is

    -----------------------------------------------------------------
    ---------------SEÑALES DE LA LCD (NO BORRAR)---------------------
    TYPE RAM IS ARRAY (0 TO  60) OF STD_LOGIC_VECTOR(8 DOWNTO 0);  --
    
    SIGNAL INST : RAM;
    
    COMPONENT PROCESADOR_LCD_REVC is
        PORT (
            CLK : IN STD_LOGIC;
            VECTOR_MEM : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            INC_DIR : OUT INTEGER RANGE 0 TO 1024;
            CORD : IN STD_LOGIC;
            CORI : IN STD_LOGIC;
            RS : OUT STD_LOGIC;
            RW : OUT STD_LOGIC;
            DELAY_COR : IN INTEGER RANGE 0 TO 1000;
            BD_LCD : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);			    
            ENA  : OUT STD_LOGIC;									
            C1A,C2A,C3A,C4A : IN STD_LOGIC_VECTOR(39 DOWNTO 0);       
            C5A,C6A,C7A,C8A : IN STD_LOGIC_VECTOR(39 DOWNTO 0);       
            DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)						
        );
    end  COMPONENT PROCESADOR_LCD_REVC;

    COMPONENT CARACTERES_ESPECIALES_REVC is
        PORT( 
            C1,C2,C3,C4:OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
            C5,C6,C7,C8:OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
            CLK : IN STD_LOGIC
    );
    end COMPONENT CARACTERES_ESPECIALES_REVC;	

    CONSTANT CHAR1 : INTEGER := 1;
    CONSTANT CHAR2 : INTEGER := 2;
    CONSTANT CHAR3 : INTEGER := 3;
    CONSTANT CHAR4 : INTEGER := 4;
    CONSTANT CHAR5 : INTEGER := 5;
    CONSTANT CHAR6 : INTEGER := 6;
    CONSTANT CHAR7 : INTEGER := 7;
    CONSTANT CHAR8 : INTEGER := 8;

    SIGNAL DIR : INTEGER RANGE 0 TO 1024 := 0;
    SIGNAL VECTOR_MEM_S : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL RS_S, RW_S, E_S : STD_LOGIC;
    SIGNAL DATA_S : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL DIR_S : INTEGER RANGE 0 TO 1024;
    SIGNAL DELAY_COR : INTEGER RANGE 0 TO 1000;
    SIGNAL C1S,C2S,C3S,C4S : STD_LOGIC_VECTOR(39 DOWNTO 0);
    SIGNAL C5S,C6S,C7S,C8S : STD_LOGIC_VECTOR(39 DOWNTO 0);
    ---------------------------------------------------------
    --------------AGREGA TUS SEÑALES AQUÍ--------------------
    component UART is
        generic (
            g_CLKS_PER_BIT : integer := 434 --For 115200 Baudios @ 50MHz
        );
        port (
            i_CLK        : in  std_logic;
            i_Parity_Sel : in  std_logic_vector(1 downto 0);
            o_TX_Serial  : out std_logic;
            i_RX_Serial  : in  std_logic;
            o_TX_Done    : out std_logic;
            o_RX_Done    : out std_logic;
            i_TX_Data    : in  std_logic_vector(7 downto 0);
            o_RX_Data    : out std_logic_vector(7 downto 0);
            i_TX_Start   : in  std_logic;
            o_RX_Error   : out std_logic;
            o_TX_Busy    : out std_logic  --1 When the peripherial is sending data, 0 when is ready to send
        );
    end component UART;

    component debounce IS
        GENERIC(
            clk_freq    : INTEGER := 50_000_000;  --system clock frequency in Hz
            stable_time : INTEGER := 10);         --time button must remain stable in ms
        PORT(
            clk     : IN  STD_LOGIC;  --input clock
            reset_n : IN  STD_LOGIC;  --asynchronous active low reset
            button  : IN  STD_LOGIC;  --input signal to be debounced
            result  : OUT STD_LOGIC); --debounced signal
    END component debounce;

    --UART Registers
    signal r_TX_Done        : std_logic;
    signal r_RX_Done        : std_logic;
    signal r_TX_Data        : std_logic_vector(7 downto 0);
    signal r_RX_Data        : std_logic_vector(7 downto 0);
    signal r_TX_Start       : std_logic;
    signal r_RX_Error       : std_logic;
    signal r_TX_Busy        : std_logic;
    
    --Buttons registers
    signal r_TX_Send        : std_logic;
    signal r_Set_Num        : std_logic;
    signal r_TX_Clear       : std_logic;
    --General registers
    signal r_Debounce_Reset : std_logic := '1';
    signal r_Data_TX_Send   : std_logic_vector(31 downto 0);
    signal r_Ready_To_Send  : std_logic := '0';
    signal r_MSIndex        : unsigned range 0 to 31 := 7;
    signal r_MSIndex_S      : unsigned range 0 to 31 := 7;
    signal r_LSIndex        : unsigned range 0 to 31 := 0;
    signal r_LSIndex_S      : unsigned range 0 to 31 := 0;
    --signal r_CLK_Counts     : unsigned range 0 to 
    signal r_Count_Bytes    : unsigned(3 downto 0) := (others => '0');
    
    

begin

    -----------------------------------------------------------
    ------------COMPONENTES PARA LCD (NO BORRAR)---------------
    u_PROCESADOR : PROCESADOR_LCD_REVC 
        PORT MAP (
            CLK  => i_CLK,
            VECTOR_MEM => VECTOR_MEM_S,
            RS  => RS_S,
            RW  => RW_S,
            ENA => E_S,
            INC_DIR => DIR_S,
            DELAY_COR => DELAY_COR,
            BD_LCD => BLCD,
            CORD => CORD,
            CORI => CORI,
            C1A =>C1S,
            C2A =>C2S,	
            C3A =>C3S,	
            C4A =>C4S,	
            C5A =>C5S,	
            C6A =>C6S,	
            C7A =>C7S,	
            C8A =>C8S,	
            DATA  => DATA_S 
    );

    u_CARACTERES : CARACTERES_ESPECIALES_REVC 
        PORT MAP (
            C1 =>C1S,
            C2 =>C2S,
            C3 =>C3S,	
            C4 =>C4S,
            C5 =>C5S,	
            C6 =>C6S,	
            C7 =>C7S,
            C8 =>C8S,	
            CLK => i_CLK	
    );

    DIR <= DIR_S;									
    VECTOR_MEM_S <= INST(DIR);
    RS <= RS_S;										
    RW <= RW_S;										
    ENA <= E_S;										
    DATA_LCD <= DATA_S;
    DELAY_COR <= 600; --Modificar esta variable para la velocidad del corrimiento.

    -------------------------------------------------------------------
    -----------------ABAJO ESCRIBE TU C�DIGO EN VHDL-------------------

    u_UART : UART 
    generic map (
        (434)
    )
    port map (
        i_CLK        => i_CLK,
        i_Parity_Sel => i_Parity_Sel,
        o_TX_Serial  => o_TX_Serial,
        i_RX_Serial  => i_RX_Serial,
        o_TX_Done    => r_TX_Done,
        o_RX_Done    => r_RX_Done,
        i_TX_Data    => r_TX_Data,
        o_RX_Data    => r_RX_Data,
        i_TX_Start   => r_TX_Start,
        o_RX_Error   => r_RX_Error,
        o_TX_Busy    => r_TX_Busy
    );

    u_TX_Send : debounce 
    generic map (
        (50_000_000),
        (10)
    )
    port map (
        clk => i_CLK,
        reset_n => r_Debounce_Reset,
        button => btn_TX_Send,
        result => r_TX_Send
    );

    u_Set_Num : debounce 
    generic map (
        (50_000_000),
        (10)
    )
    port map (
        clk => i_CLK,
        reset_n => r_Debounce_Reset,
        button => btn_Set_Num,
        result => r_Set_Num
    );

    u_TX_Clear : debounce 
    generic map (
        (50_000_000),
        (10)
    )
    port map (
        clk => i_CLK,
        reset_n => r_Debounce_Reset,
        button => btn_TX_Clear,
        result => r_TX_Clear
    );

    p_Data_Sel : process (r_Set_Num, r_TX_Clear)
    begin
        if r_Set_Num = '1' then
            r_Data_TX_Send(r_MSIndex downto r_LSIndex) <= i_TX_Data;
            r_MSIndex <= r_MSIndex + 8;
            r_LSIndex <= r_LSIndex + 8;
            r_Count_Bytes <= r_Count_Bytes + 1;
        end if;

        if r_TX_Clear = '1' then
            r_Data_TX_Send <= (others => '0');
            r_MSIndex <= 7;
            r_LSIndex <= 0;
        end if;

        if r_Count_Bytes = 3 then 
            r_Ready_To_Send <= '1';
        end if;
    end process;

    p_UART : process
    begin
        if r_TX_Done = '1' AND r_Ready_To_Send = '1' AND r_TX_Send = '1' then 
            for i in 0 to 3 loop
                r_TX_Data <= r_Data_TX_Send(r_MSIndex_S downto r_LSIndex_S);
                r_MSIndex_S <= r_MSIndex_S + 8;
                r_LSIndex_S <= r_LSIndex_S + 8;
                wait on r_TX_Busy until r_TX_Done = '1' for 8 us;    
            end loop;
        end if;
    end process;

    INST(0)  <= LCD_INI("00");
    INST(1)  <= CHAR(MT);
    INST(2)  <= CHAR(MX);
    INST(3)  <= CHAR_ASCII(X"3A");
    INST(4)  <= POS(2,1);
    INST(5)  <= CHAR(MR);
    INST(6)  <= CHAR(MX);
    INST(7)  <= CHAR_ASCII(X"3A");
    INST(8)  <= BUCLE_INI(1);

    --TX
    INST(9)  <= POS(1,5);
    INST(10) <= CHAR_ASCII(X"3A"); -- 4
    INST(11) <= CHAR_ASCII(X"3A"); -- 8
    INST(12) <= CHAR_ASCII(X"3A"); -- 16
    INST(13) <= CHAR_ASCII(X"3A"); -- 20
    INST(14) <= CHAR_ASCII(X"3A"); -- 24
    INST(15) <= CHAR_ASCII(X"3A"); -- 28
    INST(16) <= CHAR_ASCII(X"3A"); -- 30
    INST(17) <= CHAR_ASCII(X"3A"); -- 32
    --RX
    INST(18) <= POS(2,5);
    INST(19) <= CHAR_ASCII(X"3A"); -- 4
    INST(20) <= CHAR_ASCII(X"3A"); -- 8
    INST(21) <= CHAR_ASCII(X"3A"); -- 16
    INST(22) <= CHAR_ASCII(X"3A"); -- 20
    INST(23) <= CHAR_ASCII(X"3A"); -- 24
    INST(24) <= CHAR_ASCII(X"3A"); -- 28
    INST(25) <= CHAR_ASCII(X"3A"); -- 30
    INST(26) <= CHAR_ASCII(X"3A"); -- 32
    INST(27) <= BUCLE_FIN(1);
    INST(28) <= CODIGO_FIN(1);
    
    

end architecture;