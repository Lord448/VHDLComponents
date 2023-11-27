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

-- DATE "11/26/2023 22:48:00"

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
	i_Parity_Sel : IN std_logic_vector(1 DOWNTO 0);
	o_RX_Done : OUT std_logic;
	o_RX_Error : OUT std_logic;
	o_RX_Byte : OUT std_logic_vector(7 DOWNTO 0)
	);
END UART_RX;

-- Design Ports Information
-- o_RX_Done	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Error	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[0]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_RX_Byte[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[3]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[5]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[6]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[7]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Parity_Sel[1]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Parity_Sel[0]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RX_Serial	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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
SIGNAL ww_i_Parity_Sel : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \i_Parity_Sel[1]~input_o\ : std_logic;
SIGNAL \r_CLK_Count[0]~12_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \r_RX_Data_R~0_combout\ : std_logic;
SIGNAL \r_RX_Data_R~q\ : std_logic;
SIGNAL \r_RX_Data~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \r_CLK_Count[5]~11_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Parity_Check~q\ : std_logic;
SIGNAL \r_Bit_Index[1]~5_combout\ : std_logic;
SIGNAL \r_Bit_Index[1]~2_combout\ : std_logic;
SIGNAL \r_Bit_Index[1]~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \r_Bit_Index~0_combout\ : std_logic;
SIGNAL \r_Bit_Index[1]~3_combout\ : std_logic;
SIGNAL \r_Bit_Index[3]~6_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \r_Bits_to_Wait~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \r_Bits_to_Wait[3]~1_combout\ : std_logic;
SIGNAL \r_Frame_Bit_Count~0_combout\ : std_logic;
SIGNAL \r_Bits_to_Wait~2_combout\ : std_logic;
SIGNAL \r_Frame_Bit_Count~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \r_Bits_to_Wait~3_combout\ : std_logic;
SIGNAL \r_Bits_to_Wait~4_combout\ : std_logic;
SIGNAL \r_Frame_Bit_Count~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \r_CLK_Count[5]~30_combout\ : std_logic;
SIGNAL \r_CLK_Count[5]~31_combout\ : std_logic;
SIGNAL \r_CLK_Count[5]~32_combout\ : std_logic;
SIGNAL \r_CLK_Count[0]~13\ : std_logic;
SIGNAL \r_CLK_Count[1]~14_combout\ : std_logic;
SIGNAL \r_CLK_Count[1]~15\ : std_logic;
SIGNAL \r_CLK_Count[2]~16_combout\ : std_logic;
SIGNAL \r_CLK_Count[2]~17\ : std_logic;
SIGNAL \r_CLK_Count[3]~18_combout\ : std_logic;
SIGNAL \r_CLK_Count[3]~19\ : std_logic;
SIGNAL \r_CLK_Count[4]~20_combout\ : std_logic;
SIGNAL \r_CLK_Count[4]~21\ : std_logic;
SIGNAL \r_CLK_Count[5]~22_combout\ : std_logic;
SIGNAL \r_CLK_Count[5]~23\ : std_logic;
SIGNAL \r_CLK_Count[6]~24_combout\ : std_logic;
SIGNAL \r_CLK_Count[6]~25\ : std_logic;
SIGNAL \r_CLK_Count[7]~26_combout\ : std_logic;
SIGNAL \r_CLK_Count[7]~27\ : std_logic;
SIGNAL \r_CLK_Count[8]~28_combout\ : std_logic;
SIGNAL \r_CLK_Count[5]~9_combout\ : std_logic;
SIGNAL \r_CLK_Count[5]~10_combout\ : std_logic;
SIGNAL \i_Parity_Sel[0]~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \r_RX_Byte[0]~0_combout\ : std_logic;
SIGNAL \p_UART_RX~0_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \r_RX_Byte[2]~2_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \r_RX_Byte[1]~1_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \r_RX_Byte[4]~4_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \r_RX_Byte[3]~3_combout\ : std_logic;
SIGNAL \p_UART_RX~1_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \r_RX_Byte[5]~5_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \r_RX_Byte[6]~6_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \r_RX_Byte[7]~7_combout\ : std_logic;
SIGNAL \p_UART_RX~2_combout\ : std_logic;
SIGNAL \p_UART_RX~3_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Error~q\ : std_logic;
SIGNAL \r_Bit_Index[3]~1_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Rx_Stop_Bit~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \r_RX_Done~q\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \r_RX_Error~q\ : std_logic;
SIGNAL r_Frame_Bit_Count : std_logic_vector(2 DOWNTO 0);
SIGNAL r_Bits_to_Wait : std_logic_vector(3 DOWNTO 0);
SIGNAL r_Bit_Index : std_logic_vector(3 DOWNTO 0);
SIGNAL r_CLK_Count : std_logic_vector(8 DOWNTO 0);
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
ww_i_Parity_Sel <= i_Parity_Sel;
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

-- Location: IOOBUF_X34_Y9_N16
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

-- Location: IOOBUF_X34_Y9_N9
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

-- Location: IOOBUF_X32_Y0_N9
\o_RX_Byte[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(0),
	devoe => ww_devoe,
	o => \o_RX_Byte[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\o_RX_Byte[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(1),
	devoe => ww_devoe,
	o => \o_RX_Byte[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\o_RX_Byte[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(2),
	devoe => ww_devoe,
	o => \o_RX_Byte[2]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\o_RX_Byte[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(3),
	devoe => ww_devoe,
	o => \o_RX_Byte[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\o_RX_Byte[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(4),
	devoe => ww_devoe,
	o => \o_RX_Byte[4]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\o_RX_Byte[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(5),
	devoe => ww_devoe,
	o => \o_RX_Byte[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\o_RX_Byte[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(6),
	devoe => ww_devoe,
	o => \o_RX_Byte[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\o_RX_Byte[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(7),
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

-- Location: IOIBUF_X34_Y12_N1
\i_Parity_Sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Parity_Sel(1),
	o => \i_Parity_Sel[1]~input_o\);

-- Location: LCCOMB_X29_Y6_N8
\r_CLK_Count[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[0]~12_combout\ = r_CLK_Count(0) $ (VCC)
-- \r_CLK_Count[0]~13\ = CARRY(r_CLK_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(0),
	datad => VCC,
	combout => \r_CLK_Count[0]~12_combout\,
	cout => \r_CLK_Count[0]~13\);

-- Location: LCCOMB_X29_Y6_N4
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (r_CLK_Count(7) & ((r_CLK_Count(6)) # ((r_CLK_Count(4) & r_CLK_Count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(7),
	datab => r_CLK_Count(4),
	datac => r_CLK_Count(6),
	datad => r_CLK_Count(5),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y6_N0
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!r_CLK_Count(1) & (!r_CLK_Count(6) & (!r_CLK_Count(2) & !r_CLK_Count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(1),
	datab => r_CLK_Count(6),
	datac => r_CLK_Count(2),
	datad => r_CLK_Count(3),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X30_Y6_N6
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (r_CLK_Count(8) & (\LessThan2~0_combout\ & !\LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(8),
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: IOIBUF_X28_Y24_N22
\i_RX_Serial~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RX_Serial,
	o => \i_RX_Serial~input_o\);

-- Location: LCCOMB_X32_Y6_N0
\r_RX_Data_R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Data_R~0_combout\ = !\i_RX_Serial~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RX_Serial~input_o\,
	combout => \r_RX_Data_R~0_combout\);

-- Location: FF_X31_Y6_N5
r_RX_Data_R : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \r_RX_Data_R~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Data_R~q\);

-- Location: FF_X31_Y6_N9
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

-- Location: LCCOMB_X29_Y6_N30
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!r_CLK_Count(1) & (r_CLK_Count(4) & (r_CLK_Count(3) & !r_CLK_Count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(1),
	datab => r_CLK_Count(4),
	datac => r_CLK_Count(3),
	datad => r_CLK_Count(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X29_Y6_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (r_CLK_Count(7) & (!r_CLK_Count(5) & (!r_CLK_Count(8) & r_CLK_Count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(7),
	datab => r_CLK_Count(5),
	datac => r_CLK_Count(8),
	datad => r_CLK_Count(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y6_N26
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\r_SM_Main.s_RX_Start_Bit~q\ & (((r_CLK_Count(0)) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Start_Bit~q\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => r_CLK_Count(0),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X30_Y6_N22
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector15~0_combout\) # ((\r_RX_Data~q\ & !\r_SM_Main.s_Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => \Selector15~0_combout\,
	datad => \r_SM_Main.s_Idle~q\,
	combout => \Selector15~1_combout\);

-- Location: FF_X30_Y6_N23
\r_SM_Main.s_RX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Start_Bit~q\);

-- Location: LCCOMB_X30_Y6_N16
\r_CLK_Count[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[5]~11_combout\ = (!r_CLK_Count(0) & (\r_SM_Main.s_RX_Start_Bit~q\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(0),
	datab => \r_SM_Main.s_RX_Start_Bit~q\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \r_CLK_Count[5]~11_combout\);

-- Location: LCCOMB_X30_Y6_N12
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!r_CLK_Count(0) & \LessThan2~1_combout\)) # (!r_CLK_Count(8))) # (!\LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(0),
	datab => \LessThan2~1_combout\,
	datac => \LessThan2~0_combout\,
	datad => r_CLK_Count(8),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y6_N18
\Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\i_Parity_Sel[1]~input_o\ & (\LessThan1~0_combout\ & (\r_SM_Main.s_Parity_Check~q\))) # (!\i_Parity_Sel[1]~input_o\ & ((\Selector18~0_combout\) # ((\LessThan1~0_combout\ & \r_SM_Main.s_Parity_Check~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => \LessThan1~0_combout\,
	datac => \r_SM_Main.s_Parity_Check~q\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: FF_X30_Y6_N19
\r_SM_Main.s_Parity_Check\ : dffeas
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
	q => \r_SM_Main.s_Parity_Check~q\);

-- Location: LCCOMB_X28_Y6_N8
\r_Bit_Index[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bit_Index[1]~5_combout\ = (!\r_SM_Main.s_RX_Data_Bits~q\ & \r_SM_Main.s_Parity_Check~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_SM_Main.s_RX_Data_Bits~q\,
	datad => \r_SM_Main.s_Parity_Check~q\,
	combout => \r_Bit_Index[1]~5_combout\);

-- Location: LCCOMB_X31_Y6_N12
\r_Bit_Index[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bit_Index[1]~2_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & (r_Bit_Index(0) $ ((r_Bit_Index(1))))) # (!\r_SM_Main.s_RX_Data_Bits~q\ & (((\r_SM_Main.s_Parity_Check~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => \r_SM_Main.s_Parity_Check~q\,
	datad => \r_SM_Main.s_RX_Data_Bits~q\,
	combout => \r_Bit_Index[1]~2_combout\);

-- Location: LCCOMB_X31_Y6_N18
\r_Bit_Index[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bit_Index[1]~4_combout\ = (\r_Bit_Index[1]~3_combout\ & ((r_Bit_Index(1)))) # (!\r_Bit_Index[1]~3_combout\ & (\r_Bit_Index[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Bit_Index[1]~2_combout\,
	datac => r_Bit_Index(1),
	datad => \r_Bit_Index[1]~3_combout\,
	combout => \r_Bit_Index[1]~4_combout\);

-- Location: FF_X31_Y6_N19
\r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Bit_Index[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(1));

-- Location: LCCOMB_X31_Y6_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (r_Bit_Index(0) & r_Bit_Index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X31_Y6_N16
\r_Bit_Index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bit_Index~0_combout\ = (!r_Bit_Index(3) & (\LessThan2~2_combout\ & ((!\Add1~0_combout\) # (!r_Bit_Index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(3),
	datab => r_Bit_Index(2),
	datac => \LessThan2~2_combout\,
	datad => \Add1~0_combout\,
	combout => \r_Bit_Index~0_combout\);

-- Location: LCCOMB_X31_Y6_N0
\r_Bit_Index[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bit_Index[1]~3_combout\ = ((\r_SM_Main.s_RX_Data_Bits~q\ & !\r_Bit_Index~0_combout\)) # (!\r_Bit_Index[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => \r_Bit_Index[3]~1_combout\,
	datad => \r_Bit_Index~0_combout\,
	combout => \r_Bit_Index[1]~3_combout\);

-- Location: LCCOMB_X31_Y6_N10
\r_Bit_Index[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bit_Index[3]~6_combout\ = (\r_Bit_Index[1]~5_combout\ & ((\r_Bit_Index[3]~1_combout\) # ((r_Bit_Index(3) & \r_Bit_Index[1]~3_combout\)))) # (!\r_Bit_Index[1]~5_combout\ & (((r_Bit_Index(3) & \r_Bit_Index[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_Bit_Index[1]~5_combout\,
	datab => \r_Bit_Index[3]~1_combout\,
	datac => r_Bit_Index(3),
	datad => \r_Bit_Index[1]~3_combout\,
	combout => \r_Bit_Index[3]~6_combout\);

-- Location: FF_X31_Y6_N11
\r_Bit_Index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Bit_Index[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(3));

-- Location: LCCOMB_X31_Y6_N2
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\LessThan2~2_combout\ & ((r_Bit_Index(3)) # ((r_Bit_Index(2) & \Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(3),
	datab => r_Bit_Index(2),
	datac => \LessThan2~2_combout\,
	datad => \Add1~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X31_Y6_N28
\Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\r_CLK_Count[5]~11_combout\ & ((\r_RX_Data~q\) # ((\r_SM_Main.s_RX_Data_Bits~q\ & !\Selector16~0_combout\)))) # (!\r_CLK_Count[5]~11_combout\ & (((\r_SM_Main.s_RX_Data_Bits~q\ & !\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_CLK_Count[5]~11_combout\,
	datab => \r_RX_Data~q\,
	datac => \r_SM_Main.s_RX_Data_Bits~q\,
	datad => \Selector16~0_combout\,
	combout => \Selector16~1_combout\);

-- Location: FF_X31_Y6_N29
\r_SM_Main.s_RX_Data_Bits\ : dffeas
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
	q => \r_SM_Main.s_RX_Data_Bits~q\);

-- Location: LCCOMB_X31_Y6_N26
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (r_Bit_Index(0) & (((\r_SM_Main.s_RX_Data_Bits~q\ & !\r_Bit_Index~0_combout\)) # (!\r_Bit_Index[3]~1_combout\))) # (!r_Bit_Index(0) & (\r_SM_Main.s_RX_Data_Bits~q\ & ((\r_Bit_Index~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Data_Bits~q\,
	datab => \r_Bit_Index[3]~1_combout\,
	datac => r_Bit_Index(0),
	datad => \r_Bit_Index~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X31_Y6_N27
\r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(0));

-- Location: LCCOMB_X28_Y6_N6
\r_Bits_to_Wait~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bits_to_Wait~0_combout\ = \i_Parity_Sel[1]~input_o\ $ (!r_Bit_Index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_Parity_Sel[1]~input_o\,
	datad => r_Bit_Index(0),
	combout => \r_Bits_to_Wait~0_combout\);

-- Location: LCCOMB_X28_Y6_N0
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (r_Bit_Index(1) & (!r_Bit_Index(0) & (r_Bit_Index(3) & !r_Bit_Index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(0),
	datac => r_Bit_Index(3),
	datad => r_Bit_Index(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X28_Y6_N2
\r_Bits_to_Wait[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bits_to_Wait[3]~1_combout\ = (!\Equal1~0_combout\ & (\r_SM_Main.s_Error~q\ & \LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \r_SM_Main.s_Error~q\,
	datad => \LessThan2~2_combout\,
	combout => \r_Bits_to_Wait[3]~1_combout\);

-- Location: FF_X28_Y6_N7
\r_Bits_to_Wait[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Bits_to_Wait~0_combout\,
	ena => \r_Bits_to_Wait[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bits_to_Wait(0));

-- Location: LCCOMB_X28_Y6_N4
\r_Frame_Bit_Count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Frame_Bit_Count~0_combout\ = (\Equal2~1_combout\ & !r_Frame_Bit_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~1_combout\,
	datac => r_Frame_Bit_Count(0),
	combout => \r_Frame_Bit_Count~0_combout\);

-- Location: FF_X28_Y6_N5
\r_Frame_Bit_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Frame_Bit_Count~0_combout\,
	ena => \r_Bits_to_Wait[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Frame_Bit_Count(0));

-- Location: LCCOMB_X28_Y6_N30
\r_Bits_to_Wait~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bits_to_Wait~2_combout\ = r_Bit_Index(1) $ (((!r_Bit_Index(0)) # (!\i_Parity_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datac => r_Bit_Index(1),
	datad => r_Bit_Index(0),
	combout => \r_Bits_to_Wait~2_combout\);

-- Location: FF_X28_Y6_N31
\r_Bits_to_Wait[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Bits_to_Wait~2_combout\,
	ena => \r_Bits_to_Wait[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bits_to_Wait(1));

-- Location: LCCOMB_X28_Y6_N12
\r_Frame_Bit_Count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Frame_Bit_Count~1_combout\ = (\Equal2~1_combout\ & (r_Frame_Bit_Count(1) $ (r_Frame_Bit_Count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~1_combout\,
	datac => r_Frame_Bit_Count(1),
	datad => r_Frame_Bit_Count(0),
	combout => \r_Frame_Bit_Count~1_combout\);

-- Location: FF_X28_Y6_N13
\r_Frame_Bit_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Frame_Bit_Count~1_combout\,
	ena => \r_Bits_to_Wait[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Frame_Bit_Count(1));

-- Location: LCCOMB_X28_Y6_N10
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (r_Bits_to_Wait(0) & ((r_Bits_to_Wait(1) $ (r_Frame_Bit_Count(1))) # (!r_Frame_Bit_Count(0)))) # (!r_Bits_to_Wait(0) & ((r_Frame_Bit_Count(0)) # (r_Bits_to_Wait(1) $ (r_Frame_Bit_Count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bits_to_Wait(0),
	datab => r_Frame_Bit_Count(0),
	datac => r_Bits_to_Wait(1),
	datad => r_Frame_Bit_Count(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X28_Y6_N20
\r_Bits_to_Wait~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bits_to_Wait~3_combout\ = r_Bit_Index(3) $ (((\i_Parity_Sel[1]~input_o\ & (r_Bit_Index(2) & \Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(3),
	datad => \Add1~0_combout\,
	combout => \r_Bits_to_Wait~3_combout\);

-- Location: FF_X28_Y6_N21
\r_Bits_to_Wait[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Bits_to_Wait~3_combout\,
	ena => \r_Bits_to_Wait[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bits_to_Wait(3));

-- Location: LCCOMB_X28_Y6_N22
\r_Bits_to_Wait~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bits_to_Wait~4_combout\ = r_Bit_Index(2) $ ((((!r_Bit_Index(1)) # (!r_Bit_Index(0))) # (!\i_Parity_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => r_Bit_Index(0),
	datac => r_Bit_Index(1),
	datad => r_Bit_Index(2),
	combout => \r_Bits_to_Wait~4_combout\);

-- Location: FF_X28_Y6_N23
\r_Bits_to_Wait[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Bits_to_Wait~4_combout\,
	ena => \r_Bits_to_Wait[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bits_to_Wait(2));

-- Location: LCCOMB_X28_Y6_N28
\r_Frame_Bit_Count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Frame_Bit_Count~2_combout\ = (\Equal2~1_combout\ & (r_Frame_Bit_Count(2) $ (((r_Frame_Bit_Count(1) & r_Frame_Bit_Count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Frame_Bit_Count(1),
	datab => \Equal2~1_combout\,
	datac => r_Frame_Bit_Count(2),
	datad => r_Frame_Bit_Count(0),
	combout => \r_Frame_Bit_Count~2_combout\);

-- Location: FF_X28_Y6_N29
\r_Frame_Bit_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_Frame_Bit_Count~2_combout\,
	ena => \r_Bits_to_Wait[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Frame_Bit_Count(2));

-- Location: LCCOMB_X28_Y6_N14
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal2~0_combout\) # ((r_Bits_to_Wait(3)) # (r_Bits_to_Wait(2) $ (r_Frame_Bit_Count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => r_Bits_to_Wait(3),
	datac => r_Bits_to_Wait(2),
	datad => r_Frame_Bit_Count(2),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X28_Y6_N24
\Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\r_SM_Main.s_Rx_Stop_Bit~q\) # ((\r_SM_Main.s_Error~q\ & ((\Equal1~0_combout\) # (!\Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Error~q\,
	datab => \Equal2~1_combout\,
	datac => \r_SM_Main.s_Rx_Stop_Bit~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X30_Y6_N14
\Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (r_CLK_Count(8) & (\LessThan2~0_combout\ & (!\LessThan2~1_combout\ & \Selector19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(8),
	datab => \LessThan2~0_combout\,
	datac => \LessThan2~1_combout\,
	datad => \Selector19~2_combout\,
	combout => \Selector19~3_combout\);

-- Location: FF_X30_Y6_N15
\r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector19~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X30_Y6_N24
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\r_SM_Main.s_Cleanup~q\ & ((\r_RX_Data~q\) # ((!\r_CLK_Count[5]~11_combout\ & \r_SM_Main.s_Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Cleanup~q\,
	datab => \r_CLK_Count[5]~11_combout\,
	datac => \r_SM_Main.s_Idle~q\,
	datad => \r_RX_Data~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X30_Y6_N25
\r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X30_Y6_N10
\r_CLK_Count[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[5]~30_combout\ = (\r_SM_Main.s_Error~q\) # ((\r_SM_Main.s_Rx_Stop_Bit~q\) # (\r_SM_Main.s_RX_Data_Bits~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_Main.s_Error~q\,
	datac => \r_SM_Main.s_Rx_Stop_Bit~q\,
	datad => \r_SM_Main.s_RX_Data_Bits~q\,
	combout => \r_CLK_Count[5]~30_combout\);

-- Location: LCCOMB_X29_Y6_N28
\r_CLK_Count[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[5]~31_combout\ = \r_SM_Main.s_Idle~q\ $ (\r_CLK_Count[5]~11_combout\ $ (((!\r_CLK_Count[5]~30_combout\) # (!\LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \r_SM_Main.s_Idle~q\,
	datac => \r_CLK_Count[5]~30_combout\,
	datad => \r_CLK_Count[5]~11_combout\,
	combout => \r_CLK_Count[5]~31_combout\);

-- Location: LCCOMB_X29_Y6_N2
\r_CLK_Count[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[5]~32_combout\ = (!\r_CLK_Count[5]~10_combout\ & (!\r_SM_Main.s_Cleanup~q\ & ((\r_RX_Data~q\) # (!\r_CLK_Count[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datab => \r_CLK_Count[5]~10_combout\,
	datac => \r_SM_Main.s_Cleanup~q\,
	datad => \r_CLK_Count[5]~11_combout\,
	combout => \r_CLK_Count[5]~32_combout\);

-- Location: FF_X29_Y6_N9
\r_CLK_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[0]~12_combout\,
	sclr => \r_CLK_Count[5]~31_combout\,
	ena => \r_CLK_Count[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(0));

-- Location: LCCOMB_X29_Y6_N10
\r_CLK_Count[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[1]~14_combout\ = (r_CLK_Count(1) & (!\r_CLK_Count[0]~13\)) # (!r_CLK_Count(1) & ((\r_CLK_Count[0]~13\) # (GND)))
-- \r_CLK_Count[1]~15\ = CARRY((!\r_CLK_Count[0]~13\) # (!r_CLK_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(1),
	datad => VCC,
	cin => \r_CLK_Count[0]~13\,
	combout => \r_CLK_Count[1]~14_combout\,
	cout => \r_CLK_Count[1]~15\);

-- Location: FF_X29_Y6_N11
\r_CLK_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[1]~14_combout\,
	sclr => \r_CLK_Count[5]~31_combout\,
	ena => \r_CLK_Count[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(1));

-- Location: LCCOMB_X29_Y6_N12
\r_CLK_Count[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[2]~16_combout\ = (r_CLK_Count(2) & (\r_CLK_Count[1]~15\ $ (GND))) # (!r_CLK_Count(2) & (!\r_CLK_Count[1]~15\ & VCC))
-- \r_CLK_Count[2]~17\ = CARRY((r_CLK_Count(2) & !\r_CLK_Count[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(2),
	datad => VCC,
	cin => \r_CLK_Count[1]~15\,
	combout => \r_CLK_Count[2]~16_combout\,
	cout => \r_CLK_Count[2]~17\);

-- Location: FF_X29_Y6_N13
\r_CLK_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[2]~16_combout\,
	sclr => \r_CLK_Count[5]~31_combout\,
	ena => \r_CLK_Count[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(2));

-- Location: LCCOMB_X29_Y6_N14
\r_CLK_Count[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[3]~18_combout\ = (r_CLK_Count(3) & (!\r_CLK_Count[2]~17\)) # (!r_CLK_Count(3) & ((\r_CLK_Count[2]~17\) # (GND)))
-- \r_CLK_Count[3]~19\ = CARRY((!\r_CLK_Count[2]~17\) # (!r_CLK_Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(3),
	datad => VCC,
	cin => \r_CLK_Count[2]~17\,
	combout => \r_CLK_Count[3]~18_combout\,
	cout => \r_CLK_Count[3]~19\);

-- Location: FF_X29_Y6_N15
\r_CLK_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[3]~18_combout\,
	sclr => \r_CLK_Count[5]~31_combout\,
	ena => \r_CLK_Count[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(3));

-- Location: LCCOMB_X29_Y6_N16
\r_CLK_Count[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[4]~20_combout\ = (r_CLK_Count(4) & (\r_CLK_Count[3]~19\ $ (GND))) # (!r_CLK_Count(4) & (!\r_CLK_Count[3]~19\ & VCC))
-- \r_CLK_Count[4]~21\ = CARRY((r_CLK_Count(4) & !\r_CLK_Count[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(4),
	datad => VCC,
	cin => \r_CLK_Count[3]~19\,
	combout => \r_CLK_Count[4]~20_combout\,
	cout => \r_CLK_Count[4]~21\);

-- Location: FF_X29_Y6_N17
\r_CLK_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[4]~20_combout\,
	sclr => \r_CLK_Count[5]~31_combout\,
	ena => \r_CLK_Count[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(4));

-- Location: LCCOMB_X29_Y6_N18
\r_CLK_Count[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[5]~22_combout\ = (r_CLK_Count(5) & (!\r_CLK_Count[4]~21\)) # (!r_CLK_Count(5) & ((\r_CLK_Count[4]~21\) # (GND)))
-- \r_CLK_Count[5]~23\ = CARRY((!\r_CLK_Count[4]~21\) # (!r_CLK_Count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(5),
	datad => VCC,
	cin => \r_CLK_Count[4]~21\,
	combout => \r_CLK_Count[5]~22_combout\,
	cout => \r_CLK_Count[5]~23\);

-- Location: FF_X29_Y6_N19
\r_CLK_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[5]~22_combout\,
	sclr => \r_CLK_Count[5]~31_combout\,
	ena => \r_CLK_Count[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(5));

-- Location: LCCOMB_X29_Y6_N20
\r_CLK_Count[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[6]~24_combout\ = (r_CLK_Count(6) & (\r_CLK_Count[5]~23\ $ (GND))) # (!r_CLK_Count(6) & (!\r_CLK_Count[5]~23\ & VCC))
-- \r_CLK_Count[6]~25\ = CARRY((r_CLK_Count(6) & !\r_CLK_Count[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(6),
	datad => VCC,
	cin => \r_CLK_Count[5]~23\,
	combout => \r_CLK_Count[6]~24_combout\,
	cout => \r_CLK_Count[6]~25\);

-- Location: FF_X29_Y6_N21
\r_CLK_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[6]~24_combout\,
	sclr => \r_CLK_Count[5]~31_combout\,
	ena => \r_CLK_Count[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(6));

-- Location: LCCOMB_X29_Y6_N22
\r_CLK_Count[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[7]~26_combout\ = (r_CLK_Count(7) & (!\r_CLK_Count[6]~25\)) # (!r_CLK_Count(7) & ((\r_CLK_Count[6]~25\) # (GND)))
-- \r_CLK_Count[7]~27\ = CARRY((!\r_CLK_Count[6]~25\) # (!r_CLK_Count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(7),
	datad => VCC,
	cin => \r_CLK_Count[6]~25\,
	combout => \r_CLK_Count[7]~26_combout\,
	cout => \r_CLK_Count[7]~27\);

-- Location: FF_X29_Y6_N23
\r_CLK_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[7]~26_combout\,
	sclr => \r_CLK_Count[5]~31_combout\,
	ena => \r_CLK_Count[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(7));

-- Location: LCCOMB_X29_Y6_N24
\r_CLK_Count[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[8]~28_combout\ = \r_CLK_Count[7]~27\ $ (!r_CLK_Count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_CLK_Count(8),
	cin => \r_CLK_Count[7]~27\,
	combout => \r_CLK_Count[8]~28_combout\);

-- Location: FF_X29_Y6_N25
\r_CLK_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[8]~28_combout\,
	sclr => \r_CLK_Count[5]~31_combout\,
	ena => \r_CLK_Count[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(8));

-- Location: LCCOMB_X29_Y6_N26
\r_CLK_Count[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[5]~9_combout\ = (r_CLK_Count(8) & \r_SM_Main.s_Parity_Check~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(8),
	datad => \r_SM_Main.s_Parity_Check~q\,
	combout => \r_CLK_Count[5]~9_combout\);

-- Location: LCCOMB_X29_Y6_N0
\r_CLK_Count[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[5]~10_combout\ = (\r_CLK_Count[5]~9_combout\ & (\LessThan2~0_combout\ & ((r_CLK_Count(0)) # (!\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_CLK_Count[5]~9_combout\,
	datab => r_CLK_Count(0),
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~0_combout\,
	combout => \r_CLK_Count[5]~10_combout\);

-- Location: IOIBUF_X34_Y12_N8
\i_Parity_Sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Parity_Sel(0),
	o => \i_Parity_Sel[0]~input_o\);

-- Location: LCCOMB_X30_Y6_N8
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (r_CLK_Count(8) & (\r_SM_Main.s_RX_Data_Bits~q\ & (\LessThan2~0_combout\ & !\LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(8),
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X31_Y6_N24
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!r_Bit_Index(0) & (!r_Bit_Index(1) & (!r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X31_Y6_N22
\r_RX_Byte[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[0]~0_combout\ = (\Decoder0~1_combout\ & (!\r_RX_Data~q\)) # (!\Decoder0~1_combout\ & ((r_RX_Byte(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(0),
	datad => \Decoder0~1_combout\,
	combout => \r_RX_Byte[0]~0_combout\);

-- Location: FF_X31_Y6_N23
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

-- Location: LCCOMB_X31_Y6_N6
\p_UART_RX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_UART_RX~0_combout\ = r_RX_Byte(0) $ (\r_RX_Data~q\ $ (((\i_Parity_Sel[1]~input_o\) # (!\i_Parity_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[0]~input_o\,
	datab => \i_Parity_Sel[1]~input_o\,
	datac => r_RX_Byte(0),
	datad => \r_RX_Data~q\,
	combout => \p_UART_RX~0_combout\);

-- Location: LCCOMB_X33_Y6_N24
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (r_Bit_Index(1) & (!r_Bit_Index(0) & (!r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(0),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X33_Y6_N22
\r_RX_Byte[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[2]~2_combout\ = (\Decoder0~3_combout\ & (!\r_RX_Data~q\)) # (!\Decoder0~3_combout\ & ((r_RX_Byte(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(2),
	datad => \Decoder0~3_combout\,
	combout => \r_RX_Byte[2]~2_combout\);

-- Location: FF_X33_Y6_N23
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

-- Location: LCCOMB_X33_Y6_N10
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!r_Bit_Index(1) & (r_Bit_Index(0) & (!r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(0),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X33_Y6_N4
\r_RX_Byte[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[1]~1_combout\ = (\Decoder0~2_combout\ & (!\r_RX_Data~q\)) # (!\Decoder0~2_combout\ & ((r_RX_Byte(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(1),
	datad => \Decoder0~2_combout\,
	combout => \r_RX_Byte[1]~1_combout\);

-- Location: FF_X33_Y6_N5
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

-- Location: LCCOMB_X33_Y6_N28
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!r_Bit_Index(1) & (!r_Bit_Index(0) & (r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(0),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X33_Y6_N26
\r_RX_Byte[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[4]~4_combout\ = (\Decoder0~5_combout\ & (!\r_RX_Data~q\)) # (!\Decoder0~5_combout\ & ((r_RX_Byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(4),
	datad => \Decoder0~5_combout\,
	combout => \r_RX_Byte[4]~4_combout\);

-- Location: FF_X33_Y6_N27
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

-- Location: LCCOMB_X33_Y6_N6
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (r_Bit_Index(1) & (r_Bit_Index(0) & (!r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(0),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X33_Y6_N12
\r_RX_Byte[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[3]~3_combout\ = (\Decoder0~4_combout\ & (!\r_RX_Data~q\)) # (!\Decoder0~4_combout\ & ((r_RX_Byte(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(3),
	datad => \Decoder0~4_combout\,
	combout => \r_RX_Byte[3]~3_combout\);

-- Location: FF_X33_Y6_N13
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

-- Location: LCCOMB_X33_Y6_N8
\p_UART_RX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_UART_RX~1_combout\ = r_RX_Byte(2) $ (r_RX_Byte(1) $ (r_RX_Byte(4) $ (r_RX_Byte(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_RX_Byte(2),
	datab => r_RX_Byte(1),
	datac => r_RX_Byte(4),
	datad => r_RX_Byte(3),
	combout => \p_UART_RX~1_combout\);

-- Location: LCCOMB_X33_Y6_N18
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!r_Bit_Index(1) & (r_Bit_Index(0) & (r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(0),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X33_Y6_N20
\r_RX_Byte[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[5]~5_combout\ = (\Decoder0~6_combout\ & (!\r_RX_Data~q\)) # (!\Decoder0~6_combout\ & ((r_RX_Byte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(5),
	datad => \Decoder0~6_combout\,
	combout => \r_RX_Byte[5]~5_combout\);

-- Location: FF_X33_Y6_N21
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

-- Location: LCCOMB_X33_Y6_N0
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (r_Bit_Index(1) & (!r_Bit_Index(0) & (r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(0),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X33_Y6_N30
\r_RX_Byte[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[6]~6_combout\ = (\Decoder0~7_combout\ & (!\r_RX_Data~q\)) # (!\Decoder0~7_combout\ & ((r_RX_Byte(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(6),
	datad => \Decoder0~7_combout\,
	combout => \r_RX_Byte[6]~6_combout\);

-- Location: FF_X33_Y6_N31
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

-- Location: LCCOMB_X33_Y6_N2
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (r_Bit_Index(1) & (r_Bit_Index(0) & (r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(0),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X33_Y6_N16
\r_RX_Byte[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_RX_Byte[7]~7_combout\ = (\Decoder0~8_combout\ & (!\r_RX_Data~q\)) # (!\Decoder0~8_combout\ & ((r_RX_Byte(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(7),
	datad => \Decoder0~8_combout\,
	combout => \r_RX_Byte[7]~7_combout\);

-- Location: FF_X33_Y6_N17
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

-- Location: LCCOMB_X33_Y6_N14
\p_UART_RX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_UART_RX~2_combout\ = r_RX_Byte(5) $ (r_RX_Byte(6) $ (r_RX_Byte(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_RX_Byte(5),
	datac => r_RX_Byte(6),
	datad => r_RX_Byte(7),
	combout => \p_UART_RX~2_combout\);

-- Location: LCCOMB_X30_Y6_N28
\p_UART_RX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_UART_RX~3_combout\ = \p_UART_RX~0_combout\ $ (\p_UART_RX~1_combout\ $ (\p_UART_RX~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_UART_RX~0_combout\,
	datac => \p_UART_RX~1_combout\,
	datad => \p_UART_RX~2_combout\,
	combout => \p_UART_RX~3_combout\);

-- Location: LCCOMB_X28_Y6_N18
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\r_SM_Main.s_Error~q\ & (((!\Equal1~0_combout\ & \Equal2~1_combout\)) # (!\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Error~q\,
	datab => \Equal1~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X28_Y6_N26
\Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\Selector20~0_combout\) # ((\r_CLK_Count[5]~10_combout\ & \p_UART_RX~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_CLK_Count[5]~10_combout\,
	datac => \p_UART_RX~3_combout\,
	datad => \Selector20~0_combout\,
	combout => \Selector20~1_combout\);

-- Location: FF_X28_Y6_N27
\r_SM_Main.s_Error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Error~q\);

-- Location: LCCOMB_X31_Y6_N4
\r_Bit_Index[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Bit_Index[3]~1_combout\ = (!\r_SM_Main.s_Error~q\ & (!\r_SM_Main.s_Cleanup~q\ & !\r_SM_Main.s_RX_Start_Bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Error~q\,
	datab => \r_SM_Main.s_Cleanup~q\,
	datad => \r_SM_Main.s_RX_Start_Bit~q\,
	combout => \r_Bit_Index[3]~1_combout\);

-- Location: LCCOMB_X31_Y6_N20
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & (r_Bit_Index(2) $ (((\Add1~0_combout\ & \r_Bit_Index~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => r_Bit_Index(2),
	datad => \r_Bit_Index~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X31_Y6_N30
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector11~0_combout\) # ((!\r_Bit_Index[3]~1_combout\ & r_Bit_Index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_Bit_Index[3]~1_combout\,
	datac => r_Bit_Index(2),
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: FF_X31_Y6_N31
\r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(2));

-- Location: LCCOMB_X30_Y6_N20
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Decoder0~0_combout\ & ((r_Bit_Index(3)) # ((r_Bit_Index(2) & \Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => \Add1~0_combout\,
	datac => \Decoder0~0_combout\,
	datad => r_Bit_Index(3),
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X30_Y6_N2
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\r_SM_Main.s_Rx_Stop_Bit~q\ & (((!\p_UART_RX~3_combout\ & \r_CLK_Count[5]~10_combout\)) # (!\LessThan2~2_combout\))) # (!\r_SM_Main.s_Rx_Stop_Bit~q\ & (!\p_UART_RX~3_combout\ & (\r_CLK_Count[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Rx_Stop_Bit~q\,
	datab => \p_UART_RX~3_combout\,
	datac => \r_CLK_Count[5]~10_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X30_Y6_N30
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector17~0_combout\) # ((\i_Parity_Sel[1]~input_o\ & \Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Parity_Sel[1]~input_o\,
	datac => \Selector18~0_combout\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: FF_X30_Y6_N31
\r_SM_Main.s_Rx_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Rx_Stop_Bit~q\);

-- Location: LCCOMB_X28_Y6_N16
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\r_RX_Done~q\ & ((\r_SM_Main.s_Rx_Stop_Bit~q\) # ((\r_SM_Main.s_Idle~q\ & !\r_SM_Main.s_Cleanup~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Rx_Stop_Bit~q\,
	datab => \r_SM_Main.s_Idle~q\,
	datac => \r_RX_Done~q\,
	datad => \r_SM_Main.s_Cleanup~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X30_Y6_N4
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\r_SM_Main.s_Rx_Stop_Bit~q\ & \LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Rx_Stop_Bit~q\,
	datac => \Selector0~0_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X30_Y6_N5
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

-- Location: LCCOMB_X31_Y6_N14
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\r_SM_Main.s_Error~q\) # ((!\r_SM_Main.s_Cleanup~q\ & \r_RX_Error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Error~q\,
	datab => \r_SM_Main.s_Cleanup~q\,
	datac => \r_RX_Error~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X31_Y6_N15
r_RX_Error : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Error~q\);

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


