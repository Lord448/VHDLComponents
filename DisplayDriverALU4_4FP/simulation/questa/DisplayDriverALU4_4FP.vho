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

-- DATE "10/02/2023 00:42:48"

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

ENTITY 	DisplayDriverALU4_4FP IS
    PORT (
	i_CLK : IN std_logic;
	i_OpSel : IN std_logic_vector(1 DOWNTO 0);
	i_Number : IN std_logic_vector(15 DOWNTO 0);
	o_Displays : OUT std_logic_vector(3 DOWNTO 0);
	o_Segments : OUT std_logic_vector(6 DOWNTO 0);
	o_DispPoint : OUT std_logic;
	o_NumSign : OUT std_logic
	);
END DisplayDriverALU4_4FP;

-- Design Ports Information
-- o_Displays[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Displays[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Displays[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Displays[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DispPoint	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_NumSign	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- i_Number[0]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[15]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_OpSel[0]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Number[7]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_OpSel[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Number[1]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[2]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[3]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[12]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[11]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[10]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[9]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[8]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[6]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[5]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[4]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[13]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[14]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DisplayDriverALU4_4FP IS
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
SIGNAL ww_i_OpSel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i_Number : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_Displays : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_Segments : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_DispPoint : std_logic;
SIGNAL ww_o_NumSign : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_Displays[0]~output_o\ : std_logic;
SIGNAL \o_Displays[1]~output_o\ : std_logic;
SIGNAL \o_Displays[2]~output_o\ : std_logic;
SIGNAL \o_Displays[3]~output_o\ : std_logic;
SIGNAL \o_Segments[0]~output_o\ : std_logic;
SIGNAL \o_Segments[1]~output_o\ : std_logic;
SIGNAL \o_Segments[2]~output_o\ : std_logic;
SIGNAL \o_Segments[3]~output_o\ : std_logic;
SIGNAL \o_Segments[4]~output_o\ : std_logic;
SIGNAL \o_Segments[5]~output_o\ : std_logic;
SIGNAL \o_Segments[6]~output_o\ : std_logic;
SIGNAL \o_DispPoint~output_o\ : std_logic;
SIGNAL \o_NumSign~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \r_Count[0]~17_combout\ : std_logic;
SIGNAL \r_Count[0]~18\ : std_logic;
SIGNAL \r_Count[1]~19_combout\ : std_logic;
SIGNAL \r_Count[1]~20\ : std_logic;
SIGNAL \r_Count[2]~21_combout\ : std_logic;
SIGNAL \r_Count[2]~22\ : std_logic;
SIGNAL \r_Count[3]~23_combout\ : std_logic;
SIGNAL \r_Count[3]~24\ : std_logic;
SIGNAL \r_Count[4]~25_combout\ : std_logic;
SIGNAL \r_Count[4]~26\ : std_logic;
SIGNAL \r_Count[5]~27_combout\ : std_logic;
SIGNAL \r_Count[5]~28\ : std_logic;
SIGNAL \r_Count[6]~29_combout\ : std_logic;
SIGNAL \r_Count[6]~30\ : std_logic;
SIGNAL \r_Count[7]~31_combout\ : std_logic;
SIGNAL \r_Count[7]~32\ : std_logic;
SIGNAL \r_Count[8]~33_combout\ : std_logic;
SIGNAL \r_Count[8]~34\ : std_logic;
SIGNAL \r_Count[9]~35_combout\ : std_logic;
SIGNAL \r_Count[9]~feeder_combout\ : std_logic;
SIGNAL \r_Count[9]~36\ : std_logic;
SIGNAL \r_Count[10]~37_combout\ : std_logic;
SIGNAL \r_Count[10]~feeder_combout\ : std_logic;
SIGNAL \r_Count[10]~38\ : std_logic;
SIGNAL \r_Count[11]~39_combout\ : std_logic;
SIGNAL \r_Count[11]~40\ : std_logic;
SIGNAL \r_Count[12]~41_combout\ : std_logic;
SIGNAL \r_Count[12]~42\ : std_logic;
SIGNAL \r_Count[13]~43_combout\ : std_logic;
SIGNAL \r_Count[13]~44\ : std_logic;
SIGNAL \r_Count[14]~45_combout\ : std_logic;
SIGNAL \r_Count[14]~46\ : std_logic;
SIGNAL \r_Count[15]~47_combout\ : std_logic;
SIGNAL \r_Count[15]~48\ : std_logic;
SIGNAL \r_Count[16]~49_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \r_Sel[0]~1_combout\ : std_logic;
SIGNAL \r_Sel[1]~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \i_Number[13]~input_o\ : std_logic;
SIGNAL \i_Number[12]~input_o\ : std_logic;
SIGNAL \i_Number[11]~input_o\ : std_logic;
SIGNAL \i_Number[10]~input_o\ : std_logic;
SIGNAL \i_Number[9]~input_o\ : std_logic;
SIGNAL \i_Number[8]~input_o\ : std_logic;
SIGNAL \i_Number[7]~input_o\ : std_logic;
SIGNAL \i_Number[6]~input_o\ : std_logic;
SIGNAL \i_Number[5]~input_o\ : std_logic;
SIGNAL \i_Number[4]~input_o\ : std_logic;
SIGNAL \i_Number[3]~input_o\ : std_logic;
SIGNAL \i_Number[2]~input_o\ : std_logic;
SIGNAL \i_Number[1]~input_o\ : std_logic;
SIGNAL \i_Number[0]~input_o\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \i_OpSel[0]~input_o\ : std_logic;
SIGNAL \i_Number[15]~input_o\ : std_logic;
SIGNAL \i_OpSel[1]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \r_IntPNumber[5]~1_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \r_IntPNumber[4]~0_combout\ : std_logic;
SIGNAL \i_Number[14]~input_o\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \r_IntPNumber[7]~3_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \r_IntPNumber[6]~2_combout\ : std_logic;
SIGNAL \DisplayDecoder1|Mux6~0_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \r_IntPNumber[0]~4_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \r_IntPNumber[1]~5_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \r_IntPNumber[2]~6_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \r_IntPNumber[3]~7_combout\ : std_logic;
SIGNAL \DisplayDecoder2|Mux6~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \r_DecPNumber[4]~4_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \r_DecPNumber[6]~6_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \r_DecPNumber[5]~5_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \r_DecPNumber[7]~7_combout\ : std_logic;
SIGNAL \DisplayDecoder3|Mux6~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \r_DecPNumber[1]~1_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \r_DecPNumber[2]~2_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \r_DecPNumber[3]~3_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \r_DecPNumber[0]~0_combout\ : std_logic;
SIGNAL \DisplayDecoder4|Mux6~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \DisplayDecoder3|Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDecoder2|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDecoder1|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDecoder4|Mux5~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \DisplayDecoder3|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDecoder4|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDecoder1|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDecoder2|Mux4~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \DisplayDecoder3|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDecoder2|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDecoder4|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDecoder1|Mux3~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \DisplayDecoder3|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDecoder4|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDecoder1|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDecoder2|Mux2~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \DisplayDecoder3|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDecoder2|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDecoder4|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDecoder1|Mux1~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \DisplayDecoder4|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDecoder3|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDecoder1|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDecoder2|Mux0~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL r_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL r_Count : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_OpSel <= i_OpSel;
ww_i_Number <= i_Number;
o_Displays <= ww_o_Displays;
o_Segments <= ww_o_Segments;
o_DispPoint <= ww_o_DispPoint;
o_NumSign <= ww_o_NumSign;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\o_Displays[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \o_Displays[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\o_Displays[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \o_Displays[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\o_Displays[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \o_Displays[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\o_Displays[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \o_Displays[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\o_Segments[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \o_Segments[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\o_Segments[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \o_Segments[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\o_Segments[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \o_Segments[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\o_Segments[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \o_Segments[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\o_Segments[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \o_Segments[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\o_Segments[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \o_Segments[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\o_Segments[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => \o_Segments[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\o_DispPoint~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~1_combout\,
	devoe => ww_devoe,
	o => \o_DispPoint~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\o_NumSign~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => \o_NumSign~output_o\);

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

-- Location: LCCOMB_X24_Y9_N16
\r_Count[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[0]~17_combout\ = r_Count(0) $ (VCC)
-- \r_Count[0]~18\ = CARRY(r_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_Count(0),
	datad => VCC,
	combout => \r_Count[0]~17_combout\,
	cout => \r_Count[0]~18\);

-- Location: FF_X24_Y9_N17
\r_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[0]~17_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(0));

-- Location: LCCOMB_X24_Y9_N18
\r_Count[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[1]~19_combout\ = (r_Count(1) & (!\r_Count[0]~18\)) # (!r_Count(1) & ((\r_Count[0]~18\) # (GND)))
-- \r_Count[1]~20\ = CARRY((!\r_Count[0]~18\) # (!r_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Count(1),
	datad => VCC,
	cin => \r_Count[0]~18\,
	combout => \r_Count[1]~19_combout\,
	cout => \r_Count[1]~20\);

-- Location: FF_X24_Y9_N19
\r_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[1]~19_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(1));

-- Location: LCCOMB_X24_Y9_N20
\r_Count[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[2]~21_combout\ = (r_Count(2) & (\r_Count[1]~20\ $ (GND))) # (!r_Count(2) & (!\r_Count[1]~20\ & VCC))
-- \r_Count[2]~22\ = CARRY((r_Count(2) & !\r_Count[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Count(2),
	datad => VCC,
	cin => \r_Count[1]~20\,
	combout => \r_Count[2]~21_combout\,
	cout => \r_Count[2]~22\);

-- Location: FF_X24_Y9_N21
\r_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[2]~21_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(2));

-- Location: LCCOMB_X24_Y9_N22
\r_Count[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[3]~23_combout\ = (r_Count(3) & (!\r_Count[2]~22\)) # (!r_Count(3) & ((\r_Count[2]~22\) # (GND)))
-- \r_Count[3]~24\ = CARRY((!\r_Count[2]~22\) # (!r_Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(3),
	datad => VCC,
	cin => \r_Count[2]~22\,
	combout => \r_Count[3]~23_combout\,
	cout => \r_Count[3]~24\);

-- Location: FF_X24_Y9_N23
\r_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[3]~23_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(3));

-- Location: LCCOMB_X24_Y9_N24
\r_Count[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[4]~25_combout\ = (r_Count(4) & (\r_Count[3]~24\ $ (GND))) # (!r_Count(4) & (!\r_Count[3]~24\ & VCC))
-- \r_Count[4]~26\ = CARRY((r_Count(4) & !\r_Count[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Count(4),
	datad => VCC,
	cin => \r_Count[3]~24\,
	combout => \r_Count[4]~25_combout\,
	cout => \r_Count[4]~26\);

-- Location: FF_X24_Y9_N25
\r_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[4]~25_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(4));

-- Location: LCCOMB_X24_Y9_N26
\r_Count[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[5]~27_combout\ = (r_Count(5) & (!\r_Count[4]~26\)) # (!r_Count(5) & ((\r_Count[4]~26\) # (GND)))
-- \r_Count[5]~28\ = CARRY((!\r_Count[4]~26\) # (!r_Count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(5),
	datad => VCC,
	cin => \r_Count[4]~26\,
	combout => \r_Count[5]~27_combout\,
	cout => \r_Count[5]~28\);

-- Location: FF_X24_Y9_N27
\r_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[5]~27_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(5));

-- Location: LCCOMB_X24_Y9_N28
\r_Count[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[6]~29_combout\ = (r_Count(6) & (\r_Count[5]~28\ $ (GND))) # (!r_Count(6) & (!\r_Count[5]~28\ & VCC))
-- \r_Count[6]~30\ = CARRY((r_Count(6) & !\r_Count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Count(6),
	datad => VCC,
	cin => \r_Count[5]~28\,
	combout => \r_Count[6]~29_combout\,
	cout => \r_Count[6]~30\);

-- Location: FF_X24_Y9_N29
\r_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[6]~29_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(6));

-- Location: LCCOMB_X24_Y9_N30
\r_Count[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[7]~31_combout\ = (r_Count(7) & (!\r_Count[6]~30\)) # (!r_Count(7) & ((\r_Count[6]~30\) # (GND)))
-- \r_Count[7]~32\ = CARRY((!\r_Count[6]~30\) # (!r_Count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(7),
	datad => VCC,
	cin => \r_Count[6]~30\,
	combout => \r_Count[7]~31_combout\,
	cout => \r_Count[7]~32\);

-- Location: FF_X24_Y9_N31
\r_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[7]~31_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(7));

-- Location: LCCOMB_X24_Y8_N0
\r_Count[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[8]~33_combout\ = (r_Count(8) & (\r_Count[7]~32\ $ (GND))) # (!r_Count(8) & (!\r_Count[7]~32\ & VCC))
-- \r_Count[8]~34\ = CARRY((r_Count(8) & !\r_Count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Count(8),
	datad => VCC,
	cin => \r_Count[7]~32\,
	combout => \r_Count[8]~33_combout\,
	cout => \r_Count[8]~34\);

-- Location: FF_X24_Y8_N1
\r_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[8]~33_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(8));

-- Location: LCCOMB_X24_Y8_N2
\r_Count[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[9]~35_combout\ = (r_Count(9) & (!\r_Count[8]~34\)) # (!r_Count(9) & ((\r_Count[8]~34\) # (GND)))
-- \r_Count[9]~36\ = CARRY((!\r_Count[8]~34\) # (!r_Count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Count(9),
	datad => VCC,
	cin => \r_Count[8]~34\,
	combout => \r_Count[9]~35_combout\,
	cout => \r_Count[9]~36\);

-- Location: LCCOMB_X24_Y9_N0
\r_Count[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[9]~feeder_combout\ = \r_Count[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_Count[9]~35_combout\,
	combout => \r_Count[9]~feeder_combout\);

-- Location: FF_X24_Y9_N1
\r_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[9]~feeder_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(9));

-- Location: LCCOMB_X24_Y8_N4
\r_Count[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[10]~37_combout\ = (r_Count(10) & (\r_Count[9]~36\ $ (GND))) # (!r_Count(10) & (!\r_Count[9]~36\ & VCC))
-- \r_Count[10]~38\ = CARRY((r_Count(10) & !\r_Count[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Count(10),
	datad => VCC,
	cin => \r_Count[9]~36\,
	combout => \r_Count[10]~37_combout\,
	cout => \r_Count[10]~38\);

-- Location: LCCOMB_X24_Y9_N14
\r_Count[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[10]~feeder_combout\ = \r_Count[10]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_Count[10]~37_combout\,
	combout => \r_Count[10]~feeder_combout\);

-- Location: FF_X24_Y9_N15
\r_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[10]~feeder_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(10));

-- Location: LCCOMB_X24_Y8_N6
\r_Count[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[11]~39_combout\ = (r_Count(11) & (!\r_Count[10]~38\)) # (!r_Count(11) & ((\r_Count[10]~38\) # (GND)))
-- \r_Count[11]~40\ = CARRY((!\r_Count[10]~38\) # (!r_Count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Count(11),
	datad => VCC,
	cin => \r_Count[10]~38\,
	combout => \r_Count[11]~39_combout\,
	cout => \r_Count[11]~40\);

-- Location: FF_X24_Y8_N7
\r_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[11]~39_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(11));

-- Location: LCCOMB_X24_Y8_N8
\r_Count[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[12]~41_combout\ = (r_Count(12) & (\r_Count[11]~40\ $ (GND))) # (!r_Count(12) & (!\r_Count[11]~40\ & VCC))
-- \r_Count[12]~42\ = CARRY((r_Count(12) & !\r_Count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(12),
	datad => VCC,
	cin => \r_Count[11]~40\,
	combout => \r_Count[12]~41_combout\,
	cout => \r_Count[12]~42\);

-- Location: FF_X24_Y8_N9
\r_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[12]~41_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(12));

-- Location: LCCOMB_X24_Y8_N10
\r_Count[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[13]~43_combout\ = (r_Count(13) & (!\r_Count[12]~42\)) # (!r_Count(13) & ((\r_Count[12]~42\) # (GND)))
-- \r_Count[13]~44\ = CARRY((!\r_Count[12]~42\) # (!r_Count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Count(13),
	datad => VCC,
	cin => \r_Count[12]~42\,
	combout => \r_Count[13]~43_combout\,
	cout => \r_Count[13]~44\);

-- Location: FF_X24_Y8_N11
\r_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[13]~43_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(13));

-- Location: LCCOMB_X24_Y8_N12
\r_Count[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[14]~45_combout\ = (r_Count(14) & (\r_Count[13]~44\ $ (GND))) # (!r_Count(14) & (!\r_Count[13]~44\ & VCC))
-- \r_Count[14]~46\ = CARRY((r_Count(14) & !\r_Count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(14),
	datad => VCC,
	cin => \r_Count[13]~44\,
	combout => \r_Count[14]~45_combout\,
	cout => \r_Count[14]~46\);

-- Location: FF_X24_Y8_N13
\r_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[14]~45_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(14));

-- Location: LCCOMB_X24_Y8_N14
\r_Count[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[15]~47_combout\ = (r_Count(15) & (!\r_Count[14]~46\)) # (!r_Count(15) & ((\r_Count[14]~46\) # (GND)))
-- \r_Count[15]~48\ = CARRY((!\r_Count[14]~46\) # (!r_Count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Count(15),
	datad => VCC,
	cin => \r_Count[14]~46\,
	combout => \r_Count[15]~47_combout\,
	cout => \r_Count[15]~48\);

-- Location: FF_X24_Y8_N15
\r_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[15]~47_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(15));

-- Location: LCCOMB_X24_Y8_N16
\r_Count[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[16]~49_combout\ = \r_Count[15]~48\ $ (!r_Count(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_Count(16),
	cin => \r_Count[15]~48\,
	combout => \r_Count[16]~49_combout\);

-- Location: FF_X24_Y8_N17
\r_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Count[16]~49_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Count(16));

-- Location: LCCOMB_X24_Y9_N4
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!r_Count(8) & (((!r_Count(5) & !r_Count(6))) # (!r_Count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(5),
	datab => r_Count(6),
	datac => r_Count(7),
	datad => r_Count(8),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y8_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!r_Count(14) & (!r_Count(12) & (!r_Count(11) & !r_Count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(14),
	datab => r_Count(12),
	datac => r_Count(11),
	datad => r_Count(13),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y9_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\ & (((\LessThan0~1_combout\) # (!r_Count(10))) # (!r_Count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(9),
	datab => r_Count(10),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y9_N8
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (r_Count(16) & (r_Count(15) & !\LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_Count(16),
	datac => r_Count(15),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y9_N10
\r_Sel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Sel[0]~1_combout\ = r_Sel(0) $ (((!\LessThan0~2_combout\ & (r_Count(15) & r_Count(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => r_Count(15),
	datac => r_Sel(0),
	datad => r_Count(16),
	combout => \r_Sel[0]~1_combout\);

-- Location: FF_X24_Y9_N11
\r_Sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Sel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Sel(0));

-- Location: LCCOMB_X24_Y9_N12
\r_Sel[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Sel[1]~0_combout\ = r_Sel(1) $ (((\LessThan0~3_combout\ & r_Sel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datac => r_Sel(1),
	datad => r_Sel(0),
	combout => \r_Sel[1]~0_combout\);

-- Location: FF_X24_Y9_N13
\r_Sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Sel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Sel(1));

-- Location: LCCOMB_X23_Y9_N8
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (r_Sel(1)) # (r_Sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_Sel(1),
	datad => r_Sel(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X23_Y8_N4
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (r_Sel(1)) # (!r_Sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_Sel(0),
	datad => r_Sel(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X23_Y8_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (r_Sel(0)) # (!r_Sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_Sel(0),
	datad => r_Sel(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X23_Y8_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!r_Sel(1)) # (!r_Sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_Sel(0),
	datad => r_Sel(1),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X13_Y0_N1
\i_Number[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(13),
	o => \i_Number[13]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\i_Number[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(12),
	o => \i_Number[12]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\i_Number[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(11),
	o => \i_Number[11]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\i_Number[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(10),
	o => \i_Number[10]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\i_Number[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(9),
	o => \i_Number[9]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\i_Number[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(8),
	o => \i_Number[8]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\i_Number[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(7),
	o => \i_Number[7]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\i_Number[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(6),
	o => \i_Number[6]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\i_Number[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(5),
	o => \i_Number[5]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\i_Number[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(4),
	o => \i_Number[4]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\i_Number[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(3),
	o => \i_Number[3]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\i_Number[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(2),
	o => \i_Number[2]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\i_Number[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(1),
	o => \i_Number[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\i_Number[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(0),
	o => \i_Number[0]~input_o\);

-- Location: LCCOMB_X24_Y5_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \i_Number[0]~input_o\ $ (VCC)
-- \Add2~1\ = CARRY(\i_Number[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[0]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X24_Y5_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\i_Number[1]~input_o\ & (\Add2~1\ & VCC)) # (!\i_Number[1]~input_o\ & (!\Add2~1\))
-- \Add2~3\ = CARRY((!\i_Number[1]~input_o\ & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X24_Y5_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\i_Number[2]~input_o\ & ((GND) # (!\Add2~3\))) # (!\i_Number[2]~input_o\ & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((\i_Number[2]~input_o\) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_Number[2]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X24_Y5_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\i_Number[3]~input_o\ & (\Add2~5\ & VCC)) # (!\i_Number[3]~input_o\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((!\i_Number[3]~input_o\ & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[3]~input_o\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X24_Y5_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\i_Number[4]~input_o\ & ((GND) # (!\Add2~7\))) # (!\i_Number[4]~input_o\ & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((\i_Number[4]~input_o\) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[4]~input_o\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X24_Y5_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\i_Number[5]~input_o\ & (\Add2~9\ & VCC)) # (!\i_Number[5]~input_o\ & (!\Add2~9\))
-- \Add2~11\ = CARRY((!\i_Number[5]~input_o\ & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_Number[5]~input_o\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X24_Y5_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\i_Number[6]~input_o\ & ((GND) # (!\Add2~11\))) # (!\i_Number[6]~input_o\ & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((\i_Number[6]~input_o\) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[6]~input_o\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X24_Y5_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\i_Number[7]~input_o\ & (\Add2~13\ & VCC)) # (!\i_Number[7]~input_o\ & (!\Add2~13\))
-- \Add2~15\ = CARRY((!\i_Number[7]~input_o\ & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[7]~input_o\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X24_Y5_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\i_Number[8]~input_o\ & ((GND) # (!\Add2~15\))) # (!\i_Number[8]~input_o\ & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((\i_Number[8]~input_o\) # (!\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_Number[8]~input_o\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X24_Y5_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\i_Number[9]~input_o\ & (\Add2~17\ & VCC)) # (!\i_Number[9]~input_o\ & (!\Add2~17\))
-- \Add2~19\ = CARRY((!\i_Number[9]~input_o\ & !\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[9]~input_o\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X24_Y5_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\i_Number[10]~input_o\ & ((GND) # (!\Add2~19\))) # (!\i_Number[10]~input_o\ & (\Add2~19\ $ (GND)))
-- \Add2~21\ = CARRY((\i_Number[10]~input_o\) # (!\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[10]~input_o\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X24_Y5_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\i_Number[11]~input_o\ & (\Add2~21\ & VCC)) # (!\i_Number[11]~input_o\ & (!\Add2~21\))
-- \Add2~23\ = CARRY((!\i_Number[11]~input_o\ & !\Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_Number[11]~input_o\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X24_Y5_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\i_Number[12]~input_o\ & ((GND) # (!\Add2~23\))) # (!\i_Number[12]~input_o\ & (\Add2~23\ $ (GND)))
-- \Add2~25\ = CARRY((\i_Number[12]~input_o\) # (!\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[12]~input_o\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X24_Y5_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\i_Number[13]~input_o\ & (\Add2~25\ & VCC)) # (!\i_Number[13]~input_o\ & (!\Add2~25\))
-- \Add2~27\ = CARRY((!\i_Number[13]~input_o\ & !\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_Number[13]~input_o\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: IOIBUF_X34_Y12_N15
\i_OpSel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OpSel(0),
	o => \i_OpSel[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\i_Number[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(15),
	o => \i_Number[15]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\i_OpSel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OpSel(1),
	o => \i_OpSel[1]~input_o\);

-- Location: LCCOMB_X33_Y8_N4
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\i_OpSel[1]~input_o\ & (((\i_Number[15]~input_o\)))) # (!\i_OpSel[1]~input_o\ & (\i_OpSel[0]~input_o\ & (\i_Number[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \i_Number[7]~input_o\,
	datac => \i_Number[15]~input_o\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X23_Y5_N10
\r_IntPNumber[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_IntPNumber[5]~1_combout\ = (\Mux12~0_combout\ & ((!\Add2~26_combout\))) # (!\Mux12~0_combout\ & (\i_Number[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[13]~input_o\,
	datab => \Add2~26_combout\,
	datac => \Mux12~0_combout\,
	combout => \r_IntPNumber[5]~1_combout\);

-- Location: LCCOMB_X23_Y5_N8
\r_IntPNumber[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_IntPNumber[4]~0_combout\ = (\Mux12~0_combout\ & (!\Add2~24_combout\)) # (!\Mux12~0_combout\ & ((\i_Number[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datac => \Mux12~0_combout\,
	datad => \i_Number[12]~input_o\,
	combout => \r_IntPNumber[4]~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\i_Number[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(14),
	o => \i_Number[14]~input_o\);

-- Location: LCCOMB_X24_Y5_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\i_Number[14]~input_o\ & ((GND) # (!\Add2~27\))) # (!\i_Number[14]~input_o\ & (\Add2~27\ $ (GND)))
-- \Add2~29\ = CARRY((\i_Number[14]~input_o\) # (!\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_Number[14]~input_o\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X24_Y5_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = \Add2~29\ $ (\i_Number[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_Number[15]~input_o\,
	cin => \Add2~29\,
	combout => \Add2~30_combout\);

-- Location: LCCOMB_X23_Y5_N22
\r_IntPNumber[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_IntPNumber[7]~3_combout\ = (\Mux12~0_combout\ & ((\Add2~30_combout\))) # (!\Mux12~0_combout\ & (\i_Number[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[15]~input_o\,
	datab => \Mux12~0_combout\,
	datac => \Add2~30_combout\,
	combout => \r_IntPNumber[7]~3_combout\);

-- Location: LCCOMB_X23_Y5_N20
\r_IntPNumber[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_IntPNumber[6]~2_combout\ = (\Mux12~0_combout\ & (!\Add2~28_combout\)) # (!\Mux12~0_combout\ & ((\i_Number[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~28_combout\,
	datac => \Mux12~0_combout\,
	datad => \i_Number[14]~input_o\,
	combout => \r_IntPNumber[6]~2_combout\);

-- Location: LCCOMB_X23_Y5_N4
\DisplayDecoder1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder1|Mux6~0_combout\ = (\r_IntPNumber[7]~3_combout\ & (\r_IntPNumber[4]~0_combout\ & (\r_IntPNumber[5]~1_combout\ $ (\r_IntPNumber[6]~2_combout\)))) # (!\r_IntPNumber[7]~3_combout\ & (!\r_IntPNumber[5]~1_combout\ & (\r_IntPNumber[4]~0_combout\ 
-- $ (\r_IntPNumber[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[5]~1_combout\,
	datab => \r_IntPNumber[4]~0_combout\,
	datac => \r_IntPNumber[7]~3_combout\,
	datad => \r_IntPNumber[6]~2_combout\,
	combout => \DisplayDecoder1|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y6_N2
\r_IntPNumber[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_IntPNumber[0]~4_combout\ = (\Mux12~0_combout\ & (!\Add2~16_combout\)) # (!\Mux12~0_combout\ & ((\i_Number[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datac => \i_Number[8]~input_o\,
	datad => \Mux12~0_combout\,
	combout => \r_IntPNumber[0]~4_combout\);

-- Location: LCCOMB_X23_Y6_N20
\r_IntPNumber[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_IntPNumber[1]~5_combout\ = (\Mux12~0_combout\ & ((!\Add2~18_combout\))) # (!\Mux12~0_combout\ & (\i_Number[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[9]~input_o\,
	datab => \Mux12~0_combout\,
	datad => \Add2~18_combout\,
	combout => \r_IntPNumber[1]~5_combout\);

-- Location: LCCOMB_X23_Y5_N6
\r_IntPNumber[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_IntPNumber[2]~6_combout\ = (\Mux12~0_combout\ & ((!\Add2~20_combout\))) # (!\Mux12~0_combout\ & (\i_Number[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Number[10]~input_o\,
	datab => \Mux12~0_combout\,
	datac => \Add2~20_combout\,
	combout => \r_IntPNumber[2]~6_combout\);

-- Location: LCCOMB_X24_Y6_N24
\r_IntPNumber[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_IntPNumber[3]~7_combout\ = (\Mux12~0_combout\ & ((!\Add2~22_combout\))) # (!\Mux12~0_combout\ & (\i_Number[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Number[11]~input_o\,
	datac => \Add2~22_combout\,
	datad => \Mux12~0_combout\,
	combout => \r_IntPNumber[3]~7_combout\);

-- Location: LCCOMB_X23_Y6_N6
\DisplayDecoder2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder2|Mux6~0_combout\ = (\r_IntPNumber[2]~6_combout\ & (!\r_IntPNumber[1]~5_combout\ & (\r_IntPNumber[0]~4_combout\ $ (!\r_IntPNumber[3]~7_combout\)))) # (!\r_IntPNumber[2]~6_combout\ & (\r_IntPNumber[0]~4_combout\ & 
-- (\r_IntPNumber[1]~5_combout\ $ (!\r_IntPNumber[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[0]~4_combout\,
	datab => \r_IntPNumber[1]~5_combout\,
	datac => \r_IntPNumber[2]~6_combout\,
	datad => \r_IntPNumber[3]~7_combout\,
	combout => \DisplayDecoder2|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y9_N22
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (r_Sel(1) & ((r_Sel(0) & (\DisplayDecoder1|Mux6~0_combout\)) # (!r_Sel(0) & ((\DisplayDecoder2|Mux6~0_combout\))))) # (!r_Sel(1) & (((r_Sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDecoder1|Mux6~0_combout\,
	datab => r_Sel(1),
	datac => \DisplayDecoder2|Mux6~0_combout\,
	datad => r_Sel(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X23_Y5_N28
\r_DecPNumber[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_DecPNumber[4]~4_combout\ = (\Mux12~0_combout\ & (!\Add2~8_combout\)) # (!\Mux12~0_combout\ & ((\i_Number[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~0_combout\,
	datac => \Add2~8_combout\,
	datad => \i_Number[4]~input_o\,
	combout => \r_DecPNumber[4]~4_combout\);

-- Location: LCCOMB_X23_Y5_N24
\r_DecPNumber[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_DecPNumber[6]~6_combout\ = (\Mux12~0_combout\ & (!\Add2~12_combout\)) # (!\Mux12~0_combout\ & ((\i_Number[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~0_combout\,
	datac => \Add2~12_combout\,
	datad => \i_Number[6]~input_o\,
	combout => \r_DecPNumber[6]~6_combout\);

-- Location: LCCOMB_X23_Y5_N18
\r_DecPNumber[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_DecPNumber[5]~5_combout\ = (\Mux12~0_combout\ & (!\Add2~10_combout\)) # (!\Mux12~0_combout\ & ((\i_Number[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~0_combout\,
	datac => \Add2~10_combout\,
	datad => \i_Number[5]~input_o\,
	combout => \r_DecPNumber[5]~5_combout\);

-- Location: LCCOMB_X23_Y5_N14
\r_DecPNumber[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_DecPNumber[7]~7_combout\ = (\Mux12~0_combout\ & (!\Add2~14_combout\)) # (!\Mux12~0_combout\ & ((\i_Number[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~0_combout\,
	datac => \Add2~14_combout\,
	datad => \i_Number[7]~input_o\,
	combout => \r_DecPNumber[7]~7_combout\);

-- Location: LCCOMB_X23_Y9_N20
\DisplayDecoder3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder3|Mux6~0_combout\ = (\r_DecPNumber[6]~6_combout\ & (!\r_DecPNumber[5]~5_combout\ & (\r_DecPNumber[4]~4_combout\ $ (!\r_DecPNumber[7]~7_combout\)))) # (!\r_DecPNumber[6]~6_combout\ & (\r_DecPNumber[4]~4_combout\ & 
-- (\r_DecPNumber[5]~5_combout\ $ (!\r_DecPNumber[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[4]~4_combout\,
	datab => \r_DecPNumber[6]~6_combout\,
	datac => \r_DecPNumber[5]~5_combout\,
	datad => \r_DecPNumber[7]~7_combout\,
	combout => \DisplayDecoder3|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y6_N6
\r_DecPNumber[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_DecPNumber[1]~1_combout\ = (\Mux12~0_combout\ & (!\Add2~2_combout\)) # (!\Mux12~0_combout\ & ((\i_Number[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~2_combout\,
	datac => \i_Number[1]~input_o\,
	datad => \Mux12~0_combout\,
	combout => \r_DecPNumber[1]~1_combout\);

-- Location: LCCOMB_X24_Y6_N0
\r_DecPNumber[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_DecPNumber[2]~2_combout\ = (\Mux12~0_combout\ & (!\Add2~4_combout\)) # (!\Mux12~0_combout\ & ((\i_Number[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datac => \i_Number[2]~input_o\,
	datad => \Mux12~0_combout\,
	combout => \r_DecPNumber[2]~2_combout\);

-- Location: LCCOMB_X24_Y6_N22
\r_DecPNumber[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_DecPNumber[3]~3_combout\ = (\Mux12~0_combout\ & (!\Add2~6_combout\)) # (!\Mux12~0_combout\ & ((\i_Number[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~0_combout\,
	datac => \Add2~6_combout\,
	datad => \i_Number[3]~input_o\,
	combout => \r_DecPNumber[3]~3_combout\);

-- Location: LCCOMB_X24_Y6_N20
\r_DecPNumber[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_DecPNumber[0]~0_combout\ = (\Mux12~0_combout\ & (!\Add2~0_combout\)) # (!\Mux12~0_combout\ & ((\i_Number[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datac => \i_Number[0]~input_o\,
	datad => \Mux12~0_combout\,
	combout => \r_DecPNumber[0]~0_combout\);

-- Location: LCCOMB_X24_Y6_N28
\DisplayDecoder4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder4|Mux6~0_combout\ = (\r_DecPNumber[2]~2_combout\ & (!\r_DecPNumber[1]~1_combout\ & (\r_DecPNumber[3]~3_combout\ $ (!\r_DecPNumber[0]~0_combout\)))) # (!\r_DecPNumber[2]~2_combout\ & (\r_DecPNumber[0]~0_combout\ & 
-- (\r_DecPNumber[1]~1_combout\ $ (!\r_DecPNumber[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[1]~1_combout\,
	datab => \r_DecPNumber[2]~2_combout\,
	datac => \r_DecPNumber[3]~3_combout\,
	datad => \r_DecPNumber[0]~0_combout\,
	combout => \DisplayDecoder4|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y9_N18
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\DisplayDecoder3|Mux6~0_combout\) # ((r_Sel(1))))) # (!\Mux10~0_combout\ & (((!r_Sel(1) & \DisplayDecoder4|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \DisplayDecoder3|Mux6~0_combout\,
	datac => r_Sel(1),
	datad => \DisplayDecoder4|Mux6~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X23_Y9_N6
\DisplayDecoder3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder3|Mux5~0_combout\ = (\r_DecPNumber[5]~5_combout\ & ((\r_DecPNumber[4]~4_combout\ & ((\r_DecPNumber[7]~7_combout\))) # (!\r_DecPNumber[4]~4_combout\ & (\r_DecPNumber[6]~6_combout\)))) # (!\r_DecPNumber[5]~5_combout\ & 
-- (\r_DecPNumber[6]~6_combout\ & (\r_DecPNumber[4]~4_combout\ $ (\r_DecPNumber[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[4]~4_combout\,
	datab => \r_DecPNumber[6]~6_combout\,
	datac => \r_DecPNumber[5]~5_combout\,
	datad => \r_DecPNumber[7]~7_combout\,
	combout => \DisplayDecoder3|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y9_N16
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = r_Sel(1) $ (r_Sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_Sel(1),
	datad => r_Sel(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X23_Y6_N8
\DisplayDecoder2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder2|Mux5~0_combout\ = (\r_IntPNumber[1]~5_combout\ & ((\r_IntPNumber[0]~4_combout\ & ((\r_IntPNumber[3]~7_combout\))) # (!\r_IntPNumber[0]~4_combout\ & (\r_IntPNumber[2]~6_combout\)))) # (!\r_IntPNumber[1]~5_combout\ & 
-- (\r_IntPNumber[2]~6_combout\ & (\r_IntPNumber[0]~4_combout\ $ (\r_IntPNumber[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[0]~4_combout\,
	datab => \r_IntPNumber[1]~5_combout\,
	datac => \r_IntPNumber[2]~6_combout\,
	datad => \r_IntPNumber[3]~7_combout\,
	combout => \DisplayDecoder2|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y5_N12
\DisplayDecoder1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder1|Mux5~0_combout\ = (\r_IntPNumber[5]~1_combout\ & ((\r_IntPNumber[4]~0_combout\ & (\r_IntPNumber[7]~3_combout\)) # (!\r_IntPNumber[4]~0_combout\ & ((\r_IntPNumber[6]~2_combout\))))) # (!\r_IntPNumber[5]~1_combout\ & 
-- (\r_IntPNumber[6]~2_combout\ & (\r_IntPNumber[4]~0_combout\ $ (\r_IntPNumber[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[5]~1_combout\,
	datab => \r_IntPNumber[4]~0_combout\,
	datac => \r_IntPNumber[7]~3_combout\,
	datad => \r_IntPNumber[6]~2_combout\,
	combout => \DisplayDecoder1|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y6_N30
\DisplayDecoder4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder4|Mux5~0_combout\ = (\r_DecPNumber[1]~1_combout\ & ((\r_DecPNumber[0]~0_combout\ & ((\r_DecPNumber[3]~3_combout\))) # (!\r_DecPNumber[0]~0_combout\ & (\r_DecPNumber[2]~2_combout\)))) # (!\r_DecPNumber[1]~1_combout\ & 
-- (\r_DecPNumber[2]~2_combout\ & (\r_DecPNumber[3]~3_combout\ $ (\r_DecPNumber[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[1]~1_combout\,
	datab => \r_DecPNumber[2]~2_combout\,
	datac => \r_DecPNumber[3]~3_combout\,
	datad => \r_DecPNumber[0]~0_combout\,
	combout => \DisplayDecoder4|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y6_N16
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (r_Sel(0) & ((\DisplayDecoder1|Mux5~0_combout\) # ((!r_Sel(1))))) # (!r_Sel(0) & (((\DisplayDecoder4|Mux5~0_combout\ & !r_Sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Sel(0),
	datab => \DisplayDecoder1|Mux5~0_combout\,
	datac => \DisplayDecoder4|Mux5~0_combout\,
	datad => r_Sel(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X23_Y9_N24
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux4~0_combout\ & ((\Mux9~0_combout\ & (\DisplayDecoder3|Mux5~0_combout\)) # (!\Mux9~0_combout\ & ((\DisplayDecoder2|Mux5~0_combout\))))) # (!\Mux4~0_combout\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDecoder3|Mux5~0_combout\,
	datab => \Mux4~0_combout\,
	datac => \DisplayDecoder2|Mux5~0_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X23_Y9_N14
\DisplayDecoder3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder3|Mux4~0_combout\ = (\r_DecPNumber[6]~6_combout\ & (\r_DecPNumber[7]~7_combout\ & ((\r_DecPNumber[5]~5_combout\) # (!\r_DecPNumber[4]~4_combout\)))) # (!\r_DecPNumber[6]~6_combout\ & (!\r_DecPNumber[4]~4_combout\ & 
-- (\r_DecPNumber[5]~5_combout\ & !\r_DecPNumber[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[4]~4_combout\,
	datab => \r_DecPNumber[6]~6_combout\,
	datac => \r_DecPNumber[5]~5_combout\,
	datad => \r_DecPNumber[7]~7_combout\,
	combout => \DisplayDecoder3|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y6_N14
\DisplayDecoder4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder4|Mux4~0_combout\ = (\r_DecPNumber[2]~2_combout\ & (\r_DecPNumber[3]~3_combout\ & ((\r_DecPNumber[1]~1_combout\) # (!\r_DecPNumber[0]~0_combout\)))) # (!\r_DecPNumber[2]~2_combout\ & (\r_DecPNumber[1]~1_combout\ & 
-- (!\r_DecPNumber[3]~3_combout\ & !\r_DecPNumber[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[1]~1_combout\,
	datab => \r_DecPNumber[2]~2_combout\,
	datac => \r_DecPNumber[3]~3_combout\,
	datad => \r_DecPNumber[0]~0_combout\,
	combout => \DisplayDecoder4|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y5_N2
\DisplayDecoder1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder1|Mux4~0_combout\ = (\r_IntPNumber[7]~3_combout\ & (\r_IntPNumber[6]~2_combout\ & ((\r_IntPNumber[5]~1_combout\) # (!\r_IntPNumber[4]~0_combout\)))) # (!\r_IntPNumber[7]~3_combout\ & (\r_IntPNumber[5]~1_combout\ & 
-- (!\r_IntPNumber[4]~0_combout\ & !\r_IntPNumber[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[5]~1_combout\,
	datab => \r_IntPNumber[4]~0_combout\,
	datac => \r_IntPNumber[7]~3_combout\,
	datad => \r_IntPNumber[6]~2_combout\,
	combout => \DisplayDecoder1|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y6_N2
\DisplayDecoder2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder2|Mux4~0_combout\ = (\r_IntPNumber[2]~6_combout\ & (\r_IntPNumber[3]~7_combout\ & ((\r_IntPNumber[1]~5_combout\) # (!\r_IntPNumber[0]~4_combout\)))) # (!\r_IntPNumber[2]~6_combout\ & (!\r_IntPNumber[0]~4_combout\ & 
-- (\r_IntPNumber[1]~5_combout\ & !\r_IntPNumber[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[0]~4_combout\,
	datab => \r_IntPNumber[1]~5_combout\,
	datac => \r_IntPNumber[2]~6_combout\,
	datad => \r_IntPNumber[3]~7_combout\,
	combout => \DisplayDecoder2|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y6_N4
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (r_Sel(0) & ((\DisplayDecoder1|Mux4~0_combout\) # ((!r_Sel(1))))) # (!r_Sel(0) & (((r_Sel(1) & \DisplayDecoder2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Sel(0),
	datab => \DisplayDecoder1|Mux4~0_combout\,
	datac => r_Sel(1),
	datad => \DisplayDecoder2|Mux4~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X24_Y6_N12
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & ((\DisplayDecoder3|Mux4~0_combout\) # ((r_Sel(1))))) # (!\Mux8~0_combout\ & (((\DisplayDecoder4|Mux4~0_combout\ & !r_Sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDecoder3|Mux4~0_combout\,
	datab => \DisplayDecoder4|Mux4~0_combout\,
	datac => \Mux8~0_combout\,
	datad => r_Sel(1),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X23_Y9_N12
\DisplayDecoder3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder3|Mux3~0_combout\ = (\r_DecPNumber[4]~4_combout\ & (\r_DecPNumber[6]~6_combout\ $ ((!\r_DecPNumber[5]~5_combout\)))) # (!\r_DecPNumber[4]~4_combout\ & ((\r_DecPNumber[6]~6_combout\ & (!\r_DecPNumber[5]~5_combout\ & 
-- !\r_DecPNumber[7]~7_combout\)) # (!\r_DecPNumber[6]~6_combout\ & (\r_DecPNumber[5]~5_combout\ & \r_DecPNumber[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[4]~4_combout\,
	datab => \r_DecPNumber[6]~6_combout\,
	datac => \r_DecPNumber[5]~5_combout\,
	datad => \r_DecPNumber[7]~7_combout\,
	combout => \DisplayDecoder3|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y6_N22
\DisplayDecoder2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder2|Mux3~0_combout\ = (\r_IntPNumber[0]~4_combout\ & (\r_IntPNumber[1]~5_combout\ $ ((!\r_IntPNumber[2]~6_combout\)))) # (!\r_IntPNumber[0]~4_combout\ & ((\r_IntPNumber[1]~5_combout\ & (!\r_IntPNumber[2]~6_combout\ & 
-- \r_IntPNumber[3]~7_combout\)) # (!\r_IntPNumber[1]~5_combout\ & (\r_IntPNumber[2]~6_combout\ & !\r_IntPNumber[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[0]~4_combout\,
	datab => \r_IntPNumber[1]~5_combout\,
	datac => \r_IntPNumber[2]~6_combout\,
	datad => \r_IntPNumber[3]~7_combout\,
	combout => \DisplayDecoder2|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y6_N18
\DisplayDecoder4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder4|Mux3~0_combout\ = (\r_DecPNumber[0]~0_combout\ & (\r_DecPNumber[1]~1_combout\ $ ((!\r_DecPNumber[2]~2_combout\)))) # (!\r_DecPNumber[0]~0_combout\ & ((\r_DecPNumber[1]~1_combout\ & (!\r_DecPNumber[2]~2_combout\ & 
-- \r_DecPNumber[3]~3_combout\)) # (!\r_DecPNumber[1]~1_combout\ & (\r_DecPNumber[2]~2_combout\ & !\r_DecPNumber[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[1]~1_combout\,
	datab => \r_DecPNumber[2]~2_combout\,
	datac => \r_DecPNumber[3]~3_combout\,
	datad => \r_DecPNumber[0]~0_combout\,
	combout => \DisplayDecoder4|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y5_N16
\DisplayDecoder1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder1|Mux3~0_combout\ = (\r_IntPNumber[4]~0_combout\ & (\r_IntPNumber[5]~1_combout\ $ (((!\r_IntPNumber[6]~2_combout\))))) # (!\r_IntPNumber[4]~0_combout\ & ((\r_IntPNumber[5]~1_combout\ & (\r_IntPNumber[7]~3_combout\ & 
-- !\r_IntPNumber[6]~2_combout\)) # (!\r_IntPNumber[5]~1_combout\ & (!\r_IntPNumber[7]~3_combout\ & \r_IntPNumber[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[5]~1_combout\,
	datab => \r_IntPNumber[4]~0_combout\,
	datac => \r_IntPNumber[7]~3_combout\,
	datad => \r_IntPNumber[6]~2_combout\,
	combout => \DisplayDecoder1|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y6_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (r_Sel(0) & (((\DisplayDecoder1|Mux3~0_combout\) # (!r_Sel(1))))) # (!r_Sel(0) & (\DisplayDecoder4|Mux3~0_combout\ & (!r_Sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Sel(0),
	datab => \DisplayDecoder4|Mux3~0_combout\,
	datac => r_Sel(1),
	datad => \DisplayDecoder1|Mux3~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X23_Y9_N30
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\DisplayDecoder3|Mux3~0_combout\) # ((!\Mux4~0_combout\)))) # (!\Mux7~0_combout\ & (((\DisplayDecoder2|Mux3~0_combout\ & \Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDecoder3|Mux3~0_combout\,
	datab => \DisplayDecoder2|Mux3~0_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X23_Y9_N28
\DisplayDecoder3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder3|Mux2~0_combout\ = (\r_DecPNumber[5]~5_combout\ & (\r_DecPNumber[4]~4_combout\ & ((!\r_DecPNumber[7]~7_combout\)))) # (!\r_DecPNumber[5]~5_combout\ & ((\r_DecPNumber[6]~6_combout\ & ((!\r_DecPNumber[7]~7_combout\))) # 
-- (!\r_DecPNumber[6]~6_combout\ & (\r_DecPNumber[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[4]~4_combout\,
	datab => \r_DecPNumber[6]~6_combout\,
	datac => \r_DecPNumber[5]~5_combout\,
	datad => \r_DecPNumber[7]~7_combout\,
	combout => \DisplayDecoder3|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y6_N8
\DisplayDecoder4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder4|Mux2~0_combout\ = (\r_DecPNumber[1]~1_combout\ & (((!\r_DecPNumber[3]~3_combout\ & \r_DecPNumber[0]~0_combout\)))) # (!\r_DecPNumber[1]~1_combout\ & ((\r_DecPNumber[2]~2_combout\ & (!\r_DecPNumber[3]~3_combout\)) # 
-- (!\r_DecPNumber[2]~2_combout\ & ((\r_DecPNumber[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[1]~1_combout\,
	datab => \r_DecPNumber[2]~2_combout\,
	datac => \r_DecPNumber[3]~3_combout\,
	datad => \r_DecPNumber[0]~0_combout\,
	combout => \DisplayDecoder4|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y5_N30
\DisplayDecoder1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder1|Mux2~0_combout\ = (\r_IntPNumber[5]~1_combout\ & (\r_IntPNumber[4]~0_combout\ & (!\r_IntPNumber[7]~3_combout\))) # (!\r_IntPNumber[5]~1_combout\ & ((\r_IntPNumber[6]~2_combout\ & ((!\r_IntPNumber[7]~3_combout\))) # 
-- (!\r_IntPNumber[6]~2_combout\ & (\r_IntPNumber[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[5]~1_combout\,
	datab => \r_IntPNumber[4]~0_combout\,
	datac => \r_IntPNumber[7]~3_combout\,
	datad => \r_IntPNumber[6]~2_combout\,
	combout => \DisplayDecoder1|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y6_N26
\DisplayDecoder2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder2|Mux2~0_combout\ = (\r_IntPNumber[1]~5_combout\ & (\r_IntPNumber[0]~4_combout\ & ((!\r_IntPNumber[3]~7_combout\)))) # (!\r_IntPNumber[1]~5_combout\ & ((\r_IntPNumber[2]~6_combout\ & ((!\r_IntPNumber[3]~7_combout\))) # 
-- (!\r_IntPNumber[2]~6_combout\ & (\r_IntPNumber[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[0]~4_combout\,
	datab => \r_IntPNumber[1]~5_combout\,
	datac => \r_IntPNumber[2]~6_combout\,
	datad => \r_IntPNumber[3]~7_combout\,
	combout => \DisplayDecoder2|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y6_N24
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (r_Sel(1) & ((r_Sel(0) & (\DisplayDecoder1|Mux2~0_combout\)) # (!r_Sel(0) & ((\DisplayDecoder2|Mux2~0_combout\))))) # (!r_Sel(1) & (((r_Sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDecoder1|Mux2~0_combout\,
	datab => r_Sel(1),
	datac => \DisplayDecoder2|Mux2~0_combout\,
	datad => r_Sel(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X23_Y6_N10
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (r_Sel(1) & (((\Mux6~0_combout\)))) # (!r_Sel(1) & ((\Mux6~0_combout\ & (\DisplayDecoder3|Mux2~0_combout\)) # (!\Mux6~0_combout\ & ((\DisplayDecoder4|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDecoder3|Mux2~0_combout\,
	datab => r_Sel(1),
	datac => \DisplayDecoder4|Mux2~0_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X23_Y9_N10
\DisplayDecoder3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder3|Mux1~0_combout\ = (\r_DecPNumber[4]~4_combout\ & (\r_DecPNumber[7]~7_combout\ $ (((\r_DecPNumber[5]~5_combout\) # (!\r_DecPNumber[6]~6_combout\))))) # (!\r_DecPNumber[4]~4_combout\ & (!\r_DecPNumber[6]~6_combout\ & 
-- (\r_DecPNumber[5]~5_combout\ & !\r_DecPNumber[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[4]~4_combout\,
	datab => \r_DecPNumber[6]~6_combout\,
	datac => \r_DecPNumber[5]~5_combout\,
	datad => \r_DecPNumber[7]~7_combout\,
	combout => \DisplayDecoder3|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y6_N16
\DisplayDecoder2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder2|Mux1~0_combout\ = (\r_IntPNumber[0]~4_combout\ & (\r_IntPNumber[3]~7_combout\ $ (((\r_IntPNumber[1]~5_combout\) # (!\r_IntPNumber[2]~6_combout\))))) # (!\r_IntPNumber[0]~4_combout\ & (\r_IntPNumber[1]~5_combout\ & 
-- (!\r_IntPNumber[2]~6_combout\ & !\r_IntPNumber[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[0]~4_combout\,
	datab => \r_IntPNumber[1]~5_combout\,
	datac => \r_IntPNumber[2]~6_combout\,
	datad => \r_IntPNumber[3]~7_combout\,
	combout => \DisplayDecoder2|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y6_N10
\DisplayDecoder4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder4|Mux1~0_combout\ = (\r_DecPNumber[1]~1_combout\ & (!\r_DecPNumber[3]~3_combout\ & ((\r_DecPNumber[0]~0_combout\) # (!\r_DecPNumber[2]~2_combout\)))) # (!\r_DecPNumber[1]~1_combout\ & (\r_DecPNumber[0]~0_combout\ & 
-- (\r_DecPNumber[2]~2_combout\ $ (!\r_DecPNumber[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[1]~1_combout\,
	datab => \r_DecPNumber[2]~2_combout\,
	datac => \r_DecPNumber[3]~3_combout\,
	datad => \r_DecPNumber[0]~0_combout\,
	combout => \DisplayDecoder4|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y5_N0
\DisplayDecoder1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder1|Mux1~0_combout\ = (\r_IntPNumber[5]~1_combout\ & (!\r_IntPNumber[7]~3_combout\ & ((\r_IntPNumber[4]~0_combout\) # (!\r_IntPNumber[6]~2_combout\)))) # (!\r_IntPNumber[5]~1_combout\ & (\r_IntPNumber[4]~0_combout\ & 
-- (\r_IntPNumber[7]~3_combout\ $ (!\r_IntPNumber[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[5]~1_combout\,
	datab => \r_IntPNumber[4]~0_combout\,
	datac => \r_IntPNumber[7]~3_combout\,
	datad => \r_IntPNumber[6]~2_combout\,
	combout => \DisplayDecoder1|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y6_N30
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (r_Sel(1) & (((\DisplayDecoder1|Mux1~0_combout\ & r_Sel(0))))) # (!r_Sel(1) & ((\DisplayDecoder4|Mux1~0_combout\) # ((r_Sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDecoder4|Mux1~0_combout\,
	datab => \DisplayDecoder1|Mux1~0_combout\,
	datac => r_Sel(1),
	datad => r_Sel(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X23_Y9_N0
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & ((\DisplayDecoder3|Mux1~0_combout\) # ((!\Mux4~0_combout\)))) # (!\Mux5~0_combout\ & (((\DisplayDecoder2|Mux1~0_combout\ & \Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDecoder3|Mux1~0_combout\,
	datab => \DisplayDecoder2|Mux1~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X24_Y6_N4
\DisplayDecoder4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder4|Mux0~0_combout\ = (\r_DecPNumber[0]~0_combout\ & ((\r_DecPNumber[3]~3_combout\) # (\r_DecPNumber[1]~1_combout\ $ (\r_DecPNumber[2]~2_combout\)))) # (!\r_DecPNumber[0]~0_combout\ & ((\r_DecPNumber[1]~1_combout\) # 
-- (\r_DecPNumber[2]~2_combout\ $ (\r_DecPNumber[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[1]~1_combout\,
	datab => \r_DecPNumber[2]~2_combout\,
	datac => \r_DecPNumber[3]~3_combout\,
	datad => \r_DecPNumber[0]~0_combout\,
	combout => \DisplayDecoder4|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y9_N2
\DisplayDecoder3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder3|Mux0~0_combout\ = (\r_DecPNumber[4]~4_combout\ & ((\r_DecPNumber[7]~7_combout\) # (\r_DecPNumber[6]~6_combout\ $ (\r_DecPNumber[5]~5_combout\)))) # (!\r_DecPNumber[4]~4_combout\ & ((\r_DecPNumber[5]~5_combout\) # 
-- (\r_DecPNumber[6]~6_combout\ $ (\r_DecPNumber[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_DecPNumber[4]~4_combout\,
	datab => \r_DecPNumber[6]~6_combout\,
	datac => \r_DecPNumber[5]~5_combout\,
	datad => \r_DecPNumber[7]~7_combout\,
	combout => \DisplayDecoder3|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y5_N26
\DisplayDecoder1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder1|Mux0~0_combout\ = (\r_IntPNumber[4]~0_combout\ & ((\r_IntPNumber[7]~3_combout\) # (\r_IntPNumber[5]~1_combout\ $ (\r_IntPNumber[6]~2_combout\)))) # (!\r_IntPNumber[4]~0_combout\ & ((\r_IntPNumber[5]~1_combout\) # 
-- (\r_IntPNumber[7]~3_combout\ $ (\r_IntPNumber[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[5]~1_combout\,
	datab => \r_IntPNumber[4]~0_combout\,
	datac => \r_IntPNumber[7]~3_combout\,
	datad => \r_IntPNumber[6]~2_combout\,
	combout => \DisplayDecoder1|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y6_N28
\DisplayDecoder2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDecoder2|Mux0~0_combout\ = (\r_IntPNumber[0]~4_combout\ & ((\r_IntPNumber[3]~7_combout\) # (\r_IntPNumber[1]~5_combout\ $ (\r_IntPNumber[2]~6_combout\)))) # (!\r_IntPNumber[0]~4_combout\ & ((\r_IntPNumber[1]~5_combout\) # 
-- (\r_IntPNumber[2]~6_combout\ $ (\r_IntPNumber[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_IntPNumber[0]~4_combout\,
	datab => \r_IntPNumber[1]~5_combout\,
	datac => \r_IntPNumber[2]~6_combout\,
	datad => \r_IntPNumber[3]~7_combout\,
	combout => \DisplayDecoder2|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y6_N18
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (r_Sel(0) & (((!r_Sel(1))) # (!\DisplayDecoder1|Mux0~0_combout\))) # (!r_Sel(0) & (((r_Sel(1) & !\DisplayDecoder2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Sel(0),
	datab => \DisplayDecoder1|Mux0~0_combout\,
	datac => r_Sel(1),
	datad => \DisplayDecoder2|Mux0~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X23_Y6_N0
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (r_Sel(1) & (((\Mux4~1_combout\)))) # (!r_Sel(1) & ((\Mux4~1_combout\ & ((!\DisplayDecoder3|Mux0~0_combout\))) # (!\Mux4~1_combout\ & (!\DisplayDecoder4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDecoder4|Mux0~0_combout\,
	datab => \DisplayDecoder3|Mux0~0_combout\,
	datac => r_Sel(1),
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X23_Y9_N4
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (r_Sel(1) & !r_Sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_Sel(1),
	datad => r_Sel(0),
	combout => \Mux0~1_combout\);

ww_o_Displays(0) <= \o_Displays[0]~output_o\;

ww_o_Displays(1) <= \o_Displays[1]~output_o\;

ww_o_Displays(2) <= \o_Displays[2]~output_o\;

ww_o_Displays(3) <= \o_Displays[3]~output_o\;

ww_o_Segments(0) <= \o_Segments[0]~output_o\;

ww_o_Segments(1) <= \o_Segments[1]~output_o\;

ww_o_Segments(2) <= \o_Segments[2]~output_o\;

ww_o_Segments(3) <= \o_Segments[3]~output_o\;

ww_o_Segments(4) <= \o_Segments[4]~output_o\;

ww_o_Segments(5) <= \o_Segments[5]~output_o\;

ww_o_Segments(6) <= \o_Segments[6]~output_o\;

ww_o_DispPoint <= \o_DispPoint~output_o\;

ww_o_NumSign <= \o_NumSign~output_o\;
END structure;


