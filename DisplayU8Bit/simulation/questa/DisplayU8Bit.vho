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

-- DATE "09/25/2023 00:48:41"

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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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

ENTITY 	DisplayU8Bit IS
    PORT (
	i_CLK : IN std_logic;
	i_Number : IN std_logic_vector(7 DOWNTO 0);
	o_Displays : BUFFER std_logic_vector(3 DOWNTO 0);
	o_Segments : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END DisplayU8Bit;

-- Design Ports Information
-- i_Number[0]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[1]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[2]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[3]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[4]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[5]	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[6]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_Number[7]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- o_Displays[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_Displays[1]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_Displays[2]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_Displays[3]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_Segments[0]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_Segments[1]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_Segments[2]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_Segments[3]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_Segments[4]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_Segments[5]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_Segments[6]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- i_CLK	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF DisplayU8Bit IS
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
SIGNAL ww_i_Number : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_Displays : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_Segments : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_Number[0]~input_o\ : std_logic;
SIGNAL \i_Number[1]~input_o\ : std_logic;
SIGNAL \i_Number[2]~input_o\ : std_logic;
SIGNAL \i_Number[3]~input_o\ : std_logic;
SIGNAL \i_Number[4]~input_o\ : std_logic;
SIGNAL \i_Number[5]~input_o\ : std_logic;
SIGNAL \i_Number[6]~input_o\ : std_logic;
SIGNAL \i_Number[7]~input_o\ : std_logic;
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
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \r_Sel[0]~1_combout\ : std_logic;
SIGNAL \r_Sel[1]~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL r_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL r_Count : std_logic_vector(16 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_Number <= i_Number;
o_Displays <= ww_o_Displays;
o_Segments <= ww_o_Segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X13_Y0_N2
\o_Segments[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Segments[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\o_Segments[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\o_Segments[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\o_Segments[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\o_Segments[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\o_Segments[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\o_Segments[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[6]~output_o\);

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

-- Location: LCCOMB_X2_Y3_N16
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

-- Location: FF_X2_Y3_N17
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

-- Location: LCCOMB_X2_Y3_N18
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

-- Location: FF_X2_Y3_N19
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

-- Location: LCCOMB_X2_Y3_N20
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

-- Location: FF_X2_Y3_N21
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

-- Location: LCCOMB_X2_Y3_N22
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

-- Location: FF_X2_Y3_N23
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

-- Location: LCCOMB_X2_Y3_N24
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

-- Location: FF_X2_Y3_N25
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

-- Location: LCCOMB_X2_Y3_N26
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

-- Location: FF_X2_Y3_N27
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

-- Location: LCCOMB_X2_Y3_N28
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

-- Location: FF_X2_Y3_N29
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

-- Location: LCCOMB_X2_Y3_N30
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

-- Location: FF_X2_Y3_N31
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

-- Location: LCCOMB_X2_Y2_N0
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

-- Location: FF_X2_Y2_N1
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

-- Location: LCCOMB_X2_Y2_N2
\r_Count[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[9]~35_combout\ = (r_Count(9) & (!\r_Count[8]~34\)) # (!r_Count(9) & ((\r_Count[8]~34\) # (GND)))
-- \r_Count[9]~36\ = CARRY((!\r_Count[8]~34\) # (!r_Count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(9),
	datad => VCC,
	cin => \r_Count[8]~34\,
	combout => \r_Count[9]~35_combout\,
	cout => \r_Count[9]~36\);

-- Location: LCCOMB_X2_Y3_N8
\r_Count[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[9]~feeder_combout\ = \r_Count[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_Count[9]~35_combout\,
	combout => \r_Count[9]~feeder_combout\);

-- Location: FF_X2_Y3_N9
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

-- Location: LCCOMB_X2_Y2_N4
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

-- Location: LCCOMB_X2_Y3_N10
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

-- Location: FF_X2_Y3_N11
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

-- Location: LCCOMB_X2_Y2_N6
\r_Count[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[11]~39_combout\ = (r_Count(11) & (!\r_Count[10]~38\)) # (!r_Count(11) & ((\r_Count[10]~38\) # (GND)))
-- \r_Count[11]~40\ = CARRY((!\r_Count[10]~38\) # (!r_Count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(11),
	datad => VCC,
	cin => \r_Count[10]~38\,
	combout => \r_Count[11]~39_combout\,
	cout => \r_Count[11]~40\);

-- Location: FF_X2_Y2_N7
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

-- Location: LCCOMB_X2_Y2_N8
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

-- Location: FF_X2_Y2_N9
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

-- Location: LCCOMB_X2_Y2_N10
\r_Count[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Count[13]~43_combout\ = (r_Count(13) & (!\r_Count[12]~42\)) # (!r_Count(13) & ((\r_Count[12]~42\) # (GND)))
-- \r_Count[13]~44\ = CARRY((!\r_Count[12]~42\) # (!r_Count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(13),
	datad => VCC,
	cin => \r_Count[12]~42\,
	combout => \r_Count[13]~43_combout\,
	cout => \r_Count[13]~44\);

-- Location: FF_X2_Y2_N11
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

-- Location: LCCOMB_X2_Y2_N12
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

-- Location: FF_X2_Y2_N13
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

-- Location: LCCOMB_X2_Y2_N14
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

-- Location: FF_X2_Y2_N15
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

-- Location: LCCOMB_X2_Y2_N16
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

-- Location: FF_X2_Y2_N17
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

-- Location: LCCOMB_X2_Y3_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!r_Count(5) & (!r_Count(6) & !r_Count(8)))) # (!r_Count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(5),
	datab => r_Count(6),
	datac => r_Count(9),
	datad => r_Count(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y3_N14
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((\LessThan0~0_combout\) # ((!r_Count(8) & !r_Count(7)))) # (!r_Count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(10),
	datab => r_Count(8),
	datac => r_Count(7),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y2_N22
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!r_Count(13) & (!r_Count(12) & (!r_Count(11) & !r_Count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(13),
	datab => r_Count(12),
	datac => r_Count(11),
	datad => r_Count(14),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X2_Y3_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (r_Count(15) & (r_Count(16) & ((!\LessThan0~2_combout\) # (!\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Count(15),
	datab => r_Count(16),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X2_Y3_N2
\r_Sel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Sel[0]~1_combout\ = \LessThan0~3_combout\ $ (r_Sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datac => r_Sel(0),
	combout => \r_Sel[0]~1_combout\);

-- Location: FF_X2_Y3_N3
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

-- Location: LCCOMB_X2_Y3_N12
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

-- Location: FF_X2_Y3_N13
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

-- Location: LCCOMB_X1_Y3_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (r_Sel(0)) # (r_Sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Sel(0),
	datac => r_Sel(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y3_N26
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (r_Sel(1)) # (!r_Sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Sel(0),
	datac => r_Sel(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y3_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (r_Sel(0)) # (!r_Sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Sel(0),
	datac => r_Sel(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y3_N14
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!r_Sel(1)) # (!r_Sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Sel(0),
	datac => r_Sel(1),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X34_Y12_N8
\i_Number[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(0),
	o => \i_Number[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\i_Number[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(1),
	o => \i_Number[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\i_Number[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(2),
	o => \i_Number[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\i_Number[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(3),
	o => \i_Number[3]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\i_Number[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(4),
	o => \i_Number[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\i_Number[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(5),
	o => \i_Number[5]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\i_Number[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(6),
	o => \i_Number[6]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\i_Number[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Number(7),
	o => \i_Number[7]~input_o\);

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
END structure;


