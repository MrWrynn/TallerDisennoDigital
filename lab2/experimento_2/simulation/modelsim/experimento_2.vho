-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "08/22/2023 10:51:55"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FPGAInterface IS
    PORT (
	sum : OUT std_logic_vector(6 DOWNTO 0);
	carryOut : OUT std_logic_vector(6 DOWNTO 0);
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	carryIn : IN std_logic
	);
END FPGAInterface;

-- Design Ports Information
-- sum[0]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryOut[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryOut[1]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryOut[2]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryOut[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryOut[4]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryOut[5]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryOut[6]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryIn	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FPGAInterface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sum : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_carryOut : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_carryIn : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \carryIn~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \adder|adderBit0|sum~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \adder|adderBit1|sum~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \adder|adderBit1|carryOut~0_combout\ : std_logic;
SIGNAL \adder|adderBit3|sum~0_combout\ : std_logic;
SIGNAL \adder|adderBit2|sum~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \adder|adderBit3|carryOut~0_combout\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_carryIn~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \adder|adderBit3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \adder|adderBit2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \adder|adderBit1|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \adder|adderBit1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \adder|adderBit0|ALT_INV_sum~0_combout\ : std_logic;

BEGIN

sum <= ww_sum;
carryOut <= ww_carryOut;
ww_a <= a;
ww_b <= b;
ww_carryIn <= carryIn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_carryIn~input_o\ <= NOT \carryIn~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\adder|adderBit3|ALT_INV_sum~0_combout\ <= NOT \adder|adderBit3|sum~0_combout\;
\adder|adderBit2|ALT_INV_sum~0_combout\ <= NOT \adder|adderBit2|sum~0_combout\;
\adder|adderBit1|ALT_INV_carryOut~0_combout\ <= NOT \adder|adderBit1|carryOut~0_combout\;
\adder|adderBit1|ALT_INV_sum~0_combout\ <= NOT \adder|adderBit1|sum~0_combout\;
\adder|adderBit0|ALT_INV_sum~0_combout\ <= NOT \adder|adderBit0|sum~0_combout\;

-- Location: IOOBUF_X89_Y4_N96
\sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(0));

-- Location: IOOBUF_X89_Y13_N39
\sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(1));

-- Location: IOOBUF_X89_Y13_N56
\sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(2));

-- Location: IOOBUF_X89_Y4_N79
\sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(3));

-- Location: IOOBUF_X89_Y11_N96
\sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(4));

-- Location: IOOBUF_X89_Y11_N79
\sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(5));

-- Location: IOOBUF_X89_Y8_N39
\sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(6));

-- Location: IOOBUF_X89_Y8_N56
\carryOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_carryOut(0));

-- Location: IOOBUF_X89_Y15_N56
\carryOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|adderBit3|carryOut~0_combout\,
	devoe => ww_devoe,
	o => ww_carryOut(1));

-- Location: IOOBUF_X89_Y15_N39
\carryOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|adderBit3|carryOut~0_combout\,
	devoe => ww_devoe,
	o => ww_carryOut(2));

-- Location: IOOBUF_X89_Y16_N56
\carryOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|adderBit3|carryOut~0_combout\,
	devoe => ww_devoe,
	o => ww_carryOut(3));

-- Location: IOOBUF_X89_Y16_N39
\carryOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_carryOut(4));

-- Location: IOOBUF_X89_Y6_N56
\carryOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_carryOut(5));

-- Location: IOOBUF_X89_Y6_N39
\carryOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|adderBit3|carryOut~0_combout\,
	devoe => ww_devoe,
	o => ww_carryOut(6));

-- Location: IOIBUF_X2_Y0_N58
\carryIn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carryIn,
	o => \carryIn~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LABCELL_X18_Y2_N0
\adder|adderBit0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adderBit0|sum~0_combout\ = ( \b[0]~input_o\ & ( \a[0]~input_o\ & ( \carryIn~input_o\ ) ) ) # ( !\b[0]~input_o\ & ( \a[0]~input_o\ & ( !\carryIn~input_o\ ) ) ) # ( \b[0]~input_o\ & ( !\a[0]~input_o\ & ( !\carryIn~input_o\ ) ) ) # ( !\b[0]~input_o\ & 
-- ( !\a[0]~input_o\ & ( \carryIn~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_carryIn~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \adder|adderBit0|sum~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X18_Y2_N9
\adder|adderBit1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adderBit1|sum~0_combout\ = ( \b[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\carryIn~input_o\) # (\a[0]~input_o\))) ) ) ) # ( !\b[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\a[0]~input_o\ & \carryIn~input_o\))) ) ) ) # ( 
-- \b[0]~input_o\ & ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\a[0]~input_o\ & !\carryIn~input_o\))) ) ) ) # ( !\b[0]~input_o\ & ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\a[0]~input_o\) # (!\carryIn~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010010111111010000011111010000001011010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_carryIn~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \adder|adderBit1|sum~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X18_Y2_N12
\adder|adderBit1|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adderBit1|carryOut~0_combout\ = ( \b[0]~input_o\ & ( \b[1]~input_o\ & ( ((\a[0]~input_o\) # (\carryIn~input_o\)) # (\a[1]~input_o\) ) ) ) # ( !\b[0]~input_o\ & ( \b[1]~input_o\ & ( ((\carryIn~input_o\ & \a[0]~input_o\)) # (\a[1]~input_o\) ) ) ) # ( 
-- \b[0]~input_o\ & ( !\b[1]~input_o\ & ( (\a[1]~input_o\ & ((\a[0]~input_o\) # (\carryIn~input_o\))) ) ) ) # ( !\b[0]~input_o\ & ( !\b[1]~input_o\ & ( (\a[1]~input_o\ & (\carryIn~input_o\ & \a[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000101010001010101010111010101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_carryIn~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \adder|adderBit1|carryOut~0_combout\);

-- Location: LABCELL_X18_Y2_N54
\adder|adderBit3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adderBit3|sum~0_combout\ = ( \b[3]~input_o\ & ( \adder|adderBit1|carryOut~0_combout\ & ( !\a[3]~input_o\ $ (((\b[2]~input_o\) # (\a[2]~input_o\))) ) ) ) # ( !\b[3]~input_o\ & ( \adder|adderBit1|carryOut~0_combout\ & ( !\a[3]~input_o\ $ 
-- (((!\a[2]~input_o\ & !\b[2]~input_o\))) ) ) ) # ( \b[3]~input_o\ & ( !\adder|adderBit1|carryOut~0_combout\ & ( !\a[3]~input_o\ $ (((\a[2]~input_o\ & \b[2]~input_o\))) ) ) ) # ( !\b[3]~input_o\ & ( !\adder|adderBit1|carryOut~0_combout\ & ( !\a[3]~input_o\ 
-- $ (((!\a[2]~input_o\) # (!\b[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110110010011100100101101100011011001001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \adder|adderBit1|ALT_INV_carryOut~0_combout\,
	combout => \adder|adderBit3|sum~0_combout\);

-- Location: LABCELL_X18_Y2_N51
\adder|adderBit2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adderBit2|sum~0_combout\ = ( \b[2]~input_o\ & ( \adder|adderBit1|carryOut~0_combout\ & ( \a[2]~input_o\ ) ) ) # ( !\b[2]~input_o\ & ( \adder|adderBit1|carryOut~0_combout\ & ( !\a[2]~input_o\ ) ) ) # ( \b[2]~input_o\ & ( 
-- !\adder|adderBit1|carryOut~0_combout\ & ( !\a[2]~input_o\ ) ) ) # ( !\b[2]~input_o\ & ( !\adder|adderBit1|carryOut~0_combout\ & ( \a[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \adder|adderBit1|ALT_INV_carryOut~0_combout\,
	combout => \adder|adderBit2|sum~0_combout\);

-- Location: LABCELL_X18_Y2_N30
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \adder|adderBit2|sum~0_combout\ & ( (!\adder|adderBit0|sum~0_combout\ & ((!\adder|adderBit3|sum~0_combout\) # (\adder|adderBit1|sum~0_combout\))) # (\adder|adderBit0|sum~0_combout\ & ((!\adder|adderBit1|sum~0_combout\) # 
-- (\adder|adderBit3|sum~0_combout\))) ) ) # ( !\adder|adderBit2|sum~0_combout\ & ( (\adder|adderBit3|sum~0_combout\) # (\adder|adderBit1|sum~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111100111111001111110011111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderBit0|ALT_INV_sum~0_combout\,
	datab => \adder|adderBit1|ALT_INV_sum~0_combout\,
	datac => \adder|adderBit3|ALT_INV_sum~0_combout\,
	dataf => \adder|adderBit2|ALT_INV_sum~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X18_Y2_N33
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \adder|adderBit2|sum~0_combout\ & ( (\adder|adderBit0|sum~0_combout\ & (!\adder|adderBit1|sum~0_combout\ $ (!\adder|adderBit3|sum~0_combout\))) ) ) # ( !\adder|adderBit2|sum~0_combout\ & ( (!\adder|adderBit3|sum~0_combout\ & 
-- ((\adder|adderBit1|sum~0_combout\) # (\adder|adderBit0|sum~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderBit0|ALT_INV_sum~0_combout\,
	datac => \adder|adderBit1|ALT_INV_sum~0_combout\,
	datad => \adder|adderBit3|ALT_INV_sum~0_combout\,
	dataf => \adder|adderBit2|ALT_INV_sum~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X18_Y2_N39
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \adder|adderBit2|sum~0_combout\ & ( (!\adder|adderBit3|sum~0_combout\ & ((!\adder|adderBit1|sum~0_combout\) # (\adder|adderBit0|sum~0_combout\))) ) ) # ( !\adder|adderBit2|sum~0_combout\ & ( (\adder|adderBit0|sum~0_combout\ & 
-- ((!\adder|adderBit1|sum~0_combout\) # (!\adder|adderBit3|sum~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010011011101000000001101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderBit0|ALT_INV_sum~0_combout\,
	datab => \adder|adderBit1|ALT_INV_sum~0_combout\,
	datad => \adder|adderBit3|ALT_INV_sum~0_combout\,
	dataf => \adder|adderBit2|ALT_INV_sum~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X18_Y2_N36
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \adder|adderBit2|sum~0_combout\ & ( (!\adder|adderBit1|sum~0_combout\ & (!\adder|adderBit0|sum~0_combout\ & !\adder|adderBit3|sum~0_combout\)) # (\adder|adderBit1|sum~0_combout\ & (\adder|adderBit0|sum~0_combout\)) ) ) # ( 
-- !\adder|adderBit2|sum~0_combout\ & ( (!\adder|adderBit1|sum~0_combout\ & (\adder|adderBit0|sum~0_combout\ & !\adder|adderBit3|sum~0_combout\)) # (\adder|adderBit1|sum~0_combout\ & (!\adder|adderBit0|sum~0_combout\ & \adder|adderBit3|sum~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \adder|adderBit1|ALT_INV_sum~0_combout\,
	datac => \adder|adderBit0|ALT_INV_sum~0_combout\,
	datad => \adder|adderBit3|ALT_INV_sum~0_combout\,
	dataf => \adder|adderBit2|ALT_INV_sum~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X18_Y2_N42
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \adder|adderBit2|sum~0_combout\ & ( (\adder|adderBit3|sum~0_combout\ & ((!\adder|adderBit0|sum~0_combout\) # (\adder|adderBit1|sum~0_combout\))) ) ) # ( !\adder|adderBit2|sum~0_combout\ & ( (\adder|adderBit1|sum~0_combout\ & 
-- (!\adder|adderBit0|sum~0_combout\ & !\adder|adderBit3|sum~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \adder|adderBit1|ALT_INV_sum~0_combout\,
	datac => \adder|adderBit0|ALT_INV_sum~0_combout\,
	datad => \adder|adderBit3|ALT_INV_sum~0_combout\,
	dataf => \adder|adderBit2|ALT_INV_sum~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X18_Y2_N45
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \adder|adderBit2|sum~0_combout\ & ( (!\adder|adderBit0|sum~0_combout\ & ((\adder|adderBit3|sum~0_combout\) # (\adder|adderBit1|sum~0_combout\))) # (\adder|adderBit0|sum~0_combout\ & (!\adder|adderBit1|sum~0_combout\ $ 
-- (\adder|adderBit3|sum~0_combout\))) ) ) # ( !\adder|adderBit2|sum~0_combout\ & ( (\adder|adderBit0|sum~0_combout\ & (\adder|adderBit1|sum~0_combout\ & \adder|adderBit3|sum~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderBit0|ALT_INV_sum~0_combout\,
	datab => \adder|adderBit1|ALT_INV_sum~0_combout\,
	datad => \adder|adderBit3|ALT_INV_sum~0_combout\,
	dataf => \adder|adderBit2|ALT_INV_sum~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X18_Y2_N18
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \adder|adderBit0|sum~0_combout\ & ( (!\adder|adderBit3|sum~0_combout\ & (!\adder|adderBit2|sum~0_combout\ & !\adder|adderBit1|sum~0_combout\)) # (\adder|adderBit3|sum~0_combout\ & (!\adder|adderBit2|sum~0_combout\ $ 
-- (!\adder|adderBit1|sum~0_combout\))) ) ) # ( !\adder|adderBit0|sum~0_combout\ & ( (!\adder|adderBit3|sum~0_combout\ & (\adder|adderBit2|sum~0_combout\ & !\adder|adderBit1|sum~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000101001010101000000001010000000001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderBit3|ALT_INV_sum~0_combout\,
	datac => \adder|adderBit2|ALT_INV_sum~0_combout\,
	datad => \adder|adderBit1|ALT_INV_sum~0_combout\,
	datae => \adder|adderBit0|ALT_INV_sum~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X18_Y2_N27
\adder|adderBit3|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adderBit3|carryOut~0_combout\ = ( \b[3]~input_o\ & ( \adder|adderBit1|carryOut~0_combout\ & ( ((\a[2]~input_o\) # (\a[3]~input_o\)) # (\b[2]~input_o\) ) ) ) # ( !\b[3]~input_o\ & ( \adder|adderBit1|carryOut~0_combout\ & ( (\a[3]~input_o\ & 
-- ((\a[2]~input_o\) # (\b[2]~input_o\))) ) ) ) # ( \b[3]~input_o\ & ( !\adder|adderBit1|carryOut~0_combout\ & ( ((\b[2]~input_o\ & \a[2]~input_o\)) # (\a[3]~input_o\) ) ) ) # ( !\b[3]~input_o\ & ( !\adder|adderBit1|carryOut~0_combout\ & ( (\b[2]~input_o\ & 
-- (\a[3]~input_o\ & \a[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000011110101111100000101000011110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \adder|adderBit1|ALT_INV_carryOut~0_combout\,
	combout => \adder|adderBit3|carryOut~0_combout\);

-- Location: LABCELL_X50_Y27_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


