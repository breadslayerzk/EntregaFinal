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

-- DATE "05/27/2024 16:36:22"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control_unit IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	IR_Load : OUT std_logic;
	IR : IN std_logic_vector(7 DOWNTO 0);
	MAR_Load : OUT std_logic;
	PC_Load : OUT std_logic;
	PC_Inc : OUT std_logic;
	A_Load : OUT std_logic;
	B_Load : OUT std_logic;
	ALU_Sel : OUT std_logic_vector(2 DOWNTO 0);
	CCR_Result : IN std_logic_vector(3 DOWNTO 0);
	CCR_Load : OUT std_logic;
	Bus2_Sel : OUT std_logic_vector(1 DOWNTO 0);
	Bus1_Sel : OUT std_logic_vector(1 DOWNTO 0);
	write : OUT std_logic
	);
END control_unit;

-- Design Ports Information
-- IR_Load	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_Load	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Load	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Inc	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Load	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Load	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Load	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus2_Sel[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus2_Sel[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1_Sel[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1_Sel[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_IR_Load : std_logic;
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MAR_Load : std_logic;
SIGNAL ww_PC_Load : std_logic;
SIGNAL ww_PC_Inc : std_logic;
SIGNAL ww_A_Load : std_logic;
SIGNAL ww_B_Load : std_logic;
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CCR_Result : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CCR_Load : std_logic;
SIGNAL ww_Bus2_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Bus1_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_write : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector26~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IR_Load~output_o\ : std_logic;
SIGNAL \MAR_Load~output_o\ : std_logic;
SIGNAL \PC_Load~output_o\ : std_logic;
SIGNAL \PC_Inc~output_o\ : std_logic;
SIGNAL \A_Load~output_o\ : std_logic;
SIGNAL \B_Load~output_o\ : std_logic;
SIGNAL \ALU_Sel[0]~output_o\ : std_logic;
SIGNAL \ALU_Sel[1]~output_o\ : std_logic;
SIGNAL \ALU_Sel[2]~output_o\ : std_logic;
SIGNAL \CCR_Load~output_o\ : std_logic;
SIGNAL \Bus2_Sel[0]~output_o\ : std_logic;
SIGNAL \Bus2_Sel[1]~output_o\ : std_logic;
SIGNAL \Bus1_Sel[0]~output_o\ : std_logic;
SIGNAL \Bus1_Sel[1]~output_o\ : std_logic;
SIGNAL \write~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \IR[4]~input_o\ : std_logic;
SIGNAL \IR[3]~input_o\ : std_logic;
SIGNAL \IR[7]~input_o\ : std_logic;
SIGNAL \IR[1]~input_o\ : std_logic;
SIGNAL \IR[6]~input_o\ : std_logic;
SIGNAL \IR[5]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \IR[2]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \IR[0]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \LOAD_STORE_OP~1_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \LOAD_STORE_OP~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \DATA_MAN_OP~2_combout\ : std_logic;
SIGNAL \next_state.S_DECODE_3_825~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.S_DECODE_3~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \PC_Load~2_combout\ : std_logic;
SIGNAL \BRANCH_OP~0_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector26~1clkctrl_outclk\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \next_state.S_LOAD_AND_STORE_4_798~combout\ : std_logic;
SIGNAL \current_state.S_LOAD_AND_STORE_4~q\ : std_logic;
SIGNAL \next_state.S_LOAD_AND_STORE_5_771~combout\ : std_logic;
SIGNAL \current_state.S_LOAD_AND_STORE_5~q\ : std_logic;
SIGNAL \next_state.S_LOAD_AND_STORE_6_744~combout\ : std_logic;
SIGNAL \current_state.S_LOAD_AND_STORE_6~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \next_state.S_LOAD_AND_STORE_7_717~combout\ : std_logic;
SIGNAL \current_state.S_LOAD_AND_STORE_7~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector23~6_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \next_state.S_BRANCH_4_663~combout\ : std_logic;
SIGNAL \current_state.S_BRANCH_4~q\ : std_logic;
SIGNAL \next_state.S_BRANCH_5_636~combout\ : std_logic;
SIGNAL \current_state.S_BRANCH_5~q\ : std_logic;
SIGNAL \next_state.S_BRANCH_6_609~combout\ : std_logic;
SIGNAL \current_state.S_BRANCH_6~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \next_state.S_DATA_MAN_4_690~combout\ : std_logic;
SIGNAL \current_state.S_DATA_MAN_4~q\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \next_state.S_FETCH_0_906~combout\ : std_logic;
SIGNAL \current_state.S_FETCH_0~0_combout\ : std_logic;
SIGNAL \current_state.S_FETCH_0~q\ : std_logic;
SIGNAL \next_state.S_FETCH_1_879~combout\ : std_logic;
SIGNAL \current_state.S_FETCH_1~q\ : std_logic;
SIGNAL \next_state.S_FETCH_2_852~combout\ : std_logic;
SIGNAL \current_state.S_FETCH_2~q\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Selector21~4_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \CCR_Result[3]~input_o\ : std_logic;
SIGNAL \CCR_Result[0]~input_o\ : std_logic;
SIGNAL \PC_Load~6_combout\ : std_logic;
SIGNAL \PC_Load~7_combout\ : std_logic;
SIGNAL \CCR_Result[2]~input_o\ : std_logic;
SIGNAL \PC_Load~8_combout\ : std_logic;
SIGNAL \PC_Load~9_combout\ : std_logic;
SIGNAL \CCR_Result[1]~input_o\ : std_logic;
SIGNAL \PC_Load~4_combout\ : std_logic;
SIGNAL \PC_Load~5_combout\ : std_logic;
SIGNAL \PC_Load~11_combout\ : std_logic;
SIGNAL \PC_Load~10_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \ALU_Sel~32_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Selector23~4_combout\ : std_logic;
SIGNAL \Selector23~5_combout\ : std_logic;
SIGNAL \ALU_Sel~12_combout\ : std_logic;
SIGNAL \ALU_Sel~9_combout\ : std_logic;
SIGNAL \ALU_Sel~34_combout\ : std_logic;
SIGNAL \ALU_Sel~33_combout\ : std_logic;
SIGNAL \ALU_Sel~25_combout\ : std_logic;
SIGNAL \ALU_Sel~22_combout\ : std_logic;
SIGNAL \ALU_Sel~35_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \PC_Load~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \write~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~1_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
IR_Load <= ww_IR_Load;
ww_IR <= IR;
MAR_Load <= ww_MAR_Load;
PC_Load <= ww_PC_Load;
PC_Inc <= ww_PC_Inc;
A_Load <= ww_A_Load;
B_Load <= ww_B_Load;
ALU_Sel <= ww_ALU_Sel;
ww_CCR_Result <= CCR_Result;
CCR_Load <= ww_CCR_Load;
Bus2_Sel <= ww_Bus2_Sel;
Bus1_Sel <= ww_Bus1_Sel;
write <= ww_write;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\Selector26~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector26~1_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_Selector19~1_combout\ <= NOT \Selector19~1_combout\;

-- Location: IOOBUF_X26_Y0_N23
\IR_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.S_FETCH_2~q\,
	devoe => ww_devoe,
	o => \IR_Load~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\MAR_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector20~0_combout\,
	devoe => ww_devoe,
	o => \MAR_Load~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\PC_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_Load~10_combout\,
	devoe => ww_devoe,
	o => \PC_Load~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\PC_Inc~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector21~3_combout\,
	devoe => ww_devoe,
	o => \PC_Inc~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\A_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector22~2_combout\,
	devoe => ww_devoe,
	o => \A_Load~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\B_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector23~5_combout\,
	devoe => ww_devoe,
	o => \B_Load~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\ALU_Sel[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Sel~34_combout\,
	devoe => ww_devoe,
	o => \ALU_Sel[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\ALU_Sel[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Sel~33_combout\,
	devoe => ww_devoe,
	o => \ALU_Sel[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\ALU_Sel[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Sel~35_combout\,
	devoe => ww_devoe,
	o => \ALU_Sel[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\CCR_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.S_DATA_MAN_4~q\,
	devoe => ww_devoe,
	o => \CCR_Load~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Bus2_Sel[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector19~1_combout\,
	devoe => ww_devoe,
	o => \Bus2_Sel[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\Bus2_Sel[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector18~2_combout\,
	devoe => ww_devoe,
	o => \Bus2_Sel[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\Bus1_Sel[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector17~0_combout\,
	devoe => ww_devoe,
	o => \Bus1_Sel[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\Bus1_Sel[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector16~0_combout\,
	devoe => ww_devoe,
	o => \Bus1_Sel[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\write~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \write~0_combout\,
	devoe => ww_devoe,
	o => \write~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X21_Y0_N8
\IR[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(4),
	o => \IR[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\IR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(3),
	o => \IR[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\IR[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(7),
	o => \IR[7]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\IR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(1),
	o => \IR[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\IR[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(6),
	o => \IR[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\IR[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(5),
	o => \IR[5]~input_o\);

-- Location: LCCOMB_X20_Y1_N20
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\IR[7]~input_o\ & (\IR[1]~input_o\ & (!\IR[6]~input_o\ & !\IR[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[1]~input_o\,
	datac => \IR[6]~input_o\,
	datad => \IR[5]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X23_Y0_N1
\IR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(2),
	o => \IR[2]~input_o\);

-- Location: LCCOMB_X23_Y1_N26
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\IR[3]~input_o\ & (\Equal0~0_combout\ & \IR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[3]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \IR[2]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X21_Y0_N1
\IR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(0),
	o => \IR[0]~input_o\);

-- Location: LCCOMB_X20_Y1_N12
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\IR[1]~input_o\ & !\IR[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR[1]~input_o\,
	datad => \IR[2]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X20_Y1_N26
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\IR[5]~input_o\ & (!\IR[6]~input_o\ & (\IR[7]~input_o\ & !\IR[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[5]~input_o\,
	datab => \IR[6]~input_o\,
	datac => \IR[7]~input_o\,
	datad => \IR[4]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X22_Y1_N6
\Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\LessThan1~0_combout\ & (\IR[3]~input_o\ & (\Equal4~0_combout\ & !\IR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \IR[3]~input_o\,
	datac => \Equal4~0_combout\,
	datad => \IR[0]~input_o\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X22_Y1_N18
\LOAD_STORE_OP~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LOAD_STORE_OP~1_combout\ = (!\Equal5~1_combout\ & ((\IR[4]~input_o\) # ((\IR[0]~input_o\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[4]~input_o\,
	datab => \Equal0~1_combout\,
	datac => \IR[0]~input_o\,
	datad => \Equal5~1_combout\,
	combout => \LOAD_STORE_OP~1_combout\);

-- Location: LCCOMB_X21_Y1_N16
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\LessThan1~0_combout\ & (\Equal4~0_combout\ & (\IR[3]~input_o\ & \IR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \IR[3]~input_o\,
	datad => \IR[0]~input_o\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X21_Y1_N0
\LOAD_STORE_OP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LOAD_STORE_OP~0_combout\ = (!\Equal4~1_combout\ & (((!\IR[4]~input_o\ & !\IR[0]~input_o\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[4]~input_o\,
	datab => \Equal0~1_combout\,
	datac => \IR[0]~input_o\,
	datad => \Equal4~1_combout\,
	combout => \LOAD_STORE_OP~0_combout\);

-- Location: LCCOMB_X22_Y1_N4
\Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ((!\current_state.S_LOAD_AND_STORE_7~q\ & ((!\current_state.S_LOAD_AND_STORE_6~q\) # (!\LOAD_STORE_OP~1_combout\)))) # (!\LOAD_STORE_OP~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_LOAD_AND_STORE_7~q\,
	datab => \LOAD_STORE_OP~1_combout\,
	datac => \LOAD_STORE_OP~0_combout\,
	datad => \current_state.S_LOAD_AND_STORE_6~q\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X20_Y1_N4
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\IR[5]~input_o\ & (\IR[6]~input_o\ & (!\IR[7]~input_o\ & !\IR[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[5]~input_o\,
	datab => \IR[6]~input_o\,
	datac => \IR[7]~input_o\,
	datad => \IR[4]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X20_Y1_N24
\DATA_MAN_OP~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DATA_MAN_OP~2_combout\ = (\IR[3]~input_o\ $ (((!\IR[2]~input_o\ & !\IR[1]~input_o\)))) # (!\Equal6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[2]~input_o\,
	datab => \Equal6~0_combout\,
	datac => \IR[1]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \DATA_MAN_OP~2_combout\);

-- Location: LCCOMB_X21_Y1_N4
\next_state.S_DECODE_3_825\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_DECODE_3_825~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & ((\current_state.S_FETCH_2~q\))) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & (\next_state.S_DECODE_3_825~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.S_DECODE_3_825~combout\,
	datac => \Selector26~1clkctrl_outclk\,
	datad => \current_state.S_FETCH_2~q\,
	combout => \next_state.S_DECODE_3_825~combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X21_Y1_N5
\current_state.S_DECODE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \next_state.S_DECODE_3_825~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_DECODE_3~q\);

-- Location: LCCOMB_X22_Y1_N14
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\LOAD_STORE_OP~0_combout\ & (\DATA_MAN_OP~2_combout\ & (\current_state.S_DECODE_3~q\ & \LOAD_STORE_OP~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LOAD_STORE_OP~0_combout\,
	datab => \DATA_MAN_OP~2_combout\,
	datac => \current_state.S_DECODE_3~q\,
	datad => \LOAD_STORE_OP~1_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X20_Y1_N6
\PC_Load~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_Load~2_combout\ = (\IR[5]~input_o\ & (!\IR[6]~input_o\ & (!\IR[7]~input_o\ & !\IR[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[5]~input_o\,
	datab => \IR[6]~input_o\,
	datac => \IR[7]~input_o\,
	datad => \IR[4]~input_o\,
	combout => \PC_Load~2_combout\);

-- Location: LCCOMB_X22_Y1_N0
\BRANCH_OP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BRANCH_OP~0_combout\ = (\PC_Load~2_combout\ & (((\LessThan1~0_combout\ & !\IR[0]~input_o\)) # (!\IR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \IR[3]~input_o\,
	datac => \PC_Load~2_combout\,
	datad => \IR[0]~input_o\,
	combout => \BRANCH_OP~0_combout\);

-- Location: LCCOMB_X22_Y1_N24
\Selector26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\Selector26~0_combout\ & ((\BRANCH_OP~0_combout\) # (!\Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector26~0_combout\,
	datac => \Selector13~0_combout\,
	datad => \BRANCH_OP~0_combout\,
	combout => \Selector26~1_combout\);

-- Location: CLKCTRL_G18
\Selector26~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector26~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector26~1clkctrl_outclk\);

-- Location: LCCOMB_X21_Y1_N8
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\current_state.S_DECODE_3~q\ & ((!\LOAD_STORE_OP~0_combout\) # (!\LOAD_STORE_OP~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LOAD_STORE_OP~1_combout\,
	datab => \current_state.S_DECODE_3~q\,
	datad => \LOAD_STORE_OP~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X21_Y1_N18
\next_state.S_LOAD_AND_STORE_4_798\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_LOAD_AND_STORE_4_798~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & ((\Selector8~0_combout\))) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & (\next_state.S_LOAD_AND_STORE_4_798~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.S_LOAD_AND_STORE_4_798~combout\,
	datac => \Selector8~0_combout\,
	datad => \Selector26~1clkctrl_outclk\,
	combout => \next_state.S_LOAD_AND_STORE_4_798~combout\);

-- Location: FF_X21_Y1_N19
\current_state.S_LOAD_AND_STORE_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \next_state.S_LOAD_AND_STORE_4_798~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LOAD_AND_STORE_4~q\);

-- Location: LCCOMB_X21_Y1_N22
\next_state.S_LOAD_AND_STORE_5_771\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_LOAD_AND_STORE_5_771~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & ((\current_state.S_LOAD_AND_STORE_4~q\))) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & (\next_state.S_LOAD_AND_STORE_5_771~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.S_LOAD_AND_STORE_5_771~combout\,
	datac => \Selector26~1clkctrl_outclk\,
	datad => \current_state.S_LOAD_AND_STORE_4~q\,
	combout => \next_state.S_LOAD_AND_STORE_5_771~combout\);

-- Location: FF_X21_Y1_N23
\current_state.S_LOAD_AND_STORE_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \next_state.S_LOAD_AND_STORE_5_771~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LOAD_AND_STORE_5~q\);

-- Location: LCCOMB_X22_Y1_N22
\next_state.S_LOAD_AND_STORE_6_744\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_LOAD_AND_STORE_6_744~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & (\current_state.S_LOAD_AND_STORE_5~q\)) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & ((\next_state.S_LOAD_AND_STORE_6_744~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.S_LOAD_AND_STORE_5~q\,
	datac => \next_state.S_LOAD_AND_STORE_6_744~combout\,
	datad => \Selector26~1clkctrl_outclk\,
	combout => \next_state.S_LOAD_AND_STORE_6_744~combout\);

-- Location: FF_X22_Y1_N23
\current_state.S_LOAD_AND_STORE_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \next_state.S_LOAD_AND_STORE_6_744~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LOAD_AND_STORE_6~q\);

-- Location: LCCOMB_X23_Y1_N14
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\LOAD_STORE_OP~1_combout\ & \current_state.S_LOAD_AND_STORE_6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LOAD_STORE_OP~1_combout\,
	datad => \current_state.S_LOAD_AND_STORE_6~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X23_Y1_N6
\next_state.S_LOAD_AND_STORE_7_717\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_LOAD_AND_STORE_7_717~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & ((\Selector11~0_combout\))) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & (\next_state.S_LOAD_AND_STORE_7_717~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.S_LOAD_AND_STORE_7_717~combout\,
	datac => \Selector11~0_combout\,
	datad => \Selector26~1clkctrl_outclk\,
	combout => \next_state.S_LOAD_AND_STORE_7_717~combout\);

-- Location: FF_X23_Y1_N7
\current_state.S_LOAD_AND_STORE_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \next_state.S_LOAD_AND_STORE_7_717~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_LOAD_AND_STORE_7~q\);

-- Location: LCCOMB_X22_Y1_N8
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\IR[4]~input_o\ & (\Equal0~1_combout\ & (\current_state.S_LOAD_AND_STORE_6~q\ & !\IR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[4]~input_o\,
	datab => \Equal0~1_combout\,
	datac => \current_state.S_LOAD_AND_STORE_6~q\,
	datad => \IR[0]~input_o\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X20_Y1_N14
\Selector23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~6_combout\ = (\IR[2]~input_o\) # ((\IR[1]~input_o\) # ((!\IR[3]~input_o\) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[2]~input_o\,
	datab => \IR[1]~input_o\,
	datac => \Equal4~0_combout\,
	datad => \IR[3]~input_o\,
	combout => \Selector23~6_combout\);

-- Location: LCCOMB_X21_Y1_N2
\Selector23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = ((\Selector23~6_combout\ & ((\IR[4]~input_o\) # (!\Equal0~1_combout\)))) # (!\IR[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[0]~input_o\,
	datab => \Equal0~1_combout\,
	datac => \IR[4]~input_o\,
	datad => \Selector23~6_combout\,
	combout => \Selector23~2_combout\);

-- Location: LCCOMB_X22_Y1_N30
\Selector23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = (\Equal5~1_combout\ & (\Selector23~2_combout\ & \current_state.S_LOAD_AND_STORE_6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~1_combout\,
	datac => \Selector23~2_combout\,
	datad => \current_state.S_LOAD_AND_STORE_6~q\,
	combout => \Selector23~3_combout\);

-- Location: LCCOMB_X22_Y1_N10
\next_state.S_BRANCH_4_663\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_BRANCH_4_663~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & ((\Selector13~0_combout\))) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & (\next_state.S_BRANCH_4_663~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.S_BRANCH_4_663~combout\,
	datac => \Selector13~0_combout\,
	datad => \Selector26~1clkctrl_outclk\,
	combout => \next_state.S_BRANCH_4_663~combout\);

-- Location: FF_X22_Y1_N11
\current_state.S_BRANCH_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \next_state.S_BRANCH_4_663~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_BRANCH_4~q\);

-- Location: LCCOMB_X21_Y1_N20
\next_state.S_BRANCH_5_636\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_BRANCH_5_636~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & ((\current_state.S_BRANCH_4~q\))) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & (\next_state.S_BRANCH_5_636~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.S_BRANCH_5_636~combout\,
	datac => \current_state.S_BRANCH_4~q\,
	datad => \Selector26~1clkctrl_outclk\,
	combout => \next_state.S_BRANCH_5_636~combout\);

-- Location: FF_X21_Y1_N21
\current_state.S_BRANCH_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \next_state.S_BRANCH_5_636~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_BRANCH_5~q\);

-- Location: LCCOMB_X22_Y1_N28
\next_state.S_BRANCH_6_609\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_BRANCH_6_609~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & ((\current_state.S_BRANCH_5~q\))) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & (\next_state.S_BRANCH_6_609~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.S_BRANCH_6_609~combout\,
	datac => \current_state.S_BRANCH_5~q\,
	datad => \Selector26~1clkctrl_outclk\,
	combout => \next_state.S_BRANCH_6_609~combout\);

-- Location: FF_X22_Y1_N29
\current_state.S_BRANCH_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \next_state.S_BRANCH_6_609~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_BRANCH_6~q\);

-- Location: LCCOMB_X21_Y1_N26
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\LOAD_STORE_OP~1_combout\ & (\current_state.S_DECODE_3~q\ & (\LOAD_STORE_OP~0_combout\ & !\DATA_MAN_OP~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LOAD_STORE_OP~1_combout\,
	datab => \current_state.S_DECODE_3~q\,
	datac => \LOAD_STORE_OP~0_combout\,
	datad => \DATA_MAN_OP~2_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X21_Y1_N6
\next_state.S_DATA_MAN_4_690\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_DATA_MAN_4_690~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & ((\Selector12~0_combout\))) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & (\next_state.S_DATA_MAN_4_690~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.S_DATA_MAN_4_690~combout\,
	datac => \Selector12~0_combout\,
	datad => \Selector26~1clkctrl_outclk\,
	combout => \next_state.S_DATA_MAN_4_690~combout\);

-- Location: FF_X21_Y1_N7
\current_state.S_DATA_MAN_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \next_state.S_DATA_MAN_4_690~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_DATA_MAN_4~q\);

-- Location: LCCOMB_X22_Y1_N20
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\current_state.S_BRANCH_6~q\) # (\current_state.S_DATA_MAN_4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.S_BRANCH_6~q\,
	datac => \current_state.S_DATA_MAN_4~q\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X22_Y1_N26
\Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\current_state.S_LOAD_AND_STORE_7~q\) # ((\Selector4~0_combout\) # ((\Selector23~3_combout\) # (\Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_LOAD_AND_STORE_7~q\,
	datab => \Selector4~0_combout\,
	datac => \Selector23~3_combout\,
	datad => \Selector4~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X22_Y1_N12
\next_state.S_FETCH_0_906\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_FETCH_0_906~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & ((\Selector4~2_combout\))) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & (\next_state.S_FETCH_0_906~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.S_FETCH_0_906~combout\,
	datac => \Selector4~2_combout\,
	datad => \Selector26~1clkctrl_outclk\,
	combout => \next_state.S_FETCH_0_906~combout\);

-- Location: LCCOMB_X22_Y1_N16
\current_state.S_FETCH_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state.S_FETCH_0~0_combout\ = !\next_state.S_FETCH_0_906~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.S_FETCH_0_906~combout\,
	combout => \current_state.S_FETCH_0~0_combout\);

-- Location: FF_X22_Y1_N17
\current_state.S_FETCH_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \current_state.S_FETCH_0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_FETCH_0~q\);

-- Location: LCCOMB_X21_Y1_N30
\next_state.S_FETCH_1_879\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_FETCH_1_879~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & ((!\current_state.S_FETCH_0~q\))) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & (\next_state.S_FETCH_1_879~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.S_FETCH_1_879~combout\,
	datac => \current_state.S_FETCH_0~q\,
	datad => \Selector26~1clkctrl_outclk\,
	combout => \next_state.S_FETCH_1_879~combout\);

-- Location: FF_X21_Y1_N31
\current_state.S_FETCH_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \next_state.S_FETCH_1_879~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_FETCH_1~q\);

-- Location: LCCOMB_X21_Y1_N10
\next_state.S_FETCH_2_852\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_FETCH_2_852~combout\ = (GLOBAL(\Selector26~1clkctrl_outclk\) & ((\current_state.S_FETCH_1~q\))) # (!GLOBAL(\Selector26~1clkctrl_outclk\) & (\next_state.S_FETCH_2_852~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.S_FETCH_2_852~combout\,
	datab => \current_state.S_FETCH_1~q\,
	datad => \Selector26~1clkctrl_outclk\,
	combout => \next_state.S_FETCH_2_852~combout\);

-- Location: FF_X21_Y1_N11
\current_state.S_FETCH_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \next_state.S_FETCH_2_852~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_FETCH_2~q\);

-- Location: LCCOMB_X20_Y1_N0
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\IR[2]~input_o\ & ((\IR[3]~input_o\) # (!\IR[1]~input_o\))) # (!\IR[2]~input_o\ & ((\IR[1]~input_o\) # (!\IR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[2]~input_o\,
	datab => \IR[1]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X23_Y1_N4
\Selector21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~4_combout\ = (((\IR[3]~input_o\) # (!\IR[4]~input_o\)) # (!\IR[2]~input_o\)) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \IR[2]~input_o\,
	datac => \IR[3]~input_o\,
	datad => \IR[4]~input_o\,
	combout => \Selector21~4_combout\);

-- Location: LCCOMB_X20_Y1_N18
\Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\current_state.S_LOAD_AND_STORE_4~q\ & (((\Equal4~0_combout\ & !\process_1~0_combout\)) # (!\Selector21~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \current_state.S_LOAD_AND_STORE_4~q\,
	datac => \process_1~0_combout\,
	datad => \Selector21~4_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X21_Y1_N14
\Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\current_state.S_FETCH_0~q\ & (!\Selector19~0_combout\ & ((!\BRANCH_OP~0_combout\) # (!\current_state.S_BRANCH_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_BRANCH_4~q\,
	datab => \BRANCH_OP~0_combout\,
	datac => \current_state.S_FETCH_0~q\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X21_Y1_N28
\Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ((!\LOAD_STORE_OP~0_combout\ & \current_state.S_LOAD_AND_STORE_6~q\)) # (!\Selector19~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~1_combout\,
	datac => \LOAD_STORE_OP~0_combout\,
	datad => \current_state.S_LOAD_AND_STORE_6~q\,
	combout => \Selector20~0_combout\);

-- Location: IOIBUF_X14_Y0_N22
\CCR_Result[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(3),
	o => \CCR_Result[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\CCR_Result[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(0),
	o => \CCR_Result[0]~input_o\);

-- Location: LCCOMB_X19_Y1_N24
\PC_Load~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_Load~6_combout\ = (\IR[1]~input_o\ & (!\CCR_Result[3]~input_o\ & ((!\IR[3]~input_o\)))) # (!\IR[1]~input_o\ & (((!\IR[3]~input_o\) # (!\CCR_Result[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CCR_Result[3]~input_o\,
	datab => \IR[1]~input_o\,
	datac => \CCR_Result[0]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \PC_Load~6_combout\);

-- Location: LCCOMB_X19_Y1_N22
\PC_Load~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_Load~7_combout\ = (!\IR[0]~input_o\ & (!\IR[2]~input_o\ & \PC_Load~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[0]~input_o\,
	datac => \IR[2]~input_o\,
	datad => \PC_Load~6_combout\,
	combout => \PC_Load~7_combout\);

-- Location: IOIBUF_X16_Y0_N22
\CCR_Result[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(2),
	o => \CCR_Result[2]~input_o\);

-- Location: LCCOMB_X19_Y1_N16
\PC_Load~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_Load~8_combout\ = (\IR[0]~input_o\ & ((\IR[1]~input_o\ & (\CCR_Result[2]~input_o\)) # (!\IR[1]~input_o\ & ((\CCR_Result[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[0]~input_o\,
	datab => \CCR_Result[2]~input_o\,
	datac => \IR[1]~input_o\,
	datad => \CCR_Result[3]~input_o\,
	combout => \PC_Load~8_combout\);

-- Location: LCCOMB_X19_Y1_N6
\PC_Load~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_Load~9_combout\ = (\PC_Load~7_combout\) # ((\PC_Load~8_combout\ & (!\IR[2]~input_o\ & !\IR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Load~7_combout\,
	datab => \PC_Load~8_combout\,
	datac => \IR[2]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \PC_Load~9_combout\);

-- Location: IOIBUF_X19_Y0_N22
\CCR_Result[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(1),
	o => \CCR_Result[1]~input_o\);

-- Location: LCCOMB_X19_Y1_N12
\PC_Load~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_Load~4_combout\ = (!\IR[0]~input_o\ & ((\IR[1]~input_o\ & ((!\CCR_Result[1]~input_o\))) # (!\IR[1]~input_o\ & (!\CCR_Result[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[0]~input_o\,
	datab => \CCR_Result[2]~input_o\,
	datac => \IR[1]~input_o\,
	datad => \CCR_Result[1]~input_o\,
	combout => \PC_Load~4_combout\);

-- Location: LCCOMB_X19_Y1_N2
\PC_Load~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_Load~5_combout\ = (\IR[0]~input_o\ & ((\IR[1]~input_o\ & (\CCR_Result[0]~input_o\)) # (!\IR[1]~input_o\ & ((\CCR_Result[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[0]~input_o\,
	datab => \CCR_Result[0]~input_o\,
	datac => \IR[1]~input_o\,
	datad => \CCR_Result[1]~input_o\,
	combout => \PC_Load~5_combout\);

-- Location: LCCOMB_X19_Y1_N18
\PC_Load~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_Load~11_combout\ = (\IR[2]~input_o\ & (!\IR[3]~input_o\ & ((\PC_Load~4_combout\) # (\PC_Load~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Load~4_combout\,
	datab => \PC_Load~5_combout\,
	datac => \IR[2]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \PC_Load~11_combout\);

-- Location: LCCOMB_X19_Y1_N4
\PC_Load~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_Load~10_combout\ = (\current_state.S_BRANCH_6~q\ & (\PC_Load~2_combout\ & ((\PC_Load~9_combout\) # (\PC_Load~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Load~9_combout\,
	datab => \PC_Load~11_combout\,
	datac => \current_state.S_BRANCH_6~q\,
	datad => \PC_Load~2_combout\,
	combout => \PC_Load~10_combout\);

-- Location: LCCOMB_X21_Y1_N24
\Selector21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (\current_state.S_LOAD_AND_STORE_5~q\ & (((!\process_1~0_combout\ & \Equal4~0_combout\)) # (!\Selector21~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \current_state.S_LOAD_AND_STORE_5~q\,
	datac => \Selector21~4_combout\,
	datad => \Equal4~0_combout\,
	combout => \Selector21~2_combout\);

-- Location: LCCOMB_X23_Y1_N22
\Selector21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = (\Selector21~2_combout\) # ((\current_state.S_FETCH_1~q\) # ((\BRANCH_OP~0_combout\ & \current_state.S_BRANCH_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BRANCH_OP~0_combout\,
	datab => \Selector21~2_combout\,
	datac => \current_state.S_FETCH_1~q\,
	datad => \current_state.S_BRANCH_5~q\,
	combout => \Selector21~3_combout\);

-- Location: LCCOMB_X23_Y1_N8
\Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\IR[0]~input_o\ & ((\current_state.S_LOAD_AND_STORE_7~q\))) # (!\IR[0]~input_o\ & (\current_state.S_LOAD_AND_STORE_6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[0]~input_o\,
	datab => \current_state.S_LOAD_AND_STORE_6~q\,
	datad => \current_state.S_LOAD_AND_STORE_7~q\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X19_Y1_N10
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\IR[0]~input_o\ & (!\IR[1]~input_o\ & (!\IR[2]~input_o\ & \IR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[0]~input_o\,
	datab => \IR[1]~input_o\,
	datac => \IR[2]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X19_Y1_N28
\Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Equal6~0_combout\ & (\IR[1]~input_o\ & !\IR[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datac => \IR[1]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X20_Y1_N16
\Equal8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = (\IR[2]~input_o\ & (\Equal6~0_combout\ & (!\IR[1]~input_o\ & !\IR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[2]~input_o\,
	datab => \Equal6~0_combout\,
	datac => \IR[1]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \Equal8~2_combout\);

-- Location: LCCOMB_X19_Y1_N26
\ALU_Sel~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Sel~32_combout\ = (!\Equal8~2_combout\ & (((\IR[0]~input_o\ & \IR[2]~input_o\)) # (!\Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[0]~input_o\,
	datab => \Equal6~1_combout\,
	datac => \IR[2]~input_o\,
	datad => \Equal8~2_combout\,
	combout => \ALU_Sel~32_combout\);

-- Location: LCCOMB_X19_Y1_N0
\Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\current_state.S_DATA_MAN_4~q\ & (((\Equal5~0_combout\ & \Equal6~0_combout\)) # (!\ALU_Sel~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \current_state.S_DATA_MAN_4~q\,
	datac => \ALU_Sel~32_combout\,
	datad => \Equal6~0_combout\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X23_Y1_N16
\Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (\Selector22~0_combout\) # ((!\IR[4]~input_o\ & (\Selector22~1_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[4]~input_o\,
	datab => \Selector22~1_combout\,
	datac => \Equal0~1_combout\,
	datad => \Selector22~0_combout\,
	combout => \Selector22~2_combout\);

-- Location: LCCOMB_X19_Y1_N8
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\Equal6~0_combout\ & (\IR[1]~input_o\ & (\IR[0]~input_o\ & !\IR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \IR[1]~input_o\,
	datac => \IR[0]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X20_Y1_N22
\Equal13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (\LessThan1~0_combout\ & (\Equal6~0_combout\ & (\IR[0]~input_o\ & \IR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Equal6~0_combout\,
	datac => \IR[0]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X19_Y1_N30
\Selector23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~4_combout\ = (\current_state.S_DATA_MAN_4~q\ & ((\Equal13~0_combout\) # ((\Equal7~0_combout\ & \IR[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_DATA_MAN_4~q\,
	datab => \Equal7~0_combout\,
	datac => \IR[2]~input_o\,
	datad => \Equal13~0_combout\,
	combout => \Selector23~4_combout\);

-- Location: LCCOMB_X23_Y1_N20
\Selector23~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~5_combout\ = (\Selector23~3_combout\) # ((\Selector23~4_combout\) # ((\current_state.S_LOAD_AND_STORE_7~q\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_LOAD_AND_STORE_7~q\,
	datab => \Selector23~3_combout\,
	datac => \Equal4~1_combout\,
	datad => \Selector23~4_combout\,
	combout => \Selector23~5_combout\);

-- Location: LCCOMB_X20_Y1_N2
\ALU_Sel~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Sel~12_combout\ = (\IR[3]~input_o\ & (!\IR[2]~input_o\ & (!\IR[1]~input_o\))) # (!\IR[3]~input_o\ & (\IR[0]~input_o\ & (\IR[2]~input_o\ $ (\IR[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[2]~input_o\,
	datab => \IR[1]~input_o\,
	datac => \IR[0]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \ALU_Sel~12_combout\);

-- Location: LCCOMB_X20_Y1_N30
\ALU_Sel~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Sel~9_combout\ = (!\IR[5]~input_o\ & (!\IR[7]~input_o\ & \ALU_Sel~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[5]~input_o\,
	datac => \IR[7]~input_o\,
	datad => \ALU_Sel~12_combout\,
	combout => \ALU_Sel~9_combout\);

-- Location: LCCOMB_X20_Y1_N28
\ALU_Sel~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Sel~34_combout\ = (\current_state.S_DATA_MAN_4~q\ & (\IR[6]~input_o\ & (\ALU_Sel~9_combout\ & !\IR[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_DATA_MAN_4~q\,
	datab => \IR[6]~input_o\,
	datac => \ALU_Sel~9_combout\,
	datad => \IR[4]~input_o\,
	combout => \ALU_Sel~34_combout\);

-- Location: LCCOMB_X19_Y1_N20
\ALU_Sel~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Sel~33_combout\ = (\current_state.S_DATA_MAN_4~q\ & \Equal8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.S_DATA_MAN_4~q\,
	datad => \Equal8~2_combout\,
	combout => \ALU_Sel~33_combout\);

-- Location: LCCOMB_X19_Y1_N14
\ALU_Sel~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Sel~25_combout\ = (\IR[1]~input_o\ & (\IR[2]~input_o\ & !\IR[3]~input_o\)) # (!\IR[1]~input_o\ & (!\IR[2]~input_o\ & \IR[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR[1]~input_o\,
	datac => \IR[2]~input_o\,
	datad => \IR[3]~input_o\,
	combout => \ALU_Sel~25_combout\);

-- Location: LCCOMB_X20_Y1_N10
\ALU_Sel~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Sel~22_combout\ = (!\IR[5]~input_o\ & (!\IR[7]~input_o\ & \ALU_Sel~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[5]~input_o\,
	datac => \IR[7]~input_o\,
	datad => \ALU_Sel~25_combout\,
	combout => \ALU_Sel~22_combout\);

-- Location: LCCOMB_X20_Y1_N8
\ALU_Sel~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Sel~35_combout\ = (\current_state.S_DATA_MAN_4~q\ & (!\IR[4]~input_o\ & (\IR[6]~input_o\ & \ALU_Sel~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_DATA_MAN_4~q\,
	datab => \IR[4]~input_o\,
	datac => \IR[6]~input_o\,
	datad => \ALU_Sel~22_combout\,
	combout => \ALU_Sel~35_combout\);

-- Location: LCCOMB_X21_Y1_N12
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\current_state.S_FETCH_2~q\) # ((\current_state.S_BRANCH_6~q\ & \BRANCH_OP~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_BRANCH_6~q\,
	datac => \BRANCH_OP~0_combout\,
	datad => \current_state.S_FETCH_2~q\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X22_Y1_N2
\Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\Selector18~0_combout\) # ((!\Selector23~2_combout\ & ((\current_state.S_LOAD_AND_STORE_6~q\) # (\current_state.S_LOAD_AND_STORE_7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \current_state.S_LOAD_AND_STORE_6~q\,
	datac => \current_state.S_LOAD_AND_STORE_7~q\,
	datad => \Selector23~2_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X23_Y1_N24
\Selector18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\Selector18~1_combout\) # ((\current_state.S_LOAD_AND_STORE_6~q\ & ((!\LOAD_STORE_OP~1_combout\) # (!\Selector21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~1_combout\,
	datab => \Selector21~4_combout\,
	datac => \current_state.S_LOAD_AND_STORE_6~q\,
	datad => \LOAD_STORE_OP~1_combout\,
	combout => \Selector18~2_combout\);

-- Location: LCCOMB_X23_Y1_N18
\PC_Load~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_Load~3_combout\ = (!\IR[3]~input_o\ & \IR[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[3]~input_o\,
	datad => \IR[2]~input_o\,
	combout => \PC_Load~3_combout\);

-- Location: LCCOMB_X23_Y1_N12
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (\PC_Load~3_combout\ & (!\IR[0]~input_o\ & \IR[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \PC_Load~3_combout\,
	datac => \IR[0]~input_o\,
	datad => \IR[4]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X23_Y1_N10
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Selector22~0_combout\) # ((\current_state.S_LOAD_AND_STORE_7~q\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \current_state.S_LOAD_AND_STORE_7~q\,
	datac => \Equal0~2_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X23_Y1_N28
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Equal0~0_combout\ & (\PC_Load~3_combout\ & (\IR[0]~input_o\ & \IR[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \PC_Load~3_combout\,
	datac => \IR[0]~input_o\,
	datad => \IR[4]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X23_Y1_N30
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\Selector23~4_combout\) # ((\current_state.S_LOAD_AND_STORE_7~q\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector23~4_combout\,
	datac => \current_state.S_LOAD_AND_STORE_7~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X23_Y1_N0
\write~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \write~0_combout\ = (\current_state.S_LOAD_AND_STORE_7~q\ & !\Selector21~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.S_LOAD_AND_STORE_7~q\,
	datac => \Selector21~4_combout\,
	combout => \write~0_combout\);

ww_IR_Load <= \IR_Load~output_o\;

ww_MAR_Load <= \MAR_Load~output_o\;

ww_PC_Load <= \PC_Load~output_o\;

ww_PC_Inc <= \PC_Inc~output_o\;

ww_A_Load <= \A_Load~output_o\;

ww_B_Load <= \B_Load~output_o\;

ww_ALU_Sel(0) <= \ALU_Sel[0]~output_o\;

ww_ALU_Sel(1) <= \ALU_Sel[1]~output_o\;

ww_ALU_Sel(2) <= \ALU_Sel[2]~output_o\;

ww_CCR_Load <= \CCR_Load~output_o\;

ww_Bus2_Sel(0) <= \Bus2_Sel[0]~output_o\;

ww_Bus2_Sel(1) <= \Bus2_Sel[1]~output_o\;

ww_Bus1_Sel(0) <= \Bus1_Sel[0]~output_o\;

ww_Bus1_Sel(1) <= \Bus1_Sel[1]~output_o\;

ww_write <= \write~output_o\;
END structure;


