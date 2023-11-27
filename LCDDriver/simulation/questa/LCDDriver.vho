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

-- DATE "11/27/2023 00:04:41"

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

ENTITY 	LCDDriver IS
    PORT (
	i_CLK : IN std_logic;
	RS : OUT std_logic;
	RW : OUT std_logic;
	ENA : OUT std_logic;
	CORD : IN std_logic;
	CORI : IN std_logic;
	DATA_LCD : OUT std_logic_vector(7 DOWNTO 0);
	BLCD : OUT std_logic_vector(7 DOWNTO 0);
	i_RX_Serial : IN std_logic;
	o_TX_Serial : OUT std_logic
	);
END LCDDriver;

-- Design Ports Information
-- RS	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RW	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENA	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[5]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[6]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_LCD[7]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[1]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[4]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[5]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[6]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLCD[7]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RX_Serial	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_TX_Serial	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CORI	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CORD	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCDDriver IS
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
SIGNAL ww_RS : std_logic;
SIGNAL ww_RW : std_logic;
SIGNAL ww_ENA : std_logic;
SIGNAL ww_CORD : std_logic;
SIGNAL ww_CORI : std_logic;
SIGNAL ww_DATA_LCD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BLCD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_RX_Serial : std_logic;
SIGNAL ww_o_TX_Serial : std_logic;
SIGNAL \U1|WideOr37~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \RS~output_o\ : std_logic;
SIGNAL \RW~output_o\ : std_logic;
SIGNAL \ENA~output_o\ : std_logic;
SIGNAL \DATA_LCD[0]~output_o\ : std_logic;
SIGNAL \DATA_LCD[1]~output_o\ : std_logic;
SIGNAL \DATA_LCD[2]~output_o\ : std_logic;
SIGNAL \DATA_LCD[3]~output_o\ : std_logic;
SIGNAL \DATA_LCD[4]~output_o\ : std_logic;
SIGNAL \DATA_LCD[5]~output_o\ : std_logic;
SIGNAL \DATA_LCD[6]~output_o\ : std_logic;
SIGNAL \DATA_LCD[7]~output_o\ : std_logic;
SIGNAL \BLCD[0]~output_o\ : std_logic;
SIGNAL \BLCD[1]~output_o\ : std_logic;
SIGNAL \BLCD[2]~output_o\ : std_logic;
SIGNAL \BLCD[3]~output_o\ : std_logic;
SIGNAL \BLCD[4]~output_o\ : std_logic;
SIGNAL \BLCD[5]~output_o\ : std_logic;
SIGNAL \BLCD[6]~output_o\ : std_logic;
SIGNAL \BLCD[7]~output_o\ : std_logic;
SIGNAL \o_TX_Serial~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Equal21~2_combout\ : std_logic;
SIGNAL \U1|Equal21~1_combout\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U1|Selector43~0_combout\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|Selector42~0_combout\ : std_logic;
SIGNAL \U1|Equal21~3_combout\ : std_logic;
SIGNAL \U1|Equal21~4_combout\ : std_logic;
SIGNAL \U1|Add7~24_combout\ : std_logic;
SIGNAL \U1|Add7~32\ : std_logic;
SIGNAL \U1|Add7~33_combout\ : std_logic;
SIGNAL \U1|Add7~96_combout\ : std_logic;
SIGNAL \CORD~input_o\ : std_logic;
SIGNAL \U1|Selector22~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CORRIMIENTO_DERECHA~q\ : std_logic;
SIGNAL \U1|WideOr37~0_combout\ : std_logic;
SIGNAL \U1|Add7~34\ : std_logic;
SIGNAL \U1|Add7~35_combout\ : std_logic;
SIGNAL \U1|Add7~107_combout\ : std_logic;
SIGNAL \U1|Add7~36\ : std_logic;
SIGNAL \U1|Add7~37_combout\ : std_logic;
SIGNAL \U1|Add7~106_combout\ : std_logic;
SIGNAL \U1|Add7~38\ : std_logic;
SIGNAL \U1|Add7~39_combout\ : std_logic;
SIGNAL \U1|Add7~41_combout\ : std_logic;
SIGNAL \U1|Add7~40\ : std_logic;
SIGNAL \U1|Add7~42_combout\ : std_logic;
SIGNAL \U1|Add7~44_combout\ : std_logic;
SIGNAL \U1|Add7~43\ : std_logic;
SIGNAL \U1|Add7~45_combout\ : std_logic;
SIGNAL \U1|Add7~47_combout\ : std_logic;
SIGNAL \U1|Add7~46\ : std_logic;
SIGNAL \U1|Add7~48_combout\ : std_logic;
SIGNAL \U1|Add7~105_combout\ : std_logic;
SIGNAL \U1|Add7~49\ : std_logic;
SIGNAL \U1|Add7~50_combout\ : std_logic;
SIGNAL \U1|Add7~104_combout\ : std_logic;
SIGNAL \U1|Add7~51\ : std_logic;
SIGNAL \U1|Add7~52_combout\ : std_logic;
SIGNAL \U1|Add7~103_combout\ : std_logic;
SIGNAL \U1|Add7~53\ : std_logic;
SIGNAL \U1|Add7~54_combout\ : std_logic;
SIGNAL \U1|Add7~102_combout\ : std_logic;
SIGNAL \U1|Add7~55\ : std_logic;
SIGNAL \U1|Add7~56_combout\ : std_logic;
SIGNAL \U1|Add7~58_combout\ : std_logic;
SIGNAL \U1|Add7~57\ : std_logic;
SIGNAL \U1|Add7~59_combout\ : std_logic;
SIGNAL \U1|Add7~61_combout\ : std_logic;
SIGNAL \U1|Add7~60\ : std_logic;
SIGNAL \U1|Add7~62_combout\ : std_logic;
SIGNAL \U1|Add7~64_combout\ : std_logic;
SIGNAL \U1|Add7~63\ : std_logic;
SIGNAL \U1|Add7~65_combout\ : std_logic;
SIGNAL \U1|Add7~101_combout\ : std_logic;
SIGNAL \U1|Add7~66\ : std_logic;
SIGNAL \U1|Add7~67_combout\ : std_logic;
SIGNAL \U1|Add7~100_combout\ : std_logic;
SIGNAL \U1|Add7~68\ : std_logic;
SIGNAL \U1|Add7~69_combout\ : std_logic;
SIGNAL \U1|Add7~71_combout\ : std_logic;
SIGNAL \U1|Add7~70\ : std_logic;
SIGNAL \U1|Add7~72_combout\ : std_logic;
SIGNAL \U1|Add7~119_combout\ : std_logic;
SIGNAL \U1|Add7~73\ : std_logic;
SIGNAL \U1|Add7~74_combout\ : std_logic;
SIGNAL \U1|Add7~118_combout\ : std_logic;
SIGNAL \U1|Add7~75\ : std_logic;
SIGNAL \U1|Add7~77\ : std_logic;
SIGNAL \U1|Add7~78_combout\ : std_logic;
SIGNAL \U1|Add7~109_combout\ : std_logic;
SIGNAL \U1|Add7~79\ : std_logic;
SIGNAL \U1|Add7~80_combout\ : std_logic;
SIGNAL \U1|Add7~110_combout\ : std_logic;
SIGNAL \U1|Add7~81\ : std_logic;
SIGNAL \U1|Add7~82_combout\ : std_logic;
SIGNAL \U1|Add7~117_combout\ : std_logic;
SIGNAL \U1|Add7~83\ : std_logic;
SIGNAL \U1|Add7~84_combout\ : std_logic;
SIGNAL \U1|Add7~116_combout\ : std_logic;
SIGNAL \U1|Add7~85\ : std_logic;
SIGNAL \U1|Add7~86_combout\ : std_logic;
SIGNAL \U1|Add7~115_combout\ : std_logic;
SIGNAL \U1|Add7~87\ : std_logic;
SIGNAL \U1|Add7~88_combout\ : std_logic;
SIGNAL \U1|Add7~114_combout\ : std_logic;
SIGNAL \U1|Add7~89\ : std_logic;
SIGNAL \U1|Add7~90_combout\ : std_logic;
SIGNAL \U1|Add7~113_combout\ : std_logic;
SIGNAL \U1|Add7~91\ : std_logic;
SIGNAL \U1|Add7~92_combout\ : std_logic;
SIGNAL \U1|Add7~112_combout\ : std_logic;
SIGNAL \U1|Equal26~6_combout\ : std_logic;
SIGNAL \U1|Equal26~7_combout\ : std_logic;
SIGNAL \U1|Equal26~8_combout\ : std_logic;
SIGNAL \U1|Equal26~9_combout\ : std_logic;
SIGNAL \U1|Equal26~10_combout\ : std_logic;
SIGNAL \U1|Add7~76_combout\ : std_logic;
SIGNAL \U1|Add7~108_combout\ : std_logic;
SIGNAL \U1|DELAY_COR2[31]~feeder_combout\ : std_logic;
SIGNAL \U1|Equal26~2_combout\ : std_logic;
SIGNAL \U1|Equal26~1_combout\ : std_logic;
SIGNAL \U1|Equal26~0_combout\ : std_logic;
SIGNAL \U1|Add7~93\ : std_logic;
SIGNAL \U1|Add7~94_combout\ : std_logic;
SIGNAL \U1|Add7~111_combout\ : std_logic;
SIGNAL \U1|Equal26~3_combout\ : std_logic;
SIGNAL \U1|Equal26~4_combout\ : std_logic;
SIGNAL \U1|Add7~26_combout\ : std_logic;
SIGNAL \U1|Add7~25\ : std_logic;
SIGNAL \U1|Add7~27_combout\ : std_logic;
SIGNAL \U1|Add7~97_combout\ : std_logic;
SIGNAL \U1|Add7~28\ : std_logic;
SIGNAL \U1|Add7~29_combout\ : std_logic;
SIGNAL \U1|Add7~98_combout\ : std_logic;
SIGNAL \U1|Add7~30\ : std_logic;
SIGNAL \U1|Add7~31_combout\ : std_logic;
SIGNAL \U1|Add7~99_combout\ : std_logic;
SIGNAL \U1|Equal26~5_combout\ : std_logic;
SIGNAL \U1|Equal26~11_combout\ : std_logic;
SIGNAL \U1|Selector25~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.ENA_I~q\ : std_logic;
SIGNAL \U1|Selector24~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.ENA_D~q\ : std_logic;
SIGNAL \U1|DATA[3]~2_combout\ : std_logic;
SIGNAL \CORI~input_o\ : std_logic;
SIGNAL \U1|Selector8~0_combout\ : std_logic;
SIGNAL \U1|ESTADO.CHECAR~q\ : std_logic;
SIGNAL \U1|Selector23~0_combout\ : std_logic;
SIGNAL \U1|Selector23~1_combout\ : std_logic;
SIGNAL \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ : std_logic;
SIGNAL \U1|WideOr37~combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|Selector53~0_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Selector51~0_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|Selector49~0_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|Selector48~0_combout\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|Equal21~0_combout\ : std_logic;
SIGNAL \U1|LessThan13~0_combout\ : std_logic;
SIGNAL \U1|LessThan13~1_combout\ : std_logic;
SIGNAL \U1|LessThan12~0_combout\ : std_logic;
SIGNAL \U1|ENA~0_combout\ : std_logic;
SIGNAL \U1|ENA~1_combout\ : std_logic;
SIGNAL \U1|ENA~2_combout\ : std_logic;
SIGNAL \U1|ENA~3_combout\ : std_logic;
SIGNAL \U1|ENA~q\ : std_logic;
SIGNAL \U1|WideOr37~clkctrl_outclk\ : std_logic;
SIGNAL \U1|DATA[2]~0_combout\ : std_logic;
SIGNAL \U1|DATA[4]~1_combout\ : std_logic;
SIGNAL \U1|DATA_A\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|CONTA_DELAY_COR\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|CONTA_DELAY\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|DELAY_COR2\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_CLK <= i_CLK;
RS <= ww_RS;
RW <= ww_RW;
ENA <= ww_ENA;
ww_CORD <= CORD;
ww_CORI <= CORI;
DATA_LCD <= ww_DATA_LCD;
BLCD <= ww_BLCD;
ww_i_RX_Serial <= i_RX_Serial;
o_TX_Serial <= ww_o_TX_Serial;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|WideOr37~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|WideOr37~combout\);

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y4_N23
\RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RS~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RW~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\ENA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ENA~q\,
	devoe => ww_devoe,
	o => \ENA~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\DATA_LCD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_LCD[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\DATA_LCD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_LCD[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\DATA_LCD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|DATA[2]~0_combout\,
	devoe => ww_devoe,
	o => \DATA_LCD[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\DATA_LCD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|DATA[4]~1_combout\,
	devoe => ww_devoe,
	o => \DATA_LCD[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\DATA_LCD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|DATA[4]~1_combout\,
	devoe => ww_devoe,
	o => \DATA_LCD[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\DATA_LCD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_LCD[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\DATA_LCD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_LCD[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\DATA_LCD[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_LCD[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\BLCD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\BLCD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\BLCD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[2]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\BLCD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\BLCD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[4]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\BLCD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[5]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\BLCD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\BLCD[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BLCD[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\o_TX_Serial~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_TX_Serial~output_o\);

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

-- Location: LCCOMB_X16_Y4_N0
\U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|CONTA_DELAY\(0) $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|CONTA_DELAY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(0),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X17_Y4_N26
\U1|Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal21~2_combout\ = (!\U1|CONTA_DELAY\(7) & (\U1|CONTA_DELAY\(6) & (!\U1|CONTA_DELAY\(4) & !\U1|CONTA_DELAY\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(7),
	datab => \U1|CONTA_DELAY\(6),
	datac => \U1|CONTA_DELAY\(4),
	datad => \U1|CONTA_DELAY\(5),
	combout => \U1|Equal21~2_combout\);

-- Location: LCCOMB_X17_Y4_N20
\U1|Equal21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal21~1_combout\ = (\U1|CONTA_DELAY\(0) & (\U1|CONTA_DELAY\(2) & (\U1|CONTA_DELAY\(3) & \U1|CONTA_DELAY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(0),
	datab => \U1|CONTA_DELAY\(2),
	datac => \U1|CONTA_DELAY\(3),
	datad => \U1|CONTA_DELAY\(1),
	combout => \U1|Equal21~1_combout\);

-- Location: LCCOMB_X16_Y4_N20
\U1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|CONTA_DELAY\(10) & (\U1|Add0~19\ $ (GND))) # (!\U1|CONTA_DELAY\(10) & (!\U1|Add0~19\ & VCC))
-- \U1|Add0~21\ = CARRY((\U1|CONTA_DELAY\(10) & !\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(10),
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: LCCOMB_X16_Y4_N22
\U1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\U1|CONTA_DELAY\(11) & (!\U1|Add0~21\)) # (!\U1|CONTA_DELAY\(11) & ((\U1|Add0~21\) # (GND)))
-- \U1|Add0~23\ = CARRY((!\U1|Add0~21\) # (!\U1|CONTA_DELAY\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(11),
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: FF_X16_Y4_N23
\U1|CONTA_DELAY[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add0~22_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(11));

-- Location: LCCOMB_X16_Y4_N24
\U1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|CONTA_DELAY\(12) & (\U1|Add0~23\ $ (GND))) # (!\U1|CONTA_DELAY\(12) & (!\U1|Add0~23\ & VCC))
-- \U1|Add0~25\ = CARRY((\U1|CONTA_DELAY\(12) & !\U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(12),
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: FF_X16_Y4_N25
\U1|CONTA_DELAY[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add0~24_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(12));

-- Location: LCCOMB_X16_Y4_N26
\U1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|CONTA_DELAY\(13) & (!\U1|Add0~25\)) # (!\U1|CONTA_DELAY\(13) & ((\U1|Add0~25\) # (GND)))
-- \U1|Add0~27\ = CARRY((!\U1|Add0~25\) # (!\U1|CONTA_DELAY\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(13),
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: FF_X16_Y4_N27
\U1|CONTA_DELAY[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add0~26_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(13));

-- Location: LCCOMB_X16_Y4_N28
\U1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = (\U1|CONTA_DELAY\(14) & (\U1|Add0~27\ $ (GND))) # (!\U1|CONTA_DELAY\(14) & (!\U1|Add0~27\ & VCC))
-- \U1|Add0~29\ = CARRY((\U1|CONTA_DELAY\(14) & !\U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(14),
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: LCCOMB_X17_Y4_N2
\U1|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector43~0_combout\ = (\U1|Add0~28_combout\ & !\U1|Equal21~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~28_combout\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector43~0_combout\);

-- Location: FF_X17_Y4_N3
\U1|CONTA_DELAY[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Selector43~0_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(14));

-- Location: LCCOMB_X16_Y4_N30
\U1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = \U1|CONTA_DELAY\(15) $ (\U1|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(15),
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\);

-- Location: LCCOMB_X17_Y4_N14
\U1|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector42~0_combout\ = (!\U1|Equal21~4_combout\ & \U1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~4_combout\,
	datad => \U1|Add0~30_combout\,
	combout => \U1|Selector42~0_combout\);

-- Location: FF_X17_Y4_N15
\U1|CONTA_DELAY[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Selector42~0_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(15));

-- Location: LCCOMB_X17_Y4_N12
\U1|Equal21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal21~3_combout\ = (\U1|Equal21~2_combout\ & (\U1|Equal21~1_combout\ & (\U1|CONTA_DELAY\(15) & \U1|Equal21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~2_combout\,
	datab => \U1|Equal21~1_combout\,
	datac => \U1|CONTA_DELAY\(15),
	datad => \U1|Equal21~0_combout\,
	combout => \U1|Equal21~3_combout\);

-- Location: LCCOMB_X17_Y4_N10
\U1|Equal21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal21~4_combout\ = (\U1|Equal21~3_combout\ & (\U1|CONTA_DELAY\(8) & (\U1|CONTA_DELAY\(9) & \U1|CONTA_DELAY\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~3_combout\,
	datab => \U1|CONTA_DELAY\(8),
	datac => \U1|CONTA_DELAY\(9),
	datad => \U1|CONTA_DELAY\(14),
	combout => \U1|Equal21~4_combout\);

-- Location: LCCOMB_X18_Y3_N0
\U1|Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~24_combout\ = \U1|CONTA_DELAY_COR\(0) $ (GND)
-- \U1|Add7~25\ = CARRY(!\U1|CONTA_DELAY_COR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(0),
	datad => VCC,
	combout => \U1|Add7~24_combout\,
	cout => \U1|Add7~25\);

-- Location: LCCOMB_X18_Y3_N6
\U1|Add7~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~31_combout\ = (\U1|CONTA_DELAY_COR\(3) & (!\U1|Add7~30\)) # (!\U1|CONTA_DELAY_COR\(3) & ((\U1|Add7~30\) # (GND)))
-- \U1|Add7~32\ = CARRY((!\U1|Add7~30\) # (!\U1|CONTA_DELAY_COR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(3),
	datad => VCC,
	cin => \U1|Add7~30\,
	combout => \U1|Add7~31_combout\,
	cout => \U1|Add7~32\);

-- Location: LCCOMB_X18_Y3_N8
\U1|Add7~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~33_combout\ = (\U1|CONTA_DELAY_COR\(4) & (\U1|Add7~32\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(4) & (!\U1|Add7~32\ & VCC))
-- \U1|Add7~34\ = CARRY((\U1|CONTA_DELAY_COR\(4) & !\U1|Add7~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(4),
	datad => VCC,
	cin => \U1|Add7~32\,
	combout => \U1|Add7~33_combout\,
	cout => \U1|Add7~34\);

-- Location: LCCOMB_X17_Y3_N6
\U1|Add7~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~96_combout\ = (\U1|Add7~33_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Add7~33_combout\,
	datac => \U1|Equal26~4_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~96_combout\);

-- Location: IOIBUF_X16_Y0_N8
\CORD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CORD,
	o => \CORD~input_o\);

-- Location: LCCOMB_X16_Y5_N24
\U1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector22~0_combout\ = (\U1|ESTADO.CHECAR~q\ & (((\U1|ESTADO.CORRIMIENTO_DERECHA~q\ & !\U1|Equal26~11_combout\)))) # (!\U1|ESTADO.CHECAR~q\ & (((\U1|ESTADO.CORRIMIENTO_DERECHA~q\ & !\U1|Equal26~11_combout\)) # (!\CORD~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CHECAR~q\,
	datab => \CORD~input_o\,
	datac => \U1|ESTADO.CORRIMIENTO_DERECHA~q\,
	datad => \U1|Equal26~11_combout\,
	combout => \U1|Selector22~0_combout\);

-- Location: FF_X16_Y5_N25
\U1|ESTADO.CORRIMIENTO_DERECHA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \U1|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CORRIMIENTO_DERECHA~q\);

-- Location: LCCOMB_X16_Y5_N8
\U1|WideOr37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|WideOr37~0_combout\ = (\U1|ESTADO.CORRIMIENTO_DERECHA~q\) # (\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.CORRIMIENTO_DERECHA~q\,
	datad => \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\,
	combout => \U1|WideOr37~0_combout\);

-- Location: FF_X17_Y3_N7
\U1|CONTA_DELAY_COR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~96_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(4));

-- Location: LCCOMB_X18_Y3_N10
\U1|Add7~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~35_combout\ = (\U1|CONTA_DELAY_COR\(5) & (!\U1|Add7~34\)) # (!\U1|CONTA_DELAY_COR\(5) & ((\U1|Add7~34\) # (GND)))
-- \U1|Add7~36\ = CARRY((!\U1|Add7~34\) # (!\U1|CONTA_DELAY_COR\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(5),
	datad => VCC,
	cin => \U1|Add7~34\,
	combout => \U1|Add7~35_combout\,
	cout => \U1|Add7~36\);

-- Location: LCCOMB_X19_Y2_N2
\U1|Add7~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~107_combout\ = (\U1|Add7~35_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Add7~35_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~107_combout\);

-- Location: FF_X18_Y3_N25
\U1|CONTA_DELAY_COR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \U1|Add7~107_combout\,
	sload => VCC,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(5));

-- Location: LCCOMB_X18_Y3_N12
\U1|Add7~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~37_combout\ = (\U1|CONTA_DELAY_COR\(6) & (\U1|Add7~36\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(6) & (!\U1|Add7~36\ & VCC))
-- \U1|Add7~38\ = CARRY((\U1|CONTA_DELAY_COR\(6) & !\U1|Add7~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(6),
	datad => VCC,
	cin => \U1|Add7~36\,
	combout => \U1|Add7~37_combout\,
	cout => \U1|Add7~38\);

-- Location: LCCOMB_X19_Y2_N0
\U1|Add7~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~106_combout\ = (\U1|Add7~37_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Add7~37_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~106_combout\);

-- Location: FF_X18_Y3_N31
\U1|CONTA_DELAY_COR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \U1|Add7~106_combout\,
	sload => VCC,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(6));

-- Location: LCCOMB_X18_Y3_N14
\U1|Add7~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~39_combout\ = (\U1|CONTA_DELAY_COR\(7) & (!\U1|Add7~38\)) # (!\U1|CONTA_DELAY_COR\(7) & ((\U1|Add7~38\) # (GND)))
-- \U1|Add7~40\ = CARRY((!\U1|Add7~38\) # (!\U1|CONTA_DELAY_COR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(7),
	datad => VCC,
	cin => \U1|Add7~38\,
	combout => \U1|Add7~39_combout\,
	cout => \U1|Add7~40\);

-- Location: LCCOMB_X19_Y3_N20
\U1|Add7~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~41_combout\ = (\U1|Add7~39_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~39_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~41_combout\);

-- Location: FF_X19_Y3_N21
\U1|CONTA_DELAY_COR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~41_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(7));

-- Location: LCCOMB_X18_Y3_N16
\U1|Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~42_combout\ = (\U1|CONTA_DELAY_COR\(8) & (\U1|Add7~40\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(8) & (!\U1|Add7~40\ & VCC))
-- \U1|Add7~43\ = CARRY((\U1|CONTA_DELAY_COR\(8) & !\U1|Add7~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(8),
	datad => VCC,
	cin => \U1|Add7~40\,
	combout => \U1|Add7~42_combout\,
	cout => \U1|Add7~43\);

-- Location: LCCOMB_X19_Y3_N10
\U1|Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~44_combout\ = (\U1|Add7~42_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~42_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~44_combout\);

-- Location: FF_X19_Y3_N11
\U1|CONTA_DELAY_COR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~44_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(8));

-- Location: LCCOMB_X18_Y3_N18
\U1|Add7~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~45_combout\ = (\U1|CONTA_DELAY_COR\(9) & (!\U1|Add7~43\)) # (!\U1|CONTA_DELAY_COR\(9) & ((\U1|Add7~43\) # (GND)))
-- \U1|Add7~46\ = CARRY((!\U1|Add7~43\) # (!\U1|CONTA_DELAY_COR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(9),
	datad => VCC,
	cin => \U1|Add7~43\,
	combout => \U1|Add7~45_combout\,
	cout => \U1|Add7~46\);

-- Location: LCCOMB_X19_Y3_N26
\U1|Add7~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~47_combout\ = (\U1|Add7~45_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~45_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Add7~47_combout\);

-- Location: FF_X19_Y3_N27
\U1|CONTA_DELAY_COR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~47_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(9));

-- Location: LCCOMB_X18_Y3_N20
\U1|Add7~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~48_combout\ = (\U1|CONTA_DELAY_COR\(10) & (\U1|Add7~46\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(10) & (!\U1|Add7~46\ & VCC))
-- \U1|Add7~49\ = CARRY((\U1|CONTA_DELAY_COR\(10) & !\U1|Add7~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(10),
	datad => VCC,
	cin => \U1|Add7~46\,
	combout => \U1|Add7~48_combout\,
	cout => \U1|Add7~49\);

-- Location: LCCOMB_X19_Y2_N14
\U1|Add7~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~105_combout\ = (\U1|Add7~48_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Add7~48_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Add7~105_combout\);

-- Location: FF_X19_Y2_N15
\U1|CONTA_DELAY_COR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~105_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(10));

-- Location: LCCOMB_X18_Y3_N22
\U1|Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~50_combout\ = (\U1|CONTA_DELAY_COR\(11) & (!\U1|Add7~49\)) # (!\U1|CONTA_DELAY_COR\(11) & ((\U1|Add7~49\) # (GND)))
-- \U1|Add7~51\ = CARRY((!\U1|Add7~49\) # (!\U1|CONTA_DELAY_COR\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(11),
	datad => VCC,
	cin => \U1|Add7~49\,
	combout => \U1|Add7~50_combout\,
	cout => \U1|Add7~51\);

-- Location: LCCOMB_X19_Y2_N24
\U1|Add7~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~104_combout\ = (\U1|Add7~50_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Add7~50_combout\,
	combout => \U1|Add7~104_combout\);

-- Location: FF_X19_Y2_N25
\U1|CONTA_DELAY_COR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~104_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(11));

-- Location: LCCOMB_X18_Y3_N24
\U1|Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~52_combout\ = (\U1|CONTA_DELAY_COR\(12) & (\U1|Add7~51\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(12) & (!\U1|Add7~51\ & VCC))
-- \U1|Add7~53\ = CARRY((\U1|CONTA_DELAY_COR\(12) & !\U1|Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(12),
	datad => VCC,
	cin => \U1|Add7~51\,
	combout => \U1|Add7~52_combout\,
	cout => \U1|Add7~53\);

-- Location: LCCOMB_X19_Y2_N20
\U1|Add7~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~103_combout\ = (\U1|Add7~52_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Add7~52_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~103_combout\);

-- Location: FF_X19_Y2_N21
\U1|CONTA_DELAY_COR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~103_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(12));

-- Location: LCCOMB_X18_Y3_N26
\U1|Add7~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~54_combout\ = (\U1|CONTA_DELAY_COR\(13) & (!\U1|Add7~53\)) # (!\U1|CONTA_DELAY_COR\(13) & ((\U1|Add7~53\) # (GND)))
-- \U1|Add7~55\ = CARRY((!\U1|Add7~53\) # (!\U1|CONTA_DELAY_COR\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(13),
	datad => VCC,
	cin => \U1|Add7~53\,
	combout => \U1|Add7~54_combout\,
	cout => \U1|Add7~55\);

-- Location: LCCOMB_X19_Y2_N6
\U1|Add7~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~102_combout\ = (\U1|Add7~54_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Add7~54_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~102_combout\);

-- Location: FF_X19_Y2_N7
\U1|CONTA_DELAY_COR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~102_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(13));

-- Location: LCCOMB_X18_Y3_N28
\U1|Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~56_combout\ = (\U1|CONTA_DELAY_COR\(14) & (\U1|Add7~55\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(14) & (!\U1|Add7~55\ & VCC))
-- \U1|Add7~57\ = CARRY((\U1|CONTA_DELAY_COR\(14) & !\U1|Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(14),
	datad => VCC,
	cin => \U1|Add7~55\,
	combout => \U1|Add7~56_combout\,
	cout => \U1|Add7~57\);

-- Location: LCCOMB_X19_Y3_N4
\U1|Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~58_combout\ = (\U1|Add7~56_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Add7~56_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Add7~58_combout\);

-- Location: FF_X19_Y3_N5
\U1|CONTA_DELAY_COR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~58_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(14));

-- Location: LCCOMB_X18_Y3_N30
\U1|Add7~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~59_combout\ = (\U1|CONTA_DELAY_COR\(15) & (!\U1|Add7~57\)) # (!\U1|CONTA_DELAY_COR\(15) & ((\U1|Add7~57\) # (GND)))
-- \U1|Add7~60\ = CARRY((!\U1|Add7~57\) # (!\U1|CONTA_DELAY_COR\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(15),
	datad => VCC,
	cin => \U1|Add7~57\,
	combout => \U1|Add7~59_combout\,
	cout => \U1|Add7~60\);

-- Location: LCCOMB_X19_Y3_N2
\U1|Add7~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~61_combout\ = (\U1|Add7~59_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~59_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~61_combout\);

-- Location: FF_X19_Y3_N3
\U1|CONTA_DELAY_COR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~61_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(15));

-- Location: LCCOMB_X18_Y2_N0
\U1|Add7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~62_combout\ = (\U1|CONTA_DELAY_COR\(16) & (\U1|Add7~60\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(16) & (!\U1|Add7~60\ & VCC))
-- \U1|Add7~63\ = CARRY((\U1|CONTA_DELAY_COR\(16) & !\U1|Add7~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(16),
	datad => VCC,
	cin => \U1|Add7~60\,
	combout => \U1|Add7~62_combout\,
	cout => \U1|Add7~63\);

-- Location: LCCOMB_X19_Y3_N14
\U1|Add7~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~64_combout\ = (\U1|Add7~62_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Add7~62_combout\,
	combout => \U1|Add7~64_combout\);

-- Location: FF_X19_Y3_N15
\U1|CONTA_DELAY_COR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~64_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(16));

-- Location: LCCOMB_X18_Y2_N2
\U1|Add7~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~65_combout\ = (\U1|CONTA_DELAY_COR\(17) & (!\U1|Add7~63\)) # (!\U1|CONTA_DELAY_COR\(17) & ((\U1|Add7~63\) # (GND)))
-- \U1|Add7~66\ = CARRY((!\U1|Add7~63\) # (!\U1|CONTA_DELAY_COR\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(17),
	datad => VCC,
	cin => \U1|Add7~63\,
	combout => \U1|Add7~65_combout\,
	cout => \U1|Add7~66\);

-- Location: LCCOMB_X19_Y2_N4
\U1|Add7~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~101_combout\ = (\U1|Add7~65_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~65_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~101_combout\);

-- Location: FF_X19_Y2_N5
\U1|CONTA_DELAY_COR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~101_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(17));

-- Location: LCCOMB_X18_Y2_N4
\U1|Add7~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~67_combout\ = (\U1|CONTA_DELAY_COR\(18) & (\U1|Add7~66\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(18) & (!\U1|Add7~66\ & VCC))
-- \U1|Add7~68\ = CARRY((\U1|CONTA_DELAY_COR\(18) & !\U1|Add7~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(18),
	datad => VCC,
	cin => \U1|Add7~66\,
	combout => \U1|Add7~67_combout\,
	cout => \U1|Add7~68\);

-- Location: LCCOMB_X19_Y2_N22
\U1|Add7~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~100_combout\ = (\U1|Add7~67_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Add7~67_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~100_combout\);

-- Location: FF_X19_Y2_N23
\U1|CONTA_DELAY_COR[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~100_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(18));

-- Location: LCCOMB_X18_Y2_N6
\U1|Add7~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~69_combout\ = (\U1|CONTA_DELAY_COR\(19) & (!\U1|Add7~68\)) # (!\U1|CONTA_DELAY_COR\(19) & ((\U1|Add7~68\) # (GND)))
-- \U1|Add7~70\ = CARRY((!\U1|Add7~68\) # (!\U1|CONTA_DELAY_COR\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(19),
	datad => VCC,
	cin => \U1|Add7~68\,
	combout => \U1|Add7~69_combout\,
	cout => \U1|Add7~70\);

-- Location: LCCOMB_X19_Y3_N0
\U1|Add7~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~71_combout\ = (\U1|Add7~69_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Add7~69_combout\,
	combout => \U1|Add7~71_combout\);

-- Location: FF_X19_Y3_N1
\U1|CONTA_DELAY_COR[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~71_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(19));

-- Location: LCCOMB_X18_Y2_N8
\U1|Add7~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~72_combout\ = (\U1|CONTA_DELAY_COR\(20) & (\U1|Add7~70\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(20) & (!\U1|Add7~70\ & VCC))
-- \U1|Add7~73\ = CARRY((\U1|CONTA_DELAY_COR\(20) & !\U1|Add7~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(20),
	datad => VCC,
	cin => \U1|Add7~70\,
	combout => \U1|Add7~72_combout\,
	cout => \U1|Add7~73\);

-- Location: LCCOMB_X19_Y2_N30
\U1|Add7~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~119_combout\ = (\U1|Add7~72_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~72_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~119_combout\);

-- Location: FF_X19_Y2_N31
\U1|CONTA_DELAY_COR[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~119_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(20));

-- Location: LCCOMB_X18_Y2_N10
\U1|Add7~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~74_combout\ = (\U1|CONTA_DELAY_COR\(21) & (!\U1|Add7~73\)) # (!\U1|CONTA_DELAY_COR\(21) & ((\U1|Add7~73\) # (GND)))
-- \U1|Add7~75\ = CARRY((!\U1|Add7~73\) # (!\U1|CONTA_DELAY_COR\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(21),
	datad => VCC,
	cin => \U1|Add7~73\,
	combout => \U1|Add7~74_combout\,
	cout => \U1|Add7~75\);

-- Location: LCCOMB_X19_Y2_N8
\U1|Add7~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~118_combout\ = (\U1|Add7~74_combout\ & (((!\U1|Equal26~5_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~74_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~118_combout\);

-- Location: FF_X19_Y2_N9
\U1|CONTA_DELAY_COR[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~118_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(21));

-- Location: LCCOMB_X18_Y2_N12
\U1|Add7~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~76_combout\ = (\U1|CONTA_DELAY_COR\(22) & (\U1|Add7~75\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(22) & (!\U1|Add7~75\ & VCC))
-- \U1|Add7~77\ = CARRY((\U1|CONTA_DELAY_COR\(22) & !\U1|Add7~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(22),
	datad => VCC,
	cin => \U1|Add7~75\,
	combout => \U1|Add7~76_combout\,
	cout => \U1|Add7~77\);

-- Location: LCCOMB_X18_Y2_N14
\U1|Add7~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~78_combout\ = (\U1|CONTA_DELAY_COR\(23) & (!\U1|Add7~77\)) # (!\U1|CONTA_DELAY_COR\(23) & ((\U1|Add7~77\) # (GND)))
-- \U1|Add7~79\ = CARRY((!\U1|Add7~77\) # (!\U1|CONTA_DELAY_COR\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(23),
	datad => VCC,
	cin => \U1|Add7~77\,
	combout => \U1|Add7~78_combout\,
	cout => \U1|Add7~79\);

-- Location: LCCOMB_X17_Y2_N12
\U1|Add7~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~109_combout\ = (\U1|Add7~78_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Add7~78_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~109_combout\);

-- Location: FF_X17_Y2_N13
\U1|CONTA_DELAY_COR[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~109_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(23));

-- Location: LCCOMB_X18_Y2_N16
\U1|Add7~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~80_combout\ = (\U1|CONTA_DELAY_COR\(24) & (\U1|Add7~79\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(24) & (!\U1|Add7~79\ & VCC))
-- \U1|Add7~81\ = CARRY((\U1|CONTA_DELAY_COR\(24) & !\U1|Add7~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(24),
	datad => VCC,
	cin => \U1|Add7~79\,
	combout => \U1|Add7~80_combout\,
	cout => \U1|Add7~81\);

-- Location: LCCOMB_X19_Y3_N6
\U1|Add7~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~110_combout\ = (\U1|Add7~80_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Add7~80_combout\,
	combout => \U1|Add7~110_combout\);

-- Location: FF_X19_Y3_N7
\U1|CONTA_DELAY_COR[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~110_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(24));

-- Location: LCCOMB_X18_Y2_N18
\U1|Add7~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~82_combout\ = (\U1|CONTA_DELAY_COR\(25) & (!\U1|Add7~81\)) # (!\U1|CONTA_DELAY_COR\(25) & ((\U1|Add7~81\) # (GND)))
-- \U1|Add7~83\ = CARRY((!\U1|Add7~81\) # (!\U1|CONTA_DELAY_COR\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(25),
	datad => VCC,
	cin => \U1|Add7~81\,
	combout => \U1|Add7~82_combout\,
	cout => \U1|Add7~83\);

-- Location: LCCOMB_X19_Y2_N10
\U1|Add7~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~117_combout\ = (\U1|Add7~82_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Add7~82_combout\,
	combout => \U1|Add7~117_combout\);

-- Location: FF_X19_Y2_N11
\U1|CONTA_DELAY_COR[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~117_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(25));

-- Location: LCCOMB_X18_Y2_N20
\U1|Add7~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~84_combout\ = (\U1|CONTA_DELAY_COR\(26) & (\U1|Add7~83\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(26) & (!\U1|Add7~83\ & VCC))
-- \U1|Add7~85\ = CARRY((\U1|CONTA_DELAY_COR\(26) & !\U1|Add7~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(26),
	datad => VCC,
	cin => \U1|Add7~83\,
	combout => \U1|Add7~84_combout\,
	cout => \U1|Add7~85\);

-- Location: LCCOMB_X19_Y2_N12
\U1|Add7~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~116_combout\ = (\U1|Add7~84_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Add7~84_combout\,
	combout => \U1|Add7~116_combout\);

-- Location: FF_X19_Y2_N13
\U1|CONTA_DELAY_COR[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~116_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(26));

-- Location: LCCOMB_X18_Y2_N22
\U1|Add7~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~86_combout\ = (\U1|CONTA_DELAY_COR\(27) & (!\U1|Add7~85\)) # (!\U1|CONTA_DELAY_COR\(27) & ((\U1|Add7~85\) # (GND)))
-- \U1|Add7~87\ = CARRY((!\U1|Add7~85\) # (!\U1|CONTA_DELAY_COR\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(27),
	datad => VCC,
	cin => \U1|Add7~85\,
	combout => \U1|Add7~86_combout\,
	cout => \U1|Add7~87\);

-- Location: LCCOMB_X17_Y3_N0
\U1|Add7~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~115_combout\ = (\U1|Add7~86_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Add7~86_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~115_combout\);

-- Location: FF_X17_Y3_N1
\U1|CONTA_DELAY_COR[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~115_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(27));

-- Location: LCCOMB_X18_Y2_N24
\U1|Add7~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~88_combout\ = (\U1|CONTA_DELAY_COR\(28) & (\U1|Add7~87\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(28) & (!\U1|Add7~87\ & VCC))
-- \U1|Add7~89\ = CARRY((\U1|CONTA_DELAY_COR\(28) & !\U1|Add7~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(28),
	datad => VCC,
	cin => \U1|Add7~87\,
	combout => \U1|Add7~88_combout\,
	cout => \U1|Add7~89\);

-- Location: LCCOMB_X17_Y3_N26
\U1|Add7~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~114_combout\ = (\U1|Add7~88_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~10_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~4_combout\,
	datad => \U1|Add7~88_combout\,
	combout => \U1|Add7~114_combout\);

-- Location: FF_X17_Y3_N27
\U1|CONTA_DELAY_COR[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~114_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(28));

-- Location: LCCOMB_X18_Y2_N26
\U1|Add7~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~90_combout\ = (\U1|CONTA_DELAY_COR\(29) & (!\U1|Add7~89\)) # (!\U1|CONTA_DELAY_COR\(29) & ((\U1|Add7~89\) # (GND)))
-- \U1|Add7~91\ = CARRY((!\U1|Add7~89\) # (!\U1|CONTA_DELAY_COR\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(29),
	datad => VCC,
	cin => \U1|Add7~89\,
	combout => \U1|Add7~90_combout\,
	cout => \U1|Add7~91\);

-- Location: LCCOMB_X17_Y2_N30
\U1|Add7~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~113_combout\ = (\U1|Add7~90_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Equal26~4_combout\,
	datad => \U1|Add7~90_combout\,
	combout => \U1|Add7~113_combout\);

-- Location: FF_X17_Y2_N31
\U1|CONTA_DELAY_COR[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~113_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(29));

-- Location: LCCOMB_X18_Y2_N28
\U1|Add7~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~92_combout\ = (\U1|CONTA_DELAY_COR\(30) & (\U1|Add7~91\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(30) & (!\U1|Add7~91\ & VCC))
-- \U1|Add7~93\ = CARRY((\U1|CONTA_DELAY_COR\(30) & !\U1|Add7~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY_COR\(30),
	datad => VCC,
	cin => \U1|Add7~91\,
	combout => \U1|Add7~92_combout\,
	cout => \U1|Add7~93\);

-- Location: LCCOMB_X17_Y3_N24
\U1|Add7~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~112_combout\ = (\U1|Add7~92_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~5_combout\)) # (!\U1|Equal26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Add7~92_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~112_combout\);

-- Location: FF_X17_Y3_N25
\U1|CONTA_DELAY_COR[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~112_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(30));

-- Location: LCCOMB_X17_Y3_N30
\U1|Equal26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~6_combout\ = (!\U1|CONTA_DELAY_COR\(28) & (!\U1|CONTA_DELAY_COR\(30) & (!\U1|CONTA_DELAY_COR\(29) & !\U1|CONTA_DELAY_COR\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(28),
	datab => \U1|CONTA_DELAY_COR\(30),
	datac => \U1|CONTA_DELAY_COR\(29),
	datad => \U1|CONTA_DELAY_COR\(27),
	combout => \U1|Equal26~6_combout\);

-- Location: LCCOMB_X19_Y2_N28
\U1|Equal26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~7_combout\ = (!\U1|CONTA_DELAY_COR\(26) & (!\U1|CONTA_DELAY_COR\(20) & (!\U1|CONTA_DELAY_COR\(21) & !\U1|CONTA_DELAY_COR\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(26),
	datab => \U1|CONTA_DELAY_COR\(20),
	datac => \U1|CONTA_DELAY_COR\(21),
	datad => \U1|CONTA_DELAY_COR\(25),
	combout => \U1|Equal26~7_combout\);

-- Location: LCCOMB_X19_Y2_N26
\U1|Equal26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~8_combout\ = (!\U1|CONTA_DELAY_COR\(13) & (!\U1|CONTA_DELAY_COR\(12) & (!\U1|CONTA_DELAY_COR\(17) & !\U1|CONTA_DELAY_COR\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(13),
	datab => \U1|CONTA_DELAY_COR\(12),
	datac => \U1|CONTA_DELAY_COR\(17),
	datad => \U1|CONTA_DELAY_COR\(18),
	combout => \U1|Equal26~8_combout\);

-- Location: LCCOMB_X19_Y2_N16
\U1|Equal26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~9_combout\ = (!\U1|CONTA_DELAY_COR\(11) & (!\U1|CONTA_DELAY_COR\(10) & (!\U1|CONTA_DELAY_COR\(6) & !\U1|CONTA_DELAY_COR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(11),
	datab => \U1|CONTA_DELAY_COR\(10),
	datac => \U1|CONTA_DELAY_COR\(6),
	datad => \U1|CONTA_DELAY_COR\(5),
	combout => \U1|Equal26~9_combout\);

-- Location: LCCOMB_X19_Y2_N18
\U1|Equal26~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~10_combout\ = (\U1|Equal26~6_combout\ & (\U1|Equal26~7_combout\ & (\U1|Equal26~8_combout\ & \U1|Equal26~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~6_combout\,
	datab => \U1|Equal26~7_combout\,
	datac => \U1|Equal26~8_combout\,
	datad => \U1|Equal26~9_combout\,
	combout => \U1|Equal26~10_combout\);

-- Location: LCCOMB_X19_Y3_N22
\U1|Add7~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~108_combout\ = (\U1|Add7~76_combout\ & (((!\U1|Equal26~4_combout\) # (!\U1|Equal26~10_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~5_combout\,
	datab => \U1|Equal26~10_combout\,
	datac => \U1|Add7~76_combout\,
	datad => \U1|Equal26~4_combout\,
	combout => \U1|Add7~108_combout\);

-- Location: FF_X19_Y3_N23
\U1|CONTA_DELAY_COR[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~108_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(22));

-- Location: LCCOMB_X17_Y3_N8
\U1|DELAY_COR2[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DELAY_COR2[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U1|DELAY_COR2[31]~feeder_combout\);

-- Location: FF_X17_Y3_N9
\U1|DELAY_COR2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|DELAY_COR2[31]~feeder_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|DELAY_COR2\(31));

-- Location: LCCOMB_X19_Y3_N12
\U1|Equal26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~2_combout\ = (\U1|CONTA_DELAY_COR\(22) & (\U1|CONTA_DELAY_COR\(19) & (\U1|CONTA_DELAY_COR\(16) & \U1|DELAY_COR2\(31)))) # (!\U1|CONTA_DELAY_COR\(22) & (!\U1|CONTA_DELAY_COR\(19) & (!\U1|CONTA_DELAY_COR\(16) & !\U1|DELAY_COR2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(22),
	datab => \U1|CONTA_DELAY_COR\(19),
	datac => \U1|CONTA_DELAY_COR\(16),
	datad => \U1|DELAY_COR2\(31),
	combout => \U1|Equal26~2_combout\);

-- Location: LCCOMB_X19_Y3_N16
\U1|Equal26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~1_combout\ = (\U1|CONTA_DELAY_COR\(9) & (\U1|CONTA_DELAY_COR\(15) & (\U1|CONTA_DELAY_COR\(14) & \U1|DELAY_COR2\(31)))) # (!\U1|CONTA_DELAY_COR\(9) & (!\U1|CONTA_DELAY_COR\(15) & (!\U1|CONTA_DELAY_COR\(14) & !\U1|DELAY_COR2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(9),
	datab => \U1|CONTA_DELAY_COR\(15),
	datac => \U1|CONTA_DELAY_COR\(14),
	datad => \U1|DELAY_COR2\(31),
	combout => \U1|Equal26~1_combout\);

-- Location: LCCOMB_X19_Y3_N8
\U1|Equal26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~0_combout\ = (\U1|CONTA_DELAY_COR\(8) & (\U1|CONTA_DELAY_COR\(7) & (\U1|CONTA_DELAY_COR\(0) & \U1|DELAY_COR2\(31)))) # (!\U1|CONTA_DELAY_COR\(8) & (!\U1|CONTA_DELAY_COR\(7) & (!\U1|CONTA_DELAY_COR\(0) & !\U1|DELAY_COR2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(8),
	datab => \U1|CONTA_DELAY_COR\(7),
	datac => \U1|CONTA_DELAY_COR\(0),
	datad => \U1|DELAY_COR2\(31),
	combout => \U1|Equal26~0_combout\);

-- Location: LCCOMB_X18_Y2_N30
\U1|Add7~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~94_combout\ = \U1|Add7~93\ $ (!\U1|CONTA_DELAY_COR\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|CONTA_DELAY_COR\(31),
	cin => \U1|Add7~93\,
	combout => \U1|Add7~94_combout\);

-- Location: LCCOMB_X19_Y3_N28
\U1|Add7~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~111_combout\ = ((\U1|Equal26~4_combout\ & (\U1|Equal26~5_combout\ & \U1|Equal26~10_combout\))) # (!\U1|Add7~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~4_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Add7~94_combout\,
	combout => \U1|Add7~111_combout\);

-- Location: FF_X19_Y3_N29
\U1|CONTA_DELAY_COR[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~111_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(31));

-- Location: LCCOMB_X19_Y3_N18
\U1|Equal26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~3_combout\ = (\U1|DELAY_COR2\(31) & (\U1|CONTA_DELAY_COR\(31) & (\U1|CONTA_DELAY_COR\(23) & \U1|CONTA_DELAY_COR\(24)))) # (!\U1|DELAY_COR2\(31) & (!\U1|CONTA_DELAY_COR\(31) & (!\U1|CONTA_DELAY_COR\(23) & !\U1|CONTA_DELAY_COR\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DELAY_COR2\(31),
	datab => \U1|CONTA_DELAY_COR\(31),
	datac => \U1|CONTA_DELAY_COR\(23),
	datad => \U1|CONTA_DELAY_COR\(24),
	combout => \U1|Equal26~3_combout\);

-- Location: LCCOMB_X19_Y3_N24
\U1|Equal26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~4_combout\ = (\U1|Equal26~2_combout\ & (\U1|Equal26~1_combout\ & (\U1|Equal26~0_combout\ & \U1|Equal26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal26~2_combout\,
	datab => \U1|Equal26~1_combout\,
	datac => \U1|Equal26~0_combout\,
	datad => \U1|Equal26~3_combout\,
	combout => \U1|Equal26~4_combout\);

-- Location: LCCOMB_X19_Y3_N30
\U1|Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~26_combout\ = ((\U1|Equal26~4_combout\ & (\U1|Equal26~10_combout\ & \U1|Equal26~5_combout\))) # (!\U1|Add7~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~24_combout\,
	datab => \U1|Equal26~4_combout\,
	datac => \U1|Equal26~10_combout\,
	datad => \U1|Equal26~5_combout\,
	combout => \U1|Add7~26_combout\);

-- Location: FF_X18_Y3_N7
\U1|CONTA_DELAY_COR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \U1|Add7~26_combout\,
	sload => VCC,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(0));

-- Location: LCCOMB_X18_Y3_N2
\U1|Add7~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~27_combout\ = (\U1|CONTA_DELAY_COR\(1) & (!\U1|Add7~25\)) # (!\U1|CONTA_DELAY_COR\(1) & ((\U1|Add7~25\) # (GND)))
-- \U1|Add7~28\ = CARRY((!\U1|Add7~25\) # (!\U1|CONTA_DELAY_COR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(1),
	datad => VCC,
	cin => \U1|Add7~25\,
	combout => \U1|Add7~27_combout\,
	cout => \U1|Add7~28\);

-- Location: LCCOMB_X17_Y3_N16
\U1|Add7~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~97_combout\ = (\U1|Add7~27_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~27_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~4_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~97_combout\);

-- Location: FF_X17_Y3_N17
\U1|CONTA_DELAY_COR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~97_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(1));

-- Location: LCCOMB_X18_Y3_N4
\U1|Add7~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~29_combout\ = (\U1|CONTA_DELAY_COR\(2) & (\U1|Add7~28\ $ (GND))) # (!\U1|CONTA_DELAY_COR\(2) & (!\U1|Add7~28\ & VCC))
-- \U1|Add7~30\ = CARRY((\U1|CONTA_DELAY_COR\(2) & !\U1|Add7~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(2),
	datad => VCC,
	cin => \U1|Add7~28\,
	combout => \U1|Add7~29_combout\,
	cout => \U1|Add7~30\);

-- Location: LCCOMB_X17_Y3_N14
\U1|Add7~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~98_combout\ = (\U1|Add7~29_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~29_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~4_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~98_combout\);

-- Location: FF_X17_Y3_N15
\U1|CONTA_DELAY_COR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~98_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(2));

-- Location: LCCOMB_X17_Y3_N12
\U1|Add7~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add7~99_combout\ = (\U1|Add7~31_combout\ & (((!\U1|Equal26~10_combout\) # (!\U1|Equal26~4_combout\)) # (!\U1|Equal26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add7~31_combout\,
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~4_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Add7~99_combout\);

-- Location: FF_X17_Y3_N13
\U1|CONTA_DELAY_COR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add7~99_combout\,
	ena => \U1|WideOr37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY_COR\(3));

-- Location: LCCOMB_X17_Y3_N22
\U1|Equal26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~5_combout\ = (!\U1|CONTA_DELAY_COR\(3) & (!\U1|CONTA_DELAY_COR\(1) & (!\U1|CONTA_DELAY_COR\(2) & !\U1|CONTA_DELAY_COR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY_COR\(3),
	datab => \U1|CONTA_DELAY_COR\(1),
	datac => \U1|CONTA_DELAY_COR\(2),
	datad => \U1|CONTA_DELAY_COR\(4),
	combout => \U1|Equal26~5_combout\);

-- Location: LCCOMB_X16_Y5_N28
\U1|Equal26~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal26~11_combout\ = (\U1|Equal26~5_combout\ & (\U1|Equal26~4_combout\ & \U1|Equal26~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal26~5_combout\,
	datac => \U1|Equal26~4_combout\,
	datad => \U1|Equal26~10_combout\,
	combout => \U1|Equal26~11_combout\);

-- Location: LCCOMB_X16_Y5_N4
\U1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector25~0_combout\ = (\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ & ((\U1|Equal26~11_combout\) # ((!\U1|Equal21~4_combout\ & \U1|ESTADO.ENA_I~q\)))) # (!\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ & (!\U1|Equal21~4_combout\ & (\U1|ESTADO.ENA_I~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.ENA_I~q\,
	datad => \U1|Equal26~11_combout\,
	combout => \U1|Selector25~0_combout\);

-- Location: FF_X16_Y5_N5
\U1|ESTADO.ENA_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.ENA_I~q\);

-- Location: LCCOMB_X16_Y5_N10
\U1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector24~0_combout\ = (\U1|ESTADO.CORRIMIENTO_DERECHA~q\ & ((\U1|Equal26~11_combout\) # ((!\U1|Equal21~4_combout\ & \U1|ESTADO.ENA_D~q\)))) # (!\U1|ESTADO.CORRIMIENTO_DERECHA~q\ & (!\U1|Equal21~4_combout\ & (\U1|ESTADO.ENA_D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.CORRIMIENTO_DERECHA~q\,
	datab => \U1|Equal21~4_combout\,
	datac => \U1|ESTADO.ENA_D~q\,
	datad => \U1|Equal26~11_combout\,
	combout => \U1|Selector24~0_combout\);

-- Location: FF_X16_Y5_N11
\U1|ESTADO.ENA_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.ENA_D~q\);

-- Location: LCCOMB_X16_Y5_N2
\U1|DATA[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA[3]~2_combout\ = (\U1|ESTADO.ENA_I~q\) # (\U1|ESTADO.ENA_D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.ENA_I~q\,
	datac => \U1|ESTADO.ENA_D~q\,
	combout => \U1|DATA[3]~2_combout\);

-- Location: IOIBUF_X16_Y0_N1
\CORI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CORI,
	o => \CORI~input_o\);

-- Location: LCCOMB_X16_Y5_N30
\U1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector8~0_combout\ = (\U1|Selector23~0_combout\ & (!\CORI~input_o\ & ((!\U1|Equal21~4_combout\) # (!\U1|DATA[3]~2_combout\)))) # (!\U1|Selector23~0_combout\ & (((!\U1|Equal21~4_combout\)) # (!\U1|DATA[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector23~0_combout\,
	datab => \U1|DATA[3]~2_combout\,
	datac => \U1|Equal21~4_combout\,
	datad => \CORI~input_o\,
	combout => \U1|Selector8~0_combout\);

-- Location: FF_X16_Y5_N31
\U1|ESTADO.CHECAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CHECAR~q\);

-- Location: LCCOMB_X16_Y5_N6
\U1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector23~0_combout\ = (!\U1|ESTADO.CHECAR~q\ & \CORD~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ESTADO.CHECAR~q\,
	datad => \CORD~input_o\,
	combout => \U1|Selector23~0_combout\);

-- Location: LCCOMB_X16_Y5_N16
\U1|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector23~1_combout\ = (\U1|Selector23~0_combout\ & (((\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ & !\U1|Equal26~11_combout\)) # (!\CORI~input_o\))) # (!\U1|Selector23~0_combout\ & (((\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ & !\U1|Equal26~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector23~0_combout\,
	datab => \CORI~input_o\,
	datac => \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\,
	datad => \U1|Equal26~11_combout\,
	combout => \U1|Selector23~1_combout\);

-- Location: FF_X16_Y5_N17
\U1|ESTADO.CORRIMIENTO_IZQUIERDA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \U1|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\);

-- Location: LCCOMB_X16_Y5_N22
\U1|WideOr37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|WideOr37~combout\ = (!\U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\ & (\U1|ESTADO.CHECAR~q\ & !\U1|ESTADO.CORRIMIENTO_DERECHA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.CORRIMIENTO_IZQUIERDA~q\,
	datac => \U1|ESTADO.CHECAR~q\,
	datad => \U1|ESTADO.CORRIMIENTO_DERECHA~q\,
	combout => \U1|WideOr37~combout\);

-- Location: FF_X16_Y4_N1
\U1|CONTA_DELAY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add0~0_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(0));

-- Location: LCCOMB_X16_Y4_N2
\U1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|CONTA_DELAY\(1) & (!\U1|Add0~1\)) # (!\U1|CONTA_DELAY\(1) & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|CONTA_DELAY\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(1),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: FF_X16_Y4_N3
\U1|CONTA_DELAY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(1));

-- Location: LCCOMB_X16_Y4_N4
\U1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|CONTA_DELAY\(2) & (\U1|Add0~3\ $ (GND))) # (!\U1|CONTA_DELAY\(2) & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|CONTA_DELAY\(2) & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(2),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: FF_X16_Y4_N5
\U1|CONTA_DELAY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(2));

-- Location: LCCOMB_X16_Y4_N6
\U1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|CONTA_DELAY\(3) & (!\U1|Add0~5\)) # (!\U1|CONTA_DELAY\(3) & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|CONTA_DELAY\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(3),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: FF_X16_Y4_N7
\U1|CONTA_DELAY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add0~6_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(3));

-- Location: LCCOMB_X16_Y4_N8
\U1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|CONTA_DELAY\(4) & (\U1|Add0~7\ $ (GND))) # (!\U1|CONTA_DELAY\(4) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|CONTA_DELAY\(4) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(4),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: LCCOMB_X17_Y4_N4
\U1|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector53~0_combout\ = (\U1|Add0~8_combout\ & !\U1|Equal21~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~8_combout\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector53~0_combout\);

-- Location: FF_X17_Y4_N5
\U1|CONTA_DELAY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Selector53~0_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(4));

-- Location: LCCOMB_X16_Y4_N10
\U1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|CONTA_DELAY\(5) & (!\U1|Add0~9\)) # (!\U1|CONTA_DELAY\(5) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|CONTA_DELAY\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: FF_X16_Y4_N11
\U1|CONTA_DELAY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add0~10_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(5));

-- Location: LCCOMB_X16_Y4_N12
\U1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|CONTA_DELAY\(6) & (\U1|Add0~11\ $ (GND))) # (!\U1|CONTA_DELAY\(6) & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|CONTA_DELAY\(6) & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(6),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: LCCOMB_X17_Y4_N16
\U1|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector51~0_combout\ = (\U1|Add0~12_combout\ & !\U1|Equal21~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~12_combout\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector51~0_combout\);

-- Location: FF_X17_Y4_N17
\U1|CONTA_DELAY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Selector51~0_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(6));

-- Location: LCCOMB_X16_Y4_N14
\U1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|CONTA_DELAY\(7) & (!\U1|Add0~13\)) # (!\U1|CONTA_DELAY\(7) & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|CONTA_DELAY\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(7),
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: FF_X16_Y4_N15
\U1|CONTA_DELAY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(7));

-- Location: LCCOMB_X16_Y4_N16
\U1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|CONTA_DELAY\(8) & (\U1|Add0~15\ $ (GND))) # (!\U1|CONTA_DELAY\(8) & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|CONTA_DELAY\(8) & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(8),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: LCCOMB_X17_Y4_N24
\U1|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector49~0_combout\ = (\U1|Add0~16_combout\ & !\U1|Equal21~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~16_combout\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector49~0_combout\);

-- Location: FF_X17_Y4_N25
\U1|CONTA_DELAY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Selector49~0_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(8));

-- Location: LCCOMB_X16_Y4_N18
\U1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|CONTA_DELAY\(9) & (!\U1|Add0~17\)) # (!\U1|CONTA_DELAY\(9) & ((\U1|Add0~17\) # (GND)))
-- \U1|Add0~19\ = CARRY((!\U1|Add0~17\) # (!\U1|CONTA_DELAY\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|CONTA_DELAY\(9),
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: LCCOMB_X17_Y4_N22
\U1|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector48~0_combout\ = (\U1|Add0~18_combout\ & !\U1|Equal21~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~18_combout\,
	datad => \U1|Equal21~4_combout\,
	combout => \U1|Selector48~0_combout\);

-- Location: FF_X17_Y4_N23
\U1|CONTA_DELAY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Selector48~0_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(9));

-- Location: FF_X16_Y4_N21
\U1|CONTA_DELAY[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|Add0~20_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CONTA_DELAY\(10));

-- Location: LCCOMB_X17_Y4_N28
\U1|Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal21~0_combout\ = (!\U1|CONTA_DELAY\(10) & (!\U1|CONTA_DELAY\(12) & (!\U1|CONTA_DELAY\(13) & !\U1|CONTA_DELAY\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(10),
	datab => \U1|CONTA_DELAY\(12),
	datac => \U1|CONTA_DELAY\(13),
	datad => \U1|CONTA_DELAY\(11),
	combout => \U1|Equal21~0_combout\);

-- Location: LCCOMB_X17_Y4_N30
\U1|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan13~0_combout\ = (((!\U1|CONTA_DELAY\(3) & !\U1|CONTA_DELAY\(2))) # (!\U1|CONTA_DELAY\(5))) # (!\U1|CONTA_DELAY\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(4),
	datab => \U1|CONTA_DELAY\(3),
	datac => \U1|CONTA_DELAY\(2),
	datad => \U1|CONTA_DELAY\(5),
	combout => \U1|LessThan13~0_combout\);

-- Location: LCCOMB_X14_Y4_N24
\U1|LessThan13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan13~1_combout\ = (!\U1|CONTA_DELAY\(7) & !\U1|CONTA_DELAY\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|CONTA_DELAY\(7),
	datad => \U1|CONTA_DELAY\(6),
	combout => \U1|LessThan13~1_combout\);

-- Location: LCCOMB_X17_Y5_N4
\U1|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan12~0_combout\ = (\U1|CONTA_DELAY\(3) & ((\U1|CONTA_DELAY\(2)) # ((\U1|CONTA_DELAY\(0) & \U1|CONTA_DELAY\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(2),
	datab => \U1|CONTA_DELAY\(0),
	datac => \U1|CONTA_DELAY\(3),
	datad => \U1|CONTA_DELAY\(1),
	combout => \U1|LessThan12~0_combout\);

-- Location: LCCOMB_X17_Y4_N6
\U1|ENA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|ENA~0_combout\ = (\U1|CONTA_DELAY\(5)) # ((\U1|CONTA_DELAY\(4) & \U1|LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(5),
	datac => \U1|CONTA_DELAY\(4),
	datad => \U1|LessThan12~0_combout\,
	combout => \U1|ENA~0_combout\);

-- Location: LCCOMB_X17_Y4_N8
\U1|ENA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|ENA~1_combout\ = (\U1|LessThan13~1_combout\ & ((\U1|CONTA_DELAY\(9) & (\U1|LessThan13~0_combout\)) # (!\U1|CONTA_DELAY\(9) & ((!\U1|ENA~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan13~0_combout\,
	datab => \U1|LessThan13~1_combout\,
	datac => \U1|CONTA_DELAY\(9),
	datad => \U1|ENA~0_combout\,
	combout => \U1|ENA~1_combout\);

-- Location: LCCOMB_X17_Y4_N18
\U1|ENA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|ENA~2_combout\ = (\U1|CONTA_DELAY\(9) & ((\U1|CONTA_DELAY\(8)) # ((\U1|CONTA_DELAY\(14)) # (!\U1|ENA~1_combout\)))) # (!\U1|CONTA_DELAY\(9) & (\U1|CONTA_DELAY\(8) & (!\U1|ENA~1_combout\ & \U1|CONTA_DELAY\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CONTA_DELAY\(9),
	datab => \U1|CONTA_DELAY\(8),
	datac => \U1|ENA~1_combout\,
	datad => \U1|CONTA_DELAY\(14),
	combout => \U1|ENA~2_combout\);

-- Location: LCCOMB_X17_Y4_N0
\U1|ENA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|ENA~3_combout\ = (\U1|CONTA_DELAY\(14) & (!\U1|CONTA_DELAY\(15) & ((\U1|ENA~2_combout\) # (!\U1|Equal21~0_combout\)))) # (!\U1|CONTA_DELAY\(14) & (\U1|Equal21~0_combout\ & (\U1|CONTA_DELAY\(15) & !\U1|ENA~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal21~0_combout\,
	datab => \U1|CONTA_DELAY\(14),
	datac => \U1|CONTA_DELAY\(15),
	datad => \U1|ENA~2_combout\,
	combout => \U1|ENA~3_combout\);

-- Location: FF_X17_Y4_N1
\U1|ENA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|ENA~3_combout\,
	ena => \U1|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ENA~q\);

-- Location: CLKCTRL_G1
\U1|WideOr37~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|WideOr37~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|WideOr37~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y5_N18
\U1|DATA_A[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_A\(2) = (GLOBAL(\U1|WideOr37~clkctrl_outclk\) & (\U1|ESTADO.ENA_D~q\)) # (!GLOBAL(\U1|WideOr37~clkctrl_outclk\) & ((\U1|DATA_A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.ENA_D~q\,
	datac => \U1|WideOr37~clkctrl_outclk\,
	datad => \U1|DATA_A\(2),
	combout => \U1|DATA_A\(2));

-- Location: LCCOMB_X16_Y5_N20
\U1|DATA[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA[2]~0_combout\ = (\U1|ESTADO.ENA_D~q\) # ((!\U1|ESTADO.CHECAR~q\ & \U1|DATA_A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ESTADO.CHECAR~q\,
	datac => \U1|ESTADO.ENA_D~q\,
	datad => \U1|DATA_A\(2),
	combout => \U1|DATA[2]~0_combout\);

-- Location: LCCOMB_X16_Y5_N26
\U1|DATA_A[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_A\(3) = (GLOBAL(\U1|WideOr37~clkctrl_outclk\) & (\U1|DATA[3]~2_combout\)) # (!GLOBAL(\U1|WideOr37~clkctrl_outclk\) & ((\U1|DATA_A\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|DATA[3]~2_combout\,
	datac => \U1|DATA_A\(3),
	datad => \U1|WideOr37~clkctrl_outclk\,
	combout => \U1|DATA_A\(3));

-- Location: LCCOMB_X16_Y5_N12
\U1|DATA[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA[4]~1_combout\ = (\U1|ESTADO.ENA_D~q\) # ((\U1|ESTADO.CHECAR~q\ & (\U1|ESTADO.ENA_I~q\)) # (!\U1|ESTADO.CHECAR~q\ & ((\U1|DATA_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ESTADO.ENA_D~q\,
	datab => \U1|ESTADO.ENA_I~q\,
	datac => \U1|DATA_A\(3),
	datad => \U1|ESTADO.CHECAR~q\,
	combout => \U1|DATA[4]~1_combout\);

-- Location: IOIBUF_X34_Y2_N15
\i_RX_Serial~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RX_Serial,
	o => \i_RX_Serial~input_o\);

ww_RS <= \RS~output_o\;

ww_RW <= \RW~output_o\;

ww_ENA <= \ENA~output_o\;

ww_DATA_LCD(0) <= \DATA_LCD[0]~output_o\;

ww_DATA_LCD(1) <= \DATA_LCD[1]~output_o\;

ww_DATA_LCD(2) <= \DATA_LCD[2]~output_o\;

ww_DATA_LCD(3) <= \DATA_LCD[3]~output_o\;

ww_DATA_LCD(4) <= \DATA_LCD[4]~output_o\;

ww_DATA_LCD(5) <= \DATA_LCD[5]~output_o\;

ww_DATA_LCD(6) <= \DATA_LCD[6]~output_o\;

ww_DATA_LCD(7) <= \DATA_LCD[7]~output_o\;

ww_BLCD(0) <= \BLCD[0]~output_o\;

ww_BLCD(1) <= \BLCD[1]~output_o\;

ww_BLCD(2) <= \BLCD[2]~output_o\;

ww_BLCD(3) <= \BLCD[3]~output_o\;

ww_BLCD(4) <= \BLCD[4]~output_o\;

ww_BLCD(5) <= \BLCD[5]~output_o\;

ww_BLCD(6) <= \BLCD[6]~output_o\;

ww_BLCD(7) <= \BLCD[7]~output_o\;

ww_o_TX_Serial <= \o_TX_Serial~output_o\;
END structure;


