-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "11/26/2023 23:44:59"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UART IS
    PORT (
	i_CLK : IN std_logic;
	i_Parity_Sel : IN std_logic_vector(1 DOWNTO 0);
	o_TX_Serial : OUT std_logic;
	i_RX_Serial : IN std_logic;
	o_TX_Done : OUT std_logic;
	o_RX_Done : OUT std_logic;
	i_TX_Data : IN std_logic_vector(7 DOWNTO 0);
	o_RX_Data : OUT std_logic_vector(7 DOWNTO 0);
	i_TX_Start : IN std_logic;
	o_RX_Error : OUT std_logic;
	o_TX_Busy : OUT std_logic
	);
END UART;

-- Design Ports Information
-- o_TX_Serial	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_TX_Done	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Done	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Data[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Data[1]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Data[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Data[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Data[4]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Data[5]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Data[6]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Data[7]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Error	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_TX_Busy	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Parity_Sel[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Parity_Sel[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Start	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[0]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[7]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RX_Serial	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_Parity_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_TX_Serial : std_logic;
SIGNAL ww_i_RX_Serial : std_logic;
SIGNAL ww_o_TX_Done : std_logic;
SIGNAL ww_o_RX_Done : std_logic;
SIGNAL ww_i_TX_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_RX_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_TX_Start : std_logic;
SIGNAL ww_o_RX_Error : std_logic;
SIGNAL ww_o_TX_Busy : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_TX_Serial~output_o\ : std_logic;
SIGNAL \o_TX_Done~output_o\ : std_logic;
SIGNAL \o_RX_Done~output_o\ : std_logic;
SIGNAL \o_RX_Data[0]~output_o\ : std_logic;
SIGNAL \o_RX_Data[1]~output_o\ : std_logic;
SIGNAL \o_RX_Data[2]~output_o\ : std_logic;
SIGNAL \o_RX_Data[3]~output_o\ : std_logic;
SIGNAL \o_RX_Data[4]~output_o\ : std_logic;
SIGNAL \o_RX_Data[5]~output_o\ : std_logic;
SIGNAL \o_RX_Data[6]~output_o\ : std_logic;
SIGNAL \o_RX_Data[7]~output_o\ : std_logic;
SIGNAL \o_RX_Error~output_o\ : std_logic;
SIGNAL \o_TX_Busy~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_Parity_Sel[1]~input_o\ : std_logic;
SIGNAL \i_Parity_Sel[0]~input_o\ : std_logic;
SIGNAL \i_TX_Data[0]~input_o\ : std_logic;
SIGNAL \i_TX_Start~input_o\ : std_logic;
SIGNAL \r_TX_CLK_Count[0]~10_combout\ : std_logic;
SIGNAL \r_TX_CLK_Count[0]~20_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \r_TX_CLK_Count[6]~24\ : std_logic;
SIGNAL \r_TX_CLK_Count[7]~25_combout\ : std_logic;
SIGNAL \r_TX_CLK_Count[7]~26\ : std_logic;
SIGNAL \r_TX_CLK_Count[8]~27_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \r_SM_TX.s_Parity_Check_TX~q\ : std_logic;
SIGNAL \r_TX_CLK_Count[0]~9_combout\ : std_logic;
SIGNAL \r_TX_CLK_Count[0]~11\ : std_logic;
SIGNAL \r_TX_CLK_Count[1]~12_combout\ : std_logic;
SIGNAL \r_TX_CLK_Count[1]~13\ : std_logic;
SIGNAL \r_TX_CLK_Count[2]~14_combout\ : std_logic;
SIGNAL \r_TX_CLK_Count[2]~15\ : std_logic;
SIGNAL \r_TX_CLK_Count[3]~16_combout\ : std_logic;
SIGNAL \r_TX_CLK_Count[3]~17\ : std_logic;
SIGNAL \r_TX_CLK_Count[4]~18_combout\ : std_logic;
SIGNAL \r_TX_CLK_Count[4]~19\ : std_logic;
SIGNAL \r_TX_CLK_Count[5]~21_combout\ : std_logic;
SIGNAL \r_TX_CLK_Count[5]~22\ : std_logic;
SIGNAL \r_TX_CLK_Count[6]~23_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \r_SM_TX.s_Start_Bit_TX~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \r_SM_TX.s_Data_Bits_TX~q\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \r_SM_TX.s_Stop_Bit_TX~q\ : std_logic;
SIGNAL \r_SM_TX~8_combout\ : std_logic;
SIGNAL \r_SM_TX.s_Cleanup_TX~feeder_combout\ : std_logic;
SIGNAL \r_SM_TX.s_Cleanup_TX~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \r_SM_TX.s_Idle_RX_TX~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \i_TX_Data[1]~input_o\ : std_logic;
SIGNAL \o_TX_Serial~0_combout\ : std_logic;
SIGNAL \i_TX_Data[7]~input_o\ : std_logic;
SIGNAL \i_TX_Data[6]~input_o\ : std_logic;
SIGNAL \i_TX_Data[3]~input_o\ : std_logic;
SIGNAL \i_TX_Data[2]~input_o\ : std_logic;
SIGNAL \i_TX_Data[4]~input_o\ : std_logic;
SIGNAL \i_TX_Data[5]~input_o\ : std_logic;
SIGNAL \r_TX_Data[5]~feeder_combout\ : std_logic;
SIGNAL \o_TX_Serial~1_combout\ : std_logic;
SIGNAL \o_TX_Serial~2_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \Selector1~6_combout\ : std_logic;
SIGNAL \o_TX_Serial~reg0_q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \r_TX_Done~q\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \r_RX_Bit_R~0_combout\ : std_logic;
SIGNAL \r_RX_Bit_R~q\ : std_logic;
SIGNAL \r_RX_Bit~feeder_combout\ : std_logic;
SIGNAL \r_RX_Bit~q\ : std_logic;
SIGNAL \r_RX_CLK_Count[0]~12_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \r_SM_RX.s_Parity_Check_RX~q\ : std_logic;
SIGNAL \r_RX_CLK_Count[0]~9_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[0]~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[0]~11_combout\ : std_logic;
SIGNAL \r_RX_Bit_Index[1]~5_combout\ : std_logic;
SIGNAL \r_RX_Bit_Index[1]~2_combout\ : std_logic;
SIGNAL \r_RX_Bit_Index[1]~4_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \r_RX_Bit_Index~0_combout\ : std_logic;
SIGNAL \r_RX_Bit_Index[1]~3_combout\ : std_logic;
SIGNAL \r_RX_Bit_Index[3]~6_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \r_SM_RX.s_Data_Bits_RX~q\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \r_RX_Data[3]~3_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \r_RX_Data[4]~4_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \r_RX_Data[1]~1_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \r_RX_Data[2]~2_combout\ : std_logic;
SIGNAL \p_UART_RX~1_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \r_RX_Data[0]~0_combout\ : std_logic;
SIGNAL \p_UART_RX~0_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \r_RX_Data[6]~6_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \r_RX_Data[7]~7_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \r_RX_Data[5]~5_combout\ : std_logic;
SIGNAL \p_UART_RX~2_combout\ : std_logic;
SIGNAL \p_UART_RX~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \r_RX_Frame_Bit_Count~0_combout\ : std_logic;
SIGNAL \r_RX_Bits_to_Wait[3]~0_combout\ : std_logic;
SIGNAL \r_RX_Frame_Bit_Count~1_combout\ : std_logic;
SIGNAL \r_RX_Frame_Bit_Count~2_combout\ : std_logic;
SIGNAL \r_RX_Bits_to_Wait~3_combout\ : std_logic;
SIGNAL \r_RX_Bits_to_Wait~4_combout\ : std_logic;
SIGNAL \r_RX_Bits_to_Wait~2_combout\ : std_logic;
SIGNAL \r_RX_Bits_to_Wait~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \r_SM_RX.s_Error_RX~q\ : std_logic;
SIGNAL \r_RX_CLK_Count[0]~30_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[0]~31_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[0]~32_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[0]~13\ : std_logic;
SIGNAL \r_RX_CLK_Count[1]~14_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[1]~15\ : std_logic;
SIGNAL \r_RX_CLK_Count[2]~16_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[2]~17\ : std_logic;
SIGNAL \r_RX_CLK_Count[3]~18_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[3]~19\ : std_logic;
SIGNAL \r_RX_CLK_Count[4]~20_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[4]~21\ : std_logic;
SIGNAL \r_RX_CLK_Count[5]~22_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[5]~23\ : std_logic;
SIGNAL \r_RX_CLK_Count[6]~24_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[6]~25\ : std_logic;
SIGNAL \r_RX_CLK_Count[7]~26_combout\ : std_logic;
SIGNAL \r_RX_CLK_Count[7]~27\ : std_logic;
SIGNAL \r_RX_CLK_Count[8]~28_combout\ : std_logic;
SIGNAL \Selector40~2_combout\ : std_logic;
SIGNAL \Selector40~3_combout\ : std_logic;
SIGNAL \r_SM_RX.s_Cleanup_RX~q\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \r_SM_RX.s_Idle_RX~q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \r_SM_RX.s_Start_Bits_RX~q\ : std_logic;
SIGNAL \r_RX_Bit_Index[3]~1_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \r_SM_RX.s_Stop_Bit_RX~q\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \r_RX_Done~q\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \r_RX_Error~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \o_TX_Busy~reg0_q\ : std_logic;
SIGNAL r_RX_Bits_to_Wait : std_logic_vector(3 DOWNTO 0);
SIGNAL r_RX_Frame_Bit_Count : std_logic_vector(2 DOWNTO 0);
SIGNAL r_RX_CLK_Count : std_logic_vector(8 DOWNTO 0);
SIGNAL r_TX_CLK_Count : std_logic_vector(8 DOWNTO 0);
SIGNAL r_RX_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL r_TX_Bit_Index : std_logic_vector(2 DOWNTO 0);
SIGNAL r_TX_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL r_RX_Bit_Index : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_Parity_Sel <= i_Parity_Sel;
o_TX_Serial <= ww_o_TX_Serial;
ww_i_RX_Serial <= i_RX_Serial;
o_TX_Done <= ww_o_TX_Done;
o_RX_Done <= ww_o_RX_Done;
ww_i_TX_Data <= i_TX_Data;
o_RX_Data <= ww_o_RX_Data;
ww_i_TX_Start <= i_TX_Start;
o_RX_Error <= ww_o_RX_Error;
o_TX_Busy <= ww_o_TX_Busy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y24_N23
\o_TX_Serial~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_TX_Serial~reg0_q\,
	devoe => ww_devoe,
	o => \o_TX_Serial~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\o_TX_Done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_TX_Done~q\,
	devoe => ww_devoe,
	o => \o_TX_Done~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\o_RX_Done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_RX_Done~q\,
	devoe => ww_devoe,
	o => \o_RX_Done~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\o_RX_Data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Data(0),
	devoe => ww_devoe,
	o => \o_RX_Data[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\o_RX_Data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Data(1),
	devoe => ww_devoe,
	o => \o_RX_Data[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\o_RX_Data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Data(2),
	devoe => ww_devoe,
	o => \o_RX_Data[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\o_RX_Data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Data(3),
	devoe => ww_devoe,
	o => \o_RX_Data[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\o_RX_Data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Data(4),
	devoe => ww_devoe,
	o => \o_RX_Data[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\o_RX_Data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Data(5),
	devoe => ww_devoe,
	o => \o_RX_Data[5]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\o_RX_Data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Data(6),
	devoe => ww_devoe,
	o => \o_RX_Data[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\o_RX_Data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Data(7),
	devoe => ww_devoe,
	o => \o_RX_Data[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\o_RX_Error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_RX_Error~q\,
	devoe => ww_devoe,
	o => \o_RX_Error~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\o_TX_Busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_TX_Busy~reg0_q\,
	devoe => ww_devoe,
	o => \o_TX_Busy~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\i_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G2
\i_CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X28_Y24_N15
\i_Parity_Sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Parity_Sel(1),
	o => \i_Parity_Sel[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\i_Parity_Sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Parity_Sel(0),
	o => \i_Parity_Sel[0]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\i_TX_Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(0),
	o => \i_TX_Data[0]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\i_TX_Start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Start,
	o => \i_TX_Start~input_o\);

-- Location: LCCOMB_X18_Y20_N8
\r_TX_CLK_Count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_CLK_Count[0]~10_combout\ = r_TX_CLK_Count(0) $ (VCC)
-- \r_TX_CLK_Count[0]~11\ = CARRY(r_TX_CLK_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_TX_CLK_Count(0),
	datad => VCC,
	combout => \r_TX_CLK_Count[0]~10_combout\,
	cout => \r_TX_CLK_Count[0]~11\);

-- Location: LCCOMB_X18_Y20_N2
\r_TX_CLK_Count[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_CLK_Count[0]~20_combout\ = (!\LessThan1~2_combout\) # (!\r_SM_TX.s_Idle_RX_TX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_TX.s_Idle_RX_TX~q\,
	datac => \LessThan1~2_combout\,
	combout => \r_TX_CLK_Count[0]~20_combout\);

-- Location: LCCOMB_X18_Y20_N26
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!r_TX_CLK_Count(2) & (!r_TX_CLK_Count(0) & (!r_TX_CLK_Count(3) & !r_TX_CLK_Count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_CLK_Count(2),
	datab => r_TX_CLK_Count(0),
	datac => r_TX_CLK_Count(3),
	datad => r_TX_CLK_Count(1),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X18_Y20_N20
\r_TX_CLK_Count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_CLK_Count[6]~23_combout\ = (r_TX_CLK_Count(6) & (\r_TX_CLK_Count[5]~22\ $ (GND))) # (!r_TX_CLK_Count(6) & (!\r_TX_CLK_Count[5]~22\ & VCC))
-- \r_TX_CLK_Count[6]~24\ = CARRY((r_TX_CLK_Count(6) & !\r_TX_CLK_Count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_CLK_Count(6),
	datad => VCC,
	cin => \r_TX_CLK_Count[5]~22\,
	combout => \r_TX_CLK_Count[6]~23_combout\,
	cout => \r_TX_CLK_Count[6]~24\);

-- Location: LCCOMB_X18_Y20_N22
\r_TX_CLK_Count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_CLK_Count[7]~25_combout\ = (r_TX_CLK_Count(7) & (!\r_TX_CLK_Count[6]~24\)) # (!r_TX_CLK_Count(7) & ((\r_TX_CLK_Count[6]~24\) # (GND)))
-- \r_TX_CLK_Count[7]~26\ = CARRY((!\r_TX_CLK_Count[6]~24\) # (!r_TX_CLK_Count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_CLK_Count(7),
	datad => VCC,
	cin => \r_TX_CLK_Count[6]~24\,
	combout => \r_TX_CLK_Count[7]~25_combout\,
	cout => \r_TX_CLK_Count[7]~26\);

-- Location: FF_X18_Y20_N23
\r_TX_CLK_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_TX_CLK_Count[7]~25_combout\,
	sclr => \r_TX_CLK_Count[0]~20_combout\,
	ena => \r_TX_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_CLK_Count(7));

-- Location: LCCOMB_X18_Y20_N24
\r_TX_CLK_Count[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_CLK_Count[8]~27_combout\ = \r_TX_CLK_Count[7]~26\ $ (!r_TX_CLK_Count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_TX_CLK_Count(8),
	cin => \r_TX_CLK_Count[7]~26\,
	combout => \r_TX_CLK_Count[8]~27_combout\);

-- Location: FF_X18_Y20_N25
\r_TX_CLK_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_TX_CLK_Count[8]~27_combout\,
	sclr => \r_TX_CLK_Count[0]~20_combout\,
	ena => \r_TX_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_CLK_Count(8));

-- Location: LCCOMB_X18_Y20_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!r_TX_CLK_Count(6) & ((!r_TX_CLK_Count(4)) # (!r_TX_CLK_Count(5))))) # (!r_TX_CLK_Count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_CLK_Count(5),
	datab => r_TX_CLK_Count(4),
	datac => r_TX_CLK_Count(7),
	datad => r_TX_CLK_Count(6),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X18_Y20_N6
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (r_TX_CLK_Count(8) & (!\LessThan1~0_combout\ & ((r_TX_CLK_Count(6)) # (!\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => r_TX_CLK_Count(8),
	datac => r_TX_CLK_Count(6),
	datad => \LessThan1~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X17_Y20_N10
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\r_SM_TX.s_Data_Bits_TX~q\ & ((r_TX_Bit_Index(0) $ (\Selector14~0_combout\)))) # (!\r_SM_TX.s_Data_Bits_TX~q\ & (\r_SM_TX.s_Idle_RX_TX~q\ & (r_TX_Bit_Index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_TX.s_Data_Bits_TX~q\,
	datab => \r_SM_TX.s_Idle_RX_TX~q\,
	datac => r_TX_Bit_Index(0),
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: FF_X17_Y20_N11
\r_TX_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Bit_Index(0));

-- Location: LCCOMB_X16_Y20_N24
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\r_SM_TX.s_Data_Bits_TX~q\ & (r_TX_Bit_Index(0))) # (!\r_SM_TX.s_Data_Bits_TX~q\ & ((\r_SM_TX.s_Idle_RX_TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Bit_Index(0),
	datab => \r_SM_TX.s_Data_Bits_TX~q\,
	datad => \r_SM_TX.s_Idle_RX_TX~q\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X17_Y20_N24
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\r_SM_TX.s_Data_Bits_TX~q\ & (r_TX_Bit_Index(1) $ (((\Selector13~0_combout\ & !\LessThan1~2_combout\))))) # (!\r_SM_TX.s_Data_Bits_TX~q\ & (\Selector13~0_combout\ & (r_TX_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_TX.s_Data_Bits_TX~q\,
	datab => \Selector13~0_combout\,
	datac => r_TX_Bit_Index(1),
	datad => \LessThan1~2_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X17_Y20_N25
\r_TX_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Bit_Index(1));

-- Location: LCCOMB_X17_Y20_N20
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (r_TX_Bit_Index(0) & (r_TX_Bit_Index(1) & !\LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Bit_Index(0),
	datab => r_TX_Bit_Index(1),
	datad => \LessThan1~2_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X17_Y20_N22
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\r_SM_TX.s_Data_Bits_TX~q\ & ((r_TX_Bit_Index(2) $ (\Selector12~0_combout\)))) # (!\r_SM_TX.s_Data_Bits_TX~q\ & (\r_SM_TX.s_Idle_RX_TX~q\ & (r_TX_Bit_Index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_TX.s_Data_Bits_TX~q\,
	datab => \r_SM_TX.s_Idle_RX_TX~q\,
	datac => r_TX_Bit_Index(2),
	datad => \Selector12~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X17_Y20_N23
\r_TX_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Bit_Index(2));

-- Location: LCCOMB_X17_Y20_N14
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (r_TX_Bit_Index(0) & (r_TX_Bit_Index(1) & (r_TX_Bit_Index(2) & !\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Bit_Index(0),
	datab => r_TX_Bit_Index(1),
	datac => r_TX_Bit_Index(2),
	datad => \LessThan1~2_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X18_Y20_N30
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\r_SM_TX.s_Parity_Check_TX~q\ & (\LessThan1~2_combout\ & !\i_Parity_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_TX.s_Parity_Check_TX~q\,
	datac => \LessThan1~2_combout\,
	datad => \i_Parity_Sel[1]~input_o\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X17_Y20_N4
\Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\Selector18~0_combout\) # ((!\i_Parity_Sel[1]~input_o\ & (\Selector19~0_combout\ & \r_SM_TX.s_Data_Bits_TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => \Selector19~0_combout\,
	datac => \Selector18~0_combout\,
	datad => \r_SM_TX.s_Data_Bits_TX~q\,
	combout => \Selector18~1_combout\);

-- Location: FF_X17_Y20_N5
\r_SM_TX.s_Parity_Check_TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_TX.s_Parity_Check_TX~q\);

-- Location: LCCOMB_X17_Y20_N6
\r_TX_CLK_Count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_CLK_Count[0]~9_combout\ = (!\r_SM_TX.s_Cleanup_TX~q\ & ((!\r_SM_TX.s_Parity_Check_TX~q\) # (!\i_Parity_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => \r_SM_TX.s_Parity_Check_TX~q\,
	datac => \r_SM_TX.s_Cleanup_TX~q\,
	combout => \r_TX_CLK_Count[0]~9_combout\);

-- Location: FF_X18_Y20_N9
\r_TX_CLK_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_TX_CLK_Count[0]~10_combout\,
	sclr => \r_TX_CLK_Count[0]~20_combout\,
	ena => \r_TX_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_CLK_Count(0));

-- Location: LCCOMB_X18_Y20_N10
\r_TX_CLK_Count[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_CLK_Count[1]~12_combout\ = (r_TX_CLK_Count(1) & (!\r_TX_CLK_Count[0]~11\)) # (!r_TX_CLK_Count(1) & ((\r_TX_CLK_Count[0]~11\) # (GND)))
-- \r_TX_CLK_Count[1]~13\ = CARRY((!\r_TX_CLK_Count[0]~11\) # (!r_TX_CLK_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_CLK_Count(1),
	datad => VCC,
	cin => \r_TX_CLK_Count[0]~11\,
	combout => \r_TX_CLK_Count[1]~12_combout\,
	cout => \r_TX_CLK_Count[1]~13\);

-- Location: FF_X18_Y20_N11
\r_TX_CLK_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_TX_CLK_Count[1]~12_combout\,
	sclr => \r_TX_CLK_Count[0]~20_combout\,
	ena => \r_TX_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_CLK_Count(1));

-- Location: LCCOMB_X18_Y20_N12
\r_TX_CLK_Count[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_CLK_Count[2]~14_combout\ = (r_TX_CLK_Count(2) & (\r_TX_CLK_Count[1]~13\ $ (GND))) # (!r_TX_CLK_Count(2) & (!\r_TX_CLK_Count[1]~13\ & VCC))
-- \r_TX_CLK_Count[2]~15\ = CARRY((r_TX_CLK_Count(2) & !\r_TX_CLK_Count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_CLK_Count(2),
	datad => VCC,
	cin => \r_TX_CLK_Count[1]~13\,
	combout => \r_TX_CLK_Count[2]~14_combout\,
	cout => \r_TX_CLK_Count[2]~15\);

-- Location: FF_X18_Y20_N13
\r_TX_CLK_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_TX_CLK_Count[2]~14_combout\,
	sclr => \r_TX_CLK_Count[0]~20_combout\,
	ena => \r_TX_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_CLK_Count(2));

-- Location: LCCOMB_X18_Y20_N14
\r_TX_CLK_Count[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_CLK_Count[3]~16_combout\ = (r_TX_CLK_Count(3) & (!\r_TX_CLK_Count[2]~15\)) # (!r_TX_CLK_Count(3) & ((\r_TX_CLK_Count[2]~15\) # (GND)))
-- \r_TX_CLK_Count[3]~17\ = CARRY((!\r_TX_CLK_Count[2]~15\) # (!r_TX_CLK_Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_TX_CLK_Count(3),
	datad => VCC,
	cin => \r_TX_CLK_Count[2]~15\,
	combout => \r_TX_CLK_Count[3]~16_combout\,
	cout => \r_TX_CLK_Count[3]~17\);

-- Location: FF_X18_Y20_N15
\r_TX_CLK_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_TX_CLK_Count[3]~16_combout\,
	sclr => \r_TX_CLK_Count[0]~20_combout\,
	ena => \r_TX_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_CLK_Count(3));

-- Location: LCCOMB_X18_Y20_N16
\r_TX_CLK_Count[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_CLK_Count[4]~18_combout\ = (r_TX_CLK_Count(4) & (\r_TX_CLK_Count[3]~17\ $ (GND))) # (!r_TX_CLK_Count(4) & (!\r_TX_CLK_Count[3]~17\ & VCC))
-- \r_TX_CLK_Count[4]~19\ = CARRY((r_TX_CLK_Count(4) & !\r_TX_CLK_Count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_TX_CLK_Count(4),
	datad => VCC,
	cin => \r_TX_CLK_Count[3]~17\,
	combout => \r_TX_CLK_Count[4]~18_combout\,
	cout => \r_TX_CLK_Count[4]~19\);

-- Location: FF_X18_Y20_N17
\r_TX_CLK_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_TX_CLK_Count[4]~18_combout\,
	sclr => \r_TX_CLK_Count[0]~20_combout\,
	ena => \r_TX_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_CLK_Count(4));

-- Location: LCCOMB_X18_Y20_N18
\r_TX_CLK_Count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_CLK_Count[5]~21_combout\ = (r_TX_CLK_Count(5) & (!\r_TX_CLK_Count[4]~19\)) # (!r_TX_CLK_Count(5) & ((\r_TX_CLK_Count[4]~19\) # (GND)))
-- \r_TX_CLK_Count[5]~22\ = CARRY((!\r_TX_CLK_Count[4]~19\) # (!r_TX_CLK_Count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_TX_CLK_Count(5),
	datad => VCC,
	cin => \r_TX_CLK_Count[4]~19\,
	combout => \r_TX_CLK_Count[5]~21_combout\,
	cout => \r_TX_CLK_Count[5]~22\);

-- Location: FF_X18_Y20_N19
\r_TX_CLK_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_TX_CLK_Count[5]~21_combout\,
	sclr => \r_TX_CLK_Count[0]~20_combout\,
	ena => \r_TX_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_CLK_Count(5));

-- Location: FF_X18_Y20_N21
\r_TX_CLK_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_TX_CLK_Count[6]~23_combout\,
	sclr => \r_TX_CLK_Count[0]~20_combout\,
	ena => \r_TX_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_CLK_Count(6));

-- Location: LCCOMB_X18_Y20_N4
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((\LessThan1~0_combout\) # ((!r_TX_CLK_Count(6) & \LessThan1~1_combout\))) # (!r_TX_CLK_Count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_CLK_Count(6),
	datab => r_TX_CLK_Count(8),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X16_Y20_N22
\Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\i_TX_Start~input_o\ & (((\r_SM_TX.s_Start_Bit_TX~q\ & \LessThan1~2_combout\)) # (!\r_SM_TX.s_Idle_RX_TX~q\))) # (!\i_TX_Start~input_o\ & (((\r_SM_TX.s_Start_Bit_TX~q\ & \LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_TX_Start~input_o\,
	datab => \r_SM_TX.s_Idle_RX_TX~q\,
	datac => \r_SM_TX.s_Start_Bit_TX~q\,
	datad => \LessThan1~2_combout\,
	combout => \Selector16~1_combout\);

-- Location: FF_X16_Y20_N23
\r_SM_TX.s_Start_Bit_TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_TX.s_Start_Bit_TX~q\);

-- Location: LCCOMB_X17_Y20_N0
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\r_SM_TX.s_Start_Bit_TX~q\ & (((!\Selector19~0_combout\ & \r_SM_TX.s_Data_Bits_TX~q\)) # (!\LessThan1~2_combout\))) # (!\r_SM_TX.s_Start_Bit_TX~q\ & (!\Selector19~0_combout\ & (\r_SM_TX.s_Data_Bits_TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_TX.s_Start_Bit_TX~q\,
	datab => \Selector19~0_combout\,
	datac => \r_SM_TX.s_Data_Bits_TX~q\,
	datad => \LessThan1~2_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X17_Y20_N1
\r_SM_TX.s_Data_Bits_TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_TX.s_Data_Bits_TX~q\);

-- Location: LCCOMB_X18_Y20_N28
\Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\LessThan1~2_combout\ & ((\r_SM_TX.s_Stop_Bit_TX~q\) # ((\r_SM_TX.s_Parity_Check_TX~q\ & \i_Parity_Sel[1]~input_o\)))) # (!\LessThan1~2_combout\ & (((\r_SM_TX.s_Parity_Check_TX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_TX.s_Stop_Bit_TX~q\,
	datab => \r_SM_TX.s_Parity_Check_TX~q\,
	datac => \LessThan1~2_combout\,
	datad => \i_Parity_Sel[1]~input_o\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X17_Y20_N8
\Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\Selector19~1_combout\) # ((\i_Parity_Sel[1]~input_o\ & (\r_SM_TX.s_Data_Bits_TX~q\ & \Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => \r_SM_TX.s_Data_Bits_TX~q\,
	datac => \Selector19~0_combout\,
	datad => \Selector19~1_combout\,
	combout => \Selector19~2_combout\);

-- Location: FF_X17_Y20_N9
\r_SM_TX.s_Stop_Bit_TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_TX.s_Stop_Bit_TX~q\);

-- Location: LCCOMB_X16_Y20_N2
\r_SM_TX~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_SM_TX~8_combout\ = (\r_SM_TX.s_Stop_Bit_TX~q\ & !\LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_SM_TX.s_Stop_Bit_TX~q\,
	datad => \LessThan1~2_combout\,
	combout => \r_SM_TX~8_combout\);

-- Location: LCCOMB_X16_Y20_N16
\r_SM_TX.s_Cleanup_TX~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_SM_TX.s_Cleanup_TX~feeder_combout\ = \r_SM_TX~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_SM_TX~8_combout\,
	combout => \r_SM_TX.s_Cleanup_TX~feeder_combout\);

-- Location: FF_X16_Y20_N17
\r_SM_TX.s_Cleanup_TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_SM_TX.s_Cleanup_TX~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_TX.s_Cleanup_TX~q\);

-- Location: LCCOMB_X16_Y20_N6
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\r_SM_TX.s_Cleanup_TX~q\ & ((\i_TX_Start~input_o\) # (\r_SM_TX.s_Idle_RX_TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_TX_Start~input_o\,
	datab => \r_SM_TX.s_Cleanup_TX~q\,
	datad => \r_SM_TX.s_Idle_RX_TX~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X17_Y20_N27
\r_SM_TX.s_Idle_RX_TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \Selector15~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_TX.s_Idle_RX_TX~q\);

-- Location: LCCOMB_X16_Y20_N30
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\i_TX_Start~input_o\ & !\r_SM_TX.s_Idle_RX_TX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_TX_Start~input_o\,
	datad => \r_SM_TX.s_Idle_RX_TX~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X16_Y20_N27
\r_TX_Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[0]~input_o\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(0));

-- Location: IOIBUF_X13_Y24_N15
\i_TX_Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(1),
	o => \i_TX_Data[1]~input_o\);

-- Location: FF_X16_Y20_N21
\r_TX_Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[1]~input_o\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(1));

-- Location: LCCOMB_X16_Y20_N26
\o_TX_Serial~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_TX_Serial~0_combout\ = r_TX_Data(0) $ (r_TX_Data(1) $ (((\i_Parity_Sel[0]~input_o\ & !\i_Parity_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[0]~input_o\,
	datab => \i_Parity_Sel[1]~input_o\,
	datac => r_TX_Data(0),
	datad => r_TX_Data(1),
	combout => \o_TX_Serial~0_combout\);

-- Location: IOIBUF_X34_Y12_N22
\i_TX_Data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(7),
	o => \i_TX_Data[7]~input_o\);

-- Location: FF_X17_Y20_N29
\r_TX_Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[7]~input_o\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(7));

-- Location: IOIBUF_X18_Y24_N15
\i_TX_Data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(6),
	o => \i_TX_Data[6]~input_o\);

-- Location: FF_X17_Y20_N3
\r_TX_Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[6]~input_o\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(6));

-- Location: IOIBUF_X16_Y24_N1
\i_TX_Data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(3),
	o => \i_TX_Data[3]~input_o\);

-- Location: FF_X16_Y20_N7
\r_TX_Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[3]~input_o\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(3));

-- Location: IOIBUF_X16_Y24_N8
\i_TX_Data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(2),
	o => \i_TX_Data[2]~input_o\);

-- Location: FF_X16_Y20_N25
\r_TX_Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[2]~input_o\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(2));

-- Location: IOIBUF_X23_Y24_N1
\i_TX_Data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(4),
	o => \i_TX_Data[4]~input_o\);

-- Location: FF_X17_Y20_N21
\r_TX_Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[4]~input_o\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(4));

-- Location: IOIBUF_X16_Y24_N15
\i_TX_Data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(5),
	o => \i_TX_Data[5]~input_o\);

-- Location: LCCOMB_X16_Y20_N18
\r_TX_Data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_Data[5]~feeder_combout\ = \i_TX_Data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_TX_Data[5]~input_o\,
	combout => \r_TX_Data[5]~feeder_combout\);

-- Location: FF_X16_Y20_N19
\r_TX_Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_TX_Data[5]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(5));

-- Location: LCCOMB_X16_Y20_N8
\o_TX_Serial~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_TX_Serial~1_combout\ = r_TX_Data(3) $ (r_TX_Data(2) $ (r_TX_Data(4) $ (r_TX_Data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Data(3),
	datab => r_TX_Data(2),
	datac => r_TX_Data(4),
	datad => r_TX_Data(5),
	combout => \o_TX_Serial~1_combout\);

-- Location: LCCOMB_X17_Y20_N2
\o_TX_Serial~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_TX_Serial~2_combout\ = \o_TX_Serial~0_combout\ $ (r_TX_Data(7) $ (r_TX_Data(6) $ (\o_TX_Serial~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_TX_Serial~0_combout\,
	datab => r_TX_Data(7),
	datac => r_TX_Data(6),
	datad => \o_TX_Serial~1_combout\,
	combout => \o_TX_Serial~2_combout\);

-- Location: LCCOMB_X17_Y20_N26
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\r_SM_TX.s_Stop_Bit_TX~q\) # (((\o_TX_Serial~reg0_q\ & !\r_TX_CLK_Count[0]~9_combout\)) # (!\r_SM_TX.s_Idle_RX_TX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_TX_Serial~reg0_q\,
	datab => \r_SM_TX.s_Stop_Bit_TX~q\,
	datac => \r_SM_TX.s_Idle_RX_TX~q\,
	datad => \r_TX_CLK_Count[0]~9_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X17_Y20_N18
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (r_TX_Bit_Index(0) & ((r_TX_Bit_Index(1)) # ((r_TX_Data(5))))) # (!r_TX_Bit_Index(0) & (!r_TX_Bit_Index(1) & (r_TX_Data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Bit_Index(0),
	datab => r_TX_Bit_Index(1),
	datac => r_TX_Data(4),
	datad => r_TX_Data(5),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X17_Y20_N28
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (r_TX_Bit_Index(1) & ((\Mux2~0_combout\ & ((r_TX_Data(7)))) # (!\Mux2~0_combout\ & (r_TX_Data(6))))) # (!r_TX_Bit_Index(1) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Bit_Index(1),
	datab => r_TX_Data(6),
	datac => r_TX_Data(7),
	datad => \Mux2~0_combout\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X17_Y20_N30
\Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\r_SM_TX.s_Data_Bits_TX~q\ & ((\Selector1~3_combout\) # (!r_TX_Bit_Index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_TX.s_Data_Bits_TX~q\,
	datac => r_TX_Bit_Index(2),
	datad => \Selector1~3_combout\,
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X16_Y20_N4
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (r_TX_Bit_Index(0) & (((r_TX_Data(1) & !r_TX_Bit_Index(1))))) # (!r_TX_Bit_Index(0) & ((r_TX_Data(0)) # ((r_TX_Bit_Index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Data(0),
	datab => r_TX_Data(1),
	datac => r_TX_Bit_Index(0),
	datad => r_TX_Bit_Index(1),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X16_Y20_N14
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\ & (((r_TX_Data(2)) # (!r_TX_Bit_Index(1))))) # (!\Selector1~0_combout\ & (r_TX_Data(3) & ((r_TX_Bit_Index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Data(3),
	datab => r_TX_Data(2),
	datac => \Selector1~0_combout\,
	datad => r_TX_Bit_Index(1),
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X17_Y20_N16
\Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = (\Selector1~2_combout\) # ((\Selector1~4_combout\ & ((r_TX_Bit_Index(2)) # (\Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~2_combout\,
	datab => r_TX_Bit_Index(2),
	datac => \Selector1~4_combout\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~5_combout\);

-- Location: LCCOMB_X17_Y20_N12
\Selector1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~6_combout\ = (\Selector1~5_combout\) # ((!\i_Parity_Sel[1]~input_o\ & (\o_TX_Serial~2_combout\ & \r_SM_TX.s_Parity_Check_TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => \o_TX_Serial~2_combout\,
	datac => \r_SM_TX.s_Parity_Check_TX~q\,
	datad => \Selector1~5_combout\,
	combout => \Selector1~6_combout\);

-- Location: FF_X17_Y20_N13
\o_TX_Serial~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_TX_Serial~reg0_q\);

-- Location: LCCOMB_X16_Y20_N12
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\r_SM_TX.s_Start_Bit_TX~q\) # ((\r_SM_TX.s_Stop_Bit_TX~q\) # ((\r_SM_TX.s_Data_Bits_TX~q\) # (\r_SM_TX.s_Parity_Check_TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_TX.s_Start_Bit_TX~q\,
	datab => \r_SM_TX.s_Stop_Bit_TX~q\,
	datac => \r_SM_TX.s_Data_Bits_TX~q\,
	datad => \r_SM_TX.s_Parity_Check_TX~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X16_Y20_N28
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\r_SM_TX.s_Cleanup_TX~q\) # ((\r_SM_TX~8_combout\) # ((\Selector2~0_combout\ & \r_TX_Done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \r_SM_TX.s_Cleanup_TX~q\,
	datac => \r_TX_Done~q\,
	datad => \r_SM_TX~8_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X16_Y20_N29
r_TX_Done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_TX_Done~q\);

-- Location: IOIBUF_X34_Y12_N15
\i_RX_Serial~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RX_Serial,
	o => \i_RX_Serial~input_o\);

-- Location: LCCOMB_X26_Y19_N18
\r_RX_Bit_R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bit_R~0_combout\ = !\i_RX_Serial~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RX_Serial~input_o\,
	combout => \r_RX_Bit_R~0_combout\);

-- Location: FF_X26_Y19_N19
r_RX_Bit_R : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Bit_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Bit_R~q\);

-- Location: LCCOMB_X26_Y19_N16
\r_RX_Bit~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bit~feeder_combout\ = \r_RX_Bit_R~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_RX_Bit_R~q\,
	combout => \r_RX_Bit~feeder_combout\);

-- Location: FF_X26_Y19_N17
r_RX_Bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Bit~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Bit~q\);

-- Location: LCCOMB_X22_Y19_N4
\r_RX_CLK_Count[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[0]~12_combout\ = r_RX_CLK_Count(0) $ (VCC)
-- \r_RX_CLK_Count[0]~13\ = CARRY(r_RX_CLK_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_RX_CLK_Count(0),
	datad => VCC,
	combout => \r_RX_CLK_Count[0]~12_combout\,
	cout => \r_RX_CLK_Count[0]~13\);

-- Location: LCCOMB_X22_Y19_N26
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (!r_RX_CLK_Count(3) & (!r_RX_CLK_Count(6) & (!r_RX_CLK_Count(2) & !r_RX_CLK_Count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_CLK_Count(3),
	datab => r_RX_CLK_Count(6),
	datac => r_RX_CLK_Count(2),
	datad => r_RX_CLK_Count(1),
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X22_Y19_N24
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (r_RX_CLK_Count(7) & ((r_RX_CLK_Count(6)) # ((r_RX_CLK_Count(4) & r_RX_CLK_Count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_CLK_Count(4),
	datab => r_RX_CLK_Count(6),
	datac => r_RX_CLK_Count(5),
	datad => r_RX_CLK_Count(7),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X23_Y19_N20
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (((\LessThan4~1_combout\ & !r_RX_CLK_Count(0))) # (!r_RX_CLK_Count(8))) # (!\LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~1_combout\,
	datab => \LessThan4~0_combout\,
	datac => r_RX_CLK_Count(0),
	datad => r_RX_CLK_Count(8),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X23_Y19_N26
\Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (\i_Parity_Sel[1]~input_o\ & (\LessThan3~0_combout\ & (\r_SM_RX.s_Parity_Check_RX~q\))) # (!\i_Parity_Sel[1]~input_o\ & ((\Selector39~0_combout\) # ((\LessThan3~0_combout\ & \r_SM_RX.s_Parity_Check_RX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => \LessThan3~0_combout\,
	datac => \r_SM_RX.s_Parity_Check_RX~q\,
	datad => \Selector39~0_combout\,
	combout => \Selector39~1_combout\);

-- Location: FF_X23_Y19_N27
\r_SM_RX.s_Parity_Check_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_RX.s_Parity_Check_RX~q\);

-- Location: LCCOMB_X22_Y19_N30
\r_RX_CLK_Count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[0]~9_combout\ = (r_RX_CLK_Count(8) & \r_SM_RX.s_Parity_Check_RX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_RX_CLK_Count(8),
	datad => \r_SM_RX.s_Parity_Check_RX~q\,
	combout => \r_RX_CLK_Count[0]~9_combout\);

-- Location: LCCOMB_X22_Y19_N28
\r_RX_CLK_Count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[0]~10_combout\ = (\r_RX_CLK_Count[0]~9_combout\ & (\LessThan4~0_combout\ & ((r_RX_CLK_Count(0)) # (!\LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~1_combout\,
	datab => r_RX_CLK_Count(0),
	datac => \r_RX_CLK_Count[0]~9_combout\,
	datad => \LessThan4~0_combout\,
	combout => \r_RX_CLK_Count[0]~10_combout\);

-- Location: LCCOMB_X23_Y19_N14
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (r_RX_CLK_Count(4) & (!r_RX_CLK_Count(1) & (r_RX_CLK_Count(3) & !r_RX_CLK_Count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_CLK_Count(4),
	datab => r_RX_CLK_Count(1),
	datac => r_RX_CLK_Count(3),
	datad => r_RX_CLK_Count(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y19_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (r_RX_CLK_Count(7) & (r_RX_CLK_Count(6) & (!r_RX_CLK_Count(5) & !r_RX_CLK_Count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_CLK_Count(7),
	datab => r_RX_CLK_Count(6),
	datac => r_RX_CLK_Count(5),
	datad => r_RX_CLK_Count(8),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y19_N28
\r_RX_CLK_Count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[0]~11_combout\ = (\r_SM_RX.s_Start_Bits_RX~q\ & (!r_RX_CLK_Count(0) & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_RX.s_Start_Bits_RX~q\,
	datab => r_RX_CLK_Count(0),
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \r_RX_CLK_Count[0]~11_combout\);

-- Location: LCCOMB_X24_Y19_N16
\r_RX_Bit_Index[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bit_Index[1]~5_combout\ = (!\r_SM_RX.s_Data_Bits_RX~q\ & \r_SM_RX.s_Parity_Check_RX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_RX.s_Data_Bits_RX~q\,
	datac => \r_SM_RX.s_Parity_Check_RX~q\,
	combout => \r_RX_Bit_Index[1]~5_combout\);

-- Location: LCCOMB_X24_Y19_N2
\r_RX_Bit_Index[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bit_Index[1]~2_combout\ = (\r_SM_RX.s_Data_Bits_RX~q\ & (r_RX_Bit_Index(1) $ ((r_RX_Bit_Index(0))))) # (!\r_SM_RX.s_Data_Bits_RX~q\ & (((\r_SM_RX.s_Parity_Check_RX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(1),
	datab => r_RX_Bit_Index(0),
	datac => \r_SM_RX.s_Parity_Check_RX~q\,
	datad => \r_SM_RX.s_Data_Bits_RX~q\,
	combout => \r_RX_Bit_Index[1]~2_combout\);

-- Location: LCCOMB_X24_Y19_N26
\r_RX_Bit_Index[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bit_Index[1]~4_combout\ = (\r_RX_Bit_Index[1]~3_combout\ & ((r_RX_Bit_Index(1)))) # (!\r_RX_Bit_Index[1]~3_combout\ & (\r_RX_Bit_Index[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Bit_Index[1]~2_combout\,
	datac => r_RX_Bit_Index(1),
	datad => \r_RX_Bit_Index[1]~3_combout\,
	combout => \r_RX_Bit_Index[1]~4_combout\);

-- Location: FF_X24_Y19_N27
\r_RX_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Bit_Index[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Bit_Index(1));

-- Location: LCCOMB_X24_Y19_N4
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (r_RX_Bit_Index(0) & r_RX_Bit_Index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_RX_Bit_Index(0),
	datac => r_RX_Bit_Index(1),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X23_Y19_N8
\LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (r_RX_CLK_Count(8) & (!\LessThan4~1_combout\ & \LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_CLK_Count(8),
	datac => \LessThan4~1_combout\,
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X24_Y19_N12
\r_RX_Bit_Index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bit_Index~0_combout\ = (!r_RX_Bit_Index(3) & (\LessThan4~2_combout\ & ((!\Add3~0_combout\) # (!r_RX_Bit_Index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(3),
	datab => r_RX_Bit_Index(2),
	datac => \Add3~0_combout\,
	datad => \LessThan4~2_combout\,
	combout => \r_RX_Bit_Index~0_combout\);

-- Location: LCCOMB_X24_Y19_N20
\r_RX_Bit_Index[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bit_Index[1]~3_combout\ = ((\r_SM_RX.s_Data_Bits_RX~q\ & !\r_RX_Bit_Index~0_combout\)) # (!\r_RX_Bit_Index[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Bit_Index[3]~1_combout\,
	datac => \r_SM_RX.s_Data_Bits_RX~q\,
	datad => \r_RX_Bit_Index~0_combout\,
	combout => \r_RX_Bit_Index[1]~3_combout\);

-- Location: LCCOMB_X24_Y19_N22
\r_RX_Bit_Index[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bit_Index[3]~6_combout\ = (\r_RX_Bit_Index[3]~1_combout\ & ((\r_RX_Bit_Index[1]~5_combout\) # ((r_RX_Bit_Index(3) & \r_RX_Bit_Index[1]~3_combout\)))) # (!\r_RX_Bit_Index[3]~1_combout\ & (((r_RX_Bit_Index(3) & \r_RX_Bit_Index[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Bit_Index[3]~1_combout\,
	datab => \r_RX_Bit_Index[1]~5_combout\,
	datac => r_RX_Bit_Index(3),
	datad => \r_RX_Bit_Index[1]~3_combout\,
	combout => \r_RX_Bit_Index[3]~6_combout\);

-- Location: FF_X24_Y19_N23
\r_RX_Bit_Index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Bit_Index[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Bit_Index(3));

-- Location: LCCOMB_X21_Y19_N10
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\LessThan4~2_combout\ & ((r_RX_Bit_Index(3)) # ((r_RX_Bit_Index(2) & \Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(2),
	datab => r_RX_Bit_Index(3),
	datac => \LessThan4~2_combout\,
	datad => \Add3~0_combout\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X21_Y19_N20
\Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\r_RX_CLK_Count[0]~11_combout\ & ((\r_RX_Bit~q\) # ((\r_SM_RX.s_Data_Bits_RX~q\ & !\Selector37~0_combout\)))) # (!\r_RX_CLK_Count[0]~11_combout\ & (((\r_SM_RX.s_Data_Bits_RX~q\ & !\Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_CLK_Count[0]~11_combout\,
	datab => \r_RX_Bit~q\,
	datac => \r_SM_RX.s_Data_Bits_RX~q\,
	datad => \Selector37~0_combout\,
	combout => \Selector37~1_combout\);

-- Location: FF_X21_Y19_N21
\r_SM_RX.s_Data_Bits_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_RX.s_Data_Bits_RX~q\);

-- Location: LCCOMB_X24_Y19_N24
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (r_RX_Bit_Index(0) & (((\r_SM_RX.s_Data_Bits_RX~q\ & !\r_RX_Bit_Index~0_combout\)) # (!\r_RX_Bit_Index[3]~1_combout\))) # (!r_RX_Bit_Index(0) & (\r_SM_RX.s_Data_Bits_RX~q\ & ((\r_RX_Bit_Index~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_RX.s_Data_Bits_RX~q\,
	datab => \r_RX_Bit_Index[3]~1_combout\,
	datac => r_RX_Bit_Index(0),
	datad => \r_RX_Bit_Index~0_combout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X24_Y19_N25
\r_RX_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Bit_Index(0));

-- Location: LCCOMB_X25_Y19_N16
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (r_RX_CLK_Count(8) & (\r_SM_RX.s_Data_Bits_RX~q\ & (\LessThan4~0_combout\ & !\LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_CLK_Count(8),
	datab => \r_SM_RX.s_Data_Bits_RX~q\,
	datac => \LessThan4~0_combout\,
	datad => \LessThan4~1_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X25_Y19_N20
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!r_RX_Bit_Index(2) & (r_RX_Bit_Index(0) & (r_RX_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(2),
	datab => r_RX_Bit_Index(0),
	datac => r_RX_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X26_Y19_N26
\r_RX_Data[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Data[3]~3_combout\ = (\Decoder0~4_combout\ & (!\r_RX_Bit~q\)) # (!\Decoder0~4_combout\ & ((r_RX_Data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Bit~q\,
	datac => r_RX_Data(3),
	datad => \Decoder0~4_combout\,
	combout => \r_RX_Data[3]~3_combout\);

-- Location: FF_X26_Y19_N27
\r_RX_Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Data[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Data(3));

-- Location: LCCOMB_X25_Y19_N22
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (r_RX_Bit_Index(2) & (!r_RX_Bit_Index(0) & (!r_RX_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(2),
	datab => r_RX_Bit_Index(0),
	datac => r_RX_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X26_Y19_N28
\r_RX_Data[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Data[4]~4_combout\ = (\Decoder0~5_combout\ & (!\r_RX_Bit~q\)) # (!\Decoder0~5_combout\ & ((r_RX_Data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Bit~q\,
	datac => r_RX_Data(4),
	datad => \Decoder0~5_combout\,
	combout => \r_RX_Data[4]~4_combout\);

-- Location: FF_X26_Y19_N29
\r_RX_Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Data[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Data(4));

-- Location: LCCOMB_X25_Y19_N24
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!r_RX_Bit_Index(2) & (r_RX_Bit_Index(0) & (!r_RX_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(2),
	datab => r_RX_Bit_Index(0),
	datac => r_RX_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X26_Y19_N30
\r_RX_Data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Data[1]~1_combout\ = (\Decoder0~2_combout\ & (!\r_RX_Bit~q\)) # (!\Decoder0~2_combout\ & ((r_RX_Data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Bit~q\,
	datac => r_RX_Data(1),
	datad => \Decoder0~2_combout\,
	combout => \r_RX_Data[1]~1_combout\);

-- Location: FF_X26_Y19_N31
\r_RX_Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Data(1));

-- Location: LCCOMB_X25_Y19_N2
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!r_RX_Bit_Index(2) & (!r_RX_Bit_Index(0) & (r_RX_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(2),
	datab => r_RX_Bit_Index(0),
	datac => r_RX_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X26_Y19_N24
\r_RX_Data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Data[2]~2_combout\ = (\Decoder0~3_combout\ & (!\r_RX_Bit~q\)) # (!\Decoder0~3_combout\ & ((r_RX_Data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Bit~q\,
	datac => r_RX_Data(2),
	datad => \Decoder0~3_combout\,
	combout => \r_RX_Data[2]~2_combout\);

-- Location: FF_X26_Y19_N25
\r_RX_Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Data(2));

-- Location: LCCOMB_X26_Y19_N4
\p_UART_RX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_UART_RX~1_combout\ = r_RX_Data(3) $ (r_RX_Data(4) $ (r_RX_Data(1) $ (r_RX_Data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Data(3),
	datab => r_RX_Data(4),
	datac => r_RX_Data(1),
	datad => r_RX_Data(2),
	combout => \p_UART_RX~1_combout\);

-- Location: LCCOMB_X25_Y19_N14
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!r_RX_Bit_Index(2) & (!r_RX_Bit_Index(0) & (!r_RX_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(2),
	datab => r_RX_Bit_Index(0),
	datac => r_RX_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X26_Y19_N8
\r_RX_Data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Data[0]~0_combout\ = (\Decoder0~1_combout\ & (!\r_RX_Bit~q\)) # (!\Decoder0~1_combout\ & ((r_RX_Data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Bit~q\,
	datac => r_RX_Data(0),
	datad => \Decoder0~1_combout\,
	combout => \r_RX_Data[0]~0_combout\);

-- Location: FF_X26_Y19_N9
\r_RX_Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Data(0));

-- Location: LCCOMB_X26_Y19_N22
\p_UART_RX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_UART_RX~0_combout\ = r_RX_Data(0) $ (\r_RX_Bit~q\ $ (((\i_Parity_Sel[1]~input_o\) # (!\i_Parity_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[0]~input_o\,
	datab => \i_Parity_Sel[1]~input_o\,
	datac => r_RX_Data(0),
	datad => \r_RX_Bit~q\,
	combout => \p_UART_RX~0_combout\);

-- Location: LCCOMB_X25_Y19_N30
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (r_RX_Bit_Index(2) & (!r_RX_Bit_Index(0) & (r_RX_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(2),
	datab => r_RX_Bit_Index(0),
	datac => r_RX_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X26_Y19_N12
\r_RX_Data[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Data[6]~6_combout\ = (\Decoder0~7_combout\ & (!\r_RX_Bit~q\)) # (!\Decoder0~7_combout\ & ((r_RX_Data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Bit~q\,
	datac => r_RX_Data(6),
	datad => \Decoder0~7_combout\,
	combout => \r_RX_Data[6]~6_combout\);

-- Location: FF_X26_Y19_N13
\r_RX_Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Data[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Data(6));

-- Location: LCCOMB_X25_Y19_N12
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (r_RX_Bit_Index(2) & (r_RX_Bit_Index(0) & (r_RX_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(2),
	datab => r_RX_Bit_Index(0),
	datac => r_RX_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X26_Y19_N14
\r_RX_Data[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Data[7]~7_combout\ = (\Decoder0~8_combout\ & (!\r_RX_Bit~q\)) # (!\Decoder0~8_combout\ & ((r_RX_Data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Bit~q\,
	datac => r_RX_Data(7),
	datad => \Decoder0~8_combout\,
	combout => \r_RX_Data[7]~7_combout\);

-- Location: FF_X26_Y19_N15
\r_RX_Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Data[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Data(7));

-- Location: LCCOMB_X25_Y19_N8
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (r_RX_Bit_Index(2) & (r_RX_Bit_Index(0) & (!r_RX_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(2),
	datab => r_RX_Bit_Index(0),
	datac => r_RX_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X26_Y19_N6
\r_RX_Data[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Data[5]~5_combout\ = (\Decoder0~6_combout\ & (!\r_RX_Bit~q\)) # (!\Decoder0~6_combout\ & ((r_RX_Data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Bit~q\,
	datac => r_RX_Data(5),
	datad => \Decoder0~6_combout\,
	combout => \r_RX_Data[5]~5_combout\);

-- Location: FF_X26_Y19_N7
\r_RX_Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Data[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Data(5));

-- Location: LCCOMB_X26_Y19_N10
\p_UART_RX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_UART_RX~2_combout\ = r_RX_Data(6) $ (r_RX_Data(7) $ (r_RX_Data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Data(6),
	datac => r_RX_Data(7),
	datad => r_RX_Data(5),
	combout => \p_UART_RX~2_combout\);

-- Location: LCCOMB_X26_Y19_N20
\p_UART_RX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_UART_RX~3_combout\ = \p_UART_RX~1_combout\ $ (\p_UART_RX~0_combout\ $ (\p_UART_RX~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p_UART_RX~1_combout\,
	datac => \p_UART_RX~0_combout\,
	datad => \p_UART_RX~2_combout\,
	combout => \p_UART_RX~3_combout\);

-- Location: LCCOMB_X24_Y19_N30
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (r_RX_Bit_Index(1) & (!r_RX_Bit_Index(2) & (r_RX_Bit_Index(3) & !r_RX_Bit_Index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(1),
	datab => r_RX_Bit_Index(2),
	datac => r_RX_Bit_Index(3),
	datad => r_RX_Bit_Index(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X25_Y19_N0
\r_RX_Frame_Bit_Count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Frame_Bit_Count~0_combout\ = (!r_RX_Frame_Bit_Count(0) & \Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_RX_Frame_Bit_Count(0),
	datad => \Equal2~1_combout\,
	combout => \r_RX_Frame_Bit_Count~0_combout\);

-- Location: LCCOMB_X24_Y19_N6
\r_RX_Bits_to_Wait[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bits_to_Wait[3]~0_combout\ = (\r_SM_RX.s_Error_RX~q\ & (!\Equal1~0_combout\ & \LessThan4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_RX.s_Error_RX~q\,
	datac => \Equal1~0_combout\,
	datad => \LessThan4~2_combout\,
	combout => \r_RX_Bits_to_Wait[3]~0_combout\);

-- Location: FF_X25_Y19_N1
\r_RX_Frame_Bit_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Frame_Bit_Count~0_combout\,
	ena => \r_RX_Bits_to_Wait[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Frame_Bit_Count(0));

-- Location: LCCOMB_X25_Y19_N6
\r_RX_Frame_Bit_Count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Frame_Bit_Count~1_combout\ = (\Equal2~1_combout\ & (r_RX_Frame_Bit_Count(0) $ (r_RX_Frame_Bit_Count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_RX_Frame_Bit_Count(0),
	datac => r_RX_Frame_Bit_Count(1),
	datad => \Equal2~1_combout\,
	combout => \r_RX_Frame_Bit_Count~1_combout\);

-- Location: FF_X25_Y19_N7
\r_RX_Frame_Bit_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Frame_Bit_Count~1_combout\,
	ena => \r_RX_Bits_to_Wait[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Frame_Bit_Count(1));

-- Location: LCCOMB_X24_Y19_N14
\r_RX_Frame_Bit_Count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Frame_Bit_Count~2_combout\ = (\Equal2~1_combout\ & (r_RX_Frame_Bit_Count(2) $ (((r_RX_Frame_Bit_Count(1) & r_RX_Frame_Bit_Count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Frame_Bit_Count(1),
	datab => r_RX_Frame_Bit_Count(0),
	datac => r_RX_Frame_Bit_Count(2),
	datad => \Equal2~1_combout\,
	combout => \r_RX_Frame_Bit_Count~2_combout\);

-- Location: FF_X24_Y19_N15
\r_RX_Frame_Bit_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Frame_Bit_Count~2_combout\,
	ena => \r_RX_Bits_to_Wait[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Frame_Bit_Count(2));

-- Location: LCCOMB_X24_Y19_N18
\r_RX_Bits_to_Wait~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bits_to_Wait~3_combout\ = r_RX_Bit_Index(3) $ (((r_RX_Bit_Index(2) & (\Add3~0_combout\ & \i_Parity_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(3),
	datab => r_RX_Bit_Index(2),
	datac => \Add3~0_combout\,
	datad => \i_Parity_Sel[1]~input_o\,
	combout => \r_RX_Bits_to_Wait~3_combout\);

-- Location: FF_X24_Y19_N19
\r_RX_Bits_to_Wait[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Bits_to_Wait~3_combout\,
	ena => \r_RX_Bits_to_Wait[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Bits_to_Wait(3));

-- Location: LCCOMB_X24_Y19_N0
\r_RX_Bits_to_Wait~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bits_to_Wait~4_combout\ = r_RX_Bit_Index(2) $ ((((!r_RX_Bit_Index(0)) # (!r_RX_Bit_Index(1))) # (!\i_Parity_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => r_RX_Bit_Index(2),
	datac => r_RX_Bit_Index(1),
	datad => r_RX_Bit_Index(0),
	combout => \r_RX_Bits_to_Wait~4_combout\);

-- Location: FF_X24_Y19_N1
\r_RX_Bits_to_Wait[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Bits_to_Wait~4_combout\,
	ena => \r_RX_Bits_to_Wait[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Bits_to_Wait(2));

-- Location: LCCOMB_X25_Y19_N4
\r_RX_Bits_to_Wait~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bits_to_Wait~2_combout\ = r_RX_Bit_Index(1) $ (((!\i_Parity_Sel[1]~input_o\) # (!r_RX_Bit_Index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(1),
	datab => r_RX_Bit_Index(0),
	datac => \i_Parity_Sel[1]~input_o\,
	combout => \r_RX_Bits_to_Wait~2_combout\);

-- Location: FF_X25_Y19_N5
\r_RX_Bits_to_Wait[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Bits_to_Wait~2_combout\,
	ena => \r_RX_Bits_to_Wait[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Bits_to_Wait(1));

-- Location: LCCOMB_X24_Y19_N28
\r_RX_Bits_to_Wait~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bits_to_Wait~1_combout\ = r_RX_Bit_Index(0) $ (!\i_Parity_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_RX_Bit_Index(0),
	datad => \i_Parity_Sel[1]~input_o\,
	combout => \r_RX_Bits_to_Wait~1_combout\);

-- Location: FF_X24_Y19_N29
\r_RX_Bits_to_Wait[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Bits_to_Wait~1_combout\,
	ena => \r_RX_Bits_to_Wait[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Bits_to_Wait(0));

-- Location: LCCOMB_X25_Y19_N18
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (r_RX_Frame_Bit_Count(1) & ((r_RX_Frame_Bit_Count(0) $ (r_RX_Bits_to_Wait(0))) # (!r_RX_Bits_to_Wait(1)))) # (!r_RX_Frame_Bit_Count(1) & ((r_RX_Bits_to_Wait(1)) # (r_RX_Frame_Bit_Count(0) $ (r_RX_Bits_to_Wait(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Frame_Bit_Count(1),
	datab => r_RX_Frame_Bit_Count(0),
	datac => r_RX_Bits_to_Wait(1),
	datad => r_RX_Bits_to_Wait(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X25_Y19_N28
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (r_RX_Bits_to_Wait(3)) # ((\Equal2~0_combout\) # (r_RX_Frame_Bit_Count(2) $ (r_RX_Bits_to_Wait(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Frame_Bit_Count(2),
	datab => r_RX_Bits_to_Wait(3),
	datac => r_RX_Bits_to_Wait(2),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X21_Y19_N12
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\r_SM_RX.s_Error_RX~q\ & (((!\Equal1~0_combout\ & \Equal2~1_combout\)) # (!\LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_RX.s_Error_RX~q\,
	datab => \Equal1~0_combout\,
	datac => \LessThan4~2_combout\,
	datad => \Equal2~1_combout\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X21_Y19_N26
\Selector41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (\Selector41~0_combout\) # ((\r_RX_CLK_Count[0]~10_combout\ & \p_UART_RX~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_CLK_Count[0]~10_combout\,
	datac => \p_UART_RX~3_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector41~1_combout\);

-- Location: FF_X21_Y19_N27
\r_SM_RX.s_Error_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_RX.s_Error_RX~q\);

-- Location: LCCOMB_X21_Y19_N16
\r_RX_CLK_Count[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[0]~30_combout\ = (\r_SM_RX.s_Stop_Bit_RX~q\) # ((\r_SM_RX.s_Error_RX~q\) # (\r_SM_RX.s_Data_Bits_RX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_RX.s_Stop_Bit_RX~q\,
	datac => \r_SM_RX.s_Error_RX~q\,
	datad => \r_SM_RX.s_Data_Bits_RX~q\,
	combout => \r_RX_CLK_Count[0]~30_combout\);

-- Location: LCCOMB_X22_Y19_N0
\r_RX_CLK_Count[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[0]~31_combout\ = \r_SM_RX.s_Idle_RX~q\ $ (\r_RX_CLK_Count[0]~11_combout\ $ (((!\LessThan4~2_combout\) # (!\r_RX_CLK_Count[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_CLK_Count[0]~30_combout\,
	datab => \r_SM_RX.s_Idle_RX~q\,
	datac => \LessThan4~2_combout\,
	datad => \r_RX_CLK_Count[0]~11_combout\,
	combout => \r_RX_CLK_Count[0]~31_combout\);

-- Location: LCCOMB_X22_Y19_N22
\r_RX_CLK_Count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[0]~32_combout\ = (!\r_RX_CLK_Count[0]~10_combout\ & (!\r_SM_RX.s_Cleanup_RX~q\ & ((\r_RX_Bit~q\) # (!\r_RX_CLK_Count[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Bit~q\,
	datab => \r_RX_CLK_Count[0]~10_combout\,
	datac => \r_SM_RX.s_Cleanup_RX~q\,
	datad => \r_RX_CLK_Count[0]~11_combout\,
	combout => \r_RX_CLK_Count[0]~32_combout\);

-- Location: FF_X22_Y19_N5
\r_RX_CLK_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_CLK_Count[0]~12_combout\,
	sclr => \r_RX_CLK_Count[0]~31_combout\,
	ena => \r_RX_CLK_Count[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_CLK_Count(0));

-- Location: LCCOMB_X22_Y19_N6
\r_RX_CLK_Count[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[1]~14_combout\ = (r_RX_CLK_Count(1) & (!\r_RX_CLK_Count[0]~13\)) # (!r_RX_CLK_Count(1) & ((\r_RX_CLK_Count[0]~13\) # (GND)))
-- \r_RX_CLK_Count[1]~15\ = CARRY((!\r_RX_CLK_Count[0]~13\) # (!r_RX_CLK_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_CLK_Count(1),
	datad => VCC,
	cin => \r_RX_CLK_Count[0]~13\,
	combout => \r_RX_CLK_Count[1]~14_combout\,
	cout => \r_RX_CLK_Count[1]~15\);

-- Location: FF_X22_Y19_N7
\r_RX_CLK_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_CLK_Count[1]~14_combout\,
	sclr => \r_RX_CLK_Count[0]~31_combout\,
	ena => \r_RX_CLK_Count[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_CLK_Count(1));

-- Location: LCCOMB_X22_Y19_N8
\r_RX_CLK_Count[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[2]~16_combout\ = (r_RX_CLK_Count(2) & (\r_RX_CLK_Count[1]~15\ $ (GND))) # (!r_RX_CLK_Count(2) & (!\r_RX_CLK_Count[1]~15\ & VCC))
-- \r_RX_CLK_Count[2]~17\ = CARRY((r_RX_CLK_Count(2) & !\r_RX_CLK_Count[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_CLK_Count(2),
	datad => VCC,
	cin => \r_RX_CLK_Count[1]~15\,
	combout => \r_RX_CLK_Count[2]~16_combout\,
	cout => \r_RX_CLK_Count[2]~17\);

-- Location: FF_X22_Y19_N9
\r_RX_CLK_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_CLK_Count[2]~16_combout\,
	sclr => \r_RX_CLK_Count[0]~31_combout\,
	ena => \r_RX_CLK_Count[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_CLK_Count(2));

-- Location: LCCOMB_X22_Y19_N10
\r_RX_CLK_Count[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[3]~18_combout\ = (r_RX_CLK_Count(3) & (!\r_RX_CLK_Count[2]~17\)) # (!r_RX_CLK_Count(3) & ((\r_RX_CLK_Count[2]~17\) # (GND)))
-- \r_RX_CLK_Count[3]~19\ = CARRY((!\r_RX_CLK_Count[2]~17\) # (!r_RX_CLK_Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_RX_CLK_Count(3),
	datad => VCC,
	cin => \r_RX_CLK_Count[2]~17\,
	combout => \r_RX_CLK_Count[3]~18_combout\,
	cout => \r_RX_CLK_Count[3]~19\);

-- Location: FF_X22_Y19_N11
\r_RX_CLK_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_CLK_Count[3]~18_combout\,
	sclr => \r_RX_CLK_Count[0]~31_combout\,
	ena => \r_RX_CLK_Count[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_CLK_Count(3));

-- Location: LCCOMB_X22_Y19_N12
\r_RX_CLK_Count[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[4]~20_combout\ = (r_RX_CLK_Count(4) & (\r_RX_CLK_Count[3]~19\ $ (GND))) # (!r_RX_CLK_Count(4) & (!\r_RX_CLK_Count[3]~19\ & VCC))
-- \r_RX_CLK_Count[4]~21\ = CARRY((r_RX_CLK_Count(4) & !\r_RX_CLK_Count[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_RX_CLK_Count(4),
	datad => VCC,
	cin => \r_RX_CLK_Count[3]~19\,
	combout => \r_RX_CLK_Count[4]~20_combout\,
	cout => \r_RX_CLK_Count[4]~21\);

-- Location: FF_X22_Y19_N13
\r_RX_CLK_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_CLK_Count[4]~20_combout\,
	sclr => \r_RX_CLK_Count[0]~31_combout\,
	ena => \r_RX_CLK_Count[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_CLK_Count(4));

-- Location: LCCOMB_X22_Y19_N14
\r_RX_CLK_Count[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[5]~22_combout\ = (r_RX_CLK_Count(5) & (!\r_RX_CLK_Count[4]~21\)) # (!r_RX_CLK_Count(5) & ((\r_RX_CLK_Count[4]~21\) # (GND)))
-- \r_RX_CLK_Count[5]~23\ = CARRY((!\r_RX_CLK_Count[4]~21\) # (!r_RX_CLK_Count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_RX_CLK_Count(5),
	datad => VCC,
	cin => \r_RX_CLK_Count[4]~21\,
	combout => \r_RX_CLK_Count[5]~22_combout\,
	cout => \r_RX_CLK_Count[5]~23\);

-- Location: FF_X22_Y19_N15
\r_RX_CLK_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_CLK_Count[5]~22_combout\,
	sclr => \r_RX_CLK_Count[0]~31_combout\,
	ena => \r_RX_CLK_Count[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_CLK_Count(5));

-- Location: LCCOMB_X22_Y19_N16
\r_RX_CLK_Count[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[6]~24_combout\ = (r_RX_CLK_Count(6) & (\r_RX_CLK_Count[5]~23\ $ (GND))) # (!r_RX_CLK_Count(6) & (!\r_RX_CLK_Count[5]~23\ & VCC))
-- \r_RX_CLK_Count[6]~25\ = CARRY((r_RX_CLK_Count(6) & !\r_RX_CLK_Count[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_RX_CLK_Count(6),
	datad => VCC,
	cin => \r_RX_CLK_Count[5]~23\,
	combout => \r_RX_CLK_Count[6]~24_combout\,
	cout => \r_RX_CLK_Count[6]~25\);

-- Location: FF_X22_Y19_N17
\r_RX_CLK_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_CLK_Count[6]~24_combout\,
	sclr => \r_RX_CLK_Count[0]~31_combout\,
	ena => \r_RX_CLK_Count[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_CLK_Count(6));

-- Location: LCCOMB_X22_Y19_N18
\r_RX_CLK_Count[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[7]~26_combout\ = (r_RX_CLK_Count(7) & (!\r_RX_CLK_Count[6]~25\)) # (!r_RX_CLK_Count(7) & ((\r_RX_CLK_Count[6]~25\) # (GND)))
-- \r_RX_CLK_Count[7]~27\ = CARRY((!\r_RX_CLK_Count[6]~25\) # (!r_RX_CLK_Count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_RX_CLK_Count(7),
	datad => VCC,
	cin => \r_RX_CLK_Count[6]~25\,
	combout => \r_RX_CLK_Count[7]~26_combout\,
	cout => \r_RX_CLK_Count[7]~27\);

-- Location: FF_X22_Y19_N19
\r_RX_CLK_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_CLK_Count[7]~26_combout\,
	sclr => \r_RX_CLK_Count[0]~31_combout\,
	ena => \r_RX_CLK_Count[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_CLK_Count(7));

-- Location: LCCOMB_X22_Y19_N20
\r_RX_CLK_Count[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_CLK_Count[8]~28_combout\ = \r_RX_CLK_Count[7]~27\ $ (!r_RX_CLK_Count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_RX_CLK_Count(8),
	cin => \r_RX_CLK_Count[7]~27\,
	combout => \r_RX_CLK_Count[8]~28_combout\);

-- Location: FF_X22_Y19_N21
\r_RX_CLK_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_CLK_Count[8]~28_combout\,
	sclr => \r_RX_CLK_Count[0]~31_combout\,
	ena => \r_RX_CLK_Count[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_CLK_Count(8));

-- Location: LCCOMB_X21_Y19_N2
\Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~2_combout\ = (\r_SM_RX.s_Stop_Bit_RX~q\) # ((\r_SM_RX.s_Error_RX~q\ & ((\Equal1~0_combout\) # (!\Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_RX.s_Error_RX~q\,
	datab => \Equal1~0_combout\,
	datac => \r_SM_RX.s_Stop_Bit_RX~q\,
	datad => \Equal2~1_combout\,
	combout => \Selector40~2_combout\);

-- Location: LCCOMB_X21_Y19_N4
\Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~3_combout\ = (r_RX_CLK_Count(8) & (!\LessThan4~1_combout\ & (\LessThan4~0_combout\ & \Selector40~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_CLK_Count(8),
	datab => \LessThan4~1_combout\,
	datac => \LessThan4~0_combout\,
	datad => \Selector40~2_combout\,
	combout => \Selector40~3_combout\);

-- Location: FF_X21_Y19_N5
\r_SM_RX.s_Cleanup_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector40~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_RX.s_Cleanup_RX~q\);

-- Location: LCCOMB_X23_Y19_N18
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (!\r_SM_RX.s_Cleanup_RX~q\ & ((\r_RX_Bit~q\) # ((\r_SM_RX.s_Idle_RX~q\ & !\r_RX_CLK_Count[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Bit~q\,
	datab => \r_SM_RX.s_Cleanup_RX~q\,
	datac => \r_SM_RX.s_Idle_RX~q\,
	datad => \r_RX_CLK_Count[0]~11_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X23_Y19_N19
\r_SM_RX.s_Idle_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_RX.s_Idle_RX~q\);

-- Location: LCCOMB_X23_Y19_N30
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\r_SM_RX.s_Start_Bits_RX~q\ & (((r_RX_CLK_Count(0)) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => r_RX_CLK_Count(0),
	datac => \Equal0~0_combout\,
	datad => \r_SM_RX.s_Start_Bits_RX~q\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (\Selector36~0_combout\) # ((!\r_SM_RX.s_Idle_RX~q\ & \r_RX_Bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_RX.s_Idle_RX~q\,
	datac => \Selector36~0_combout\,
	datad => \r_RX_Bit~q\,
	combout => \Selector36~1_combout\);

-- Location: FF_X23_Y19_N13
\r_SM_RX.s_Start_Bits_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector36~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_RX.s_Start_Bits_RX~q\);

-- Location: LCCOMB_X23_Y19_N22
\r_RX_Bit_Index[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Bit_Index[3]~1_combout\ = (!\r_SM_RX.s_Start_Bits_RX~q\ & (!\r_SM_RX.s_Cleanup_RX~q\ & !\r_SM_RX.s_Error_RX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_RX.s_Start_Bits_RX~q\,
	datac => \r_SM_RX.s_Cleanup_RX~q\,
	datad => \r_SM_RX.s_Error_RX~q\,
	combout => \r_RX_Bit_Index[3]~1_combout\);

-- Location: LCCOMB_X24_Y19_N10
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\r_SM_RX.s_Data_Bits_RX~q\ & (r_RX_Bit_Index(2) $ (((\Add3~0_combout\ & \r_RX_Bit_Index~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_RX.s_Data_Bits_RX~q\,
	datab => r_RX_Bit_Index(2),
	datac => \Add3~0_combout\,
	datad => \r_RX_Bit_Index~0_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X24_Y19_N8
\Selector32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\Selector32~0_combout\) # ((!\r_RX_Bit_Index[3]~1_combout\ & r_RX_Bit_Index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Bit_Index[3]~1_combout\,
	datac => r_RX_Bit_Index(2),
	datad => \Selector32~0_combout\,
	combout => \Selector32~1_combout\);

-- Location: FF_X24_Y19_N9
\r_RX_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Bit_Index(2));

-- Location: LCCOMB_X25_Y19_N10
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\Decoder0~0_combout\ & ((r_RX_Bit_Index(3)) # ((r_RX_Bit_Index(2) & \Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Bit_Index(2),
	datab => r_RX_Bit_Index(3),
	datac => \Add3~0_combout\,
	datad => \Decoder0~0_combout\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X21_Y19_N28
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\r_SM_RX.s_Stop_Bit_RX~q\ & (((\r_RX_CLK_Count[0]~10_combout\ & !\p_UART_RX~3_combout\)) # (!\LessThan4~2_combout\))) # (!\r_SM_RX.s_Stop_Bit_RX~q\ & (\r_RX_CLK_Count[0]~10_combout\ & (!\p_UART_RX~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_RX.s_Stop_Bit_RX~q\,
	datab => \r_RX_CLK_Count[0]~10_combout\,
	datac => \p_UART_RX~3_combout\,
	datad => \LessThan4~2_combout\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X21_Y19_N22
\Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\Selector38~0_combout\) # ((\i_Parity_Sel[1]~input_o\ & \Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Parity_Sel[1]~input_o\,
	datac => \Selector39~0_combout\,
	datad => \Selector38~0_combout\,
	combout => \Selector38~1_combout\);

-- Location: FF_X21_Y19_N23
\r_SM_RX.s_Stop_Bit_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_RX.s_Stop_Bit_RX~q\);

-- Location: LCCOMB_X21_Y19_N6
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\r_RX_Done~q\ & ((\r_SM_RX.s_Stop_Bit_RX~q\) # ((!\r_SM_RX.s_Cleanup_RX~q\ & \r_SM_RX.s_Idle_RX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_RX.s_Stop_Bit_RX~q\,
	datab => \r_RX_Done~q\,
	datac => \r_SM_RX.s_Cleanup_RX~q\,
	datad => \r_SM_RX.s_Idle_RX~q\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X21_Y19_N0
\Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\Selector21~0_combout\) # ((\r_SM_RX.s_Stop_Bit_RX~q\ & \LessThan4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_RX.s_Stop_Bit_RX~q\,
	datac => \LessThan4~2_combout\,
	datad => \Selector21~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: FF_X21_Y19_N1
r_RX_Done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Done~q\);

-- Location: LCCOMB_X23_Y19_N16
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\r_SM_RX.s_Error_RX~q\) # ((!\r_SM_RX.s_Cleanup_RX~q\ & \r_RX_Error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_RX.s_Cleanup_RX~q\,
	datac => \r_RX_Error~q\,
	datad => \r_SM_RX.s_Error_RX~q\,
	combout => \Selector42~0_combout\);

-- Location: FF_X23_Y19_N17
r_RX_Error : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Error~q\);

-- Location: LCCOMB_X16_Y20_N0
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\o_TX_Busy~reg0_q\ & ((\r_SM_TX.s_Stop_Bit_TX~q\) # ((\r_SM_TX.s_Data_Bits_TX~q\) # (\r_SM_TX.s_Parity_Check_TX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_TX_Busy~reg0_q\,
	datab => \r_SM_TX.s_Stop_Bit_TX~q\,
	datac => \r_SM_TX.s_Data_Bits_TX~q\,
	datad => \r_SM_TX.s_Parity_Check_TX~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X16_Y20_N10
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\r_SM_TX.s_Start_Bit_TX~q\) # (\Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_SM_TX.s_Start_Bit_TX~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X16_Y20_N11
\o_TX_Busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_TX_Busy~reg0_q\);

ww_o_TX_Serial <= \o_TX_Serial~output_o\;

ww_o_TX_Done <= \o_TX_Done~output_o\;

ww_o_RX_Done <= \o_RX_Done~output_o\;

ww_o_RX_Data(0) <= \o_RX_Data[0]~output_o\;

ww_o_RX_Data(1) <= \o_RX_Data[1]~output_o\;

ww_o_RX_Data(2) <= \o_RX_Data[2]~output_o\;

ww_o_RX_Data(3) <= \o_RX_Data[3]~output_o\;

ww_o_RX_Data(4) <= \o_RX_Data[4]~output_o\;

ww_o_RX_Data(5) <= \o_RX_Data[5]~output_o\;

ww_o_RX_Data(6) <= \o_RX_Data[6]~output_o\;

ww_o_RX_Data(7) <= \o_RX_Data[7]~output_o\;

ww_o_RX_Error <= \o_RX_Error~output_o\;

ww_o_TX_Busy <= \o_TX_Busy~output_o\;
END structure;


