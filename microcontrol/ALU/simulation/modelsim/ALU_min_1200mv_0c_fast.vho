-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/27/2024 16:29:25"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	NZVC : OUT std_logic_vector(3 DOWNTO 0);
	Result : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- NZVC[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[0]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \Result[7]~output_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Add2~19_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Add2~31_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Add2~29_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Add2~27_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Add2~33_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
NZVC <= ww_NZVC;
Result <= ww_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X30_Y0_N2
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~3_combout\,
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X41_Y8_N9
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~19_combout\,
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\Result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~34_combout\,
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\Result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~35_combout\,
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\Result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~24_combout\,
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\Result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~26_combout\,
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\Result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~28_combout\,
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\Result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~30_combout\,
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\Result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~32_combout\,
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\Result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~19_combout\,
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

-- Location: IOIBUF_X41_Y5_N8
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X41_Y6_N22
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X41_Y5_N1
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X30_Y29_N22
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X29_Y5_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & ((\B[0]~input_o\) # (GND)))
-- \Add0~1\ = CARRY((\B[0]~input_o\) # (!\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X29_Y5_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add0~1\)) # (!\A[1]~input_o\ & (\Add0~1\ & VCC)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & ((\Add0~1\) # (GND))) # (!\A[1]~input_o\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\B[1]~input_o\ & (\A[1]~input_o\ & !\Add0~1\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X29_Y5_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\Add0~3\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X29_Y5_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (!\Add0~5\)) # (!\A[3]~input_o\ & (\Add0~5\ & VCC)))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & ((\Add0~5\) # (GND))) # (!\A[3]~input_o\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\Add0~5\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X29_Y5_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\B[4]~input_o\ & ((!\Add0~7\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X29_Y5_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (!\Add0~9\)) # (!\A[5]~input_o\ & (\Add0~9\ & VCC)))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & ((\Add0~9\) # (GND))) # (!\A[5]~input_o\ & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\B[5]~input_o\ & (\A[5]~input_o\ & !\Add0~9\)) # (!\B[5]~input_o\ & ((\A[5]~input_o\) # (!\Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X29_Y5_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\A[6]~input_o\ & (\B[6]~input_o\ & !\Add0~11\)) # (!\A[6]~input_o\ & ((\B[6]~input_o\) # (!\Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X29_Y5_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\ & (!\Add0~13\)) # (!\A[7]~input_o\ & (\Add0~13\ & VCC)))) # (!\B[7]~input_o\ & ((\A[7]~input_o\ & ((\Add0~13\) # (GND))) # (!\A[7]~input_o\ & (!\Add0~13\))))
-- \Add0~15\ = CARRY((\B[7]~input_o\ & (\A[7]~input_o\ & !\Add0~13\)) # (!\B[7]~input_o\ & ((\A[7]~input_o\) # (!\Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X29_Y5_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X30_Y6_N4
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add3~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X30_Y6_N6
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add3~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add3~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add3~1\)) # (!\A[1]~input_o\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add3~1\)) # (!\B[1]~input_o\ & ((!\Add3~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X30_Y6_N8
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add3~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X30_Y6_N10
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\Add3~5\ & VCC)) # (!\B[3]~input_o\ & (!\Add3~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Add3~5\)) # (!\B[3]~input_o\ & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\Add3~5\)) # (!\A[3]~input_o\ & ((!\Add3~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X30_Y6_N12
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\A[4]~input_o\ & ((\B[4]~input_o\) # (!\Add3~7\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X30_Y6_N14
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (\Add3~9\ & VCC)) # (!\A[5]~input_o\ & (!\Add3~9\)))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (!\Add3~9\)) # (!\A[5]~input_o\ & ((\Add3~9\) # (GND)))))
-- \Add3~11\ = CARRY((\B[5]~input_o\ & (!\A[5]~input_o\ & !\Add3~9\)) # (!\B[5]~input_o\ & ((!\Add3~9\) # (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X30_Y6_N16
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (!\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((\B[6]~input_o\ & ((\A[6]~input_o\) # (!\Add3~11\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X30_Y6_N18
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\ & (\Add3~13\ & VCC)) # (!\B[7]~input_o\ & (!\Add3~13\)))) # (!\A[7]~input_o\ & ((\B[7]~input_o\ & (!\Add3~13\)) # (!\B[7]~input_o\ & ((\Add3~13\) # (GND)))))
-- \Add3~15\ = CARRY((\A[7]~input_o\ & (!\B[7]~input_o\ & !\Add3~13\)) # (!\A[7]~input_o\ & ((!\Add3~13\) # (!\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X30_Y6_N20
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = !\Add3~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add3~15\,
	combout => \Add3~16_combout\);

-- Location: IOIBUF_X41_Y5_N15
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: IOIBUF_X26_Y29_N8
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X41_Y7_N22
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: LCCOMB_X30_Y7_N0
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X30_Y7_N18
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux2~0_combout\ & ((\ALU_Sel[0]~input_o\ & (\Add0~16_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\Add3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add3~16_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X30_Y7_N4
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\ALU_Sel[2]~input_o\ & \ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X30_Y5_N10
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \A[0]~input_o\ $ (VCC)
-- \Add1~1\ = CARRY(\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X30_Y5_N12
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\A[1]~input_o\ & (!\Add1~1\)) # (!\A[1]~input_o\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X30_Y5_N14
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\A[2]~input_o\ & (\Add1~3\ $ (GND))) # (!\A[2]~input_o\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\A[2]~input_o\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X30_Y5_N16
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\A[3]~input_o\ & (!\Add1~5\)) # (!\A[3]~input_o\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X30_Y5_N18
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\A[4]~input_o\ & (\Add1~7\ $ (GND))) # (!\A[4]~input_o\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\A[4]~input_o\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X30_Y5_N20
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\A[5]~input_o\ & (!\Add1~9\)) # (!\A[5]~input_o\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X30_Y5_N22
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\A[6]~input_o\ & (\Add1~11\ $ (GND))) # (!\A[6]~input_o\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\A[6]~input_o\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X30_Y5_N24
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A[7]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X30_Y7_N14
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\ALU_Sel[2]~input_o\) # ((\ALU_Sel[0]~input_o\ & \ALU_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X29_Y5_N18
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux2~1_combout\ & (((\Mux2~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux2~2_combout\ & ((\Add1~14_combout\))) # (!\Mux2~2_combout\ & (\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add1~14_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X29_Y5_N20
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\B[7]~input_o\ & ((\Mux1~0_combout\) # ((\A[7]~input_o\ & \Mux2~1_combout\)))) # (!\B[7]~input_o\ & (\Mux1~0_combout\ & ((\A[7]~input_o\) # (!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X30_Y7_N26
\Add2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~17_combout\ = (\ALU_Sel[2]~input_o\ & (\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Add2~17_combout\);

-- Location: LCCOMB_X29_Y6_N12
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \A[0]~input_o\ $ (VCC)
-- \Add2~1\ = CARRY(\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X29_Y6_N14
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\A[1]~input_o\ & (\Add2~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add2~1\))
-- \Add2~3\ = CARRY((!\A[1]~input_o\ & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X29_Y6_N16
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\A[2]~input_o\ & ((GND) # (!\Add2~3\))) # (!\A[2]~input_o\ & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((\A[2]~input_o\) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X29_Y6_N18
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\A[3]~input_o\ & (\Add2~5\ & VCC)) # (!\A[3]~input_o\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((!\A[3]~input_o\ & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X29_Y6_N20
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\A[4]~input_o\ & ((GND) # (!\Add2~7\))) # (!\A[4]~input_o\ & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((\A[4]~input_o\) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X29_Y6_N22
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\A[5]~input_o\ & (\Add2~9\ & VCC)) # (!\A[5]~input_o\ & (!\Add2~9\))
-- \Add2~11\ = CARRY((!\A[5]~input_o\ & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X29_Y6_N24
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\A[6]~input_o\ & ((GND) # (!\Add2~11\))) # (!\A[6]~input_o\ & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((\A[6]~input_o\) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X29_Y6_N26
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \A[7]~input_o\ $ (!\Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X30_Y7_N24
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = \ALU_Sel[2]~input_o\ $ (((\ALU_Sel[0]~input_o\) # (\ALU_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X29_Y6_N0
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Mux1~1_combout\ & ((\Add2~16_combout\) # ((\Add2~17_combout\ & \Add2~14_combout\)))) # (!\Mux1~1_combout\ & (\Add2~17_combout\ & (\Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Add2~17_combout\,
	datac => \Add2~14_combout\,
	datad => \Add2~16_combout\,
	combout => \Add2~18_combout\);

-- Location: LCCOMB_X30_Y7_N28
\Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\ALU_Sel[2]~input_o\ & ((\ALU_Sel[1]~input_o\))) # (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X30_Y8_N16
\Add2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~19_combout\ = (\Add2~18_combout\) # ((\Add3~14_combout\ & \Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \Add2~18_combout\,
	datac => \Mux2~3_combout\,
	combout => \Add2~19_combout\);

-- Location: LCCOMB_X29_Y5_N22
\Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\A[7]~input_o\ & (!\Add2~19_combout\ & (\B[7]~input_o\ $ (\ALU_Sel[0]~input_o\)))) # (!\A[7]~input_o\ & (\Add2~19_combout\ & (\B[7]~input_o\ $ (!\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \Add2~19_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X30_Y7_N30
\Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~2_combout\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X29_Y5_N24
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\Mux2~1_combout\ & (((\Mux2~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux2~2_combout\ & (\Add1~2_combout\)) # (!\Mux2~2_combout\ & ((\Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add0~2_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~2_combout\,
	combout => \Add2~20_combout\);

-- Location: LCCOMB_X29_Y5_N26
\Add2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~21_combout\ = (\B[1]~input_o\ & ((\Add2~20_combout\) # ((\A[1]~input_o\ & \Mux2~1_combout\)))) # (!\B[1]~input_o\ & (\Add2~20_combout\ & ((\A[1]~input_o\) # (!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \Mux2~1_combout\,
	datad => \Add2~20_combout\,
	combout => \Add2~21_combout\);

-- Location: LCCOMB_X29_Y6_N10
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Add2~21_combout\ & ((\Add2~16_combout\) # ((\Add2~17_combout\ & \Add2~2_combout\)))) # (!\Add2~21_combout\ & (\Add2~17_combout\ & (\Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~21_combout\,
	datab => \Add2~17_combout\,
	datac => \Add2~2_combout\,
	datad => \Add2~16_combout\,
	combout => \Add2~22_combout\);

-- Location: LCCOMB_X30_Y5_N0
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux2~2_combout\ & (((\Mux2~1_combout\) # (\Add1~4_combout\)))) # (!\Mux2~2_combout\ & (\Add0~4_combout\ & (!\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Add0~4_combout\,
	datac => \Mux2~1_combout\,
	datad => \Add1~4_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X30_Y6_N24
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\A[2]~input_o\ & ((\Mux6~0_combout\) # ((\B[2]~input_o\ & \Mux2~1_combout\)))) # (!\A[2]~input_o\ & (\Mux6~0_combout\ & ((\B[2]~input_o\) # (!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X29_Y6_N4
\Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = (\Add2~16_combout\ & ((\Mux6~1_combout\) # ((\Add2~17_combout\ & \Add2~4_combout\)))) # (!\Add2~16_combout\ & (((\Add2~17_combout\ & \Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Mux6~1_combout\,
	datac => \Add2~17_combout\,
	datad => \Add2~4_combout\,
	combout => \Add2~23_combout\);

-- Location: LCCOMB_X30_Y8_N10
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\Add2~23_combout\) # ((\Add3~4_combout\ & \Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~23_combout\,
	datab => \Add3~4_combout\,
	datac => \Mux2~3_combout\,
	combout => \Add2~24_combout\);

-- Location: LCCOMB_X30_Y8_N12
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add2~22_combout\ & (!\Add2~24_combout\ & ((!\Mux2~3_combout\) # (!\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \Add3~2_combout\,
	datac => \Mux2~3_combout\,
	datad => \Add2~24_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y5_N26
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux2~2_combout\ & ((\Add1~6_combout\) # ((\Mux2~1_combout\)))) # (!\Mux2~2_combout\ & (((!\Mux2~1_combout\ & \Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Add1~6_combout\,
	datac => \Mux2~1_combout\,
	datad => \Add0~6_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X30_Y5_N4
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & ((\A[3]~input_o\) # ((\B[3]~input_o\) # (!\Mux2~1_combout\)))) # (!\Mux5~0_combout\ & (\A[3]~input_o\ & (\Mux2~1_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \A[3]~input_o\,
	datac => \Mux2~1_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X29_Y6_N6
\Add2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~25_combout\ = (\Mux5~1_combout\ & ((\Add2~16_combout\) # ((\Add2~6_combout\ & \Add2~17_combout\)))) # (!\Mux5~1_combout\ & (\Add2~6_combout\ & (\Add2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~17_combout\,
	datad => \Add2~16_combout\,
	combout => \Add2~25_combout\);

-- Location: LCCOMB_X30_Y6_N2
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Add2~25_combout\) # ((\Add3~6_combout\ & \Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Mux2~3_combout\,
	datac => \Add2~25_combout\,
	combout => \Add2~26_combout\);

-- Location: LCCOMB_X29_Y5_N28
\Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux2~1_combout\ & (((\Mux2~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux2~2_combout\ & ((\Add1~12_combout\))) # (!\Mux2~2_combout\ & (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add1~12_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X29_Y5_N30
\Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\A[6]~input_o\ & ((\Mux2~4_combout\) # ((\Mux2~1_combout\ & \B[6]~input_o\)))) # (!\A[6]~input_o\ & (\Mux2~4_combout\ & ((\B[6]~input_o\) # (!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Mux2~4_combout\,
	datac => \Mux2~1_combout\,
	datad => \B[6]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X29_Y6_N28
\Add2~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~31_combout\ = (\Add2~16_combout\ & ((\Mux2~5_combout\) # ((\Add2~12_combout\ & \Add2~17_combout\)))) # (!\Add2~16_combout\ & (\Add2~12_combout\ & (\Add2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~12_combout\,
	datac => \Add2~17_combout\,
	datad => \Mux2~5_combout\,
	combout => \Add2~31_combout\);

-- Location: LCCOMB_X30_Y6_N28
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\Add2~31_combout\) # ((\Add3~12_combout\ & \Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~31_combout\,
	datab => \Add3~12_combout\,
	datac => \Mux2~3_combout\,
	combout => \Add2~32_combout\);

-- Location: LCCOMB_X30_Y5_N8
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux2~1_combout\ & (((\Mux2~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux2~2_combout\ & ((\Add1~10_combout\))) # (!\Mux2~2_combout\ & (\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux2~2_combout\,
	datad => \Add1~10_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X30_Y5_N2
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\A[5]~input_o\ & ((\Mux3~0_combout\) # ((\Mux2~1_combout\ & \B[5]~input_o\)))) # (!\A[5]~input_o\ & (\Mux3~0_combout\ & ((\B[5]~input_o\) # (!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \Mux2~1_combout\,
	datad => \B[5]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X29_Y6_N2
\Add2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~29_combout\ = (\Add2~10_combout\ & ((\Add2~17_combout\) # ((\Mux3~1_combout\ & \Add2~16_combout\)))) # (!\Add2~10_combout\ & (\Mux3~1_combout\ & ((\Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Mux3~1_combout\,
	datac => \Add2~17_combout\,
	datad => \Add2~16_combout\,
	combout => \Add2~29_combout\);

-- Location: LCCOMB_X30_Y6_N26
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Add2~29_combout\) # ((\Mux2~3_combout\ & \Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~3_combout\,
	datac => \Add3~10_combout\,
	datad => \Add2~29_combout\,
	combout => \Add2~30_combout\);

-- Location: LCCOMB_X30_Y5_N30
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux2~1_combout\ & (((\Mux2~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux2~2_combout\ & ((\Add1~8_combout\))) # (!\Mux2~2_combout\ & (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux2~2_combout\,
	datad => \Add1~8_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X30_Y6_N22
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\B[4]~input_o\) # (\A[4]~input_o\)) # (!\Mux2~1_combout\))) # (!\Mux4~0_combout\ & (\Mux2~1_combout\ & (\B[4]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X29_Y6_N8
\Add2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~27_combout\ = (\Add2~16_combout\ & ((\Mux4~1_combout\) # ((\Add2~8_combout\ & \Add2~17_combout\)))) # (!\Add2~16_combout\ & (\Add2~8_combout\ & (\Add2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~8_combout\,
	datac => \Add2~17_combout\,
	datad => \Mux4~1_combout\,
	combout => \Add2~27_combout\);

-- Location: LCCOMB_X30_Y6_N0
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Add2~27_combout\) # ((\Mux2~3_combout\ & \Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~27_combout\,
	datac => \Mux2~3_combout\,
	datad => \Add3~8_combout\,
	combout => \Add2~28_combout\);

-- Location: LCCOMB_X30_Y6_N30
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add2~26_combout\ & (!\Add2~32_combout\ & (!\Add2~30_combout\ & !\Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \Add2~32_combout\,
	datac => \Add2~30_combout\,
	datad => \Add2~28_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y5_N28
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux2~1_combout\ & (((\Mux2~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux2~2_combout\ & ((\Add1~0_combout\))) # (!\Mux2~2_combout\ & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux2~2_combout\,
	datad => \Add1~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X30_Y5_N6
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\A[0]~input_o\ & ((\Mux8~0_combout\) # ((\B[0]~input_o\ & \Mux2~1_combout\)))) # (!\A[0]~input_o\ & (\Mux8~0_combout\ & ((\B[0]~input_o\) # (!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Mux2~1_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X29_Y6_N30
\Add2~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~33_combout\ = (\Add2~0_combout\ & ((\Add2~17_combout\) # ((\Mux8~1_combout\ & \Add2~16_combout\)))) # (!\Add2~0_combout\ & (\Mux8~1_combout\ & ((\Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Mux8~1_combout\,
	datac => \Add2~17_combout\,
	datad => \Add2~16_combout\,
	combout => \Add2~33_combout\);

-- Location: LCCOMB_X30_Y8_N6
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Add2~33_combout\) # ((\Mux2~3_combout\ & \Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~33_combout\,
	datac => \Mux2~3_combout\,
	datad => \Add3~0_combout\,
	combout => \Add2~34_combout\);

-- Location: LCCOMB_X30_Y8_N0
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (!\Add2~19_combout\ & (\Equal0~1_combout\ & !\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Add2~19_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add2~34_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X30_Y8_N2
\Add2~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~35_combout\ = (\Add2~22_combout\) # ((\Add3~2_combout\ & \Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datac => \Mux2~3_combout\,
	datad => \Add2~22_combout\,
	combout => \Add2~35_combout\);

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;

ww_Result(7) <= \Result[7]~output_o\;
END structure;


