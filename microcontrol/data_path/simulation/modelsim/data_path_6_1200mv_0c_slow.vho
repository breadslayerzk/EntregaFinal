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

-- DATE "05/27/2024 16:35:08"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
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

ENTITY 	data_path IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	IR_Load : IN std_logic;
	IR : BUFFER std_logic_vector(7 DOWNTO 0);
	MAR_Load : IN std_logic;
	address : BUFFER std_logic_vector(7 DOWNTO 0);
	PC_Load : IN std_logic;
	PC_Inc : IN std_logic;
	A_Load : IN std_logic;
	B_Load : IN std_logic;
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	CCR_Result : BUFFER std_logic_vector(3 DOWNTO 0);
	CCR_Load : IN std_logic;
	Bus2_Sel : IN std_logic_vector(1 DOWNTO 0);
	Bus1_Sel : IN std_logic_vector(1 DOWNTO 0);
	from_memory : IN std_logic_vector(7 DOWNTO 0);
	to_memory : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END data_path;

-- Design Ports Information
-- IR[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[0]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[1]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[6]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[7]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1_Sel[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1_Sel[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus2_Sel[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus2_Sel[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_Load	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[2]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[4]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[5]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[6]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_Load	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Load	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Load	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Load	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Inc	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Load	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF data_path IS
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
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC_Load : std_logic;
SIGNAL ww_PC_Inc : std_logic;
SIGNAL ww_A_Load : std_logic;
SIGNAL ww_B_Load : std_logic;
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CCR_Result : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CCR_Load : std_logic;
SIGNAL ww_Bus2_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Bus1_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_from_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_to_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IR[0]~output_o\ : std_logic;
SIGNAL \IR[1]~output_o\ : std_logic;
SIGNAL \IR[2]~output_o\ : std_logic;
SIGNAL \IR[3]~output_o\ : std_logic;
SIGNAL \IR[4]~output_o\ : std_logic;
SIGNAL \IR[5]~output_o\ : std_logic;
SIGNAL \IR[6]~output_o\ : std_logic;
SIGNAL \IR[7]~output_o\ : std_logic;
SIGNAL \address[0]~output_o\ : std_logic;
SIGNAL \address[1]~output_o\ : std_logic;
SIGNAL \address[2]~output_o\ : std_logic;
SIGNAL \address[3]~output_o\ : std_logic;
SIGNAL \address[4]~output_o\ : std_logic;
SIGNAL \address[5]~output_o\ : std_logic;
SIGNAL \address[6]~output_o\ : std_logic;
SIGNAL \address[7]~output_o\ : std_logic;
SIGNAL \CCR_Result[0]~output_o\ : std_logic;
SIGNAL \CCR_Result[1]~output_o\ : std_logic;
SIGNAL \CCR_Result[2]~output_o\ : std_logic;
SIGNAL \CCR_Result[3]~output_o\ : std_logic;
SIGNAL \to_memory[0]~output_o\ : std_logic;
SIGNAL \to_memory[1]~output_o\ : std_logic;
SIGNAL \to_memory[2]~output_o\ : std_logic;
SIGNAL \to_memory[3]~output_o\ : std_logic;
SIGNAL \to_memory[4]~output_o\ : std_logic;
SIGNAL \to_memory[5]~output_o\ : std_logic;
SIGNAL \to_memory[6]~output_o\ : std_logic;
SIGNAL \to_memory[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Bus2_Sel[1]~input_o\ : std_logic;
SIGNAL \Bus2_Sel[0]~input_o\ : std_logic;
SIGNAL \from_memory[0]~input_o\ : std_logic;
SIGNAL \Bus1_Sel[0]~input_o\ : std_logic;
SIGNAL \Bus1_Sel[1]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \A_Load~input_o\ : std_logic;
SIGNAL \PC[0]~8_combout\ : std_logic;
SIGNAL \PC_Load~input_o\ : std_logic;
SIGNAL \PC_Inc~input_o\ : std_logic;
SIGNAL \PC[0]~10_combout\ : std_logic;
SIGNAL \B_Load~input_o\ : std_logic;
SIGNAL \BUS1[0]~0_combout\ : std_logic;
SIGNAL \BUS1[0]~1_combout\ : std_logic;
SIGNAL \BUS2[0]~14_combout\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \ALU_unit|Mux8~4_combout\ : std_logic;
SIGNAL \ALU_unit|Add3~0_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~4_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~7_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~6_combout\ : std_logic;
SIGNAL \ALU_unit|Mux8~0_combout\ : std_logic;
SIGNAL \ALU_unit|Mux8~1_combout\ : std_logic;
SIGNAL \ALU_unit|Mux8~2_combout\ : std_logic;
SIGNAL \ALU_unit|Add0~0_combout\ : std_logic;
SIGNAL \ALU_unit|Add1~0_combout\ : std_logic;
SIGNAL \ALU_unit|Mux8~3_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~8_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~9_combout\ : std_logic;
SIGNAL \BUS2[0]~21_combout\ : std_logic;
SIGNAL \IR_Reg[0]~feeder_combout\ : std_logic;
SIGNAL \IR_Load~input_o\ : std_logic;
SIGNAL \from_memory[1]~input_o\ : std_logic;
SIGNAL \PC[0]~9\ : std_logic;
SIGNAL \PC[1]~11_combout\ : std_logic;
SIGNAL \BUS1[1]~2_combout\ : std_logic;
SIGNAL \BUS1[1]~3_combout\ : std_logic;
SIGNAL \BUS2[1]~15_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~5\ : std_logic;
SIGNAL \ALU_unit|Add2~10_combout\ : std_logic;
SIGNAL \ALU_unit|Add1~1\ : std_logic;
SIGNAL \ALU_unit|Add1~2_combout\ : std_logic;
SIGNAL \ALU_unit|Add0~1\ : std_logic;
SIGNAL \ALU_unit|Add0~2_combout\ : std_logic;
SIGNAL \ALU_unit|Mux7~0_combout\ : std_logic;
SIGNAL \ALU_unit|Mux7~1_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~12_combout\ : std_logic;
SIGNAL \ALU_unit|Add3~1\ : std_logic;
SIGNAL \ALU_unit|Add3~2_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~13_combout\ : std_logic;
SIGNAL \BUS2[1]~22_combout\ : std_logic;
SIGNAL \IR_Reg[1]~feeder_combout\ : std_logic;
SIGNAL \from_memory[2]~input_o\ : std_logic;
SIGNAL \PC[1]~12\ : std_logic;
SIGNAL \PC[2]~13_combout\ : std_logic;
SIGNAL \BUS1[2]~4_combout\ : std_logic;
SIGNAL \A_Reg[2]~feeder_combout\ : std_logic;
SIGNAL \BUS1[2]~5_combout\ : std_logic;
SIGNAL \BUS2[2]~16_combout\ : std_logic;
SIGNAL \ALU_unit|Add3~3\ : std_logic;
SIGNAL \ALU_unit|Add3~4_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~11\ : std_logic;
SIGNAL \ALU_unit|Add2~14_combout\ : std_logic;
SIGNAL \ALU_unit|Mux6~0_combout\ : std_logic;
SIGNAL \ALU_unit|Add1~3\ : std_logic;
SIGNAL \ALU_unit|Add1~4_combout\ : std_logic;
SIGNAL \ALU_unit|Add0~3\ : std_logic;
SIGNAL \ALU_unit|Add0~4_combout\ : std_logic;
SIGNAL \ALU_unit|Mux6~1_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~16_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~17_combout\ : std_logic;
SIGNAL \BUS2[2]~23_combout\ : std_logic;
SIGNAL \from_memory[3]~input_o\ : std_logic;
SIGNAL \PC[2]~14\ : std_logic;
SIGNAL \PC[3]~15_combout\ : std_logic;
SIGNAL \BUS1[3]~6_combout\ : std_logic;
SIGNAL \A_Reg[3]~feeder_combout\ : std_logic;
SIGNAL \BUS1[3]~7_combout\ : std_logic;
SIGNAL \BUS2[3]~17_combout\ : std_logic;
SIGNAL \ALU_unit|Add3~5\ : std_logic;
SIGNAL \ALU_unit|Add3~6_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~15\ : std_logic;
SIGNAL \ALU_unit|Add2~18_combout\ : std_logic;
SIGNAL \ALU_unit|Add1~5\ : std_logic;
SIGNAL \ALU_unit|Add1~6_combout\ : std_logic;
SIGNAL \ALU_unit|Add0~5\ : std_logic;
SIGNAL \ALU_unit|Add0~6_combout\ : std_logic;
SIGNAL \ALU_unit|Mux5~0_combout\ : std_logic;
SIGNAL \ALU_unit|Mux5~1_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~20_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~21_combout\ : std_logic;
SIGNAL \BUS2[3]~24_combout\ : std_logic;
SIGNAL \PC[3]~16\ : std_logic;
SIGNAL \PC[4]~17_combout\ : std_logic;
SIGNAL \BUS1[4]~8_combout\ : std_logic;
SIGNAL \BUS1[4]~9_combout\ : std_logic;
SIGNAL \from_memory[4]~input_o\ : std_logic;
SIGNAL \BUS2[4]~18_combout\ : std_logic;
SIGNAL \ALU_unit|Add3~7\ : std_logic;
SIGNAL \ALU_unit|Add3~8_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~19\ : std_logic;
SIGNAL \ALU_unit|Add2~22_combout\ : std_logic;
SIGNAL \ALU_unit|Mux4~0_combout\ : std_logic;
SIGNAL \ALU_unit|Add0~7\ : std_logic;
SIGNAL \ALU_unit|Add0~8_combout\ : std_logic;
SIGNAL \ALU_unit|Add1~7\ : std_logic;
SIGNAL \ALU_unit|Add1~8_combout\ : std_logic;
SIGNAL \ALU_unit|Mux4~1_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~24_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~25_combout\ : std_logic;
SIGNAL \BUS2[4]~25_combout\ : std_logic;
SIGNAL \IR_Reg[4]~feeder_combout\ : std_logic;
SIGNAL \from_memory[5]~input_o\ : std_logic;
SIGNAL \A_Reg[5]~feeder_combout\ : std_logic;
SIGNAL \PC[4]~18\ : std_logic;
SIGNAL \PC[5]~19_combout\ : std_logic;
SIGNAL \BUS1[5]~10_combout\ : std_logic;
SIGNAL \BUS1[5]~11_combout\ : std_logic;
SIGNAL \BUS2[5]~19_combout\ : std_logic;
SIGNAL \ALU_unit|Add3~9\ : std_logic;
SIGNAL \ALU_unit|Add3~10_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~23\ : std_logic;
SIGNAL \ALU_unit|Add2~26_combout\ : std_logic;
SIGNAL \ALU_unit|Add1~9\ : std_logic;
SIGNAL \ALU_unit|Add1~10_combout\ : std_logic;
SIGNAL \ALU_unit|Add0~9\ : std_logic;
SIGNAL \ALU_unit|Add0~10_combout\ : std_logic;
SIGNAL \ALU_unit|Mux3~0_combout\ : std_logic;
SIGNAL \ALU_unit|Mux3~1_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~28_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~29_combout\ : std_logic;
SIGNAL \BUS2[5]~26_combout\ : std_logic;
SIGNAL \from_memory[6]~input_o\ : std_logic;
SIGNAL \PC[5]~20\ : std_logic;
SIGNAL \PC[6]~21_combout\ : std_logic;
SIGNAL \BUS1[6]~12_combout\ : std_logic;
SIGNAL \BUS1[6]~13_combout\ : std_logic;
SIGNAL \ALU_unit|Add3~11\ : std_logic;
SIGNAL \ALU_unit|Add3~12_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~39_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~27\ : std_logic;
SIGNAL \ALU_unit|Add2~30_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~32_combout\ : std_logic;
SIGNAL \ALU_unit|Add1~11\ : std_logic;
SIGNAL \ALU_unit|Add1~12_combout\ : std_logic;
SIGNAL \ALU_unit|Add0~11\ : std_logic;
SIGNAL \ALU_unit|Add0~12_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~33_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~34_combout\ : std_logic;
SIGNAL \BUS2[6]~28_combout\ : std_logic;
SIGNAL \BUS2[6]~29_combout\ : std_logic;
SIGNAL \IR_Reg[6]~feeder_combout\ : std_logic;
SIGNAL \PC[6]~22\ : std_logic;
SIGNAL \PC[7]~23_combout\ : std_logic;
SIGNAL \BUS1[7]~14_combout\ : std_logic;
SIGNAL \BUS1[7]~15_combout\ : std_logic;
SIGNAL \from_memory[7]~input_o\ : std_logic;
SIGNAL \BUS2[7]~20_combout\ : std_logic;
SIGNAL \ALU_unit|Add3~13\ : std_logic;
SIGNAL \ALU_unit|Add3~14_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~35_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~31\ : std_logic;
SIGNAL \ALU_unit|Add2~36_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~40_combout\ : std_logic;
SIGNAL \ALU_unit|Mux1~0_combout\ : std_logic;
SIGNAL \ALU_unit|Add0~13\ : std_logic;
SIGNAL \ALU_unit|Add0~14_combout\ : std_logic;
SIGNAL \ALU_unit|Add1~13\ : std_logic;
SIGNAL \ALU_unit|Add1~14_combout\ : std_logic;
SIGNAL \ALU_unit|Mux1~1_combout\ : std_logic;
SIGNAL \ALU_unit|Add2~38_combout\ : std_logic;
SIGNAL \BUS2[7]~27_combout\ : std_logic;
SIGNAL \IR_Reg[7]~feeder_combout\ : std_logic;
SIGNAL \MAR[0]~feeder_combout\ : std_logic;
SIGNAL \MAR_Load~input_o\ : std_logic;
SIGNAL \MAR[1]~feeder_combout\ : std_logic;
SIGNAL \MAR[2]~feeder_combout\ : std_logic;
SIGNAL \MAR[4]~feeder_combout\ : std_logic;
SIGNAL \MAR[6]~feeder_combout\ : std_logic;
SIGNAL \MAR[7]~feeder_combout\ : std_logic;
SIGNAL \ALU_unit|Add3~15\ : std_logic;
SIGNAL \ALU_unit|Add3~16_combout\ : std_logic;
SIGNAL \ALU_unit|Add0~15\ : std_logic;
SIGNAL \ALU_unit|Add0~16_combout\ : std_logic;
SIGNAL \ALU_unit|Mux8~5_combout\ : std_logic;
SIGNAL \ALU_unit|Mux10~0_combout\ : std_logic;
SIGNAL \CCR_Load~input_o\ : std_logic;
SIGNAL \ALU_unit|Mux9~2_combout\ : std_logic;
SIGNAL \ALU_unit|Mux9~3_combout\ : std_logic;
SIGNAL \ALU_unit|Equal0~1_combout\ : std_logic;
SIGNAL \ALU_unit|Equal0~0_combout\ : std_logic;
SIGNAL \ALU_unit|Equal0~2_combout\ : std_logic;
SIGNAL PC : std_logic_vector(7 DOWNTO 0);
SIGNAL MAR : std_logic_vector(7 DOWNTO 0);
SIGNAL IR_Reg : std_logic_vector(7 DOWNTO 0);
SIGNAL CCR : std_logic_vector(3 DOWNTO 0);
SIGNAL B_Reg : std_logic_vector(7 DOWNTO 0);
SIGNAL A_Reg : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_IR_Load <= IR_Load;
IR <= ww_IR;
ww_MAR_Load <= MAR_Load;
address <= ww_address;
ww_PC_Load <= PC_Load;
ww_PC_Inc <= PC_Inc;
ww_A_Load <= A_Load;
ww_B_Load <= B_Load;
ww_ALU_Sel <= ALU_Sel;
CCR_Result <= ww_CCR_Result;
ww_CCR_Load <= CCR_Load;
ww_Bus2_Sel <= Bus2_Sel;
ww_Bus1_Sel <= Bus1_Sel;
ww_from_memory <= from_memory;
to_memory <= ww_to_memory;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

-- Location: IOOBUF_X34_Y19_N16
\IR[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR_Reg(0),
	devoe => ww_devoe,
	o => \IR[0]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\IR[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR_Reg(1),
	devoe => ww_devoe,
	o => \IR[1]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\IR[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR_Reg(2),
	devoe => ww_devoe,
	o => \IR[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\IR[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR_Reg(3),
	devoe => ww_devoe,
	o => \IR[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\IR[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR_Reg(4),
	devoe => ww_devoe,
	o => \IR[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\IR[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR_Reg(5),
	devoe => ww_devoe,
	o => \IR[5]~output_o\);

-- Location: IOOBUF_X34_Y16_N9
\IR[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR_Reg(6),
	devoe => ww_devoe,
	o => \IR[6]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\IR[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR_Reg(7),
	devoe => ww_devoe,
	o => \IR[7]~output_o\);

-- Location: IOOBUF_X34_Y16_N2
\address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(0),
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(1),
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(2),
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(3),
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\address[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(4),
	devoe => ww_devoe,
	o => \address[4]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\address[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(5),
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\address[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(6),
	devoe => ww_devoe,
	o => \address[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\address[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => MAR(7),
	devoe => ww_devoe,
	o => \address[7]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\CCR_Result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CCR(0),
	devoe => ww_devoe,
	o => \CCR_Result[0]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\CCR_Result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CCR(1),
	devoe => ww_devoe,
	o => \CCR_Result[1]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\CCR_Result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CCR(2),
	devoe => ww_devoe,
	o => \CCR_Result[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\CCR_Result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CCR(3),
	devoe => ww_devoe,
	o => \CCR_Result[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\to_memory[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS1[0]~1_combout\,
	devoe => ww_devoe,
	o => \to_memory[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\to_memory[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS1[1]~3_combout\,
	devoe => ww_devoe,
	o => \to_memory[1]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\to_memory[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS1[2]~5_combout\,
	devoe => ww_devoe,
	o => \to_memory[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\to_memory[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS1[3]~7_combout\,
	devoe => ww_devoe,
	o => \to_memory[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\to_memory[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS1[4]~9_combout\,
	devoe => ww_devoe,
	o => \to_memory[4]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\to_memory[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS1[5]~11_combout\,
	devoe => ww_devoe,
	o => \to_memory[5]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\to_memory[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS1[6]~13_combout\,
	devoe => ww_devoe,
	o => \to_memory[6]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\to_memory[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS1[7]~15_combout\,
	devoe => ww_devoe,
	o => \to_memory[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
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

-- Location: IOIBUF_X34_Y9_N8
\Bus2_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus2_Sel(1),
	o => \Bus2_Sel[1]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\Bus2_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus2_Sel(0),
	o => \Bus2_Sel[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\from_memory[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(0),
	o => \from_memory[0]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\Bus1_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1_Sel(0),
	o => \Bus1_Sel[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\Bus1_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1_Sel(1),
	o => \Bus1_Sel[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
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

-- Location: IOIBUF_X34_Y8_N8
\A_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_Load,
	o => \A_Load~input_o\);

-- Location: FF_X31_Y8_N5
\A_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BUS2[0]~21_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_Reg(0));

-- Location: LCCOMB_X32_Y8_N0
\PC[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[0]~8_combout\ = PC(0) $ (VCC)
-- \PC[0]~9\ = CARRY(PC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(0),
	datad => VCC,
	combout => \PC[0]~8_combout\,
	cout => \PC[0]~9\);

-- Location: IOIBUF_X34_Y18_N15
\PC_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_Load,
	o => \PC_Load~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\PC_Inc~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_Inc,
	o => \PC_Inc~input_o\);

-- Location: LCCOMB_X32_Y8_N22
\PC[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[0]~10_combout\ = (\PC_Inc~input_o\) # (\PC_Load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_Inc~input_o\,
	datad => \PC_Load~input_o\,
	combout => \PC[0]~10_combout\);

-- Location: FF_X32_Y8_N1
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[0]~8_combout\,
	asdata => \BUS2[0]~21_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: IOIBUF_X34_Y9_N1
\B_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_Load,
	o => \B_Load~input_o\);

-- Location: FF_X31_Y8_N17
\B_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BUS2[0]~21_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_Reg(0));

-- Location: LCCOMB_X31_Y8_N10
\BUS1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[0]~0_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & ((B_Reg(0)))) # (!\Bus1_Sel[1]~input_o\ & (PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[0]~input_o\,
	datab => \Bus1_Sel[1]~input_o\,
	datac => PC(0),
	datad => B_Reg(0),
	combout => \BUS1[0]~0_combout\);

-- Location: LCCOMB_X31_Y8_N30
\BUS1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[0]~1_combout\ = (\BUS1[0]~0_combout\) # ((\Bus1_Sel[0]~input_o\ & (!\Bus1_Sel[1]~input_o\ & A_Reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[0]~input_o\,
	datab => \Bus1_Sel[1]~input_o\,
	datac => A_Reg(0),
	datad => \BUS1[0]~0_combout\,
	combout => \BUS1[0]~1_combout\);

-- Location: LCCOMB_X31_Y8_N8
\BUS2[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[0]~14_combout\ = (\Bus2_Sel[1]~input_o\ & (\from_memory[0]~input_o\ & ((!\Bus2_Sel[0]~input_o\)))) # (!\Bus2_Sel[1]~input_o\ & (((\BUS1[0]~1_combout\ & \Bus2_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \from_memory[0]~input_o\,
	datac => \BUS1[0]~1_combout\,
	datad => \Bus2_Sel[0]~input_o\,
	combout => \BUS2[0]~14_combout\);

-- Location: IOIBUF_X34_Y5_N22
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: IOIBUF_X34_Y8_N22
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: LCCOMB_X29_Y7_N16
\ALU_unit|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux8~4_combout\ = (\ALU_Sel[2]~input_o\ & ((\ALU_Sel[1]~input_o\))) # (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_unit|Mux8~4_combout\);

-- Location: LCCOMB_X32_Y6_N0
\ALU_unit|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add3~0_combout\ = (\BUS1[0]~1_combout\ & (B_Reg(0) $ (VCC))) # (!\BUS1[0]~1_combout\ & (B_Reg(0) & VCC))
-- \ALU_unit|Add3~1\ = CARRY((\BUS1[0]~1_combout\ & B_Reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[0]~1_combout\,
	datab => B_Reg(0),
	datad => VCC,
	combout => \ALU_unit|Add3~0_combout\,
	cout => \ALU_unit|Add3~1\);

-- Location: LCCOMB_X30_Y7_N10
\ALU_unit|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~4_combout\ = B_Reg(0) $ (VCC)
-- \ALU_unit|Add2~5\ = CARRY(B_Reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(0),
	datad => VCC,
	combout => \ALU_unit|Add2~4_combout\,
	cout => \ALU_unit|Add2~5\);

-- Location: LCCOMB_X29_Y7_N6
\ALU_unit|Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~7_combout\ = (\ALU_Sel[2]~input_o\ & (\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_unit|Add2~7_combout\);

-- Location: LCCOMB_X29_Y7_N24
\ALU_unit|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~6_combout\ = \ALU_Sel[2]~input_o\ $ (((\ALU_Sel[0]~input_o\) # (\ALU_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_unit|Add2~6_combout\);

-- Location: LCCOMB_X30_Y6_N0
\ALU_unit|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux8~0_combout\ = (!\ALU_Sel[2]~input_o\ & \ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_unit|Mux8~0_combout\);

-- Location: LCCOMB_X31_Y8_N16
\ALU_unit|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux8~1_combout\ = (\ALU_Sel[2]~input_o\) # ((\ALU_Sel[1]~input_o\ & \ALU_Sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \ALU_unit|Mux8~1_combout\);

-- Location: LCCOMB_X31_Y8_N22
\ALU_unit|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux8~2_combout\ = (\BUS1[0]~1_combout\ & ((\ALU_unit|Mux8~1_combout\) # ((\ALU_unit|Mux8~0_combout\ & B_Reg(0))))) # (!\BUS1[0]~1_combout\ & (\ALU_unit|Mux8~1_combout\ & ((B_Reg(0)) # (!\ALU_unit|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[0]~1_combout\,
	datab => \ALU_unit|Mux8~0_combout\,
	datac => \ALU_unit|Mux8~1_combout\,
	datad => B_Reg(0),
	combout => \ALU_unit|Mux8~2_combout\);

-- Location: LCCOMB_X32_Y7_N0
\ALU_unit|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add0~0_combout\ = (\BUS1[0]~1_combout\ & ((GND) # (!B_Reg(0)))) # (!\BUS1[0]~1_combout\ & (B_Reg(0) $ (GND)))
-- \ALU_unit|Add0~1\ = CARRY((\BUS1[0]~1_combout\) # (!B_Reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[0]~1_combout\,
	datab => B_Reg(0),
	datad => VCC,
	combout => \ALU_unit|Add0~0_combout\,
	cout => \ALU_unit|Add0~1\);

-- Location: LCCOMB_X31_Y7_N0
\ALU_unit|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add1~0_combout\ = B_Reg(0) $ (VCC)
-- \ALU_unit|Add1~1\ = CARRY(B_Reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => B_Reg(0),
	datad => VCC,
	combout => \ALU_unit|Add1~0_combout\,
	cout => \ALU_unit|Add1~1\);

-- Location: LCCOMB_X31_Y8_N20
\ALU_unit|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux8~3_combout\ = (\ALU_unit|Mux8~2_combout\ & ((\ALU_unit|Mux8~0_combout\) # ((\ALU_unit|Add1~0_combout\)))) # (!\ALU_unit|Mux8~2_combout\ & (!\ALU_unit|Mux8~0_combout\ & (\ALU_unit|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux8~2_combout\,
	datab => \ALU_unit|Mux8~0_combout\,
	datac => \ALU_unit|Add0~0_combout\,
	datad => \ALU_unit|Add1~0_combout\,
	combout => \ALU_unit|Mux8~3_combout\);

-- Location: LCCOMB_X31_Y8_N14
\ALU_unit|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~8_combout\ = (\ALU_unit|Add2~4_combout\ & ((\ALU_unit|Add2~7_combout\) # ((\ALU_unit|Add2~6_combout\ & \ALU_unit|Mux8~3_combout\)))) # (!\ALU_unit|Add2~4_combout\ & (((\ALU_unit|Add2~6_combout\ & \ALU_unit|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add2~4_combout\,
	datab => \ALU_unit|Add2~7_combout\,
	datac => \ALU_unit|Add2~6_combout\,
	datad => \ALU_unit|Mux8~3_combout\,
	combout => \ALU_unit|Add2~8_combout\);

-- Location: LCCOMB_X31_Y8_N0
\ALU_unit|Add2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~9_combout\ = (\ALU_unit|Add2~8_combout\) # ((\ALU_unit|Mux8~4_combout\ & \ALU_unit|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux8~4_combout\,
	datab => \ALU_unit|Add3~0_combout\,
	datad => \ALU_unit|Add2~8_combout\,
	combout => \ALU_unit|Add2~9_combout\);

-- Location: LCCOMB_X31_Y8_N4
\BUS2[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[0]~21_combout\ = (\BUS2[0]~14_combout\) # ((!\Bus2_Sel[1]~input_o\ & (!\Bus2_Sel[0]~input_o\ & \ALU_unit|Add2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \Bus2_Sel[0]~input_o\,
	datac => \BUS2[0]~14_combout\,
	datad => \ALU_unit|Add2~9_combout\,
	combout => \BUS2[0]~21_combout\);

-- Location: LCCOMB_X30_Y8_N16
\IR_Reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IR_Reg[0]~feeder_combout\ = \BUS2[0]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS2[0]~21_combout\,
	combout => \IR_Reg[0]~feeder_combout\);

-- Location: IOIBUF_X34_Y9_N22
\IR_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR_Load,
	o => \IR_Load~input_o\);

-- Location: FF_X30_Y8_N17
\IR_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR_Reg[0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR_Reg(0));

-- Location: IOIBUF_X30_Y24_N1
\from_memory[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(1),
	o => \from_memory[1]~input_o\);

-- Location: FF_X31_Y6_N11
\A_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BUS2[1]~22_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_Reg(1));

-- Location: FF_X31_Y6_N21
\B_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BUS2[1]~22_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_Reg(1));

-- Location: LCCOMB_X32_Y8_N2
\PC[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[1]~11_combout\ = (PC(1) & (!\PC[0]~9\)) # (!PC(1) & ((\PC[0]~9\) # (GND)))
-- \PC[1]~12\ = CARRY((!\PC[0]~9\) # (!PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(1),
	datad => VCC,
	cin => \PC[0]~9\,
	combout => \PC[1]~11_combout\,
	cout => \PC[1]~12\);

-- Location: FF_X32_Y8_N3
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[1]~11_combout\,
	asdata => \BUS2[1]~22_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X31_Y6_N20
\BUS1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[1]~2_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B_Reg(1))) # (!\Bus1_Sel[1]~input_o\ & ((PC(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => B_Reg(1),
	datad => PC(1),
	combout => \BUS1[1]~2_combout\);

-- Location: LCCOMB_X31_Y6_N0
\BUS1[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[1]~3_combout\ = (\BUS1[1]~2_combout\) # ((A_Reg(1) & (\Bus1_Sel[0]~input_o\ & !\Bus1_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_Reg(1),
	datab => \Bus1_Sel[0]~input_o\,
	datac => \Bus1_Sel[1]~input_o\,
	datad => \BUS1[1]~2_combout\,
	combout => \BUS1[1]~3_combout\);

-- Location: LCCOMB_X31_Y6_N16
\BUS2[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[1]~15_combout\ = (\Bus2_Sel[0]~input_o\ & (((\BUS1[1]~3_combout\ & !\Bus2_Sel[1]~input_o\)))) # (!\Bus2_Sel[0]~input_o\ & (\from_memory[1]~input_o\ & ((\Bus2_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[1]~input_o\,
	datab => \BUS1[1]~3_combout\,
	datac => \Bus2_Sel[0]~input_o\,
	datad => \Bus2_Sel[1]~input_o\,
	combout => \BUS2[1]~15_combout\);

-- Location: LCCOMB_X30_Y7_N12
\ALU_unit|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~10_combout\ = (B_Reg(1) & (\ALU_unit|Add2~5\ & VCC)) # (!B_Reg(1) & (!\ALU_unit|Add2~5\))
-- \ALU_unit|Add2~11\ = CARRY((!B_Reg(1) & !\ALU_unit|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => B_Reg(1),
	datad => VCC,
	cin => \ALU_unit|Add2~5\,
	combout => \ALU_unit|Add2~10_combout\,
	cout => \ALU_unit|Add2~11\);

-- Location: LCCOMB_X31_Y7_N2
\ALU_unit|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add1~2_combout\ = (B_Reg(1) & (!\ALU_unit|Add1~1\)) # (!B_Reg(1) & ((\ALU_unit|Add1~1\) # (GND)))
-- \ALU_unit|Add1~3\ = CARRY((!\ALU_unit|Add1~1\) # (!B_Reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(1),
	datad => VCC,
	cin => \ALU_unit|Add1~1\,
	combout => \ALU_unit|Add1~2_combout\,
	cout => \ALU_unit|Add1~3\);

-- Location: LCCOMB_X32_Y7_N2
\ALU_unit|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add0~2_combout\ = (\BUS1[1]~3_combout\ & ((B_Reg(1) & (!\ALU_unit|Add0~1\)) # (!B_Reg(1) & (\ALU_unit|Add0~1\ & VCC)))) # (!\BUS1[1]~3_combout\ & ((B_Reg(1) & ((\ALU_unit|Add0~1\) # (GND))) # (!B_Reg(1) & (!\ALU_unit|Add0~1\))))
-- \ALU_unit|Add0~3\ = CARRY((\BUS1[1]~3_combout\ & (B_Reg(1) & !\ALU_unit|Add0~1\)) # (!\BUS1[1]~3_combout\ & ((B_Reg(1)) # (!\ALU_unit|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[1]~3_combout\,
	datab => B_Reg(1),
	datad => VCC,
	cin => \ALU_unit|Add0~1\,
	combout => \ALU_unit|Add0~2_combout\,
	cout => \ALU_unit|Add0~3\);

-- Location: LCCOMB_X32_Y7_N18
\ALU_unit|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux7~0_combout\ = (\ALU_unit|Mux8~1_combout\ & ((\ALU_unit|Add1~2_combout\) # ((\ALU_unit|Mux8~0_combout\)))) # (!\ALU_unit|Mux8~1_combout\ & (((!\ALU_unit|Mux8~0_combout\ & \ALU_unit|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add1~2_combout\,
	datab => \ALU_unit|Mux8~1_combout\,
	datac => \ALU_unit|Mux8~0_combout\,
	datad => \ALU_unit|Add0~2_combout\,
	combout => \ALU_unit|Mux7~0_combout\);

-- Location: LCCOMB_X32_Y7_N28
\ALU_unit|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux7~1_combout\ = (\ALU_unit|Mux8~0_combout\ & ((B_Reg(1) & ((\BUS1[1]~3_combout\) # (\ALU_unit|Mux7~0_combout\))) # (!B_Reg(1) & (\BUS1[1]~3_combout\ & \ALU_unit|Mux7~0_combout\)))) # (!\ALU_unit|Mux8~0_combout\ & 
-- (((\ALU_unit|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux8~0_combout\,
	datab => B_Reg(1),
	datac => \BUS1[1]~3_combout\,
	datad => \ALU_unit|Mux7~0_combout\,
	combout => \ALU_unit|Mux7~1_combout\);

-- Location: LCCOMB_X32_Y7_N30
\ALU_unit|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~12_combout\ = (\ALU_unit|Add2~7_combout\ & ((\ALU_unit|Add2~10_combout\) # ((\ALU_unit|Add2~6_combout\ & \ALU_unit|Mux7~1_combout\)))) # (!\ALU_unit|Add2~7_combout\ & (\ALU_unit|Add2~6_combout\ & ((\ALU_unit|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add2~7_combout\,
	datab => \ALU_unit|Add2~6_combout\,
	datac => \ALU_unit|Add2~10_combout\,
	datad => \ALU_unit|Mux7~1_combout\,
	combout => \ALU_unit|Add2~12_combout\);

-- Location: LCCOMB_X32_Y6_N2
\ALU_unit|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add3~2_combout\ = (\BUS1[1]~3_combout\ & ((B_Reg(1) & (\ALU_unit|Add3~1\ & VCC)) # (!B_Reg(1) & (!\ALU_unit|Add3~1\)))) # (!\BUS1[1]~3_combout\ & ((B_Reg(1) & (!\ALU_unit|Add3~1\)) # (!B_Reg(1) & ((\ALU_unit|Add3~1\) # (GND)))))
-- \ALU_unit|Add3~3\ = CARRY((\BUS1[1]~3_combout\ & (!B_Reg(1) & !\ALU_unit|Add3~1\)) # (!\BUS1[1]~3_combout\ & ((!\ALU_unit|Add3~1\) # (!B_Reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[1]~3_combout\,
	datab => B_Reg(1),
	datad => VCC,
	cin => \ALU_unit|Add3~1\,
	combout => \ALU_unit|Add3~2_combout\,
	cout => \ALU_unit|Add3~3\);

-- Location: LCCOMB_X32_Y6_N18
\ALU_unit|Add2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~13_combout\ = (\ALU_unit|Add2~12_combout\) # ((\ALU_unit|Mux8~4_combout\ & \ALU_unit|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_unit|Mux8~4_combout\,
	datac => \ALU_unit|Add2~12_combout\,
	datad => \ALU_unit|Add3~2_combout\,
	combout => \ALU_unit|Add2~13_combout\);

-- Location: LCCOMB_X31_Y6_N10
\BUS2[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[1]~22_combout\ = (\BUS2[1]~15_combout\) # ((!\Bus2_Sel[1]~input_o\ & (!\Bus2_Sel[0]~input_o\ & \ALU_unit|Add2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \BUS2[1]~15_combout\,
	datac => \Bus2_Sel[0]~input_o\,
	datad => \ALU_unit|Add2~13_combout\,
	combout => \BUS2[1]~22_combout\);

-- Location: LCCOMB_X32_Y8_N24
\IR_Reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IR_Reg[1]~feeder_combout\ = \BUS2[1]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS2[1]~22_combout\,
	combout => \IR_Reg[1]~feeder_combout\);

-- Location: FF_X32_Y8_N25
\IR_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR_Reg[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR_Reg(1));

-- Location: IOIBUF_X28_Y0_N22
\from_memory[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(2),
	o => \from_memory[2]~input_o\);

-- Location: FF_X31_Y7_N21
\B_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BUS2[2]~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_Reg(2));

-- Location: LCCOMB_X32_Y8_N4
\PC[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[2]~13_combout\ = (PC(2) & (\PC[1]~12\ $ (GND))) # (!PC(2) & (!\PC[1]~12\ & VCC))
-- \PC[2]~14\ = CARRY((PC(2) & !\PC[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(2),
	datad => VCC,
	cin => \PC[1]~12\,
	combout => \PC[2]~13_combout\,
	cout => \PC[2]~14\);

-- Location: FF_X32_Y8_N5
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[2]~13_combout\,
	asdata => \BUS2[2]~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X31_Y7_N26
\BUS1[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[2]~4_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B_Reg(2))) # (!\Bus1_Sel[1]~input_o\ & ((PC(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => B_Reg(2),
	datac => \Bus1_Sel[0]~input_o\,
	datad => PC(2),
	combout => \BUS1[2]~4_combout\);

-- Location: LCCOMB_X29_Y7_N2
\A_Reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A_Reg[2]~feeder_combout\ = \BUS2[2]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS2[2]~23_combout\,
	combout => \A_Reg[2]~feeder_combout\);

-- Location: FF_X29_Y7_N3
\A_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Reg[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_Reg(2));

-- Location: LCCOMB_X31_Y7_N28
\BUS1[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[2]~5_combout\ = (\BUS1[2]~4_combout\) # ((!\Bus1_Sel[1]~input_o\ & (\Bus1_Sel[0]~input_o\ & A_Reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => \BUS1[2]~4_combout\,
	datad => A_Reg(2),
	combout => \BUS1[2]~5_combout\);

-- Location: LCCOMB_X29_Y7_N30
\BUS2[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[2]~16_combout\ = (\Bus2_Sel[1]~input_o\ & (\from_memory[2]~input_o\ & ((!\Bus2_Sel[0]~input_o\)))) # (!\Bus2_Sel[1]~input_o\ & (((\BUS1[2]~5_combout\ & \Bus2_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[2]~input_o\,
	datab => \Bus2_Sel[1]~input_o\,
	datac => \BUS1[2]~5_combout\,
	datad => \Bus2_Sel[0]~input_o\,
	combout => \BUS2[2]~16_combout\);

-- Location: LCCOMB_X32_Y6_N4
\ALU_unit|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add3~4_combout\ = ((B_Reg(2) $ (\BUS1[2]~5_combout\ $ (!\ALU_unit|Add3~3\)))) # (GND)
-- \ALU_unit|Add3~5\ = CARRY((B_Reg(2) & ((\BUS1[2]~5_combout\) # (!\ALU_unit|Add3~3\))) # (!B_Reg(2) & (\BUS1[2]~5_combout\ & !\ALU_unit|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(2),
	datab => \BUS1[2]~5_combout\,
	datad => VCC,
	cin => \ALU_unit|Add3~3\,
	combout => \ALU_unit|Add3~4_combout\,
	cout => \ALU_unit|Add3~5\);

-- Location: LCCOMB_X30_Y7_N14
\ALU_unit|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~14_combout\ = (B_Reg(2) & ((GND) # (!\ALU_unit|Add2~11\))) # (!B_Reg(2) & (\ALU_unit|Add2~11\ $ (GND)))
-- \ALU_unit|Add2~15\ = CARRY((B_Reg(2)) # (!\ALU_unit|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(2),
	datad => VCC,
	cin => \ALU_unit|Add2~11\,
	combout => \ALU_unit|Add2~14_combout\,
	cout => \ALU_unit|Add2~15\);

-- Location: LCCOMB_X31_Y7_N20
\ALU_unit|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux6~0_combout\ = (\ALU_unit|Mux8~0_combout\ & ((\ALU_unit|Mux8~1_combout\ & ((B_Reg(2)) # (\BUS1[2]~5_combout\))) # (!\ALU_unit|Mux8~1_combout\ & (B_Reg(2) & \BUS1[2]~5_combout\)))) # (!\ALU_unit|Mux8~0_combout\ & (\ALU_unit|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux8~0_combout\,
	datab => \ALU_unit|Mux8~1_combout\,
	datac => B_Reg(2),
	datad => \BUS1[2]~5_combout\,
	combout => \ALU_unit|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y7_N4
\ALU_unit|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add1~4_combout\ = (B_Reg(2) & (\ALU_unit|Add1~3\ $ (GND))) # (!B_Reg(2) & (!\ALU_unit|Add1~3\ & VCC))
-- \ALU_unit|Add1~5\ = CARRY((B_Reg(2) & !\ALU_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => B_Reg(2),
	datad => VCC,
	cin => \ALU_unit|Add1~3\,
	combout => \ALU_unit|Add1~4_combout\,
	cout => \ALU_unit|Add1~5\);

-- Location: LCCOMB_X32_Y7_N4
\ALU_unit|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add0~4_combout\ = ((B_Reg(2) $ (\BUS1[2]~5_combout\ $ (\ALU_unit|Add0~3\)))) # (GND)
-- \ALU_unit|Add0~5\ = CARRY((B_Reg(2) & (\BUS1[2]~5_combout\ & !\ALU_unit|Add0~3\)) # (!B_Reg(2) & ((\BUS1[2]~5_combout\) # (!\ALU_unit|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(2),
	datab => \BUS1[2]~5_combout\,
	datad => VCC,
	cin => \ALU_unit|Add0~3\,
	combout => \ALU_unit|Add0~4_combout\,
	cout => \ALU_unit|Add0~5\);

-- Location: LCCOMB_X29_Y7_N12
\ALU_unit|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux6~1_combout\ = (\ALU_unit|Mux6~0_combout\ & ((\ALU_unit|Mux8~0_combout\) # ((\ALU_unit|Add1~4_combout\)))) # (!\ALU_unit|Mux6~0_combout\ & (!\ALU_unit|Mux8~0_combout\ & ((\ALU_unit|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux6~0_combout\,
	datab => \ALU_unit|Mux8~0_combout\,
	datac => \ALU_unit|Add1~4_combout\,
	datad => \ALU_unit|Add0~4_combout\,
	combout => \ALU_unit|Mux6~1_combout\);

-- Location: LCCOMB_X29_Y7_N18
\ALU_unit|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~16_combout\ = (\ALU_unit|Add2~7_combout\ & ((\ALU_unit|Add2~14_combout\) # ((\ALU_unit|Add2~6_combout\ & \ALU_unit|Mux6~1_combout\)))) # (!\ALU_unit|Add2~7_combout\ & (\ALU_unit|Add2~6_combout\ & ((\ALU_unit|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add2~7_combout\,
	datab => \ALU_unit|Add2~6_combout\,
	datac => \ALU_unit|Add2~14_combout\,
	datad => \ALU_unit|Mux6~1_combout\,
	combout => \ALU_unit|Add2~16_combout\);

-- Location: LCCOMB_X29_Y7_N28
\ALU_unit|Add2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~17_combout\ = (\ALU_unit|Add2~16_combout\) # ((\ALU_unit|Mux8~4_combout\ & \ALU_unit|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_unit|Mux8~4_combout\,
	datac => \ALU_unit|Add3~4_combout\,
	datad => \ALU_unit|Add2~16_combout\,
	combout => \ALU_unit|Add2~17_combout\);

-- Location: LCCOMB_X29_Y7_N0
\BUS2[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[2]~23_combout\ = (\BUS2[2]~16_combout\) # ((!\Bus2_Sel[0]~input_o\ & (!\Bus2_Sel[1]~input_o\ & \ALU_unit|Add2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS2[2]~16_combout\,
	datab => \Bus2_Sel[0]~input_o\,
	datac => \Bus2_Sel[1]~input_o\,
	datad => \ALU_unit|Add2~17_combout\,
	combout => \BUS2[2]~23_combout\);

-- Location: FF_X29_Y7_N1
\IR_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BUS2[2]~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR_Reg(2));

-- Location: IOIBUF_X34_Y7_N22
\from_memory[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(3),
	o => \from_memory[3]~input_o\);

-- Location: FF_X31_Y7_N23
\B_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BUS2[3]~24_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_Reg(3));

-- Location: LCCOMB_X32_Y8_N6
\PC[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[3]~15_combout\ = (PC(3) & (!\PC[2]~14\)) # (!PC(3) & ((\PC[2]~14\) # (GND)))
-- \PC[3]~16\ = CARRY((!\PC[2]~14\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datad => VCC,
	cin => \PC[2]~14\,
	combout => \PC[3]~15_combout\,
	cout => \PC[3]~16\);

-- Location: FF_X32_Y8_N7
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[3]~15_combout\,
	asdata => \BUS2[3]~24_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X31_Y7_N22
\BUS1[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[3]~6_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B_Reg(3))) # (!\Bus1_Sel[1]~input_o\ & ((PC(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => B_Reg(3),
	datad => PC(3),
	combout => \BUS1[3]~6_combout\);

-- Location: LCCOMB_X33_Y7_N12
\A_Reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A_Reg[3]~feeder_combout\ = \BUS2[3]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS2[3]~24_combout\,
	combout => \A_Reg[3]~feeder_combout\);

-- Location: FF_X33_Y7_N13
\A_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Reg[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_Reg(3));

-- Location: LCCOMB_X31_Y7_N16
\BUS1[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[3]~7_combout\ = (\BUS1[3]~6_combout\) # ((!\Bus1_Sel[1]~input_o\ & (\Bus1_Sel[0]~input_o\ & A_Reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => \BUS1[3]~6_combout\,
	datad => A_Reg(3),
	combout => \BUS1[3]~7_combout\);

-- Location: LCCOMB_X33_Y7_N4
\BUS2[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[3]~17_combout\ = (\Bus2_Sel[1]~input_o\ & (!\Bus2_Sel[0]~input_o\ & (\from_memory[3]~input_o\))) # (!\Bus2_Sel[1]~input_o\ & (\Bus2_Sel[0]~input_o\ & ((\BUS1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \Bus2_Sel[0]~input_o\,
	datac => \from_memory[3]~input_o\,
	datad => \BUS1[3]~7_combout\,
	combout => \BUS2[3]~17_combout\);

-- Location: LCCOMB_X32_Y6_N6
\ALU_unit|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add3~6_combout\ = (B_Reg(3) & ((\BUS1[3]~7_combout\ & (\ALU_unit|Add3~5\ & VCC)) # (!\BUS1[3]~7_combout\ & (!\ALU_unit|Add3~5\)))) # (!B_Reg(3) & ((\BUS1[3]~7_combout\ & (!\ALU_unit|Add3~5\)) # (!\BUS1[3]~7_combout\ & ((\ALU_unit|Add3~5\) # 
-- (GND)))))
-- \ALU_unit|Add3~7\ = CARRY((B_Reg(3) & (!\BUS1[3]~7_combout\ & !\ALU_unit|Add3~5\)) # (!B_Reg(3) & ((!\ALU_unit|Add3~5\) # (!\BUS1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(3),
	datab => \BUS1[3]~7_combout\,
	datad => VCC,
	cin => \ALU_unit|Add3~5\,
	combout => \ALU_unit|Add3~6_combout\,
	cout => \ALU_unit|Add3~7\);

-- Location: LCCOMB_X30_Y7_N16
\ALU_unit|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~18_combout\ = (B_Reg(3) & (\ALU_unit|Add2~15\ & VCC)) # (!B_Reg(3) & (!\ALU_unit|Add2~15\))
-- \ALU_unit|Add2~19\ = CARRY((!B_Reg(3) & !\ALU_unit|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => B_Reg(3),
	datad => VCC,
	cin => \ALU_unit|Add2~15\,
	combout => \ALU_unit|Add2~18_combout\,
	cout => \ALU_unit|Add2~19\);

-- Location: LCCOMB_X31_Y7_N6
\ALU_unit|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add1~6_combout\ = (B_Reg(3) & (!\ALU_unit|Add1~5\)) # (!B_Reg(3) & ((\ALU_unit|Add1~5\) # (GND)))
-- \ALU_unit|Add1~7\ = CARRY((!\ALU_unit|Add1~5\) # (!B_Reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => B_Reg(3),
	datad => VCC,
	cin => \ALU_unit|Add1~5\,
	combout => \ALU_unit|Add1~6_combout\,
	cout => \ALU_unit|Add1~7\);

-- Location: LCCOMB_X32_Y7_N6
\ALU_unit|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add0~6_combout\ = (\BUS1[3]~7_combout\ & ((B_Reg(3) & (!\ALU_unit|Add0~5\)) # (!B_Reg(3) & (\ALU_unit|Add0~5\ & VCC)))) # (!\BUS1[3]~7_combout\ & ((B_Reg(3) & ((\ALU_unit|Add0~5\) # (GND))) # (!B_Reg(3) & (!\ALU_unit|Add0~5\))))
-- \ALU_unit|Add0~7\ = CARRY((\BUS1[3]~7_combout\ & (B_Reg(3) & !\ALU_unit|Add0~5\)) # (!\BUS1[3]~7_combout\ & ((B_Reg(3)) # (!\ALU_unit|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[3]~7_combout\,
	datab => B_Reg(3),
	datad => VCC,
	cin => \ALU_unit|Add0~5\,
	combout => \ALU_unit|Add0~6_combout\,
	cout => \ALU_unit|Add0~7\);

-- Location: LCCOMB_X32_Y7_N20
\ALU_unit|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux5~0_combout\ = (\ALU_unit|Mux8~0_combout\ & (\ALU_unit|Mux8~1_combout\)) # (!\ALU_unit|Mux8~0_combout\ & ((\ALU_unit|Mux8~1_combout\ & (\ALU_unit|Add1~6_combout\)) # (!\ALU_unit|Mux8~1_combout\ & ((\ALU_unit|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux8~0_combout\,
	datab => \ALU_unit|Mux8~1_combout\,
	datac => \ALU_unit|Add1~6_combout\,
	datad => \ALU_unit|Add0~6_combout\,
	combout => \ALU_unit|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y7_N2
\ALU_unit|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux5~1_combout\ = (B_Reg(3) & ((\ALU_unit|Mux5~0_combout\) # ((\BUS1[3]~7_combout\ & \ALU_unit|Mux8~0_combout\)))) # (!B_Reg(3) & (\ALU_unit|Mux5~0_combout\ & ((\BUS1[3]~7_combout\) # (!\ALU_unit|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(3),
	datab => \BUS1[3]~7_combout\,
	datac => \ALU_unit|Mux8~0_combout\,
	datad => \ALU_unit|Mux5~0_combout\,
	combout => \ALU_unit|Mux5~1_combout\);

-- Location: LCCOMB_X33_Y7_N20
\ALU_unit|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~20_combout\ = (\ALU_unit|Add2~6_combout\ & ((\ALU_unit|Mux5~1_combout\) # ((\ALU_unit|Add2~7_combout\ & \ALU_unit|Add2~18_combout\)))) # (!\ALU_unit|Add2~6_combout\ & (\ALU_unit|Add2~7_combout\ & (\ALU_unit|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add2~6_combout\,
	datab => \ALU_unit|Add2~7_combout\,
	datac => \ALU_unit|Add2~18_combout\,
	datad => \ALU_unit|Mux5~1_combout\,
	combout => \ALU_unit|Add2~20_combout\);

-- Location: LCCOMB_X33_Y7_N18
\ALU_unit|Add2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~21_combout\ = (\ALU_unit|Add2~20_combout\) # ((\ALU_unit|Add3~6_combout\ & \ALU_unit|Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_unit|Add3~6_combout\,
	datac => \ALU_unit|Mux8~4_combout\,
	datad => \ALU_unit|Add2~20_combout\,
	combout => \ALU_unit|Add2~21_combout\);

-- Location: LCCOMB_X33_Y7_N0
\BUS2[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[3]~24_combout\ = (\BUS2[3]~17_combout\) # ((!\Bus2_Sel[1]~input_o\ & (!\Bus2_Sel[0]~input_o\ & \ALU_unit|Add2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \Bus2_Sel[0]~input_o\,
	datac => \BUS2[3]~17_combout\,
	datad => \ALU_unit|Add2~21_combout\,
	combout => \BUS2[3]~24_combout\);

-- Location: FF_X32_Y7_N5
\IR_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BUS2[3]~24_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR_Reg(3));

-- Location: FF_X31_Y8_N1
\A_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BUS2[4]~25_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_Reg(4));

-- Location: LCCOMB_X32_Y8_N8
\PC[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[4]~17_combout\ = (PC(4) & (\PC[3]~16\ $ (GND))) # (!PC(4) & (!\PC[3]~16\ & VCC))
-- \PC[4]~18\ = CARRY((PC(4) & !\PC[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datad => VCC,
	cin => \PC[3]~16\,
	combout => \PC[4]~17_combout\,
	cout => \PC[4]~18\);

-- Location: FF_X32_Y8_N9
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[4]~17_combout\,
	asdata => \BUS2[4]~25_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: FF_X31_Y8_N25
\B_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BUS2[4]~25_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_Reg(4));

-- Location: LCCOMB_X31_Y8_N6
\BUS1[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[4]~8_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & ((B_Reg(4)))) # (!\Bus1_Sel[1]~input_o\ & (PC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[0]~input_o\,
	datab => \Bus1_Sel[1]~input_o\,
	datac => PC(4),
	datad => B_Reg(4),
	combout => \BUS1[4]~8_combout\);

-- Location: LCCOMB_X31_Y8_N18
\BUS1[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[4]~9_combout\ = (\BUS1[4]~8_combout\) # ((\Bus1_Sel[0]~input_o\ & (!\Bus1_Sel[1]~input_o\ & A_Reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[0]~input_o\,
	datab => \Bus1_Sel[1]~input_o\,
	datac => A_Reg(4),
	datad => \BUS1[4]~8_combout\,
	combout => \BUS1[4]~9_combout\);

-- Location: IOIBUF_X34_Y11_N8
\from_memory[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(4),
	o => \from_memory[4]~input_o\);

-- Location: LCCOMB_X31_Y8_N12
\BUS2[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[4]~18_combout\ = (\Bus2_Sel[1]~input_o\ & (((\from_memory[4]~input_o\ & !\Bus2_Sel[0]~input_o\)))) # (!\Bus2_Sel[1]~input_o\ & (\BUS1[4]~9_combout\ & ((\Bus2_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \BUS1[4]~9_combout\,
	datac => \from_memory[4]~input_o\,
	datad => \Bus2_Sel[0]~input_o\,
	combout => \BUS2[4]~18_combout\);

-- Location: LCCOMB_X32_Y6_N8
\ALU_unit|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add3~8_combout\ = ((\BUS1[4]~9_combout\ $ (B_Reg(4) $ (!\ALU_unit|Add3~7\)))) # (GND)
-- \ALU_unit|Add3~9\ = CARRY((\BUS1[4]~9_combout\ & ((B_Reg(4)) # (!\ALU_unit|Add3~7\))) # (!\BUS1[4]~9_combout\ & (B_Reg(4) & !\ALU_unit|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[4]~9_combout\,
	datab => B_Reg(4),
	datad => VCC,
	cin => \ALU_unit|Add3~7\,
	combout => \ALU_unit|Add3~8_combout\,
	cout => \ALU_unit|Add3~9\);

-- Location: LCCOMB_X30_Y7_N18
\ALU_unit|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~22_combout\ = (B_Reg(4) & ((GND) # (!\ALU_unit|Add2~19\))) # (!B_Reg(4) & (\ALU_unit|Add2~19\ $ (GND)))
-- \ALU_unit|Add2~23\ = CARRY((B_Reg(4)) # (!\ALU_unit|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(4),
	datad => VCC,
	cin => \ALU_unit|Add2~19\,
	combout => \ALU_unit|Add2~22_combout\,
	cout => \ALU_unit|Add2~23\);

-- Location: LCCOMB_X31_Y8_N24
\ALU_unit|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux4~0_combout\ = (\ALU_unit|Mux8~1_combout\ & (((B_Reg(4)) # (\BUS1[4]~9_combout\)) # (!\ALU_unit|Mux8~0_combout\))) # (!\ALU_unit|Mux8~1_combout\ & (\ALU_unit|Mux8~0_combout\ & (B_Reg(4) & \BUS1[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux8~1_combout\,
	datab => \ALU_unit|Mux8~0_combout\,
	datac => B_Reg(4),
	datad => \BUS1[4]~9_combout\,
	combout => \ALU_unit|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y7_N8
\ALU_unit|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add0~8_combout\ = ((\BUS1[4]~9_combout\ $ (B_Reg(4) $ (\ALU_unit|Add0~7\)))) # (GND)
-- \ALU_unit|Add0~9\ = CARRY((\BUS1[4]~9_combout\ & ((!\ALU_unit|Add0~7\) # (!B_Reg(4)))) # (!\BUS1[4]~9_combout\ & (!B_Reg(4) & !\ALU_unit|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[4]~9_combout\,
	datab => B_Reg(4),
	datad => VCC,
	cin => \ALU_unit|Add0~7\,
	combout => \ALU_unit|Add0~8_combout\,
	cout => \ALU_unit|Add0~9\);

-- Location: LCCOMB_X31_Y7_N8
\ALU_unit|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add1~8_combout\ = (B_Reg(4) & (\ALU_unit|Add1~7\ $ (GND))) # (!B_Reg(4) & (!\ALU_unit|Add1~7\ & VCC))
-- \ALU_unit|Add1~9\ = CARRY((B_Reg(4) & !\ALU_unit|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(4),
	datad => VCC,
	cin => \ALU_unit|Add1~7\,
	combout => \ALU_unit|Add1~8_combout\,
	cout => \ALU_unit|Add1~9\);

-- Location: LCCOMB_X32_Y7_N26
\ALU_unit|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux4~1_combout\ = (\ALU_unit|Mux4~0_combout\ & ((\ALU_unit|Mux8~0_combout\) # ((\ALU_unit|Add1~8_combout\)))) # (!\ALU_unit|Mux4~0_combout\ & (!\ALU_unit|Mux8~0_combout\ & (\ALU_unit|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux4~0_combout\,
	datab => \ALU_unit|Mux8~0_combout\,
	datac => \ALU_unit|Add0~8_combout\,
	datad => \ALU_unit|Add1~8_combout\,
	combout => \ALU_unit|Mux4~1_combout\);

-- Location: LCCOMB_X31_Y8_N2
\ALU_unit|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~24_combout\ = (\ALU_unit|Add2~6_combout\ & ((\ALU_unit|Mux4~1_combout\) # ((\ALU_unit|Add2~7_combout\ & \ALU_unit|Add2~22_combout\)))) # (!\ALU_unit|Add2~6_combout\ & (\ALU_unit|Add2~7_combout\ & (\ALU_unit|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add2~6_combout\,
	datab => \ALU_unit|Add2~7_combout\,
	datac => \ALU_unit|Add2~22_combout\,
	datad => \ALU_unit|Mux4~1_combout\,
	combout => \ALU_unit|Add2~24_combout\);

-- Location: LCCOMB_X31_Y8_N28
\ALU_unit|Add2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~25_combout\ = (\ALU_unit|Add2~24_combout\) # ((\ALU_unit|Mux8~4_combout\ & \ALU_unit|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux8~4_combout\,
	datac => \ALU_unit|Add3~8_combout\,
	datad => \ALU_unit|Add2~24_combout\,
	combout => \ALU_unit|Add2~25_combout\);

-- Location: LCCOMB_X31_Y8_N26
\BUS2[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[4]~25_combout\ = (\BUS2[4]~18_combout\) # ((!\Bus2_Sel[1]~input_o\ & (!\Bus2_Sel[0]~input_o\ & \ALU_unit|Add2~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \Bus2_Sel[0]~input_o\,
	datac => \BUS2[4]~18_combout\,
	datad => \ALU_unit|Add2~25_combout\,
	combout => \BUS2[4]~25_combout\);

-- Location: LCCOMB_X32_Y8_N26
\IR_Reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IR_Reg[4]~feeder_combout\ = \BUS2[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS2[4]~25_combout\,
	combout => \IR_Reg[4]~feeder_combout\);

-- Location: FF_X32_Y8_N27
\IR_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR_Reg[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR_Reg(4));

-- Location: IOIBUF_X34_Y2_N15
\from_memory[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(5),
	o => \from_memory[5]~input_o\);

-- Location: LCCOMB_X33_Y7_N26
\A_Reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A_Reg[5]~feeder_combout\ = \BUS2[5]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS2[5]~26_combout\,
	combout => \A_Reg[5]~feeder_combout\);

-- Location: FF_X33_Y7_N27
\A_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A_Reg[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_Reg(5));

-- Location: FF_X31_Y7_N19
\B_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BUS2[5]~26_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_Reg(5));

-- Location: LCCOMB_X32_Y8_N10
\PC[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[5]~19_combout\ = (PC(5) & (!\PC[4]~18\)) # (!PC(5) & ((\PC[4]~18\) # (GND)))
-- \PC[5]~20\ = CARRY((!\PC[4]~18\) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datad => VCC,
	cin => \PC[4]~18\,
	combout => \PC[5]~19_combout\,
	cout => \PC[5]~20\);

-- Location: FF_X32_Y8_N11
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[5]~19_combout\,
	asdata => \BUS2[5]~26_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X31_Y7_N18
\BUS1[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[5]~10_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B_Reg(5))) # (!\Bus1_Sel[1]~input_o\ & ((PC(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => B_Reg(5),
	datad => PC(5),
	combout => \BUS1[5]~10_combout\);

-- Location: LCCOMB_X31_Y7_N24
\BUS1[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[5]~11_combout\ = (\BUS1[5]~10_combout\) # ((!\Bus1_Sel[1]~input_o\ & (\Bus1_Sel[0]~input_o\ & A_Reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => A_Reg(5),
	datad => \BUS1[5]~10_combout\,
	combout => \BUS1[5]~11_combout\);

-- Location: LCCOMB_X33_Y7_N8
\BUS2[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[5]~19_combout\ = (\Bus2_Sel[1]~input_o\ & (!\Bus2_Sel[0]~input_o\ & (\from_memory[5]~input_o\))) # (!\Bus2_Sel[1]~input_o\ & (\Bus2_Sel[0]~input_o\ & ((\BUS1[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \Bus2_Sel[0]~input_o\,
	datac => \from_memory[5]~input_o\,
	datad => \BUS1[5]~11_combout\,
	combout => \BUS2[5]~19_combout\);

-- Location: LCCOMB_X32_Y6_N10
\ALU_unit|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add3~10_combout\ = (\BUS1[5]~11_combout\ & ((B_Reg(5) & (\ALU_unit|Add3~9\ & VCC)) # (!B_Reg(5) & (!\ALU_unit|Add3~9\)))) # (!\BUS1[5]~11_combout\ & ((B_Reg(5) & (!\ALU_unit|Add3~9\)) # (!B_Reg(5) & ((\ALU_unit|Add3~9\) # (GND)))))
-- \ALU_unit|Add3~11\ = CARRY((\BUS1[5]~11_combout\ & (!B_Reg(5) & !\ALU_unit|Add3~9\)) # (!\BUS1[5]~11_combout\ & ((!\ALU_unit|Add3~9\) # (!B_Reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[5]~11_combout\,
	datab => B_Reg(5),
	datad => VCC,
	cin => \ALU_unit|Add3~9\,
	combout => \ALU_unit|Add3~10_combout\,
	cout => \ALU_unit|Add3~11\);

-- Location: LCCOMB_X30_Y7_N20
\ALU_unit|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~26_combout\ = (B_Reg(5) & (\ALU_unit|Add2~23\ & VCC)) # (!B_Reg(5) & (!\ALU_unit|Add2~23\))
-- \ALU_unit|Add2~27\ = CARRY((!B_Reg(5) & !\ALU_unit|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => B_Reg(5),
	datad => VCC,
	cin => \ALU_unit|Add2~23\,
	combout => \ALU_unit|Add2~26_combout\,
	cout => \ALU_unit|Add2~27\);

-- Location: LCCOMB_X31_Y7_N10
\ALU_unit|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add1~10_combout\ = (B_Reg(5) & (!\ALU_unit|Add1~9\)) # (!B_Reg(5) & ((\ALU_unit|Add1~9\) # (GND)))
-- \ALU_unit|Add1~11\ = CARRY((!\ALU_unit|Add1~9\) # (!B_Reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(5),
	datad => VCC,
	cin => \ALU_unit|Add1~9\,
	combout => \ALU_unit|Add1~10_combout\,
	cout => \ALU_unit|Add1~11\);

-- Location: LCCOMB_X32_Y7_N10
\ALU_unit|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add0~10_combout\ = (B_Reg(5) & ((\BUS1[5]~11_combout\ & (!\ALU_unit|Add0~9\)) # (!\BUS1[5]~11_combout\ & ((\ALU_unit|Add0~9\) # (GND))))) # (!B_Reg(5) & ((\BUS1[5]~11_combout\ & (\ALU_unit|Add0~9\ & VCC)) # (!\BUS1[5]~11_combout\ & 
-- (!\ALU_unit|Add0~9\))))
-- \ALU_unit|Add0~11\ = CARRY((B_Reg(5) & ((!\ALU_unit|Add0~9\) # (!\BUS1[5]~11_combout\))) # (!B_Reg(5) & (!\BUS1[5]~11_combout\ & !\ALU_unit|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(5),
	datab => \BUS1[5]~11_combout\,
	datad => VCC,
	cin => \ALU_unit|Add0~9\,
	combout => \ALU_unit|Add0~10_combout\,
	cout => \ALU_unit|Add0~11\);

-- Location: LCCOMB_X33_Y7_N6
\ALU_unit|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux3~0_combout\ = (\ALU_unit|Mux8~0_combout\ & (\ALU_unit|Mux8~1_combout\)) # (!\ALU_unit|Mux8~0_combout\ & ((\ALU_unit|Mux8~1_combout\ & (\ALU_unit|Add1~10_combout\)) # (!\ALU_unit|Mux8~1_combout\ & ((\ALU_unit|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux8~0_combout\,
	datab => \ALU_unit|Mux8~1_combout\,
	datac => \ALU_unit|Add1~10_combout\,
	datad => \ALU_unit|Add0~10_combout\,
	combout => \ALU_unit|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y7_N28
\ALU_unit|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux3~1_combout\ = (B_Reg(5) & ((\ALU_unit|Mux3~0_combout\) # ((\BUS1[5]~11_combout\ & \ALU_unit|Mux8~0_combout\)))) # (!B_Reg(5) & (\ALU_unit|Mux3~0_combout\ & ((\BUS1[5]~11_combout\) # (!\ALU_unit|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(5),
	datab => \BUS1[5]~11_combout\,
	datac => \ALU_unit|Mux8~0_combout\,
	datad => \ALU_unit|Mux3~0_combout\,
	combout => \ALU_unit|Mux3~1_combout\);

-- Location: LCCOMB_X33_Y7_N10
\ALU_unit|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~28_combout\ = (\ALU_unit|Add2~6_combout\ & ((\ALU_unit|Mux3~1_combout\) # ((\ALU_unit|Add2~7_combout\ & \ALU_unit|Add2~26_combout\)))) # (!\ALU_unit|Add2~6_combout\ & (\ALU_unit|Add2~7_combout\ & (\ALU_unit|Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add2~6_combout\,
	datab => \ALU_unit|Add2~7_combout\,
	datac => \ALU_unit|Add2~26_combout\,
	datad => \ALU_unit|Mux3~1_combout\,
	combout => \ALU_unit|Add2~28_combout\);

-- Location: LCCOMB_X33_Y7_N24
\ALU_unit|Add2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~29_combout\ = (\ALU_unit|Add2~28_combout\) # ((\ALU_unit|Add3~10_combout\ & \ALU_unit|Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add3~10_combout\,
	datac => \ALU_unit|Mux8~4_combout\,
	datad => \ALU_unit|Add2~28_combout\,
	combout => \ALU_unit|Add2~29_combout\);

-- Location: LCCOMB_X33_Y7_N22
\BUS2[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[5]~26_combout\ = (\BUS2[5]~19_combout\) # ((!\Bus2_Sel[1]~input_o\ & (!\Bus2_Sel[0]~input_o\ & \ALU_unit|Add2~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \Bus2_Sel[0]~input_o\,
	datac => \BUS2[5]~19_combout\,
	datad => \ALU_unit|Add2~29_combout\,
	combout => \BUS2[5]~26_combout\);

-- Location: FF_X32_Y7_N3
\IR_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BUS2[5]~26_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR_Reg(5));

-- Location: IOIBUF_X34_Y2_N22
\from_memory[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(6),
	o => \from_memory[6]~input_o\);

-- Location: FF_X31_Y6_N3
\A_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BUS2[6]~29_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_Reg(6));

-- Location: LCCOMB_X32_Y8_N12
\PC[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[6]~21_combout\ = (PC(6) & (\PC[5]~20\ $ (GND))) # (!PC(6) & (!\PC[5]~20\ & VCC))
-- \PC[6]~22\ = CARRY((PC(6) & !\PC[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(6),
	datad => VCC,
	cin => \PC[5]~20\,
	combout => \PC[6]~21_combout\,
	cout => \PC[6]~22\);

-- Location: FF_X32_Y8_N13
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[6]~21_combout\,
	asdata => \BUS2[6]~29_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: FF_X31_Y6_N15
\B_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BUS2[6]~29_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_Reg(6));

-- Location: LCCOMB_X31_Y6_N12
\BUS1[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[6]~12_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & ((B_Reg(6)))) # (!\Bus1_Sel[1]~input_o\ & (PC(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => PC(6),
	datad => B_Reg(6),
	combout => \BUS1[6]~12_combout\);

-- Location: LCCOMB_X31_Y6_N4
\BUS1[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[6]~13_combout\ = (\BUS1[6]~12_combout\) # ((!\Bus1_Sel[1]~input_o\ & (A_Reg(6) & \Bus1_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => A_Reg(6),
	datac => \Bus1_Sel[0]~input_o\,
	datad => \BUS1[6]~12_combout\,
	combout => \BUS1[6]~13_combout\);

-- Location: LCCOMB_X32_Y6_N12
\ALU_unit|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add3~12_combout\ = ((B_Reg(6) $ (\BUS1[6]~13_combout\ $ (!\ALU_unit|Add3~11\)))) # (GND)
-- \ALU_unit|Add3~13\ = CARRY((B_Reg(6) & ((\BUS1[6]~13_combout\) # (!\ALU_unit|Add3~11\))) # (!B_Reg(6) & (\BUS1[6]~13_combout\ & !\ALU_unit|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(6),
	datab => \BUS1[6]~13_combout\,
	datad => VCC,
	cin => \ALU_unit|Add3~11\,
	combout => \ALU_unit|Add3~12_combout\,
	cout => \ALU_unit|Add3~13\);

-- Location: LCCOMB_X31_Y6_N8
\ALU_unit|Add2~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~39_combout\ = (\ALU_unit|Add3~12_combout\ & ((\ALU_Sel[1]~input_o\ & ((\ALU_Sel[2]~input_o\))) # (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_unit|Add3~12_combout\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \ALU_unit|Add2~39_combout\);

-- Location: LCCOMB_X30_Y7_N22
\ALU_unit|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~30_combout\ = (B_Reg(6) & ((GND) # (!\ALU_unit|Add2~27\))) # (!B_Reg(6) & (\ALU_unit|Add2~27\ $ (GND)))
-- \ALU_unit|Add2~31\ = CARRY((B_Reg(6)) # (!\ALU_unit|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(6),
	datad => VCC,
	cin => \ALU_unit|Add2~27\,
	combout => \ALU_unit|Add2~30_combout\,
	cout => \ALU_unit|Add2~31\);

-- Location: LCCOMB_X31_Y6_N14
\ALU_unit|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~32_combout\ = (\ALU_unit|Mux8~0_combout\ & ((\ALU_unit|Mux8~1_combout\ & ((B_Reg(6)) # (\BUS1[6]~13_combout\))) # (!\ALU_unit|Mux8~1_combout\ & (B_Reg(6) & \BUS1[6]~13_combout\)))) # (!\ALU_unit|Mux8~0_combout\ & 
-- (\ALU_unit|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux8~0_combout\,
	datab => \ALU_unit|Mux8~1_combout\,
	datac => B_Reg(6),
	datad => \BUS1[6]~13_combout\,
	combout => \ALU_unit|Add2~32_combout\);

-- Location: LCCOMB_X31_Y7_N12
\ALU_unit|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add1~12_combout\ = (B_Reg(6) & (\ALU_unit|Add1~11\ $ (GND))) # (!B_Reg(6) & (!\ALU_unit|Add1~11\ & VCC))
-- \ALU_unit|Add1~13\ = CARRY((B_Reg(6) & !\ALU_unit|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(6),
	datad => VCC,
	cin => \ALU_unit|Add1~11\,
	combout => \ALU_unit|Add1~12_combout\,
	cout => \ALU_unit|Add1~13\);

-- Location: LCCOMB_X32_Y7_N12
\ALU_unit|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add0~12_combout\ = ((B_Reg(6) $ (\BUS1[6]~13_combout\ $ (\ALU_unit|Add0~11\)))) # (GND)
-- \ALU_unit|Add0~13\ = CARRY((B_Reg(6) & (\BUS1[6]~13_combout\ & !\ALU_unit|Add0~11\)) # (!B_Reg(6) & ((\BUS1[6]~13_combout\) # (!\ALU_unit|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(6),
	datab => \BUS1[6]~13_combout\,
	datad => VCC,
	cin => \ALU_unit|Add0~11\,
	combout => \ALU_unit|Add0~12_combout\,
	cout => \ALU_unit|Add0~13\);

-- Location: LCCOMB_X31_Y6_N6
\ALU_unit|Add2~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~33_combout\ = (\ALU_unit|Mux8~0_combout\ & (\ALU_unit|Add2~32_combout\)) # (!\ALU_unit|Mux8~0_combout\ & ((\ALU_unit|Add2~32_combout\ & (\ALU_unit|Add1~12_combout\)) # (!\ALU_unit|Add2~32_combout\ & ((\ALU_unit|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux8~0_combout\,
	datab => \ALU_unit|Add2~32_combout\,
	datac => \ALU_unit|Add1~12_combout\,
	datad => \ALU_unit|Add0~12_combout\,
	combout => \ALU_unit|Add2~33_combout\);

-- Location: LCCOMB_X31_Y6_N28
\ALU_unit|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~34_combout\ = (\ALU_unit|Add2~6_combout\ & ((\ALU_unit|Add2~33_combout\) # ((\ALU_unit|Add2~30_combout\ & \ALU_unit|Add2~7_combout\)))) # (!\ALU_unit|Add2~6_combout\ & (\ALU_unit|Add2~30_combout\ & (\ALU_unit|Add2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add2~6_combout\,
	datab => \ALU_unit|Add2~30_combout\,
	datac => \ALU_unit|Add2~7_combout\,
	datad => \ALU_unit|Add2~33_combout\,
	combout => \ALU_unit|Add2~34_combout\);

-- Location: LCCOMB_X31_Y6_N18
\BUS2[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[6]~28_combout\ = (\Bus2_Sel[0]~input_o\ & (\BUS1[6]~13_combout\)) # (!\Bus2_Sel[0]~input_o\ & (((\ALU_unit|Add2~39_combout\) # (\ALU_unit|Add2~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[0]~input_o\,
	datab => \BUS1[6]~13_combout\,
	datac => \ALU_unit|Add2~39_combout\,
	datad => \ALU_unit|Add2~34_combout\,
	combout => \BUS2[6]~28_combout\);

-- Location: LCCOMB_X31_Y6_N2
\BUS2[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[6]~29_combout\ = (\Bus2_Sel[1]~input_o\ & (\from_memory[6]~input_o\ & (!\Bus2_Sel[0]~input_o\))) # (!\Bus2_Sel[1]~input_o\ & (((\BUS2[6]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \from_memory[6]~input_o\,
	datac => \Bus2_Sel[0]~input_o\,
	datad => \BUS2[6]~28_combout\,
	combout => \BUS2[6]~29_combout\);

-- Location: LCCOMB_X32_Y8_N28
\IR_Reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IR_Reg[6]~feeder_combout\ = \BUS2[6]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS2[6]~29_combout\,
	combout => \IR_Reg[6]~feeder_combout\);

-- Location: FF_X32_Y8_N29
\IR_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR_Reg[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR_Reg(6));

-- Location: FF_X31_Y6_N25
\A_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BUS2[7]~27_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \A_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_Reg(7));

-- Location: FF_X31_Y6_N23
\B_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BUS2[7]~27_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_Reg(7));

-- Location: LCCOMB_X32_Y8_N14
\PC[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[7]~23_combout\ = PC(7) $ (\PC[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(7),
	cin => \PC[6]~22\,
	combout => \PC[7]~23_combout\);

-- Location: FF_X32_Y8_N15
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[7]~23_combout\,
	asdata => \BUS2[7]~27_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \PC_Load~input_o\,
	ena => \PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X31_Y6_N22
\BUS1[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[7]~14_combout\ = (!\Bus1_Sel[0]~input_o\ & ((\Bus1_Sel[1]~input_o\ & (B_Reg(7))) # (!\Bus1_Sel[1]~input_o\ & ((PC(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => \Bus1_Sel[0]~input_o\,
	datac => B_Reg(7),
	datad => PC(7),
	combout => \BUS1[7]~14_combout\);

-- Location: LCCOMB_X31_Y6_N26
\BUS1[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS1[7]~15_combout\ = (\BUS1[7]~14_combout\) # ((!\Bus1_Sel[1]~input_o\ & (A_Reg(7) & \Bus1_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel[1]~input_o\,
	datab => A_Reg(7),
	datac => \Bus1_Sel[0]~input_o\,
	datad => \BUS1[7]~14_combout\,
	combout => \BUS1[7]~15_combout\);

-- Location: IOIBUF_X34_Y17_N15
\from_memory[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(7),
	o => \from_memory[7]~input_o\);

-- Location: LCCOMB_X31_Y6_N30
\BUS2[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[7]~20_combout\ = (\Bus2_Sel[0]~input_o\ & (\BUS1[7]~15_combout\ & ((!\Bus2_Sel[1]~input_o\)))) # (!\Bus2_Sel[0]~input_o\ & (((\from_memory[7]~input_o\ & \Bus2_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[7]~15_combout\,
	datab => \from_memory[7]~input_o\,
	datac => \Bus2_Sel[0]~input_o\,
	datad => \Bus2_Sel[1]~input_o\,
	combout => \BUS2[7]~20_combout\);

-- Location: LCCOMB_X32_Y6_N14
\ALU_unit|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add3~14_combout\ = (\BUS1[7]~15_combout\ & ((B_Reg(7) & (\ALU_unit|Add3~13\ & VCC)) # (!B_Reg(7) & (!\ALU_unit|Add3~13\)))) # (!\BUS1[7]~15_combout\ & ((B_Reg(7) & (!\ALU_unit|Add3~13\)) # (!B_Reg(7) & ((\ALU_unit|Add3~13\) # (GND)))))
-- \ALU_unit|Add3~15\ = CARRY((\BUS1[7]~15_combout\ & (!B_Reg(7) & !\ALU_unit|Add3~13\)) # (!\BUS1[7]~15_combout\ & ((!\ALU_unit|Add3~13\) # (!B_Reg(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[7]~15_combout\,
	datab => B_Reg(7),
	datad => VCC,
	cin => \ALU_unit|Add3~13\,
	combout => \ALU_unit|Add3~14_combout\,
	cout => \ALU_unit|Add3~15\);

-- Location: LCCOMB_X32_Y6_N20
\ALU_unit|Add2~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~35_combout\ = (\ALU_unit|Add3~14_combout\ & ((\ALU_Sel[2]~input_o\ & ((\ALU_Sel[1]~input_o\))) # (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_unit|Add3~14_combout\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_unit|Add2~35_combout\);

-- Location: LCCOMB_X30_Y7_N24
\ALU_unit|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~36_combout\ = \ALU_unit|Add2~31\ $ (!B_Reg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => B_Reg(7),
	cin => \ALU_unit|Add2~31\,
	combout => \ALU_unit|Add2~36_combout\);

-- Location: LCCOMB_X31_Y7_N30
\ALU_unit|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~40_combout\ = (\ALU_Sel[2]~input_o\ & (\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & \ALU_unit|Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_unit|Add2~36_combout\,
	combout => \ALU_unit|Add2~40_combout\);

-- Location: LCCOMB_X32_Y7_N24
\ALU_unit|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux1~0_combout\ = (B_Reg(7) & ((\ALU_unit|Mux8~1_combout\) # ((\ALU_unit|Mux8~0_combout\ & \BUS1[7]~15_combout\)))) # (!B_Reg(7) & (\ALU_unit|Mux8~1_combout\ & ((\BUS1[7]~15_combout\) # (!\ALU_unit|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(7),
	datab => \ALU_unit|Mux8~1_combout\,
	datac => \ALU_unit|Mux8~0_combout\,
	datad => \BUS1[7]~15_combout\,
	combout => \ALU_unit|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y7_N14
\ALU_unit|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add0~14_combout\ = (B_Reg(7) & ((\BUS1[7]~15_combout\ & (!\ALU_unit|Add0~13\)) # (!\BUS1[7]~15_combout\ & ((\ALU_unit|Add0~13\) # (GND))))) # (!B_Reg(7) & ((\BUS1[7]~15_combout\ & (\ALU_unit|Add0~13\ & VCC)) # (!\BUS1[7]~15_combout\ & 
-- (!\ALU_unit|Add0~13\))))
-- \ALU_unit|Add0~15\ = CARRY((B_Reg(7) & ((!\ALU_unit|Add0~13\) # (!\BUS1[7]~15_combout\))) # (!B_Reg(7) & (!\BUS1[7]~15_combout\ & !\ALU_unit|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B_Reg(7),
	datab => \BUS1[7]~15_combout\,
	datad => VCC,
	cin => \ALU_unit|Add0~13\,
	combout => \ALU_unit|Add0~14_combout\,
	cout => \ALU_unit|Add0~15\);

-- Location: LCCOMB_X31_Y7_N14
\ALU_unit|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add1~14_combout\ = \ALU_unit|Add1~13\ $ (B_Reg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => B_Reg(7),
	cin => \ALU_unit|Add1~13\,
	combout => \ALU_unit|Add1~14_combout\);

-- Location: LCCOMB_X32_Y7_N22
\ALU_unit|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux1~1_combout\ = (\ALU_unit|Mux8~0_combout\ & (\ALU_unit|Mux1~0_combout\)) # (!\ALU_unit|Mux8~0_combout\ & ((\ALU_unit|Mux1~0_combout\ & ((\ALU_unit|Add1~14_combout\))) # (!\ALU_unit|Mux1~0_combout\ & (\ALU_unit|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Mux8~0_combout\,
	datab => \ALU_unit|Mux1~0_combout\,
	datac => \ALU_unit|Add0~14_combout\,
	datad => \ALU_unit|Add1~14_combout\,
	combout => \ALU_unit|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y6_N24
\ALU_unit|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add2~38_combout\ = (\ALU_unit|Add2~35_combout\) # ((\ALU_unit|Add2~40_combout\) # ((\ALU_unit|Add2~6_combout\ & \ALU_unit|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add2~6_combout\,
	datab => \ALU_unit|Add2~35_combout\,
	datac => \ALU_unit|Add2~40_combout\,
	datad => \ALU_unit|Mux1~1_combout\,
	combout => \ALU_unit|Add2~38_combout\);

-- Location: LCCOMB_X31_Y6_N24
\BUS2[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BUS2[7]~27_combout\ = (\BUS2[7]~20_combout\) # ((!\Bus2_Sel[1]~input_o\ & (!\Bus2_Sel[0]~input_o\ & \ALU_unit|Add2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bus2_Sel[1]~input_o\,
	datab => \BUS2[7]~20_combout\,
	datac => \Bus2_Sel[0]~input_o\,
	datad => \ALU_unit|Add2~38_combout\,
	combout => \BUS2[7]~27_combout\);

-- Location: LCCOMB_X30_Y6_N20
\IR_Reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IR_Reg[7]~feeder_combout\ = \BUS2[7]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS2[7]~27_combout\,
	combout => \IR_Reg[7]~feeder_combout\);

-- Location: FF_X30_Y6_N21
\IR_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR_Reg[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \IR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR_Reg(7));

-- Location: LCCOMB_X30_Y8_N10
\MAR[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MAR[0]~feeder_combout\ = \BUS2[0]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS2[0]~21_combout\,
	combout => \MAR[0]~feeder_combout\);

-- Location: IOIBUF_X34_Y9_N15
\MAR_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAR_Load,
	o => \MAR_Load~input_o\);

-- Location: FF_X30_Y8_N11
\MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MAR[0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(0));

-- Location: LCCOMB_X30_Y6_N30
\MAR[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MAR[1]~feeder_combout\ = \BUS2[1]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS2[1]~22_combout\,
	combout => \MAR[1]~feeder_combout\);

-- Location: FF_X30_Y6_N31
\MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MAR[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(1));

-- Location: LCCOMB_X30_Y7_N4
\MAR[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MAR[2]~feeder_combout\ = \BUS2[2]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS2[2]~23_combout\,
	combout => \MAR[2]~feeder_combout\);

-- Location: FF_X30_Y7_N5
\MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MAR[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(2));

-- Location: FF_X33_Y7_N1
\MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BUS2[3]~24_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(3));

-- Location: LCCOMB_X30_Y8_N28
\MAR[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MAR[4]~feeder_combout\ = \BUS2[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS2[4]~25_combout\,
	combout => \MAR[4]~feeder_combout\);

-- Location: FF_X30_Y8_N29
\MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MAR[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(4));

-- Location: FF_X33_Y7_N23
\MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BUS2[5]~26_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(5));

-- Location: LCCOMB_X30_Y6_N16
\MAR[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MAR[6]~feeder_combout\ = \BUS2[6]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS2[6]~29_combout\,
	combout => \MAR[6]~feeder_combout\);

-- Location: FF_X30_Y6_N17
\MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MAR[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(6));

-- Location: LCCOMB_X30_Y6_N14
\MAR[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MAR[7]~feeder_combout\ = \BUS2[7]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS2[7]~27_combout\,
	combout => \MAR[7]~feeder_combout\);

-- Location: FF_X30_Y6_N15
\MAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MAR[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \MAR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(7));

-- Location: LCCOMB_X32_Y6_N16
\ALU_unit|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add3~16_combout\ = !\ALU_unit|Add3~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU_unit|Add3~15\,
	combout => \ALU_unit|Add3~16_combout\);

-- Location: LCCOMB_X32_Y7_N16
\ALU_unit|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Add0~16_combout\ = \ALU_unit|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU_unit|Add0~15\,
	combout => \ALU_unit|Add0~16_combout\);

-- Location: LCCOMB_X30_Y6_N6
\ALU_unit|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux8~5_combout\ = (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_unit|Mux8~5_combout\);

-- Location: LCCOMB_X33_Y6_N4
\ALU_unit|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux10~0_combout\ = (\ALU_unit|Mux8~5_combout\ & ((\ALU_Sel[0]~input_o\ & ((\ALU_unit|Add0~16_combout\))) # (!\ALU_Sel[0]~input_o\ & (\ALU_unit|Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add3~16_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_unit|Add0~16_combout\,
	datad => \ALU_unit|Mux8~5_combout\,
	combout => \ALU_unit|Mux10~0_combout\);

-- Location: IOIBUF_X34_Y6_N15
\CCR_Load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Load,
	o => \CCR_Load~input_o\);

-- Location: FF_X33_Y6_N5
\CCR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ALU_unit|Mux10~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \CCR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CCR(0));

-- Location: LCCOMB_X32_Y6_N22
\ALU_unit|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux9~2_combout\ = (B_Reg(7) & (!\ALU_unit|Add2~38_combout\ & (\BUS1[7]~15_combout\ $ (\ALU_Sel[0]~input_o\)))) # (!B_Reg(7) & (\ALU_unit|Add2~38_combout\ & (\BUS1[7]~15_combout\ $ (!\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS1[7]~15_combout\,
	datab => B_Reg(7),
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_unit|Add2~38_combout\,
	combout => \ALU_unit|Mux9~2_combout\);

-- Location: LCCOMB_X33_Y6_N10
\ALU_unit|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Mux9~3_combout\ = (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & \ALU_unit|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datad => \ALU_unit|Mux9~2_combout\,
	combout => \ALU_unit|Mux9~3_combout\);

-- Location: FF_X33_Y6_N11
\CCR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ALU_unit|Mux9~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \CCR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CCR(1));

-- Location: LCCOMB_X32_Y6_N30
\ALU_unit|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Equal0~1_combout\ = (!\ALU_unit|Add2~34_combout\ & (!\ALU_unit|Add2~38_combout\ & ((!\ALU_unit|Mux8~4_combout\) # (!\ALU_unit|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add3~12_combout\,
	datab => \ALU_unit|Add2~34_combout\,
	datac => \ALU_unit|Mux8~4_combout\,
	datad => \ALU_unit|Add2~38_combout\,
	combout => \ALU_unit|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y6_N28
\ALU_unit|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Equal0~0_combout\ = (!\ALU_unit|Add2~9_combout\ & (!\ALU_unit|Add2~13_combout\ & (!\ALU_unit|Add2~21_combout\ & !\ALU_unit|Add2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Add2~9_combout\,
	datab => \ALU_unit|Add2~13_combout\,
	datac => \ALU_unit|Add2~21_combout\,
	datad => \ALU_unit|Add2~17_combout\,
	combout => \ALU_unit|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y6_N26
\ALU_unit|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_unit|Equal0~2_combout\ = (\ALU_unit|Equal0~1_combout\ & (!\ALU_unit|Add2~29_combout\ & (!\ALU_unit|Add2~25_combout\ & \ALU_unit|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_unit|Equal0~1_combout\,
	datab => \ALU_unit|Add2~29_combout\,
	datac => \ALU_unit|Add2~25_combout\,
	datad => \ALU_unit|Equal0~0_combout\,
	combout => \ALU_unit|Equal0~2_combout\);

-- Location: FF_X32_Y6_N27
\CCR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ALU_unit|Equal0~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \CCR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CCR(2));

-- Location: FF_X32_Y6_N25
\CCR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ALU_unit|Add2~38_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \CCR_Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CCR(3));

ww_IR(0) <= \IR[0]~output_o\;

ww_IR(1) <= \IR[1]~output_o\;

ww_IR(2) <= \IR[2]~output_o\;

ww_IR(3) <= \IR[3]~output_o\;

ww_IR(4) <= \IR[4]~output_o\;

ww_IR(5) <= \IR[5]~output_o\;

ww_IR(6) <= \IR[6]~output_o\;

ww_IR(7) <= \IR[7]~output_o\;

ww_address(0) <= \address[0]~output_o\;

ww_address(1) <= \address[1]~output_o\;

ww_address(2) <= \address[2]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_address(4) <= \address[4]~output_o\;

ww_address(5) <= \address[5]~output_o\;

ww_address(6) <= \address[6]~output_o\;

ww_address(7) <= \address[7]~output_o\;

ww_CCR_Result(0) <= \CCR_Result[0]~output_o\;

ww_CCR_Result(1) <= \CCR_Result[1]~output_o\;

ww_CCR_Result(2) <= \CCR_Result[2]~output_o\;

ww_CCR_Result(3) <= \CCR_Result[3]~output_o\;

ww_to_memory(0) <= \to_memory[0]~output_o\;

ww_to_memory(1) <= \to_memory[1]~output_o\;

ww_to_memory(2) <= \to_memory[2]~output_o\;

ww_to_memory(3) <= \to_memory[3]~output_o\;

ww_to_memory(4) <= \to_memory[4]~output_o\;

ww_to_memory(5) <= \to_memory[5]~output_o\;

ww_to_memory(6) <= \to_memory[6]~output_o\;

ww_to_memory(7) <= \to_memory[7]~output_o\;
END structure;


