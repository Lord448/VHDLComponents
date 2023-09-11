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

-- DATE "09/11/2023 16:28:14"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCDto7Segs IS
    PORT (
	DPEN : IN std_logic;
	CEN : IN std_logic;
	NUM : IN std_logic_vector(3 DOWNTO 0);
	DISP : OUT std_logic_vector(6 DOWNTO 0);
	DISPEN : OUT std_logic;
	POINTEN : OUT std_logic
	);
END BCDto7Segs;

-- Design Ports Information
-- DISP[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[2]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[3]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[4]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[5]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[6]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPEN	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POINTEN	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM[2]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEN	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DPEN	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCDto7Segs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DPEN : std_logic;
SIGNAL ww_CEN : std_logic;
SIGNAL ww_NUM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DISP : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISPEN : std_logic;
SIGNAL ww_POINTEN : std_logic;
SIGNAL \DISP[0]~output_o\ : std_logic;
SIGNAL \DISP[1]~output_o\ : std_logic;
SIGNAL \DISP[2]~output_o\ : std_logic;
SIGNAL \DISP[3]~output_o\ : std_logic;
SIGNAL \DISP[4]~output_o\ : std_logic;
SIGNAL \DISP[5]~output_o\ : std_logic;
SIGNAL \DISP[6]~output_o\ : std_logic;
SIGNAL \DISPEN~output_o\ : std_logic;
SIGNAL \POINTEN~output_o\ : std_logic;
SIGNAL \NUM[3]~input_o\ : std_logic;
SIGNAL \NUM[2]~input_o\ : std_logic;
SIGNAL \NUM[1]~input_o\ : std_logic;
SIGNAL \NUM[0]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \CEN~input_o\ : std_logic;
SIGNAL \DPEN~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_CEN~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DPEN <= DPEN;
ww_CEN <= CEN;
ww_NUM <= NUM;
DISP <= ww_DISP;
DISPEN <= ww_DISPEN;
POINTEN <= ww_POINTEN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_CEN~input_o\ <= NOT \CEN~input_o\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\DISP[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DISP[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\DISP[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DISP[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\DISP[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DISP[2]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\DISP[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DISP[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\DISP[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DISP[4]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\DISP[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DISP[5]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\DISP[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DISP[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\DISPEN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_CEN~input_o\,
	devoe => ww_devoe,
	o => \DISPEN~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\POINTEN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPEN~input_o\,
	devoe => ww_devoe,
	o => \POINTEN~output_o\);

-- Location: IOIBUF_X7_Y24_N8
\NUM[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUM(3),
	o => \NUM[3]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\NUM[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUM(2),
	o => \NUM[2]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\NUM[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUM(1),
	o => \NUM[1]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\NUM[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NUM(0),
	o => \NUM[0]~input_o\);

-- Location: LCCOMB_X7_Y20_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\NUM[3]~input_o\) # ((\NUM[2]~input_o\ & ((!\NUM[0]~input_o\) # (!\NUM[1]~input_o\))) # (!\NUM[2]~input_o\ & (\NUM[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NUM[3]~input_o\,
	datab => \NUM[2]~input_o\,
	datac => \NUM[1]~input_o\,
	datad => \NUM[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X7_Y20_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\NUM[3]~input_o\ & (\NUM[2]~input_o\ & (!\NUM[1]~input_o\))) # (!\NUM[3]~input_o\ & ((\NUM[2]~input_o\ & (\NUM[1]~input_o\ & \NUM[0]~input_o\)) # (!\NUM[2]~input_o\ & ((\NUM[1]~input_o\) # (\NUM[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NUM[3]~input_o\,
	datab => \NUM[2]~input_o\,
	datac => \NUM[1]~input_o\,
	datad => \NUM[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X7_Y20_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\NUM[1]~input_o\ & (!\NUM[3]~input_o\ & ((\NUM[0]~input_o\)))) # (!\NUM[1]~input_o\ & ((\NUM[2]~input_o\ & (!\NUM[3]~input_o\)) # (!\NUM[2]~input_o\ & ((\NUM[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NUM[3]~input_o\,
	datab => \NUM[2]~input_o\,
	datac => \NUM[1]~input_o\,
	datad => \NUM[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X7_Y20_N6
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\NUM[0]~input_o\ & ((\NUM[2]~input_o\ $ (!\NUM[1]~input_o\)))) # (!\NUM[0]~input_o\ & ((\NUM[3]~input_o\ & (!\NUM[2]~input_o\ & \NUM[1]~input_o\)) # (!\NUM[3]~input_o\ & (\NUM[2]~input_o\ & !\NUM[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NUM[3]~input_o\,
	datab => \NUM[2]~input_o\,
	datac => \NUM[1]~input_o\,
	datad => \NUM[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X7_Y20_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\NUM[3]~input_o\ & (\NUM[2]~input_o\ & (\NUM[1]~input_o\ $ (!\NUM[0]~input_o\)))) # (!\NUM[3]~input_o\ & (!\NUM[2]~input_o\ & (\NUM[1]~input_o\ & !\NUM[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NUM[3]~input_o\,
	datab => \NUM[2]~input_o\,
	datac => \NUM[1]~input_o\,
	datad => \NUM[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X7_Y20_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\NUM[3]~input_o\ & ((\NUM[0]~input_o\ & ((\NUM[1]~input_o\))) # (!\NUM[0]~input_o\ & (\NUM[2]~input_o\)))) # (!\NUM[3]~input_o\ & (\NUM[2]~input_o\ & (\NUM[1]~input_o\ $ (\NUM[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NUM[3]~input_o\,
	datab => \NUM[2]~input_o\,
	datac => \NUM[1]~input_o\,
	datad => \NUM[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X7_Y20_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\NUM[3]~input_o\ & (\NUM[2]~input_o\ $ (((\NUM[1]~input_o\ & \NUM[0]~input_o\))))) # (!\NUM[3]~input_o\ & (!\NUM[1]~input_o\ & (\NUM[2]~input_o\ $ (\NUM[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NUM[3]~input_o\,
	datab => \NUM[2]~input_o\,
	datac => \NUM[1]~input_o\,
	datad => \NUM[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\CEN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CEN,
	o => \CEN~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\DPEN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DPEN,
	o => \DPEN~input_o\);

ww_DISP(0) <= \DISP[0]~output_o\;

ww_DISP(1) <= \DISP[1]~output_o\;

ww_DISP(2) <= \DISP[2]~output_o\;

ww_DISP(3) <= \DISP[3]~output_o\;

ww_DISP(4) <= \DISP[4]~output_o\;

ww_DISP(5) <= \DISP[5]~output_o\;

ww_DISP(6) <= \DISP[6]~output_o\;

ww_DISPEN <= \DISPEN~output_o\;

ww_POINTEN <= \POINTEN~output_o\;
END structure;


