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

-- DATE "11/25/2023 23:36:54"

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

ENTITY 	UART_RX IS
    PORT (
	i_CLK : IN std_logic;
	i_RX_Serial : IN std_logic;
	o_RX_Done : OUT std_logic;
	o_RX_Error : OUT std_logic;
	o_RX_Byte : OUT std_logic_vector(7 DOWNTO 0)
	);
END UART_RX;

-- Design Ports Information
-- o_RX_Done	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Error	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[0]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[2]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[3]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[4]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[5]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[6]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[7]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RX_Serial	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_RX IS
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
SIGNAL ww_i_RX_Serial : std_logic;
SIGNAL ww_o_RX_Done : std_logic;
SIGNAL ww_o_RX_Error : std_logic;
SIGNAL ww_o_RX_Byte : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_RX_Done~output_o\ : std_logic;
SIGNAL \o_RX_Error~output_o\ : std_logic;
SIGNAL \o_RX_Byte[0]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[1]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[2]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[3]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[4]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[5]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[6]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[7]~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \r_RX_Data_R~feeder_combout\ : std_logic;
SIGNAL \r_RX_Data_R~q\ : std_logic;
SIGNAL \r_RX_Data~q\ : std_logic;
SIGNAL \r_CLK_Count[0]~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \Selector9~6_combout\ : std_logic;
SIGNAL \Selector9~5_combout\ : std_logic;
SIGNAL \Selector9~7_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \Selector8~5_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \Selector10~4_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Rx_Stop_Bit~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Rx_Stop_Bit~1_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Rx_Stop_Bit~q\ : std_logic;
SIGNAL \r_CLK_Count[0]~21_combout\ : std_logic;
SIGNAL \r_CLK_Count[0]~22_combout\ : std_logic;
SIGNAL \r_CLK_Count[0]~23_combout\ : std_logic;
SIGNAL \r_CLK_Count[0]~8\ : std_logic;
SIGNAL \r_CLK_Count[1]~9_combout\ : std_logic;
SIGNAL \r_CLK_Count[1]~10\ : std_logic;
SIGNAL \r_CLK_Count[2]~11_combout\ : std_logic;
SIGNAL \r_CLK_Count[2]~12\ : std_logic;
SIGNAL \r_CLK_Count[3]~13_combout\ : std_logic;
SIGNAL \r_CLK_Count[3]~14\ : std_logic;
SIGNAL \r_CLK_Count[4]~15_combout\ : std_logic;
SIGNAL \r_CLK_Count[4]~16\ : std_logic;
SIGNAL \r_CLK_Count[5]~17_combout\ : std_logic;
SIGNAL \r_CLK_Count[5]~18\ : std_logic;
SIGNAL \r_CLK_Count[6]~19_combout\ : std_logic;
SIGNAL \o_RX_Byte[0]~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Cleanup~feeder_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \r_CLK_Count[0]~24_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \r_RX_Done~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \r_RX_Byte[0]~0_combout\ : std_logic;
SIGNAL \o_RX_Byte[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_RX_Byte[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \r_RX_Byte[1]~1_combout\ : std_logic;
SIGNAL \o_RX_Byte[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_RX_Byte[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \r_RX_Byte[2]~2_combout\ : std_logic;
SIGNAL \o_RX_Byte[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_RX_Byte[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \r_RX_Byte[3]~3_combout\ : std_logic;
SIGNAL \o_RX_Byte[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_RX_Byte[3]~reg0_q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \r_RX_Byte[4]~4_combout\ : std_logic;
SIGNAL \o_RX_Byte[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_RX_Byte[4]~reg0_q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \r_RX_Byte[5]~5_combout\ : std_logic;
SIGNAL \o_RX_Byte[5]~reg0feeder_combout\ : std_logic;
SIGNAL \o_RX_Byte[5]~reg0_q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \r_RX_Byte[6]~6_combout\ : std_logic;
SIGNAL \o_RX_Byte[6]~reg0feeder_combout\ : std_logic;
SIGNAL \o_RX_Byte[6]~reg0_q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \r_RX_Byte[7]~7_combout\ : std_logic;
SIGNAL \o_RX_Byte[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_RX_Byte[7]~reg0_q\ : std_logic;
SIGNAL r_Bit_Index : std_logic_vector(2 DOWNTO 0);
SIGNAL r_CLK_Count : std_logic_vector(6 DOWNTO 0);
SIGNAL r_RX_Byte : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RX_Serial <= i_RX_Serial;
o_RX_Done <= ww_o_RX_Done;
o_RX_Error <= ww_o_RX_Error;
o_RX_Byte <= ww_o_RX_Byte;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y20_N9
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

-- Location: IOOBUF_X18_Y24_N16
\o_RX_Error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_RX_Error~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\o_RX_Byte[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_RX_Byte[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_RX_Byte[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\o_RX_Byte[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_RX_Byte[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_RX_Byte[1]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\o_RX_Byte[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_RX_Byte[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_RX_Byte[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\o_RX_Byte[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_RX_Byte[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_RX_Byte[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\o_RX_Byte[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_RX_Byte[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_RX_Byte[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\o_RX_Byte[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_RX_Byte[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_RX_Byte[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\o_RX_Byte[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_RX_Byte[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_RX_Byte[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\o_RX_Byte[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_RX_Byte[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_RX_Byte[7]~output_o\);

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

-- Location: IOIBUF_X34_Y18_N1
\i_RX_Serial~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RX_Serial,
	o => \i_RX_Serial~input_o\);

-- Location: LCCOMB_X33_Y18_N28
\r_RX_Data_R~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Data_R~feeder_combout\ = \i_RX_Serial~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RX_Serial~input_o\,
	combout => \r_RX_Data_R~feeder_combout\);

-- Location: FF_X33_Y18_N29
r_RX_Data_R : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Data_R~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Data_R~q\);

-- Location: FF_X30_Y18_N3
r_RX_Data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \r_RX_Data_R~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Data~q\);

-- Location: LCCOMB_X28_Y18_N10
\r_CLK_Count[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[0]~7_combout\ = r_CLK_Count(0) $ (VCC)
-- \r_CLK_Count[0]~8\ = CARRY(r_CLK_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(0),
	datad => VCC,
	combout => \r_CLK_Count[0]~7_combout\,
	cout => \r_CLK_Count[0]~8\);

-- Location: LCCOMB_X28_Y18_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!r_CLK_Count(1) & (r_CLK_Count(5) & (r_CLK_Count(0) & r_CLK_Count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(1),
	datab => r_CLK_Count(5),
	datac => r_CLK_Count(0),
	datad => r_CLK_Count(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X28_Y18_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!r_CLK_Count(6) & (r_CLK_Count(3) & (!r_CLK_Count(2) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(6),
	datab => r_CLK_Count(3),
	datac => r_CLK_Count(2),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X28_Y18_N24
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (r_CLK_Count(3)) # ((r_CLK_Count(2)) # ((r_CLK_Count(0) & r_CLK_Count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(0),
	datab => r_CLK_Count(3),
	datac => r_CLK_Count(2),
	datad => r_CLK_Count(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y18_N14
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (((!\LessThan2~0_combout\) # (!r_CLK_Count(4))) # (!r_CLK_Count(5))) # (!r_CLK_Count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(6),
	datab => r_CLK_Count(5),
	datac => r_CLK_Count(4),
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X28_Y18_N30
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!r_CLK_Count(4) & (((!r_CLK_Count(2)) # (!r_CLK_Count(3))) # (!r_CLK_Count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(1),
	datab => r_CLK_Count(3),
	datac => r_CLK_Count(2),
	datad => r_CLK_Count(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y18_N22
\Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~4_combout\ = (!r_CLK_Count(5) & \LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(5),
	datad => \LessThan0~0_combout\,
	combout => \Selector9~4_combout\);

-- Location: LCCOMB_X29_Y18_N18
\Selector9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~6_combout\ = (r_Bit_Index(0) & (r_CLK_Count(5) & (r_CLK_Count(4) & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_CLK_Count(5),
	datac => r_CLK_Count(4),
	datad => \LessThan2~0_combout\,
	combout => \Selector9~6_combout\);

-- Location: LCCOMB_X29_Y18_N28
\Selector9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~5_combout\ = (r_CLK_Count(6) & (((\Selector9~6_combout\)))) # (!r_CLK_Count(6) & (r_Bit_Index(1) & (\Selector9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(6),
	datab => r_Bit_Index(1),
	datac => \Selector9~4_combout\,
	datad => \Selector9~6_combout\,
	combout => \Selector9~5_combout\);

-- Location: LCCOMB_X29_Y18_N16
\Selector9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~7_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & ((r_Bit_Index(1) $ (\Selector9~5_combout\)))) # (!\r_SM_Main.s_RX_Data_Bits~q\ & (\r_SM_Main.s_Idle~q\ & (r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => r_Bit_Index(1),
	datad => \Selector9~5_combout\,
	combout => \Selector9~7_combout\);

-- Location: FF_X29_Y18_N17
\r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector9~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(1));

-- Location: LCCOMB_X29_Y18_N2
\Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = r_Bit_Index(2) $ (((r_Bit_Index(0) & r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datad => r_Bit_Index(2),
	combout => \Selector8~3_combout\);

-- Location: LCCOMB_X29_Y18_N0
\Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (r_Bit_Index(2) & ((r_CLK_Count(5)) # ((r_CLK_Count(6)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => r_CLK_Count(5),
	datac => r_CLK_Count(6),
	datad => \LessThan0~0_combout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X29_Y18_N20
\Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & ((\LessThan2~1_combout\ & ((\Selector8~2_combout\))) # (!\LessThan2~1_combout\ & (\Selector8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~3_combout\,
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => \LessThan2~1_combout\,
	datad => \Selector8~2_combout\,
	combout => \Selector8~4_combout\);

-- Location: LCCOMB_X29_Y18_N24
\Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~5_combout\ = (\Selector8~4_combout\) # ((\r_SM_Main.s_Idle~q\ & (!\r_SM_Main.s_RX_Data_Bits~q\ & r_Bit_Index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => r_Bit_Index(2),
	datad => \Selector8~4_combout\,
	combout => \Selector8~5_combout\);

-- Location: FF_X29_Y18_N25
\r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(2));

-- Location: LCCOMB_X29_Y18_N4
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & (((!r_Bit_Index(2)) # (!r_Bit_Index(1))) # (!r_Bit_Index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	datad => \r_SM_Main.s_RX_Data_Bits~q\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X30_Y18_N2
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\r_SM_Main.s_RX_Start_Bit~q\ & (!\r_RX_Data~q\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_Main.s_RX_Start_Bit~q\,
	datac => \r_RX_Data~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X30_Y18_N24
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\Selector13~1_combout\) # ((\Selector13~0_combout\) # ((\LessThan2~1_combout\ & \r_SM_Main.s_RX_Data_Bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \Selector13~1_combout\,
	datac => \r_SM_Main.s_RX_Data_Bits~q\,
	datad => \Selector13~0_combout\,
	combout => \Selector13~2_combout\);

-- Location: FF_X30_Y18_N25
\r_SM_Main.s_RX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Data_Bits~q\);

-- Location: LCCOMB_X29_Y18_N10
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (!r_CLK_Count(5) & (!r_CLK_Count(6) & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(5),
	datac => r_CLK_Count(6),
	datad => \LessThan0~0_combout\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X29_Y18_N12
\Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & ((r_Bit_Index(0) & (\LessThan2~1_combout\)) # (!r_Bit_Index(0) & ((\Selector10~2_combout\) # (!\LessThan2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => \LessThan2~1_combout\,
	datad => \Selector10~2_combout\,
	combout => \Selector10~3_combout\);

-- Location: LCCOMB_X29_Y18_N6
\Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~4_combout\ = (\Selector10~3_combout\) # ((\r_SM_Main.s_Idle~q\ & (!\r_SM_Main.s_RX_Data_Bits~q\ & r_Bit_Index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => r_Bit_Index(0),
	datad => \Selector10~3_combout\,
	combout => \Selector10~4_combout\);

-- Location: FF_X29_Y18_N7
\r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(0));

-- Location: LCCOMB_X29_Y18_N30
\r_SM_Main.s_Rx_Stop_Bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_SM_Main.s_Rx_Stop_Bit~0_combout\ = (r_Bit_Index(0) & (r_Bit_Index(1) & r_Bit_Index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datad => r_Bit_Index(2),
	combout => \r_SM_Main.s_Rx_Stop_Bit~0_combout\);

-- Location: LCCOMB_X28_Y18_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (r_CLK_Count(5) & r_CLK_Count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(5),
	datad => r_CLK_Count(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y18_N20
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (r_CLK_Count(6) & (\r_SM_Main.s_RX_Data_Bits~q\ & (\Equal0~0_combout\ & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(6),
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => \Equal0~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X29_Y18_N8
\r_SM_Main.s_Rx_Stop_Bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_SM_Main.s_Rx_Stop_Bit~1_combout\ = (\r_SM_Main.s_Rx_Stop_Bit~0_combout\ & ((\Decoder0~0_combout\) # ((\LessThan2~1_combout\ & \r_SM_Main.s_Rx_Stop_Bit~q\)))) # (!\r_SM_Main.s_Rx_Stop_Bit~0_combout\ & (\LessThan2~1_combout\ & 
-- (\r_SM_Main.s_Rx_Stop_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Rx_Stop_Bit~0_combout\,
	datab => \LessThan2~1_combout\,
	datac => \r_SM_Main.s_Rx_Stop_Bit~q\,
	datad => \Decoder0~0_combout\,
	combout => \r_SM_Main.s_Rx_Stop_Bit~1_combout\);

-- Location: FF_X29_Y18_N9
\r_SM_Main.s_Rx_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_SM_Main.s_Rx_Stop_Bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Rx_Stop_Bit~q\);

-- Location: LCCOMB_X29_Y18_N26
\r_CLK_Count[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[0]~21_combout\ = ((!\r_SM_Main.s_Rx_Stop_Bit~q\ & !\r_SM_Main.s_RX_Data_Bits~q\)) # (!r_CLK_Count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(6),
	datac => \r_SM_Main.s_Rx_Stop_Bit~q\,
	datad => \r_SM_Main.s_RX_Data_Bits~q\,
	combout => \r_CLK_Count[0]~21_combout\);

-- Location: LCCOMB_X28_Y18_N28
\r_CLK_Count[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[0]~22_combout\ = (((\r_CLK_Count[0]~21_combout\) # (!r_CLK_Count(5))) # (!\LessThan2~0_combout\)) # (!r_CLK_Count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(4),
	datab => \LessThan2~0_combout\,
	datac => r_CLK_Count(5),
	datad => \r_CLK_Count[0]~21_combout\,
	combout => \r_CLK_Count[0]~22_combout\);

-- Location: LCCOMB_X28_Y18_N26
\r_CLK_Count[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[0]~23_combout\ = \r_SM_Main.s_Idle~q\ $ (\r_CLK_Count[0]~22_combout\ $ (((\r_SM_Main.s_RX_Start_Bit~q\ & \Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Start_Bit~q\,
	datab => \Equal0~2_combout\,
	datac => \r_SM_Main.s_Idle~q\,
	datad => \r_CLK_Count[0]~22_combout\,
	combout => \r_CLK_Count[0]~23_combout\);

-- Location: FF_X28_Y18_N11
\r_CLK_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[0]~7_combout\,
	sclr => \r_CLK_Count[0]~23_combout\,
	ena => \r_CLK_Count[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(0));

-- Location: LCCOMB_X28_Y18_N12
\r_CLK_Count[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[1]~9_combout\ = (r_CLK_Count(1) & (!\r_CLK_Count[0]~8\)) # (!r_CLK_Count(1) & ((\r_CLK_Count[0]~8\) # (GND)))
-- \r_CLK_Count[1]~10\ = CARRY((!\r_CLK_Count[0]~8\) # (!r_CLK_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(1),
	datad => VCC,
	cin => \r_CLK_Count[0]~8\,
	combout => \r_CLK_Count[1]~9_combout\,
	cout => \r_CLK_Count[1]~10\);

-- Location: FF_X28_Y18_N13
\r_CLK_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[1]~9_combout\,
	sclr => \r_CLK_Count[0]~23_combout\,
	ena => \r_CLK_Count[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(1));

-- Location: LCCOMB_X28_Y18_N14
\r_CLK_Count[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[2]~11_combout\ = (r_CLK_Count(2) & (\r_CLK_Count[1]~10\ $ (GND))) # (!r_CLK_Count(2) & (!\r_CLK_Count[1]~10\ & VCC))
-- \r_CLK_Count[2]~12\ = CARRY((r_CLK_Count(2) & !\r_CLK_Count[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(2),
	datad => VCC,
	cin => \r_CLK_Count[1]~10\,
	combout => \r_CLK_Count[2]~11_combout\,
	cout => \r_CLK_Count[2]~12\);

-- Location: FF_X28_Y18_N15
\r_CLK_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[2]~11_combout\,
	sclr => \r_CLK_Count[0]~23_combout\,
	ena => \r_CLK_Count[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(2));

-- Location: LCCOMB_X28_Y18_N16
\r_CLK_Count[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[3]~13_combout\ = (r_CLK_Count(3) & (!\r_CLK_Count[2]~12\)) # (!r_CLK_Count(3) & ((\r_CLK_Count[2]~12\) # (GND)))
-- \r_CLK_Count[3]~14\ = CARRY((!\r_CLK_Count[2]~12\) # (!r_CLK_Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(3),
	datad => VCC,
	cin => \r_CLK_Count[2]~12\,
	combout => \r_CLK_Count[3]~13_combout\,
	cout => \r_CLK_Count[3]~14\);

-- Location: FF_X28_Y18_N17
\r_CLK_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[3]~13_combout\,
	sclr => \r_CLK_Count[0]~23_combout\,
	ena => \r_CLK_Count[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(3));

-- Location: LCCOMB_X28_Y18_N18
\r_CLK_Count[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[4]~15_combout\ = (r_CLK_Count(4) & (\r_CLK_Count[3]~14\ $ (GND))) # (!r_CLK_Count(4) & (!\r_CLK_Count[3]~14\ & VCC))
-- \r_CLK_Count[4]~16\ = CARRY((r_CLK_Count(4) & !\r_CLK_Count[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(4),
	datad => VCC,
	cin => \r_CLK_Count[3]~14\,
	combout => \r_CLK_Count[4]~15_combout\,
	cout => \r_CLK_Count[4]~16\);

-- Location: FF_X28_Y18_N19
\r_CLK_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[4]~15_combout\,
	sclr => \r_CLK_Count[0]~23_combout\,
	ena => \r_CLK_Count[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(4));

-- Location: LCCOMB_X28_Y18_N20
\r_CLK_Count[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[5]~17_combout\ = (r_CLK_Count(5) & (!\r_CLK_Count[4]~16\)) # (!r_CLK_Count(5) & ((\r_CLK_Count[4]~16\) # (GND)))
-- \r_CLK_Count[5]~18\ = CARRY((!\r_CLK_Count[4]~16\) # (!r_CLK_Count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(5),
	datad => VCC,
	cin => \r_CLK_Count[4]~16\,
	combout => \r_CLK_Count[5]~17_combout\,
	cout => \r_CLK_Count[5]~18\);

-- Location: FF_X28_Y18_N21
\r_CLK_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[5]~17_combout\,
	sclr => \r_CLK_Count[0]~23_combout\,
	ena => \r_CLK_Count[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(5));

-- Location: LCCOMB_X28_Y18_N22
\r_CLK_Count[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[6]~19_combout\ = r_CLK_Count(6) $ (!\r_CLK_Count[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(6),
	cin => \r_CLK_Count[5]~18\,
	combout => \r_CLK_Count[6]~19_combout\);

-- Location: FF_X28_Y18_N23
\r_CLK_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[6]~19_combout\,
	sclr => \r_CLK_Count[0]~23_combout\,
	ena => \r_CLK_Count[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(6));

-- Location: LCCOMB_X31_Y18_N24
\o_RX_Byte[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_RX_Byte[0]~0_combout\ = (r_CLK_Count(6) & (\r_SM_Main.s_Rx_Stop_Bit~q\ & (\Equal0~0_combout\ & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(6),
	datab => \r_SM_Main.s_Rx_Stop_Bit~q\,
	datac => \Equal0~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \o_RX_Byte[0]~0_combout\);

-- Location: LCCOMB_X31_Y18_N10
\r_SM_Main.s_Cleanup~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_SM_Main.s_Cleanup~feeder_combout\ = \o_RX_Byte[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \o_RX_Byte[0]~0_combout\,
	combout => \r_SM_Main.s_Cleanup~feeder_combout\);

-- Location: FF_X31_Y18_N11
\r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_SM_Main.s_Cleanup~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X28_Y18_N4
\r_CLK_Count[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[0]~24_combout\ = (!\r_SM_Main.s_Cleanup~q\ & (((!\Equal0~2_combout\) # (!\r_RX_Data~q\)) # (!\r_SM_Main.s_RX_Start_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Start_Bit~q\,
	datab => \r_RX_Data~q\,
	datac => \r_SM_Main.s_Cleanup~q\,
	datad => \Equal0~2_combout\,
	combout => \r_CLK_Count[0]~24_combout\);

-- Location: LCCOMB_X28_Y18_N8
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\r_CLK_Count[0]~24_combout\ & ((\r_SM_Main.s_Idle~q\) # (!\r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => \r_SM_Main.s_Idle~q\,
	datad => \r_CLK_Count[0]~24_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X28_Y18_N9
\r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X31_Y18_N26
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\r_RX_Data~q\ & (((\r_SM_Main.s_RX_Start_Bit~q\ & !\Equal0~2_combout\)))) # (!\r_RX_Data~q\ & (((\r_SM_Main.s_RX_Start_Bit~q\ & !\Equal0~2_combout\)) # (!\r_SM_Main.s_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datab => \r_SM_Main.s_Idle~q\,
	datac => \r_SM_Main.s_RX_Start_Bit~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X31_Y18_N27
\r_SM_Main.s_RX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Start_Bit~q\);

-- Location: LCCOMB_X31_Y18_N0
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\r_RX_Done~q\ & ((\r_SM_Main.s_RX_Start_Bit~q\) # ((\r_SM_Main.s_RX_Data_Bits~q\) # (\r_SM_Main.s_Rx_Stop_Bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Start_Bit~q\,
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => \r_SM_Main.s_Rx_Stop_Bit~q\,
	datad => \r_RX_Done~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X31_Y18_N20
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\r_SM_Main.s_Rx_Stop_Bit~q\ & !\LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~0_combout\,
	datac => \r_SM_Main.s_Rx_Stop_Bit~q\,
	datad => \LessThan2~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X31_Y18_N21
r_RX_Done : dffeas
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
	q => \r_RX_Done~q\);

-- Location: LCCOMB_X30_Y18_N28
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!r_Bit_Index(1) & (!r_Bit_Index(2) & (!r_Bit_Index(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X31_Y18_N2
\r_RX_Byte[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[0]~0_combout\ = (\Decoder0~1_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~1_combout\ & ((r_RX_Byte(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(0),
	datad => \Decoder0~1_combout\,
	combout => \r_RX_Byte[0]~0_combout\);

-- Location: FF_X31_Y18_N3
\r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(0));

-- Location: LCCOMB_X31_Y18_N22
\o_RX_Byte[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_RX_Byte[0]~reg0feeder_combout\ = r_RX_Byte(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_RX_Byte(0),
	combout => \o_RX_Byte[0]~reg0feeder_combout\);

-- Location: FF_X31_Y18_N23
\o_RX_Byte[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_RX_Byte[0]~reg0feeder_combout\,
	ena => \o_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_RX_Byte[0]~reg0_q\);

-- Location: LCCOMB_X30_Y18_N18
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!r_Bit_Index(1) & (!r_Bit_Index(2) & (r_Bit_Index(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X30_Y18_N30
\r_RX_Byte[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[1]~1_combout\ = (\Decoder0~2_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~2_combout\ & ((r_RX_Byte(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(1),
	datad => \Decoder0~2_combout\,
	combout => \r_RX_Byte[1]~1_combout\);

-- Location: FF_X30_Y18_N31
\r_RX_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Byte[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(1));

-- Location: LCCOMB_X31_Y18_N8
\o_RX_Byte[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_RX_Byte[1]~reg0feeder_combout\ = r_RX_Byte(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_RX_Byte(1),
	combout => \o_RX_Byte[1]~reg0feeder_combout\);

-- Location: FF_X31_Y18_N9
\o_RX_Byte[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_RX_Byte[1]~reg0feeder_combout\,
	ena => \o_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_RX_Byte[1]~reg0_q\);

-- Location: LCCOMB_X30_Y18_N8
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (r_Bit_Index(1) & (!r_Bit_Index(2) & (!r_Bit_Index(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X31_Y18_N6
\r_RX_Byte[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[2]~2_combout\ = (\Decoder0~3_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~3_combout\ & ((r_RX_Byte(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(2),
	datad => \Decoder0~3_combout\,
	combout => \r_RX_Byte[2]~2_combout\);

-- Location: FF_X31_Y18_N7
\r_RX_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Byte[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(2));

-- Location: LCCOMB_X31_Y18_N14
\o_RX_Byte[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_RX_Byte[2]~reg0feeder_combout\ = r_RX_Byte(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_RX_Byte(2),
	combout => \o_RX_Byte[2]~reg0feeder_combout\);

-- Location: FF_X31_Y18_N15
\o_RX_Byte[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_RX_Byte[2]~reg0feeder_combout\,
	ena => \o_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_RX_Byte[2]~reg0_q\);

-- Location: LCCOMB_X30_Y18_N14
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (r_Bit_Index(1) & (!r_Bit_Index(2) & (r_Bit_Index(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X31_Y18_N28
\r_RX_Byte[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[3]~3_combout\ = (\Decoder0~4_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~4_combout\ & ((r_RX_Byte(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(3),
	datad => \Decoder0~4_combout\,
	combout => \r_RX_Byte[3]~3_combout\);

-- Location: FF_X31_Y18_N29
\r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Byte[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(3));

-- Location: LCCOMB_X31_Y18_N16
\o_RX_Byte[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_RX_Byte[3]~reg0feeder_combout\ = r_RX_Byte(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_RX_Byte(3),
	combout => \o_RX_Byte[3]~reg0feeder_combout\);

-- Location: FF_X31_Y18_N17
\o_RX_Byte[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_RX_Byte[3]~reg0feeder_combout\,
	ena => \o_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_RX_Byte[3]~reg0_q\);

-- Location: LCCOMB_X30_Y18_N12
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!r_Bit_Index(1) & (r_Bit_Index(2) & (!r_Bit_Index(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X30_Y18_N4
\r_RX_Byte[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[4]~4_combout\ = (\Decoder0~5_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~5_combout\ & ((r_RX_Byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(4),
	datad => \Decoder0~5_combout\,
	combout => \r_RX_Byte[4]~4_combout\);

-- Location: FF_X30_Y18_N5
\r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Byte[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(4));

-- Location: LCCOMB_X31_Y18_N30
\o_RX_Byte[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_RX_Byte[4]~reg0feeder_combout\ = r_RX_Byte(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_RX_Byte(4),
	combout => \o_RX_Byte[4]~reg0feeder_combout\);

-- Location: FF_X31_Y18_N31
\o_RX_Byte[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_RX_Byte[4]~reg0feeder_combout\,
	ena => \o_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_RX_Byte[4]~reg0_q\);

-- Location: LCCOMB_X30_Y18_N6
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!r_Bit_Index(1) & (r_Bit_Index(2) & (r_Bit_Index(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X30_Y18_N22
\r_RX_Byte[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[5]~5_combout\ = (\Decoder0~6_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~6_combout\ & ((r_RX_Byte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(5),
	datad => \Decoder0~6_combout\,
	combout => \r_RX_Byte[5]~5_combout\);

-- Location: FF_X30_Y18_N23
\r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Byte[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(5));

-- Location: LCCOMB_X31_Y18_N12
\o_RX_Byte[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_RX_Byte[5]~reg0feeder_combout\ = r_RX_Byte(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_RX_Byte(5),
	combout => \o_RX_Byte[5]~reg0feeder_combout\);

-- Location: FF_X31_Y18_N13
\o_RX_Byte[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_RX_Byte[5]~reg0feeder_combout\,
	ena => \o_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_RX_Byte[5]~reg0_q\);

-- Location: LCCOMB_X30_Y18_N0
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (r_Bit_Index(1) & (r_Bit_Index(2) & (!r_Bit_Index(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X30_Y18_N16
\r_RX_Byte[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[6]~6_combout\ = (\Decoder0~7_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~7_combout\ & ((r_RX_Byte(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(6),
	datad => \Decoder0~7_combout\,
	combout => \r_RX_Byte[6]~6_combout\);

-- Location: FF_X30_Y18_N17
\r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Byte[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(6));

-- Location: LCCOMB_X31_Y18_N18
\o_RX_Byte[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_RX_Byte[6]~reg0feeder_combout\ = r_RX_Byte(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_RX_Byte(6),
	combout => \o_RX_Byte[6]~reg0feeder_combout\);

-- Location: FF_X31_Y18_N19
\o_RX_Byte[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_RX_Byte[6]~reg0feeder_combout\,
	ena => \o_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_RX_Byte[6]~reg0_q\);

-- Location: LCCOMB_X30_Y18_N10
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (r_Bit_Index(1) & (r_Bit_Index(2) & (r_Bit_Index(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X30_Y18_N26
\r_RX_Byte[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[7]~7_combout\ = (\Decoder0~8_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~8_combout\ & ((r_RX_Byte(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(7),
	datad => \Decoder0~8_combout\,
	combout => \r_RX_Byte[7]~7_combout\);

-- Location: FF_X30_Y18_N27
\r_RX_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_RX_Byte[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(7));

-- Location: LCCOMB_X31_Y18_N4
\o_RX_Byte[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_RX_Byte[7]~reg0feeder_combout\ = r_RX_Byte(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_RX_Byte(7),
	combout => \o_RX_Byte[7]~reg0feeder_combout\);

-- Location: FF_X31_Y18_N5
\o_RX_Byte[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_RX_Byte[7]~reg0feeder_combout\,
	ena => \o_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_RX_Byte[7]~reg0_q\);

ww_o_RX_Done <= \o_RX_Done~output_o\;

ww_o_RX_Error <= \o_RX_Error~output_o\;

ww_o_RX_Byte(0) <= \o_RX_Byte[0]~output_o\;

ww_o_RX_Byte(1) <= \o_RX_Byte[1]~output_o\;

ww_o_RX_Byte(2) <= \o_RX_Byte[2]~output_o\;

ww_o_RX_Byte(3) <= \o_RX_Byte[3]~output_o\;

ww_o_RX_Byte(4) <= \o_RX_Byte[4]~output_o\;

ww_o_RX_Byte(5) <= \o_RX_Byte[5]~output_o\;

ww_o_RX_Byte(6) <= \o_RX_Byte[6]~output_o\;

ww_o_RX_Byte(7) <= \o_RX_Byte[7]~output_o\;
END structure;


