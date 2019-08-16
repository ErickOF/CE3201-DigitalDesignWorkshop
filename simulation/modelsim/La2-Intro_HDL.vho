-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "08/15/2019 20:32:17"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fulladder4bits_w_display IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Y : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END fulladder4bits_w_display;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fulladder4bits_w_display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \fulladder4bit|bit3|sum~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \fulladder4bit|bit1|sum~combout\ : std_logic;
SIGNAL \fulladder4bit|bit1|c_out~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \fulladder4bit|bit0|sum~0_combout\ : std_logic;
SIGNAL \display|U7~0_combout\ : std_logic;
SIGNAL \display|U6~0_combout\ : std_logic;
SIGNAL \display|U5~0_combout\ : std_logic;
SIGNAL \display|U4~0_combout\ : std_logic;
SIGNAL \display|U3~0_combout\ : std_logic;
SIGNAL \display|U2~0_combout\ : std_logic;
SIGNAL \display|U1~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \display|ALT_INV_U1~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_U2~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_U3~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_U4~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_U5~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_U6~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_U7~0_combout\ : std_logic;
SIGNAL \fulladder4bit|bit0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \fulladder4bit|bit3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \fulladder4bit|bit1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \fulladder4bit|bit1|ALT_INV_c_out~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\display|ALT_INV_U1~0_combout\ <= NOT \display|U1~0_combout\;
\display|ALT_INV_U2~0_combout\ <= NOT \display|U2~0_combout\;
\display|ALT_INV_U3~0_combout\ <= NOT \display|U3~0_combout\;
\display|ALT_INV_U4~0_combout\ <= NOT \display|U4~0_combout\;
\display|ALT_INV_U5~0_combout\ <= NOT \display|U5~0_combout\;
\display|ALT_INV_U6~0_combout\ <= NOT \display|U6~0_combout\;
\display|ALT_INV_U7~0_combout\ <= NOT \display|U7~0_combout\;
\fulladder4bit|bit0|ALT_INV_sum~0_combout\ <= NOT \fulladder4bit|bit0|sum~0_combout\;
\fulladder4bit|bit3|ALT_INV_sum~0_combout\ <= NOT \fulladder4bit|bit3|sum~0_combout\;
\fulladder4bit|bit1|ALT_INV_sum~combout\ <= NOT \fulladder4bit|bit1|sum~combout\;
\fulladder4bit|bit1|ALT_INV_c_out~0_combout\ <= NOT \fulladder4bit|bit1|c_out~0_combout\;

-- Location: IOOBUF_X89_Y20_N45
\Y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_U7~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(0));

-- Location: IOOBUF_X89_Y23_N39
\Y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_U6~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(1));

-- Location: IOOBUF_X89_Y23_N22
\Y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_U5~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(2));

-- Location: IOOBUF_X89_Y25_N22
\Y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_U4~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(3));

-- Location: IOOBUF_X89_Y23_N56
\Y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_U3~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(4));

-- Location: IOOBUF_X89_Y23_N5
\Y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_U2~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(5));

-- Location: IOOBUF_X89_Y20_N79
\Y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_U1~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(6));

-- Location: IOIBUF_X89_Y25_N38
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X88_Y21_N15
\fulladder4bit|bit3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladder4bit|bit3|sum~0_combout\ = ( \A[3]~input_o\ & ( !\B[3]~input_o\ ) ) # ( !\A[3]~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \fulladder4bit|bit3|sum~0_combout\);

-- Location: IOIBUF_X89_Y21_N21
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X88_Y21_N9
\fulladder4bit|bit1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladder4bit|bit1|sum~combout\ = ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (\B[0]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010010101011010010110100101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	combout => \fulladder4bit|bit1|sum~combout\);

-- Location: LABCELL_X88_Y21_N30
\fulladder4bit|bit1|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladder4bit|bit1|c_out~0_combout\ = ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)) # (\B[0]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\A[1]~input_o\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000101110001011100000011000000110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	combout => \fulladder4bit|bit1|c_out~0_combout\);

-- Location: IOIBUF_X89_Y21_N38
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X88_Y21_N12
\fulladder4bit|bit0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladder4bit|bit0|sum~0_combout\ = !\B[0]~input_o\ $ (!\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	combout => \fulladder4bit|bit0|sum~0_combout\);

-- Location: LABCELL_X88_Y21_N48
\display|U7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U7~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( (!\A[2]~input_o\ & ((!\fulladder4bit|bit3|sum~0_combout\ & ((!\fulladder4bit|bit1|sum~combout\) # (\fulladder4bit|bit1|c_out~0_combout\))) # 
-- (\fulladder4bit|bit3|sum~0_combout\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # (\fulladder4bit|bit1|sum~combout\))))) # (\A[2]~input_o\ & ((!\fulladder4bit|bit3|sum~0_combout\) # (!\fulladder4bit|bit1|sum~combout\ $ 
-- (!\fulladder4bit|bit1|c_out~0_combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( (!\A[2]~input_o\ & ((!\fulladder4bit|bit1|sum~combout\ $ (!\fulladder4bit|bit1|c_out~0_combout\)) # (\fulladder4bit|bit3|sum~0_combout\))) # 
-- (\A[2]~input_o\ & ((!\fulladder4bit|bit3|sum~0_combout\ & ((!\fulladder4bit|bit1|sum~combout\) # (\fulladder4bit|bit1|c_out~0_combout\))) # (\fulladder4bit|bit3|sum~0_combout\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # 
-- (\fulladder4bit|bit1|sum~combout\))))) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit3|sum~0_combout\ $ (((\A[2]~input_o\ & \fulladder4bit|bit1|c_out~0_combout\)))) # (\fulladder4bit|bit1|sum~combout\) ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit3|sum~0_combout\ $ (((!\A[2]~input_o\ & !\fulladder4bit|bit1|c_out~0_combout\)))) # (\fulladder4bit|bit1|sum~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111111001111110011111001111101111011111001111110011111011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	combout => \display|U7~0_combout\);

-- Location: LABCELL_X88_Y21_N54
\display|U6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U6~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( !\fulladder4bit|bit3|sum~0_combout\ $ (((!\A[2]~input_o\ & (\fulladder4bit|bit1|sum~combout\ & !\fulladder4bit|bit1|c_out~0_combout\)) # (\A[2]~input_o\ & 
-- (!\fulladder4bit|bit1|sum~combout\ & \fulladder4bit|bit1|c_out~0_combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( !\fulladder4bit|bit3|sum~0_combout\ $ (((!\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # 
-- (\fulladder4bit|bit1|sum~combout\))) # (\A[2]~input_o\ & (\fulladder4bit|bit1|sum~combout\ & !\fulladder4bit|bit1|c_out~0_combout\)))) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit3|sum~0_combout\) # 
-- (!\A[2]~input_o\ $ (\fulladder4bit|bit1|c_out~0_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( (!\A[2]~input_o\ & ((\fulladder4bit|bit1|c_out~0_combout\) # (\fulladder4bit|bit3|sum~0_combout\))) # (\A[2]~input_o\ & 
-- ((!\fulladder4bit|bit3|sum~0_combout\) # (!\fulladder4bit|bit1|c_out~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111101110111011101101110101100011110001101100011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	combout => \display|U6~0_combout\);

-- Location: LABCELL_X88_Y21_N0
\display|U5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U5~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( (!\A[2]~input_o\ & ((!\fulladder4bit|bit3|sum~0_combout\ & (\fulladder4bit|bit1|sum~combout\ & \fulladder4bit|bit1|c_out~0_combout\)) # 
-- (\fulladder4bit|bit3|sum~0_combout\ & ((!\fulladder4bit|bit1|c_out~0_combout\))))) # (\A[2]~input_o\ & (!\fulladder4bit|bit3|sum~0_combout\ & ((\fulladder4bit|bit1|c_out~0_combout\) # (\fulladder4bit|bit1|sum~combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( 
-- \fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit1|sum~combout\ & (\fulladder4bit|bit3|sum~0_combout\ & (!\A[2]~input_o\ $ (!\fulladder4bit|bit1|c_out~0_combout\)))) # (\fulladder4bit|bit1|sum~combout\ & (!\fulladder4bit|bit3|sum~0_combout\ $ 
-- (((!\A[2]~input_o\) # (!\fulladder4bit|bit1|c_out~0_combout\))))) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit3|sum~0_combout\ $ (((!\A[2]~input_o\ & !\fulladder4bit|bit1|c_out~0_combout\)))) # 
-- (\fulladder4bit|bit1|sum~combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit3|sum~0_combout\ $ (((!\A[2]~input_o\) # (!\fulladder4bit|bit1|c_out~0_combout\)))) # (\fulladder4bit|bit1|sum~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101101111011011111100111100010011001001100010011001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	combout => \display|U5~0_combout\);

-- Location: LABCELL_X88_Y21_N36
\display|U4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U4~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( !\A[2]~input_o\ $ (!\fulladder4bit|bit1|sum~combout\ $ (!\fulladder4bit|bit1|c_out~0_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( 
-- !\A[2]~input_o\ $ (!\fulladder4bit|bit1|sum~combout\ $ (\fulladder4bit|bit1|c_out~0_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit1|sum~combout\ & (!\fulladder4bit|bit3|sum~0_combout\ $ 
-- (((!\A[2]~input_o\ & !\fulladder4bit|bit1|c_out~0_combout\))))) # (\fulladder4bit|bit1|sum~combout\ & ((!\A[2]~input_o\ $ (\fulladder4bit|bit1|c_out~0_combout\)) # (\fulladder4bit|bit3|sum~0_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit3|sum~0_combout\ & (!\fulladder4bit|bit1|sum~combout\ $ (((!\A[2]~input_o\) # (!\fulladder4bit|bit1|c_out~0_combout\))))) # (\fulladder4bit|bit3|sum~0_combout\ & ((!\A[2]~input_o\ & 
-- ((!\fulladder4bit|bit1|sum~combout\) # (\fulladder4bit|bit1|c_out~0_combout\))) # (\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # (\fulladder4bit|bit1|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110101101011011010111100011101011010101001011010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	combout => \display|U4~0_combout\);

-- Location: LABCELL_X88_Y21_N42
\display|U3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit1|sum~combout\) # ((!\A[2]~input_o\ & ((!\fulladder4bit|bit3|sum~0_combout\) # (\fulladder4bit|bit1|c_out~0_combout\))) # (\A[2]~input_o\ & 
-- ((!\fulladder4bit|bit1|c_out~0_combout\) # (\fulladder4bit|bit3|sum~0_combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit3|sum~0_combout\) # ((!\fulladder4bit|bit1|sum~combout\) # (!\A[2]~input_o\ $ 
-- (\fulladder4bit|bit1|c_out~0_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( !\fulladder4bit|bit3|sum~0_combout\ $ (((\A[2]~input_o\ & \fulladder4bit|bit1|c_out~0_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\fulladder4bit|bit0|sum~0_combout\ & ( !\fulladder4bit|bit3|sum~0_combout\ $ (((!\A[2]~input_o\ & !\fulladder4bit|bit1|c_out~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011001100110011001001100111111110111111011111110111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	combout => \display|U3~0_combout\);

-- Location: LABCELL_X88_Y21_N18
\display|U2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U2~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit3|sum~0_combout\ & (!\fulladder4bit|bit1|sum~combout\ $ (((!\A[2]~input_o\ & !\fulladder4bit|bit1|c_out~0_combout\))))) # 
-- (\fulladder4bit|bit3|sum~0_combout\ & ((!\A[2]~input_o\ & ((!\fulladder4bit|bit1|sum~combout\) # (\fulladder4bit|bit1|c_out~0_combout\))) # (\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # (\fulladder4bit|bit1|sum~combout\))))) ) ) ) # ( 
-- !\B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit1|sum~combout\ & ((!\A[2]~input_o\ $ (\fulladder4bit|bit1|c_out~0_combout\)) # (\fulladder4bit|bit3|sum~0_combout\))) # (\fulladder4bit|bit1|sum~combout\ & 
-- (!\fulladder4bit|bit3|sum~0_combout\ $ (((\A[2]~input_o\ & \fulladder4bit|bit1|c_out~0_combout\))))) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit1|sum~combout\ & (!\fulladder4bit|bit3|sum~0_combout\ $ 
-- (((\A[2]~input_o\ & \fulladder4bit|bit1|c_out~0_combout\))))) # (\fulladder4bit|bit1|sum~combout\ & (!\A[2]~input_o\ $ (((!\fulladder4bit|bit1|c_out~0_combout\))))) ) ) ) # ( !\B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( 
-- (!\fulladder4bit|bit1|sum~combout\ & (!\fulladder4bit|bit3|sum~0_combout\ $ (((!\A[2]~input_o\ & !\fulladder4bit|bit1|c_out~0_combout\))))) # (\fulladder4bit|bit1|sum~combout\ & (!\A[2]~input_o\ $ (((\fulladder4bit|bit1|c_out~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101011000101110001011001101010111100011110010111100111100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	combout => \display|U2~0_combout\);

-- Location: LABCELL_X88_Y21_N24
\display|U1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U1~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit1|sum~combout\ & (!\fulladder4bit|bit3|sum~0_combout\ $ (((\A[2]~input_o\ & \fulladder4bit|bit1|c_out~0_combout\))))) # 
-- (\fulladder4bit|bit1|sum~combout\ & ((!\A[2]~input_o\ $ (\fulladder4bit|bit1|c_out~0_combout\)) # (\fulladder4bit|bit3|sum~0_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit3|sum~0_combout\ & 
-- ((!\A[2]~input_o\ & ((\fulladder4bit|bit1|c_out~0_combout\) # (\fulladder4bit|bit1|sum~combout\))) # (\A[2]~input_o\ & ((!\fulladder4bit|bit1|sum~combout\) # (!\fulladder4bit|bit1|c_out~0_combout\))))) # (\fulladder4bit|bit3|sum~0_combout\ & 
-- (!\fulladder4bit|bit1|sum~combout\ $ (((\fulladder4bit|bit1|c_out~0_combout\) # (\A[2]~input_o\))))) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit3|sum~0_combout\ $ (((!\A[2]~input_o\ & 
-- !\fulladder4bit|bit1|c_out~0_combout\)))) # (\fulladder4bit|bit1|sum~combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\fulladder4bit|bit0|sum~0_combout\ & ( (!\fulladder4bit|bit3|sum~0_combout\ $ (((!\A[2]~input_o\) # (!\fulladder4bit|bit1|c_out~0_combout\)))) # 
-- (\fulladder4bit|bit1|sum~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101101111011011111100111101101101110010111100101110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	combout => \display|U1~0_combout\);

-- Location: LABCELL_X43_Y62_N0
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


