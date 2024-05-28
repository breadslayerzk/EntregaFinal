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

-- DATE "05/27/2024 16:47:04"

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

ENTITY 	cpu IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	address : OUT std_logic_vector(7 DOWNTO 0);
	from_memory : IN std_logic_vector(7 DOWNTO 0);
	write : OUT std_logic;
	to_memory : OUT std_logic_vector(7 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- address[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[5]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[7]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
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
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_from_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_write : std_logic;
SIGNAL ww_to_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control_unit_module|Selector1~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \address[0]~output_o\ : std_logic;
SIGNAL \address[1]~output_o\ : std_logic;
SIGNAL \address[2]~output_o\ : std_logic;
SIGNAL \address[3]~output_o\ : std_logic;
SIGNAL \address[4]~output_o\ : std_logic;
SIGNAL \address[5]~output_o\ : std_logic;
SIGNAL \address[6]~output_o\ : std_logic;
SIGNAL \address[7]~output_o\ : std_logic;
SIGNAL \write~output_o\ : std_logic;
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
SIGNAL \from_memory[4]~input_o\ : std_logic;
SIGNAL \from_memory[1]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \from_memory[3]~input_o\ : std_logic;
SIGNAL \control_unit_module|Selector16~0_combout\ : std_logic;
SIGNAL \from_memory[2]~input_o\ : std_logic;
SIGNAL \data_path_u|PC[0]~8_combout\ : std_logic;
SIGNAL \control_unit_module|Selector13~0_combout\ : std_logic;
SIGNAL \control_unit_module|next_state.S_BRANCH_4_663~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_BRANCH_4~q\ : std_logic;
SIGNAL \control_unit_module|next_state.S_BRANCH_5_636~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_BRANCH_5~q\ : std_logic;
SIGNAL \control_unit_module|next_state.S_BRANCH_6_609~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_BRANCH_6~q\ : std_logic;
SIGNAL \control_unit_module|ALU_Sel[2]~19_combout\ : std_logic;
SIGNAL \control_unit_module|ALU_Sel[2]~20_combout\ : std_logic;
SIGNAL \control_unit_module|next_state.S_LOAD_AND_STORE_5_771~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_LOAD_AND_STORE_5~q\ : std_logic;
SIGNAL \control_unit_module|next_state.S_LOAD_AND_STORE_6_744~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_LOAD_AND_STORE_6~q\ : std_logic;
SIGNAL \control_unit_module|Equal2~0_combout\ : std_logic;
SIGNAL \control_unit_module|Equal3~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector22~0_combout\ : std_logic;
SIGNAL \control_unit_module|Equal12~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector22~1_combout\ : std_logic;
SIGNAL \data_path_u|PC[2]~15\ : std_logic;
SIGNAL \data_path_u|PC[3]~16_combout\ : std_logic;
SIGNAL \control_unit_module|BRANCH_OP~0_combout\ : std_logic;
SIGNAL \data_path_u|PC[2]~10_combout\ : std_logic;
SIGNAL \data_path_u|PC[2]~11_combout\ : std_logic;
SIGNAL \data_path_u|PC[3]~17\ : std_logic;
SIGNAL \data_path_u|PC[4]~18_combout\ : std_logic;
SIGNAL \data_path_u|PC[4]~19\ : std_logic;
SIGNAL \data_path_u|PC[5]~20_combout\ : std_logic;
SIGNAL \data_path_u|PC[5]~21\ : std_logic;
SIGNAL \data_path_u|PC[6]~22_combout\ : std_logic;
SIGNAL \from_memory[6]~input_o\ : std_logic;
SIGNAL \control_unit_module|Equal4~0_combout\ : std_logic;
SIGNAL \control_unit_module|Equal4~1_combout\ : std_logic;
SIGNAL \control_unit_module|Selector23~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector23~1_combout\ : std_logic;
SIGNAL \control_unit_module|Selector23~2_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[6]~12_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[6]~13_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[6]~14_combout\ : std_logic;
SIGNAL \control_unit_module|ALU_Sel[2]~9_combout\ : std_logic;
SIGNAL \control_unit_module|ALU_Sel[2]~6_combout\ : std_logic;
SIGNAL \control_unit_module|ALU_Sel[2]~24_combout\ : std_logic;
SIGNAL \control_unit_module|Equal6~1_combout\ : std_logic;
SIGNAL \control_unit_module|Equal8~0_combout\ : std_logic;
SIGNAL \control_unit_module|ALU_Sel[0]~21_combout\ : std_logic;
SIGNAL \control_unit_module|Equal10~0_combout\ : std_logic;
SIGNAL \control_unit_module|ALU_Sel[2]~23_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux9~0_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux9~1_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~3_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~1\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~8\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~12\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~18\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~22\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~28\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~31_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux8~0_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[5]~10_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[5]~11_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[4]~8_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[4]~9_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[0]~0_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[0]~1_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~1\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~3\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~5\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~7\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~9\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~11\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~12_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~33_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~1\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~3\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~5\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~7\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~9\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~11\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~12_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux8~1_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux8~2_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux8~3_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~34_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~1\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~3\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~5\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~7\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~9\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~11\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~12_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~35_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~36_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[6]~15_combout\ : std_logic;
SIGNAL \data_path_u|PC[6]~23\ : std_logic;
SIGNAL \data_path_u|PC[7]~24_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[7]~14_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[7]~15_combout\ : std_logic;
SIGNAL \from_memory[7]~input_o\ : std_logic;
SIGNAL \data_path_u|BUS2[7]~16_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~13\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~14_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux1~0_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~13\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~14_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux1~1_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~32\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~37_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~13\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~14_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~39_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~40_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[7]~17_combout\ : std_logic;
SIGNAL \control_unit_module|PC_Load~0_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~15\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~16_combout\ : std_logic;
SIGNAL \control_unit_module|ALU_Sel[0]~22_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~15\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~16_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux10~0_combout\ : std_logic;
SIGNAL \control_unit_module|Equal5~1_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux9~2_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux9~3_combout\ : std_logic;
SIGNAL \control_unit_module|PC_Load~3_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~21_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~8_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~23_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~8_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~8_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~24_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~25_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~26_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~27_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~10_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~29_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~10_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~10_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux3~0_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux3~1_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Equal0~1_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~0_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~0_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~4_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~5_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~0_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~0_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~2_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~6_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~17_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~6_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~19_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~6_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~6_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux5~0_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux5~1_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~20_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~2_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~7_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~9_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~2_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~2_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux7~0_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Mux7~1_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~10_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~14_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add1~4_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add0~4_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~15_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~11_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add3~4_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~13_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~16_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Equal0~0_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Equal0~2_combout\ : std_logic;
SIGNAL \control_unit_module|PC_Load~2_combout\ : std_logic;
SIGNAL \control_unit_module|PC_Load~1_combout\ : std_logic;
SIGNAL \control_unit_module|PC_Load~4_combout\ : std_logic;
SIGNAL \control_unit_module|PC_Load~5_combout\ : std_logic;
SIGNAL \control_unit_module|PC_Load~6_combout\ : std_logic;
SIGNAL \data_path_u|PC[0]~9\ : std_logic;
SIGNAL \data_path_u|PC[1]~12_combout\ : std_logic;
SIGNAL \data_path_u|PC[1]~13\ : std_logic;
SIGNAL \data_path_u|PC[2]~14_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[2]~4_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[2]~5_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[2]~6_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[2]~7_combout\ : std_logic;
SIGNAL \data_path_u|IR_Reg[2]~feeder_combout\ : std_logic;
SIGNAL \control_unit_module|LessThan1~0_combout\ : std_logic;
SIGNAL \control_unit_module|Equal13~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector16~1_combout\ : std_logic;
SIGNAL \control_unit_module|Selector16~2_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[3]~6_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[3]~7_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[3]~8_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[3]~9_combout\ : std_logic;
SIGNAL \control_unit_module|Equal5~0_combout\ : std_logic;
SIGNAL \control_unit_module|LOAD_STORE_OP~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector18~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector18~1_combout\ : std_logic;
SIGNAL \control_unit_module|Selector18~2_combout\ : std_logic;
SIGNAL \from_memory[5]~input_o\ : std_logic;
SIGNAL \data_path_u|BUS2[5]~12_combout\ : std_logic;
SIGNAL \data_path_u|ALU_unit|Add2~30_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[5]~13_combout\ : std_logic;
SIGNAL \control_unit_module|Equal6~0_combout\ : std_logic;
SIGNAL \control_unit_module|DATA_MAN_OP~2_combout\ : std_logic;
SIGNAL \control_unit_module|Selector12~0_combout\ : std_logic;
SIGNAL \control_unit_module|next_state.S_DATA_MAN_4_690~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_DATA_MAN_4~q\ : std_logic;
SIGNAL \control_unit_module|Selector17~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector17~1_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[1]~2_combout\ : std_logic;
SIGNAL \data_path_u|BUS1[1]~3_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[1]~4_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[1]~5_combout\ : std_logic;
SIGNAL \control_unit_module|Equal0~0_combout\ : std_logic;
SIGNAL \control_unit_module|Equal0~1_combout\ : std_logic;
SIGNAL \control_unit_module|Selector1~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector11~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector1~1_combout\ : std_logic;
SIGNAL \control_unit_module|Selector1~2_combout\ : std_logic;
SIGNAL \control_unit_module|Selector1~2clkctrl_outclk\ : std_logic;
SIGNAL \control_unit_module|next_state.S_LOAD_AND_STORE_7_717~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_LOAD_AND_STORE_7~q\ : std_logic;
SIGNAL \control_unit_module|Selector4~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector4~1_combout\ : std_logic;
SIGNAL \control_unit_module|next_state.S_FETCH_0_906~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_FETCH_0~0_combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_FETCH_0~q\ : std_logic;
SIGNAL \control_unit_module|next_state.S_FETCH_1_879~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_FETCH_1~q\ : std_logic;
SIGNAL \control_unit_module|next_state.S_FETCH_2_852~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_FETCH_2~q\ : std_logic;
SIGNAL \control_unit_module|next_state.S_DECODE_3_825~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_DECODE_3~q\ : std_logic;
SIGNAL \control_unit_module|Selector8~0_combout\ : std_logic;
SIGNAL \control_unit_module|next_state.S_LOAD_AND_STORE_4_798~combout\ : std_logic;
SIGNAL \control_unit_module|current_state.S_LOAD_AND_STORE_4~q\ : std_logic;
SIGNAL \control_unit_module|Selector19~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector19~2_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[4]~10_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[4]~11_combout\ : std_logic;
SIGNAL \control_unit_module|process_1~0_combout\ : std_logic;
SIGNAL \control_unit_module|Selector19~1_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[0]~18_combout\ : std_logic;
SIGNAL \from_memory[0]~input_o\ : std_logic;
SIGNAL \data_path_u|BUS2[0]~2_combout\ : std_logic;
SIGNAL \data_path_u|BUS2[0]~3_combout\ : std_logic;
SIGNAL \control_unit_module|Selector20~0_combout\ : std_logic;
SIGNAL \data_path_u|MAR[1]~feeder_combout\ : std_logic;
SIGNAL \data_path_u|MAR[7]~feeder_combout\ : std_logic;
SIGNAL \control_unit_module|write~0_combout\ : std_logic;
SIGNAL \data_path_u|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_path_u|MAR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_path_u|IR_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_path_u|CCR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_path_u|B_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_path_u|A_Reg\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
address <= ww_address;
ww_from_memory <= from_memory;
write <= ww_write;
to_memory <= ww_to_memory;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\control_unit_module|Selector1~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \control_unit_module|Selector1~2_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

-- Location: IOOBUF_X30_Y29_N16
\address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|MAR\(0),
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|MAR\(1),
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|MAR\(2),
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|MAR\(3),
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\address[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|MAR\(4),
	devoe => ww_devoe,
	o => \address[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\address[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|MAR\(5),
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\address[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|MAR\(6),
	devoe => ww_devoe,
	o => \address[6]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\address[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|MAR\(7),
	devoe => ww_devoe,
	o => \address[7]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\write~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_module|write~0_combout\,
	devoe => ww_devoe,
	o => \write~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\to_memory[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|BUS1[0]~1_combout\,
	devoe => ww_devoe,
	o => \to_memory[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\to_memory[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|BUS1[1]~3_combout\,
	devoe => ww_devoe,
	o => \to_memory[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\to_memory[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|BUS1[2]~5_combout\,
	devoe => ww_devoe,
	o => \to_memory[2]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\to_memory[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|BUS1[3]~7_combout\,
	devoe => ww_devoe,
	o => \to_memory[3]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\to_memory[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|BUS1[4]~9_combout\,
	devoe => ww_devoe,
	o => \to_memory[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\to_memory[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|BUS1[5]~11_combout\,
	devoe => ww_devoe,
	o => \to_memory[5]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\to_memory[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|BUS1[6]~13_combout\,
	devoe => ww_devoe,
	o => \to_memory[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\to_memory[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_path_u|BUS1[7]~15_combout\,
	devoe => ww_devoe,
	o => \to_memory[7]~output_o\);

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

-- Location: IOIBUF_X32_Y29_N29
\from_memory[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(4),
	o => \from_memory[4]~input_o\);

-- Location: IOIBUF_X30_Y29_N29
\from_memory[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(1),
	o => \from_memory[1]~input_o\);

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

-- Location: FF_X29_Y21_N27
\data_path_u|IR_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_path_u|BUS2[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \control_unit_module|current_state.S_FETCH_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|IR_Reg\(0));

-- Location: IOIBUF_X41_Y21_N15
\from_memory[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(3),
	o => \from_memory[3]~input_o\);

-- Location: LCCOMB_X31_Y21_N12
\control_unit_module|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector16~0_combout\ = (\data_path_u|IR_Reg\(0) & (\control_unit_module|current_state.S_LOAD_AND_STORE_7~q\ & (\control_unit_module|Equal0~1_combout\ & \data_path_u|IR_Reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(0),
	datab => \control_unit_module|current_state.S_LOAD_AND_STORE_7~q\,
	datac => \control_unit_module|Equal0~1_combout\,
	datad => \data_path_u|IR_Reg\(4),
	combout => \control_unit_module|Selector16~0_combout\);

-- Location: IOIBUF_X26_Y29_N22
\from_memory[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(2),
	o => \from_memory[2]~input_o\);

-- Location: LCCOMB_X29_Y21_N10
\data_path_u|PC[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|PC[0]~8_combout\ = \data_path_u|PC\(0) $ (VCC)
-- \data_path_u|PC[0]~9\ = CARRY(\data_path_u|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|PC\(0),
	datad => VCC,
	combout => \data_path_u|PC[0]~8_combout\,
	cout => \data_path_u|PC[0]~9\);

-- Location: LCCOMB_X35_Y21_N12
\control_unit_module|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector13~0_combout\ = (\control_unit_module|current_state.S_DECODE_3~q\ & (\control_unit_module|DATA_MAN_OP~2_combout\ & (\control_unit_module|LOAD_STORE_OP~0_combout\ & \control_unit_module|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_DECODE_3~q\,
	datab => \control_unit_module|DATA_MAN_OP~2_combout\,
	datac => \control_unit_module|LOAD_STORE_OP~0_combout\,
	datad => \control_unit_module|Selector1~0_combout\,
	combout => \control_unit_module|Selector13~0_combout\);

-- Location: LCCOMB_X35_Y21_N10
\control_unit_module|next_state.S_BRANCH_4_663\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_BRANCH_4_663~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & ((\control_unit_module|Selector13~0_combout\))) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- (\control_unit_module|next_state.S_BRANCH_4_663~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|next_state.S_BRANCH_4_663~combout\,
	datac => \control_unit_module|Selector1~2clkctrl_outclk\,
	datad => \control_unit_module|Selector13~0_combout\,
	combout => \control_unit_module|next_state.S_BRANCH_4_663~combout\);

-- Location: FF_X35_Y21_N11
\control_unit_module|current_state.S_BRANCH_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control_unit_module|next_state.S_BRANCH_4_663~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_BRANCH_4~q\);

-- Location: LCCOMB_X35_Y21_N20
\control_unit_module|next_state.S_BRANCH_5_636\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_BRANCH_5_636~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & (\control_unit_module|current_state.S_BRANCH_4~q\)) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- ((\control_unit_module|next_state.S_BRANCH_5_636~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_BRANCH_4~q\,
	datab => \control_unit_module|next_state.S_BRANCH_5_636~combout\,
	datad => \control_unit_module|Selector1~2clkctrl_outclk\,
	combout => \control_unit_module|next_state.S_BRANCH_5_636~combout\);

-- Location: FF_X35_Y21_N21
\control_unit_module|current_state.S_BRANCH_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control_unit_module|next_state.S_BRANCH_5_636~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_BRANCH_5~q\);

-- Location: LCCOMB_X35_Y21_N22
\control_unit_module|next_state.S_BRANCH_6_609\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_BRANCH_6_609~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & ((\control_unit_module|current_state.S_BRANCH_5~q\))) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- (\control_unit_module|next_state.S_BRANCH_6_609~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|next_state.S_BRANCH_6_609~combout\,
	datac => \control_unit_module|current_state.S_BRANCH_5~q\,
	datad => \control_unit_module|Selector1~2clkctrl_outclk\,
	combout => \control_unit_module|next_state.S_BRANCH_6_609~combout\);

-- Location: FF_X35_Y21_N23
\control_unit_module|current_state.S_BRANCH_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control_unit_module|next_state.S_BRANCH_6_609~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_BRANCH_6~q\);

-- Location: LCCOMB_X30_Y21_N22
\control_unit_module|ALU_Sel[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|ALU_Sel[2]~19_combout\ = (\data_path_u|IR_Reg\(1) & (\data_path_u|IR_Reg\(0) & \data_path_u|IR_Reg\(2))) # (!\data_path_u|IR_Reg\(1) & ((!\data_path_u|IR_Reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|IR_Reg\(0),
	datac => \data_path_u|IR_Reg\(1),
	datad => \data_path_u|IR_Reg\(2),
	combout => \control_unit_module|ALU_Sel[2]~19_combout\);

-- Location: LCCOMB_X30_Y21_N8
\control_unit_module|ALU_Sel[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|ALU_Sel[2]~20_combout\ = (\control_unit_module|ALU_Sel[2]~19_combout\) # ((\data_path_u|IR_Reg\(3)) # (!\control_unit_module|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|ALU_Sel[2]~19_combout\,
	datab => \data_path_u|IR_Reg\(3),
	datad => \control_unit_module|Equal6~0_combout\,
	combout => \control_unit_module|ALU_Sel[2]~20_combout\);

-- Location: LCCOMB_X32_Y22_N30
\control_unit_module|next_state.S_LOAD_AND_STORE_5_771\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_LOAD_AND_STORE_5_771~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & (\control_unit_module|current_state.S_LOAD_AND_STORE_4~q\)) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- ((\control_unit_module|next_state.S_LOAD_AND_STORE_5_771~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_LOAD_AND_STORE_4~q\,
	datac => \control_unit_module|next_state.S_LOAD_AND_STORE_5_771~combout\,
	datad => \control_unit_module|Selector1~2clkctrl_outclk\,
	combout => \control_unit_module|next_state.S_LOAD_AND_STORE_5_771~combout\);

-- Location: FF_X32_Y22_N31
\control_unit_module|current_state.S_LOAD_AND_STORE_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control_unit_module|next_state.S_LOAD_AND_STORE_5_771~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_LOAD_AND_STORE_5~q\);

-- Location: LCCOMB_X32_Y21_N4
\control_unit_module|next_state.S_LOAD_AND_STORE_6_744\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_LOAD_AND_STORE_6_744~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & (\control_unit_module|current_state.S_LOAD_AND_STORE_5~q\)) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- ((\control_unit_module|next_state.S_LOAD_AND_STORE_6_744~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_module|current_state.S_LOAD_AND_STORE_5~q\,
	datac => \control_unit_module|next_state.S_LOAD_AND_STORE_6_744~combout\,
	datad => \control_unit_module|Selector1~2clkctrl_outclk\,
	combout => \control_unit_module|next_state.S_LOAD_AND_STORE_6_744~combout\);

-- Location: FF_X32_Y21_N5
\control_unit_module|current_state.S_LOAD_AND_STORE_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \control_unit_module|next_state.S_LOAD_AND_STORE_6_744~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_LOAD_AND_STORE_6~q\);

-- Location: LCCOMB_X31_Y22_N10
\control_unit_module|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal2~0_combout\ = (!\data_path_u|IR_Reg\(4) & (\control_unit_module|Equal0~1_combout\ & !\data_path_u|IR_Reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(4),
	datac => \control_unit_module|Equal0~1_combout\,
	datad => \data_path_u|IR_Reg\(0),
	combout => \control_unit_module|Equal2~0_combout\);

-- Location: LCCOMB_X31_Y21_N28
\control_unit_module|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal3~0_combout\ = (!\data_path_u|IR_Reg\(4) & (\control_unit_module|Equal0~1_combout\ & \data_path_u|IR_Reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|IR_Reg\(4),
	datac => \control_unit_module|Equal0~1_combout\,
	datad => \data_path_u|IR_Reg\(0),
	combout => \control_unit_module|Equal3~0_combout\);

-- Location: LCCOMB_X31_Y22_N12
\control_unit_module|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector22~0_combout\ = (\control_unit_module|current_state.S_LOAD_AND_STORE_6~q\ & ((\control_unit_module|Equal2~0_combout\) # ((\control_unit_module|current_state.S_LOAD_AND_STORE_7~q\ & \control_unit_module|Equal3~0_combout\)))) # 
-- (!\control_unit_module|current_state.S_LOAD_AND_STORE_6~q\ & (\control_unit_module|current_state.S_LOAD_AND_STORE_7~q\ & ((\control_unit_module|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_LOAD_AND_STORE_6~q\,
	datab => \control_unit_module|current_state.S_LOAD_AND_STORE_7~q\,
	datac => \control_unit_module|Equal2~0_combout\,
	datad => \control_unit_module|Equal3~0_combout\,
	combout => \control_unit_module|Selector22~0_combout\);

-- Location: LCCOMB_X30_Y21_N26
\control_unit_module|Equal12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal12~0_combout\ = (\data_path_u|IR_Reg\(3) & (!\data_path_u|IR_Reg\(0) & (\control_unit_module|LessThan1~0_combout\ & \control_unit_module|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(3),
	datab => \data_path_u|IR_Reg\(0),
	datac => \control_unit_module|LessThan1~0_combout\,
	datad => \control_unit_module|Equal6~0_combout\,
	combout => \control_unit_module|Equal12~0_combout\);

-- Location: LCCOMB_X30_Y22_N2
\control_unit_module|Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector22~1_combout\ = (\control_unit_module|Selector22~0_combout\) # ((\control_unit_module|current_state.S_DATA_MAN_4~q\ & ((\control_unit_module|Equal12~0_combout\) # (!\control_unit_module|ALU_Sel[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|ALU_Sel[2]~20_combout\,
	datab => \control_unit_module|Selector22~0_combout\,
	datac => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	datad => \control_unit_module|Equal12~0_combout\,
	combout => \control_unit_module|Selector22~1_combout\);

-- Location: FF_X28_Y21_N31
\data_path_u|A_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[7]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|A_Reg\(7));

-- Location: LCCOMB_X29_Y21_N14
\data_path_u|PC[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|PC[2]~14_combout\ = (\data_path_u|PC\(2) & (\data_path_u|PC[1]~13\ $ (GND))) # (!\data_path_u|PC\(2) & (!\data_path_u|PC[1]~13\ & VCC))
-- \data_path_u|PC[2]~15\ = CARRY((\data_path_u|PC\(2) & !\data_path_u|PC[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|PC\(2),
	datad => VCC,
	cin => \data_path_u|PC[1]~13\,
	combout => \data_path_u|PC[2]~14_combout\,
	cout => \data_path_u|PC[2]~15\);

-- Location: LCCOMB_X29_Y21_N16
\data_path_u|PC[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|PC[3]~16_combout\ = (\data_path_u|PC\(3) & (!\data_path_u|PC[2]~15\)) # (!\data_path_u|PC\(3) & ((\data_path_u|PC[2]~15\) # (GND)))
-- \data_path_u|PC[3]~17\ = CARRY((!\data_path_u|PC[2]~15\) # (!\data_path_u|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|PC\(3),
	datad => VCC,
	cin => \data_path_u|PC[2]~15\,
	combout => \data_path_u|PC[3]~16_combout\,
	cout => \data_path_u|PC[3]~17\);

-- Location: LCCOMB_X30_Y21_N12
\control_unit_module|BRANCH_OP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|BRANCH_OP~0_combout\ = (\data_path_u|IR_Reg\(3) & ((\data_path_u|IR_Reg\(1)) # ((\data_path_u|IR_Reg\(0)) # (\data_path_u|IR_Reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(1),
	datab => \data_path_u|IR_Reg\(0),
	datac => \data_path_u|IR_Reg\(3),
	datad => \data_path_u|IR_Reg\(2),
	combout => \control_unit_module|BRANCH_OP~0_combout\);

-- Location: LCCOMB_X35_Y21_N18
\data_path_u|PC[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|PC[2]~10_combout\ = (\control_unit_module|current_state.S_FETCH_1~q\) # ((!\control_unit_module|BRANCH_OP~0_combout\ & (\control_unit_module|PC_Load~0_combout\ & \control_unit_module|current_state.S_BRANCH_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|BRANCH_OP~0_combout\,
	datab => \control_unit_module|current_state.S_FETCH_1~q\,
	datac => \control_unit_module|PC_Load~0_combout\,
	datad => \control_unit_module|current_state.S_BRANCH_5~q\,
	combout => \data_path_u|PC[2]~10_combout\);

-- Location: LCCOMB_X32_Y21_N26
\data_path_u|PC[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|PC[2]~11_combout\ = (\data_path_u|PC[2]~10_combout\) # ((\control_unit_module|PC_Load~6_combout\) # ((\control_unit_module|current_state.S_LOAD_AND_STORE_5~q\ & \control_unit_module|Selector19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_LOAD_AND_STORE_5~q\,
	datab => \data_path_u|PC[2]~10_combout\,
	datac => \control_unit_module|Selector19~1_combout\,
	datad => \control_unit_module|PC_Load~6_combout\,
	combout => \data_path_u|PC[2]~11_combout\);

-- Location: FF_X29_Y21_N17
\data_path_u|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|PC[3]~16_combout\,
	asdata => \data_path_u|BUS2[3]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \control_unit_module|PC_Load~6_combout\,
	ena => \data_path_u|PC[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|PC\(3));

-- Location: LCCOMB_X29_Y21_N18
\data_path_u|PC[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|PC[4]~18_combout\ = (\data_path_u|PC\(4) & (\data_path_u|PC[3]~17\ $ (GND))) # (!\data_path_u|PC\(4) & (!\data_path_u|PC[3]~17\ & VCC))
-- \data_path_u|PC[4]~19\ = CARRY((\data_path_u|PC\(4) & !\data_path_u|PC[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|PC\(4),
	datad => VCC,
	cin => \data_path_u|PC[3]~17\,
	combout => \data_path_u|PC[4]~18_combout\,
	cout => \data_path_u|PC[4]~19\);

-- Location: FF_X29_Y21_N19
\data_path_u|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|PC[4]~18_combout\,
	asdata => \data_path_u|BUS2[4]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \control_unit_module|PC_Load~6_combout\,
	ena => \data_path_u|PC[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|PC\(4));

-- Location: LCCOMB_X29_Y21_N20
\data_path_u|PC[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|PC[5]~20_combout\ = (\data_path_u|PC\(5) & (!\data_path_u|PC[4]~19\)) # (!\data_path_u|PC\(5) & ((\data_path_u|PC[4]~19\) # (GND)))
-- \data_path_u|PC[5]~21\ = CARRY((!\data_path_u|PC[4]~19\) # (!\data_path_u|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|PC\(5),
	datad => VCC,
	cin => \data_path_u|PC[4]~19\,
	combout => \data_path_u|PC[5]~20_combout\,
	cout => \data_path_u|PC[5]~21\);

-- Location: FF_X29_Y21_N21
\data_path_u|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|PC[5]~20_combout\,
	asdata => \data_path_u|BUS2[5]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \control_unit_module|PC_Load~6_combout\,
	ena => \data_path_u|PC[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|PC\(5));

-- Location: LCCOMB_X29_Y21_N22
\data_path_u|PC[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|PC[6]~22_combout\ = (\data_path_u|PC\(6) & (\data_path_u|PC[5]~21\ $ (GND))) # (!\data_path_u|PC\(6) & (!\data_path_u|PC[5]~21\ & VCC))
-- \data_path_u|PC[6]~23\ = CARRY((\data_path_u|PC\(6) & !\data_path_u|PC[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|PC\(6),
	datad => VCC,
	cin => \data_path_u|PC[5]~21\,
	combout => \data_path_u|PC[6]~22_combout\,
	cout => \data_path_u|PC[6]~23\);

-- Location: IOIBUF_X32_Y29_N22
\from_memory[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(6),
	o => \from_memory[6]~input_o\);

-- Location: FF_X28_Y21_N23
\data_path_u|A_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[6]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|A_Reg\(6));

-- Location: FF_X30_Y21_N5
\data_path_u|IR_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \data_path_u|BUS2[6]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|current_state.S_FETCH_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|IR_Reg\(6));

-- Location: LCCOMB_X31_Y21_N30
\control_unit_module|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal4~0_combout\ = (!\data_path_u|IR_Reg\(5) & (!\data_path_u|IR_Reg\(4) & (!\data_path_u|IR_Reg\(6) & \data_path_u|IR_Reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(5),
	datab => \data_path_u|IR_Reg\(4),
	datac => \data_path_u|IR_Reg\(6),
	datad => \data_path_u|IR_Reg\(7),
	combout => \control_unit_module|Equal4~0_combout\);

-- Location: LCCOMB_X31_Y21_N20
\control_unit_module|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal4~1_combout\ = (\data_path_u|IR_Reg\(3) & (\data_path_u|IR_Reg\(0) & (\control_unit_module|Equal4~0_combout\ & \control_unit_module|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(3),
	datab => \data_path_u|IR_Reg\(0),
	datac => \control_unit_module|Equal4~0_combout\,
	datad => \control_unit_module|LessThan1~0_combout\,
	combout => \control_unit_module|Equal4~1_combout\);

-- Location: LCCOMB_X32_Y21_N8
\control_unit_module|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector23~0_combout\ = (\control_unit_module|current_state.S_LOAD_AND_STORE_7~q\ & \control_unit_module|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_LOAD_AND_STORE_7~q\,
	datad => \control_unit_module|Equal4~1_combout\,
	combout => \control_unit_module|Selector23~0_combout\);

-- Location: LCCOMB_X31_Y21_N0
\control_unit_module|Selector23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector23~1_combout\ = (!\control_unit_module|Equal3~0_combout\ & (\control_unit_module|Equal5~0_combout\ & !\control_unit_module|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_module|Equal3~0_combout\,
	datac => \control_unit_module|Equal5~0_combout\,
	datad => \control_unit_module|Equal4~1_combout\,
	combout => \control_unit_module|Selector23~1_combout\);

-- Location: LCCOMB_X32_Y21_N30
\control_unit_module|Selector23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector23~2_combout\ = (\control_unit_module|Selector16~1_combout\) # ((\control_unit_module|Selector23~0_combout\) # ((\control_unit_module|current_state.S_LOAD_AND_STORE_6~q\ & \control_unit_module|Selector23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector16~1_combout\,
	datab => \control_unit_module|current_state.S_LOAD_AND_STORE_6~q\,
	datac => \control_unit_module|Selector23~0_combout\,
	datad => \control_unit_module|Selector23~1_combout\,
	combout => \control_unit_module|Selector23~2_combout\);

-- Location: FF_X28_Y21_N25
\data_path_u|B_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[6]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|B_Reg\(6));

-- Location: LCCOMB_X28_Y21_N24
\data_path_u|BUS1[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[6]~12_combout\ = (\control_unit_module|Selector16~0_combout\ & (((\data_path_u|B_Reg\(6))))) # (!\control_unit_module|Selector16~0_combout\ & ((\control_unit_module|Selector16~1_combout\ & ((\data_path_u|B_Reg\(6)))) # 
-- (!\control_unit_module|Selector16~1_combout\ & (\data_path_u|PC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector16~0_combout\,
	datab => \data_path_u|PC\(6),
	datac => \data_path_u|B_Reg\(6),
	datad => \control_unit_module|Selector16~1_combout\,
	combout => \data_path_u|BUS1[6]~12_combout\);

-- Location: LCCOMB_X28_Y21_N22
\data_path_u|BUS1[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[6]~13_combout\ = (\control_unit_module|Selector17~1_combout\ & (!\control_unit_module|Selector16~2_combout\ & (\data_path_u|A_Reg\(6)))) # (!\control_unit_module|Selector17~1_combout\ & (((\data_path_u|BUS1[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector17~1_combout\,
	datab => \control_unit_module|Selector16~2_combout\,
	datac => \data_path_u|A_Reg\(6),
	datad => \data_path_u|BUS1[6]~12_combout\,
	combout => \data_path_u|BUS1[6]~13_combout\);

-- Location: LCCOMB_X33_Y21_N18
\data_path_u|BUS2[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[6]~14_combout\ = (\control_unit_module|Selector19~2_combout\ & (\from_memory[6]~input_o\ & (\control_unit_module|Selector18~2_combout\))) # (!\control_unit_module|Selector19~2_combout\ & (((!\control_unit_module|Selector18~2_combout\ & 
-- \data_path_u|BUS1[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector19~2_combout\,
	datab => \from_memory[6]~input_o\,
	datac => \control_unit_module|Selector18~2_combout\,
	datad => \data_path_u|BUS1[6]~13_combout\,
	combout => \data_path_u|BUS2[6]~14_combout\);

-- Location: LCCOMB_X30_Y21_N14
\control_unit_module|ALU_Sel[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|ALU_Sel[2]~9_combout\ = (!\data_path_u|IR_Reg\(7) & !\data_path_u|IR_Reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_path_u|IR_Reg\(7),
	datad => \data_path_u|IR_Reg\(5),
	combout => \control_unit_module|ALU_Sel[2]~9_combout\);

-- Location: LCCOMB_X27_Y22_N10
\control_unit_module|ALU_Sel[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|ALU_Sel[2]~6_combout\ = (\data_path_u|IR_Reg\(6) & (!\data_path_u|IR_Reg\(1) & (!\data_path_u|IR_Reg\(4) & \control_unit_module|ALU_Sel[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(6),
	datab => \data_path_u|IR_Reg\(1),
	datac => \data_path_u|IR_Reg\(4),
	datad => \control_unit_module|ALU_Sel[2]~9_combout\,
	combout => \control_unit_module|ALU_Sel[2]~6_combout\);

-- Location: LCCOMB_X27_Y22_N8
\control_unit_module|ALU_Sel[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|ALU_Sel[2]~24_combout\ = (!\data_path_u|IR_Reg\(2) & (\control_unit_module|current_state.S_DATA_MAN_4~q\ & (\data_path_u|IR_Reg\(3) & \control_unit_module|ALU_Sel[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(2),
	datab => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	datac => \data_path_u|IR_Reg\(3),
	datad => \control_unit_module|ALU_Sel[2]~6_combout\,
	combout => \control_unit_module|ALU_Sel[2]~24_combout\);

-- Location: LCCOMB_X27_Y22_N14
\control_unit_module|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal6~1_combout\ = (!\data_path_u|IR_Reg\(2) & (\data_path_u|IR_Reg\(1) & (!\data_path_u|IR_Reg\(3) & \control_unit_module|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(2),
	datab => \data_path_u|IR_Reg\(1),
	datac => \data_path_u|IR_Reg\(3),
	datad => \control_unit_module|Equal6~0_combout\,
	combout => \control_unit_module|Equal6~1_combout\);

-- Location: LCCOMB_X27_Y22_N20
\control_unit_module|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal8~0_combout\ = (\data_path_u|IR_Reg\(2) & (!\data_path_u|IR_Reg\(1) & (!\data_path_u|IR_Reg\(3) & \control_unit_module|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(2),
	datab => \data_path_u|IR_Reg\(1),
	datac => \data_path_u|IR_Reg\(3),
	datad => \control_unit_module|Equal6~0_combout\,
	combout => \control_unit_module|Equal8~0_combout\);

-- Location: LCCOMB_X27_Y22_N4
\control_unit_module|ALU_Sel[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|ALU_Sel[0]~21_combout\ = ((!\control_unit_module|Equal6~1_combout\ & !\control_unit_module|Equal8~0_combout\)) # (!\data_path_u|IR_Reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(0),
	datac => \control_unit_module|Equal6~1_combout\,
	datad => \control_unit_module|Equal8~0_combout\,
	combout => \control_unit_module|ALU_Sel[0]~21_combout\);

-- Location: LCCOMB_X29_Y21_N0
\control_unit_module|Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal10~0_combout\ = (\data_path_u|IR_Reg\(2) & (\data_path_u|IR_Reg\(1) & (!\data_path_u|IR_Reg\(3) & \control_unit_module|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(2),
	datab => \data_path_u|IR_Reg\(1),
	datac => \data_path_u|IR_Reg\(3),
	datad => \control_unit_module|Equal6~0_combout\,
	combout => \control_unit_module|Equal10~0_combout\);

-- Location: LCCOMB_X27_Y22_N6
\control_unit_module|ALU_Sel[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|ALU_Sel[2]~23_combout\ = (\control_unit_module|current_state.S_DATA_MAN_4~q\ & ((\control_unit_module|Equal8~0_combout\) # ((\control_unit_module|Equal6~1_combout\) # (\control_unit_module|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	datab => \control_unit_module|Equal8~0_combout\,
	datac => \control_unit_module|Equal6~1_combout\,
	datad => \control_unit_module|Equal10~0_combout\,
	combout => \control_unit_module|ALU_Sel[2]~23_combout\);

-- Location: LCCOMB_X27_Y22_N12
\data_path_u|ALU_unit|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux9~0_combout\ = (\control_unit_module|Equal8~0_combout\ & (\control_unit_module|current_state.S_DATA_MAN_4~q\)) # (!\control_unit_module|Equal8~0_combout\ & ((\control_unit_module|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	datac => \control_unit_module|Equal6~1_combout\,
	datad => \control_unit_module|Equal8~0_combout\,
	combout => \data_path_u|ALU_unit|Mux9~0_combout\);

-- Location: LCCOMB_X27_Y22_N26
\data_path_u|ALU_unit|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux9~1_combout\ = (!\control_unit_module|ALU_Sel[2]~24_combout\ & ((\data_path_u|ALU_unit|Mux9~0_combout\ & (!\control_unit_module|Equal8~0_combout\)) # (!\data_path_u|ALU_unit|Mux9~0_combout\ & 
-- ((\control_unit_module|Equal8~0_combout\) # (!\control_unit_module|ALU_Sel[2]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Mux9~0_combout\,
	datab => \control_unit_module|Equal8~0_combout\,
	datac => \control_unit_module|ALU_Sel[2]~24_combout\,
	datad => \control_unit_module|ALU_Sel[2]~23_combout\,
	combout => \data_path_u|ALU_unit|Mux9~1_combout\);

-- Location: LCCOMB_X30_Y22_N30
\data_path_u|ALU_unit|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~3_combout\ = (!\control_unit_module|ALU_Sel[2]~24_combout\ & (((!\control_unit_module|ALU_Sel[0]~21_combout\ & \control_unit_module|ALU_Sel[2]~23_combout\)) # (!\data_path_u|ALU_unit|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|ALU_Sel[2]~24_combout\,
	datab => \control_unit_module|ALU_Sel[0]~21_combout\,
	datac => \control_unit_module|ALU_Sel[2]~23_combout\,
	datad => \data_path_u|ALU_unit|Mux9~1_combout\,
	combout => \data_path_u|ALU_unit|Add2~3_combout\);

-- Location: FF_X28_Y21_N13
\data_path_u|B_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[5]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|B_Reg\(5));

-- Location: FF_X28_Y21_N5
\data_path_u|B_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[4]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|B_Reg\(4));

-- Location: FF_X28_Y21_N29
\data_path_u|B_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[3]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|B_Reg\(3));

-- Location: FF_X28_Y21_N17
\data_path_u|B_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[2]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|B_Reg\(2));

-- Location: FF_X28_Y21_N21
\data_path_u|B_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[1]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|B_Reg\(1));

-- Location: FF_X29_Y22_N27
\data_path_u|B_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|B_Reg\(0));

-- Location: LCCOMB_X28_Y23_N8
\data_path_u|ALU_unit|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~0_combout\ = \data_path_u|B_Reg\(0) $ (VCC)
-- \data_path_u|ALU_unit|Add2~1\ = CARRY(\data_path_u|B_Reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|B_Reg\(0),
	datad => VCC,
	combout => \data_path_u|ALU_unit|Add2~0_combout\,
	cout => \data_path_u|ALU_unit|Add2~1\);

-- Location: LCCOMB_X28_Y23_N10
\data_path_u|ALU_unit|Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~7_combout\ = (\data_path_u|B_Reg\(1) & (\data_path_u|ALU_unit|Add2~1\ & VCC)) # (!\data_path_u|B_Reg\(1) & (!\data_path_u|ALU_unit|Add2~1\))
-- \data_path_u|ALU_unit|Add2~8\ = CARRY((!\data_path_u|B_Reg\(1) & !\data_path_u|ALU_unit|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|B_Reg\(1),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add2~1\,
	combout => \data_path_u|ALU_unit|Add2~7_combout\,
	cout => \data_path_u|ALU_unit|Add2~8\);

-- Location: LCCOMB_X28_Y23_N12
\data_path_u|ALU_unit|Add2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~11_combout\ = (\data_path_u|B_Reg\(2) & ((GND) # (!\data_path_u|ALU_unit|Add2~8\))) # (!\data_path_u|B_Reg\(2) & (\data_path_u|ALU_unit|Add2~8\ $ (GND)))
-- \data_path_u|ALU_unit|Add2~12\ = CARRY((\data_path_u|B_Reg\(2)) # (!\data_path_u|ALU_unit|Add2~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|B_Reg\(2),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add2~8\,
	combout => \data_path_u|ALU_unit|Add2~11_combout\,
	cout => \data_path_u|ALU_unit|Add2~12\);

-- Location: LCCOMB_X28_Y23_N14
\data_path_u|ALU_unit|Add2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~17_combout\ = (\data_path_u|B_Reg\(3) & (\data_path_u|ALU_unit|Add2~12\ & VCC)) # (!\data_path_u|B_Reg\(3) & (!\data_path_u|ALU_unit|Add2~12\))
-- \data_path_u|ALU_unit|Add2~18\ = CARRY((!\data_path_u|B_Reg\(3) & !\data_path_u|ALU_unit|Add2~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(3),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add2~12\,
	combout => \data_path_u|ALU_unit|Add2~17_combout\,
	cout => \data_path_u|ALU_unit|Add2~18\);

-- Location: LCCOMB_X28_Y23_N16
\data_path_u|ALU_unit|Add2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~21_combout\ = (\data_path_u|B_Reg\(4) & ((GND) # (!\data_path_u|ALU_unit|Add2~18\))) # (!\data_path_u|B_Reg\(4) & (\data_path_u|ALU_unit|Add2~18\ $ (GND)))
-- \data_path_u|ALU_unit|Add2~22\ = CARRY((\data_path_u|B_Reg\(4)) # (!\data_path_u|ALU_unit|Add2~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(4),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add2~18\,
	combout => \data_path_u|ALU_unit|Add2~21_combout\,
	cout => \data_path_u|ALU_unit|Add2~22\);

-- Location: LCCOMB_X28_Y23_N18
\data_path_u|ALU_unit|Add2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~27_combout\ = (\data_path_u|B_Reg\(5) & (\data_path_u|ALU_unit|Add2~22\ & VCC)) # (!\data_path_u|B_Reg\(5) & (!\data_path_u|ALU_unit|Add2~22\))
-- \data_path_u|ALU_unit|Add2~28\ = CARRY((!\data_path_u|B_Reg\(5) & !\data_path_u|ALU_unit|Add2~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(5),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add2~22\,
	combout => \data_path_u|ALU_unit|Add2~27_combout\,
	cout => \data_path_u|ALU_unit|Add2~28\);

-- Location: LCCOMB_X28_Y23_N20
\data_path_u|ALU_unit|Add2~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~31_combout\ = (\data_path_u|B_Reg\(6) & ((GND) # (!\data_path_u|ALU_unit|Add2~28\))) # (!\data_path_u|B_Reg\(6) & (\data_path_u|ALU_unit|Add2~28\ $ (GND)))
-- \data_path_u|ALU_unit|Add2~32\ = CARRY((\data_path_u|B_Reg\(6)) # (!\data_path_u|ALU_unit|Add2~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|B_Reg\(6),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add2~28\,
	combout => \data_path_u|ALU_unit|Add2~31_combout\,
	cout => \data_path_u|ALU_unit|Add2~32\);

-- Location: LCCOMB_X27_Y22_N30
\data_path_u|ALU_unit|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux8~0_combout\ = (\data_path_u|ALU_unit|Mux9~1_combout\ & (!\control_unit_module|ALU_Sel[2]~24_combout\ & ((\control_unit_module|ALU_Sel[0]~21_combout\) # (!\control_unit_module|ALU_Sel[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Mux9~1_combout\,
	datab => \control_unit_module|ALU_Sel[2]~24_combout\,
	datac => \control_unit_module|ALU_Sel[0]~21_combout\,
	datad => \control_unit_module|ALU_Sel[2]~23_combout\,
	combout => \data_path_u|ALU_unit|Mux8~0_combout\);

-- Location: LCCOMB_X28_Y21_N12
\data_path_u|BUS1[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[5]~10_combout\ = (\control_unit_module|Selector16~0_combout\ & (((\data_path_u|B_Reg\(5))))) # (!\control_unit_module|Selector16~0_combout\ & ((\control_unit_module|Selector16~1_combout\ & ((\data_path_u|B_Reg\(5)))) # 
-- (!\control_unit_module|Selector16~1_combout\ & (\data_path_u|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector16~0_combout\,
	datab => \data_path_u|PC\(5),
	datac => \data_path_u|B_Reg\(5),
	datad => \control_unit_module|Selector16~1_combout\,
	combout => \data_path_u|BUS1[5]~10_combout\);

-- Location: FF_X28_Y21_N11
\data_path_u|A_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[5]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|A_Reg\(5));

-- Location: LCCOMB_X28_Y21_N10
\data_path_u|BUS1[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[5]~11_combout\ = (\control_unit_module|Selector17~1_combout\ & (((!\control_unit_module|Selector16~2_combout\ & \data_path_u|A_Reg\(5))))) # (!\control_unit_module|Selector17~1_combout\ & (\data_path_u|BUS1[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[5]~10_combout\,
	datab => \control_unit_module|Selector16~2_combout\,
	datac => \data_path_u|A_Reg\(5),
	datad => \control_unit_module|Selector17~1_combout\,
	combout => \data_path_u|BUS1[5]~11_combout\);

-- Location: LCCOMB_X28_Y21_N4
\data_path_u|BUS1[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[4]~8_combout\ = (\control_unit_module|Selector16~0_combout\ & (((\data_path_u|B_Reg\(4))))) # (!\control_unit_module|Selector16~0_combout\ & ((\control_unit_module|Selector16~1_combout\ & ((\data_path_u|B_Reg\(4)))) # 
-- (!\control_unit_module|Selector16~1_combout\ & (\data_path_u|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector16~0_combout\,
	datab => \data_path_u|PC\(4),
	datac => \data_path_u|B_Reg\(4),
	datad => \control_unit_module|Selector16~1_combout\,
	combout => \data_path_u|BUS1[4]~8_combout\);

-- Location: FF_X28_Y21_N7
\data_path_u|A_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[4]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|A_Reg\(4));

-- Location: LCCOMB_X28_Y21_N6
\data_path_u|BUS1[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[4]~9_combout\ = (\control_unit_module|Selector17~1_combout\ & (((\data_path_u|A_Reg\(4) & !\control_unit_module|Selector16~2_combout\)))) # (!\control_unit_module|Selector17~1_combout\ & (\data_path_u|BUS1[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector17~1_combout\,
	datab => \data_path_u|BUS1[4]~8_combout\,
	datac => \data_path_u|A_Reg\(4),
	datad => \control_unit_module|Selector16~2_combout\,
	combout => \data_path_u|BUS1[4]~9_combout\);

-- Location: LCCOMB_X29_Y22_N26
\data_path_u|BUS1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[0]~0_combout\ = (\control_unit_module|Selector16~0_combout\ & (((\data_path_u|B_Reg\(0))))) # (!\control_unit_module|Selector16~0_combout\ & ((\control_unit_module|Selector16~1_combout\ & ((\data_path_u|B_Reg\(0)))) # 
-- (!\control_unit_module|Selector16~1_combout\ & (\data_path_u|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector16~0_combout\,
	datab => \data_path_u|PC\(0),
	datac => \data_path_u|B_Reg\(0),
	datad => \control_unit_module|Selector16~1_combout\,
	combout => \data_path_u|BUS1[0]~0_combout\);

-- Location: FF_X29_Y22_N21
\data_path_u|A_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|A_Reg\(0));

-- Location: LCCOMB_X29_Y22_N20
\data_path_u|BUS1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[0]~1_combout\ = (\control_unit_module|Selector17~1_combout\ & (((\data_path_u|A_Reg\(0) & !\control_unit_module|Selector16~2_combout\)))) # (!\control_unit_module|Selector17~1_combout\ & (\data_path_u|BUS1[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[0]~0_combout\,
	datab => \control_unit_module|Selector17~1_combout\,
	datac => \data_path_u|A_Reg\(0),
	datad => \control_unit_module|Selector16~2_combout\,
	combout => \data_path_u|BUS1[0]~1_combout\);

-- Location: LCCOMB_X28_Y22_N12
\data_path_u|ALU_unit|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add3~0_combout\ = (\data_path_u|BUS1[0]~1_combout\ & (\data_path_u|B_Reg\(0) $ (VCC))) # (!\data_path_u|BUS1[0]~1_combout\ & (\data_path_u|B_Reg\(0) & VCC))
-- \data_path_u|ALU_unit|Add3~1\ = CARRY((\data_path_u|BUS1[0]~1_combout\ & \data_path_u|B_Reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[0]~1_combout\,
	datab => \data_path_u|B_Reg\(0),
	datad => VCC,
	combout => \data_path_u|ALU_unit|Add3~0_combout\,
	cout => \data_path_u|ALU_unit|Add3~1\);

-- Location: LCCOMB_X28_Y22_N14
\data_path_u|ALU_unit|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add3~2_combout\ = (\data_path_u|BUS1[1]~3_combout\ & ((\data_path_u|B_Reg\(1) & (\data_path_u|ALU_unit|Add3~1\ & VCC)) # (!\data_path_u|B_Reg\(1) & (!\data_path_u|ALU_unit|Add3~1\)))) # (!\data_path_u|BUS1[1]~3_combout\ & 
-- ((\data_path_u|B_Reg\(1) & (!\data_path_u|ALU_unit|Add3~1\)) # (!\data_path_u|B_Reg\(1) & ((\data_path_u|ALU_unit|Add3~1\) # (GND)))))
-- \data_path_u|ALU_unit|Add3~3\ = CARRY((\data_path_u|BUS1[1]~3_combout\ & (!\data_path_u|B_Reg\(1) & !\data_path_u|ALU_unit|Add3~1\)) # (!\data_path_u|BUS1[1]~3_combout\ & ((!\data_path_u|ALU_unit|Add3~1\) # (!\data_path_u|B_Reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[1]~3_combout\,
	datab => \data_path_u|B_Reg\(1),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add3~1\,
	combout => \data_path_u|ALU_unit|Add3~2_combout\,
	cout => \data_path_u|ALU_unit|Add3~3\);

-- Location: LCCOMB_X28_Y22_N16
\data_path_u|ALU_unit|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add3~4_combout\ = ((\data_path_u|B_Reg\(2) $ (\data_path_u|BUS1[2]~5_combout\ $ (!\data_path_u|ALU_unit|Add3~3\)))) # (GND)
-- \data_path_u|ALU_unit|Add3~5\ = CARRY((\data_path_u|B_Reg\(2) & ((\data_path_u|BUS1[2]~5_combout\) # (!\data_path_u|ALU_unit|Add3~3\))) # (!\data_path_u|B_Reg\(2) & (\data_path_u|BUS1[2]~5_combout\ & !\data_path_u|ALU_unit|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(2),
	datab => \data_path_u|BUS1[2]~5_combout\,
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add3~3\,
	combout => \data_path_u|ALU_unit|Add3~4_combout\,
	cout => \data_path_u|ALU_unit|Add3~5\);

-- Location: LCCOMB_X28_Y22_N18
\data_path_u|ALU_unit|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add3~6_combout\ = (\data_path_u|B_Reg\(3) & ((\data_path_u|BUS1[3]~7_combout\ & (\data_path_u|ALU_unit|Add3~5\ & VCC)) # (!\data_path_u|BUS1[3]~7_combout\ & (!\data_path_u|ALU_unit|Add3~5\)))) # (!\data_path_u|B_Reg\(3) & 
-- ((\data_path_u|BUS1[3]~7_combout\ & (!\data_path_u|ALU_unit|Add3~5\)) # (!\data_path_u|BUS1[3]~7_combout\ & ((\data_path_u|ALU_unit|Add3~5\) # (GND)))))
-- \data_path_u|ALU_unit|Add3~7\ = CARRY((\data_path_u|B_Reg\(3) & (!\data_path_u|BUS1[3]~7_combout\ & !\data_path_u|ALU_unit|Add3~5\)) # (!\data_path_u|B_Reg\(3) & ((!\data_path_u|ALU_unit|Add3~5\) # (!\data_path_u|BUS1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(3),
	datab => \data_path_u|BUS1[3]~7_combout\,
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add3~5\,
	combout => \data_path_u|ALU_unit|Add3~6_combout\,
	cout => \data_path_u|ALU_unit|Add3~7\);

-- Location: LCCOMB_X28_Y22_N20
\data_path_u|ALU_unit|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add3~8_combout\ = ((\data_path_u|B_Reg\(4) $ (\data_path_u|BUS1[4]~9_combout\ $ (!\data_path_u|ALU_unit|Add3~7\)))) # (GND)
-- \data_path_u|ALU_unit|Add3~9\ = CARRY((\data_path_u|B_Reg\(4) & ((\data_path_u|BUS1[4]~9_combout\) # (!\data_path_u|ALU_unit|Add3~7\))) # (!\data_path_u|B_Reg\(4) & (\data_path_u|BUS1[4]~9_combout\ & !\data_path_u|ALU_unit|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(4),
	datab => \data_path_u|BUS1[4]~9_combout\,
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add3~7\,
	combout => \data_path_u|ALU_unit|Add3~8_combout\,
	cout => \data_path_u|ALU_unit|Add3~9\);

-- Location: LCCOMB_X28_Y22_N22
\data_path_u|ALU_unit|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add3~10_combout\ = (\data_path_u|BUS1[5]~11_combout\ & ((\data_path_u|B_Reg\(5) & (\data_path_u|ALU_unit|Add3~9\ & VCC)) # (!\data_path_u|B_Reg\(5) & (!\data_path_u|ALU_unit|Add3~9\)))) # (!\data_path_u|BUS1[5]~11_combout\ & 
-- ((\data_path_u|B_Reg\(5) & (!\data_path_u|ALU_unit|Add3~9\)) # (!\data_path_u|B_Reg\(5) & ((\data_path_u|ALU_unit|Add3~9\) # (GND)))))
-- \data_path_u|ALU_unit|Add3~11\ = CARRY((\data_path_u|BUS1[5]~11_combout\ & (!\data_path_u|B_Reg\(5) & !\data_path_u|ALU_unit|Add3~9\)) # (!\data_path_u|BUS1[5]~11_combout\ & ((!\data_path_u|ALU_unit|Add3~9\) # (!\data_path_u|B_Reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[5]~11_combout\,
	datab => \data_path_u|B_Reg\(5),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add3~9\,
	combout => \data_path_u|ALU_unit|Add3~10_combout\,
	cout => \data_path_u|ALU_unit|Add3~11\);

-- Location: LCCOMB_X28_Y22_N24
\data_path_u|ALU_unit|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add3~12_combout\ = ((\data_path_u|B_Reg\(6) $ (\data_path_u|BUS1[6]~13_combout\ $ (!\data_path_u|ALU_unit|Add3~11\)))) # (GND)
-- \data_path_u|ALU_unit|Add3~13\ = CARRY((\data_path_u|B_Reg\(6) & ((\data_path_u|BUS1[6]~13_combout\) # (!\data_path_u|ALU_unit|Add3~11\))) # (!\data_path_u|B_Reg\(6) & (\data_path_u|BUS1[6]~13_combout\ & !\data_path_u|ALU_unit|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(6),
	datab => \data_path_u|BUS1[6]~13_combout\,
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add3~11\,
	combout => \data_path_u|ALU_unit|Add3~12_combout\,
	cout => \data_path_u|ALU_unit|Add3~13\);

-- Location: LCCOMB_X27_Y21_N4
\data_path_u|ALU_unit|Add2~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~33_combout\ = (\data_path_u|ALU_unit|Add2~31_combout\ & ((\control_unit_module|ALU_Sel[2]~24_combout\) # ((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~12_combout\)))) # 
-- (!\data_path_u|ALU_unit|Add2~31_combout\ & (((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add2~31_combout\,
	datab => \control_unit_module|ALU_Sel[2]~24_combout\,
	datac => \data_path_u|ALU_unit|Mux8~0_combout\,
	datad => \data_path_u|ALU_unit|Add3~12_combout\,
	combout => \data_path_u|ALU_unit|Add2~33_combout\);

-- Location: LCCOMB_X29_Y23_N4
\data_path_u|ALU_unit|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add1~0_combout\ = \data_path_u|B_Reg\(0) $ (VCC)
-- \data_path_u|ALU_unit|Add1~1\ = CARRY(\data_path_u|B_Reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(0),
	datad => VCC,
	combout => \data_path_u|ALU_unit|Add1~0_combout\,
	cout => \data_path_u|ALU_unit|Add1~1\);

-- Location: LCCOMB_X29_Y23_N6
\data_path_u|ALU_unit|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add1~2_combout\ = (\data_path_u|B_Reg\(1) & (!\data_path_u|ALU_unit|Add1~1\)) # (!\data_path_u|B_Reg\(1) & ((\data_path_u|ALU_unit|Add1~1\) # (GND)))
-- \data_path_u|ALU_unit|Add1~3\ = CARRY((!\data_path_u|ALU_unit|Add1~1\) # (!\data_path_u|B_Reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|B_Reg\(1),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add1~1\,
	combout => \data_path_u|ALU_unit|Add1~2_combout\,
	cout => \data_path_u|ALU_unit|Add1~3\);

-- Location: LCCOMB_X29_Y23_N8
\data_path_u|ALU_unit|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add1~4_combout\ = (\data_path_u|B_Reg\(2) & (\data_path_u|ALU_unit|Add1~3\ $ (GND))) # (!\data_path_u|B_Reg\(2) & (!\data_path_u|ALU_unit|Add1~3\ & VCC))
-- \data_path_u|ALU_unit|Add1~5\ = CARRY((\data_path_u|B_Reg\(2) & !\data_path_u|ALU_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(2),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add1~3\,
	combout => \data_path_u|ALU_unit|Add1~4_combout\,
	cout => \data_path_u|ALU_unit|Add1~5\);

-- Location: LCCOMB_X29_Y23_N10
\data_path_u|ALU_unit|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add1~6_combout\ = (\data_path_u|B_Reg\(3) & (!\data_path_u|ALU_unit|Add1~5\)) # (!\data_path_u|B_Reg\(3) & ((\data_path_u|ALU_unit|Add1~5\) # (GND)))
-- \data_path_u|ALU_unit|Add1~7\ = CARRY((!\data_path_u|ALU_unit|Add1~5\) # (!\data_path_u|B_Reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|B_Reg\(3),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add1~5\,
	combout => \data_path_u|ALU_unit|Add1~6_combout\,
	cout => \data_path_u|ALU_unit|Add1~7\);

-- Location: LCCOMB_X29_Y23_N12
\data_path_u|ALU_unit|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add1~8_combout\ = (\data_path_u|B_Reg\(4) & (\data_path_u|ALU_unit|Add1~7\ $ (GND))) # (!\data_path_u|B_Reg\(4) & (!\data_path_u|ALU_unit|Add1~7\ & VCC))
-- \data_path_u|ALU_unit|Add1~9\ = CARRY((\data_path_u|B_Reg\(4) & !\data_path_u|ALU_unit|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(4),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add1~7\,
	combout => \data_path_u|ALU_unit|Add1~8_combout\,
	cout => \data_path_u|ALU_unit|Add1~9\);

-- Location: LCCOMB_X29_Y23_N14
\data_path_u|ALU_unit|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add1~10_combout\ = (\data_path_u|B_Reg\(5) & (!\data_path_u|ALU_unit|Add1~9\)) # (!\data_path_u|B_Reg\(5) & ((\data_path_u|ALU_unit|Add1~9\) # (GND)))
-- \data_path_u|ALU_unit|Add1~11\ = CARRY((!\data_path_u|ALU_unit|Add1~9\) # (!\data_path_u|B_Reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|B_Reg\(5),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add1~9\,
	combout => \data_path_u|ALU_unit|Add1~10_combout\,
	cout => \data_path_u|ALU_unit|Add1~11\);

-- Location: LCCOMB_X29_Y23_N16
\data_path_u|ALU_unit|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add1~12_combout\ = (\data_path_u|B_Reg\(6) & (\data_path_u|ALU_unit|Add1~11\ $ (GND))) # (!\data_path_u|B_Reg\(6) & (!\data_path_u|ALU_unit|Add1~11\ & VCC))
-- \data_path_u|ALU_unit|Add1~13\ = CARRY((\data_path_u|B_Reg\(6) & !\data_path_u|ALU_unit|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(6),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add1~11\,
	combout => \data_path_u|ALU_unit|Add1~12_combout\,
	cout => \data_path_u|ALU_unit|Add1~13\);

-- Location: LCCOMB_X27_Y22_N16
\data_path_u|ALU_unit|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux8~1_combout\ = (\control_unit_module|current_state.S_DATA_MAN_4~q\ & \control_unit_module|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	datad => \control_unit_module|Equal8~0_combout\,
	combout => \data_path_u|ALU_unit|Mux8~1_combout\);

-- Location: LCCOMB_X27_Y22_N22
\data_path_u|ALU_unit|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux8~2_combout\ = (\control_unit_module|Equal8~0_combout\ & (\control_unit_module|current_state.S_DATA_MAN_4~q\ & ((\data_path_u|IR_Reg\(0))))) # (!\control_unit_module|Equal8~0_combout\ & 
-- (((!\control_unit_module|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	datab => \control_unit_module|Equal6~1_combout\,
	datac => \data_path_u|IR_Reg\(0),
	datad => \control_unit_module|Equal8~0_combout\,
	combout => \data_path_u|ALU_unit|Mux8~2_combout\);

-- Location: LCCOMB_X27_Y22_N0
\data_path_u|ALU_unit|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux8~3_combout\ = (\control_unit_module|ALU_Sel[2]~24_combout\) # ((\data_path_u|ALU_unit|Mux8~2_combout\ & \control_unit_module|ALU_Sel[2]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Mux8~2_combout\,
	datac => \control_unit_module|ALU_Sel[2]~24_combout\,
	datad => \control_unit_module|ALU_Sel[2]~23_combout\,
	combout => \data_path_u|ALU_unit|Mux8~3_combout\);

-- Location: LCCOMB_X27_Y21_N24
\data_path_u|ALU_unit|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~34_combout\ = (\data_path_u|BUS1[6]~13_combout\ & ((\data_path_u|ALU_unit|Mux8~3_combout\) # ((\data_path_u|B_Reg\(6) & \data_path_u|ALU_unit|Mux8~1_combout\)))) # (!\data_path_u|BUS1[6]~13_combout\ & 
-- (\data_path_u|ALU_unit|Mux8~3_combout\ & ((\data_path_u|B_Reg\(6)) # (!\data_path_u|ALU_unit|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[6]~13_combout\,
	datab => \data_path_u|B_Reg\(6),
	datac => \data_path_u|ALU_unit|Mux8~1_combout\,
	datad => \data_path_u|ALU_unit|Mux8~3_combout\,
	combout => \data_path_u|ALU_unit|Add2~34_combout\);

-- Location: LCCOMB_X29_Y22_N0
\data_path_u|ALU_unit|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add0~0_combout\ = (\data_path_u|B_Reg\(0) & (\data_path_u|BUS1[0]~1_combout\ $ (VCC))) # (!\data_path_u|B_Reg\(0) & ((\data_path_u|BUS1[0]~1_combout\) # (GND)))
-- \data_path_u|ALU_unit|Add0~1\ = CARRY((\data_path_u|BUS1[0]~1_combout\) # (!\data_path_u|B_Reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(0),
	datab => \data_path_u|BUS1[0]~1_combout\,
	datad => VCC,
	combout => \data_path_u|ALU_unit|Add0~0_combout\,
	cout => \data_path_u|ALU_unit|Add0~1\);

-- Location: LCCOMB_X29_Y22_N2
\data_path_u|ALU_unit|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add0~2_combout\ = (\data_path_u|BUS1[1]~3_combout\ & ((\data_path_u|B_Reg\(1) & (!\data_path_u|ALU_unit|Add0~1\)) # (!\data_path_u|B_Reg\(1) & (\data_path_u|ALU_unit|Add0~1\ & VCC)))) # (!\data_path_u|BUS1[1]~3_combout\ & 
-- ((\data_path_u|B_Reg\(1) & ((\data_path_u|ALU_unit|Add0~1\) # (GND))) # (!\data_path_u|B_Reg\(1) & (!\data_path_u|ALU_unit|Add0~1\))))
-- \data_path_u|ALU_unit|Add0~3\ = CARRY((\data_path_u|BUS1[1]~3_combout\ & (\data_path_u|B_Reg\(1) & !\data_path_u|ALU_unit|Add0~1\)) # (!\data_path_u|BUS1[1]~3_combout\ & ((\data_path_u|B_Reg\(1)) # (!\data_path_u|ALU_unit|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[1]~3_combout\,
	datab => \data_path_u|B_Reg\(1),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add0~1\,
	combout => \data_path_u|ALU_unit|Add0~2_combout\,
	cout => \data_path_u|ALU_unit|Add0~3\);

-- Location: LCCOMB_X29_Y22_N4
\data_path_u|ALU_unit|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add0~4_combout\ = ((\data_path_u|BUS1[2]~5_combout\ $ (\data_path_u|B_Reg\(2) $ (\data_path_u|ALU_unit|Add0~3\)))) # (GND)
-- \data_path_u|ALU_unit|Add0~5\ = CARRY((\data_path_u|BUS1[2]~5_combout\ & ((!\data_path_u|ALU_unit|Add0~3\) # (!\data_path_u|B_Reg\(2)))) # (!\data_path_u|BUS1[2]~5_combout\ & (!\data_path_u|B_Reg\(2) & !\data_path_u|ALU_unit|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[2]~5_combout\,
	datab => \data_path_u|B_Reg\(2),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add0~3\,
	combout => \data_path_u|ALU_unit|Add0~4_combout\,
	cout => \data_path_u|ALU_unit|Add0~5\);

-- Location: LCCOMB_X29_Y22_N6
\data_path_u|ALU_unit|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add0~6_combout\ = (\data_path_u|BUS1[3]~7_combout\ & ((\data_path_u|B_Reg\(3) & (!\data_path_u|ALU_unit|Add0~5\)) # (!\data_path_u|B_Reg\(3) & (\data_path_u|ALU_unit|Add0~5\ & VCC)))) # (!\data_path_u|BUS1[3]~7_combout\ & 
-- ((\data_path_u|B_Reg\(3) & ((\data_path_u|ALU_unit|Add0~5\) # (GND))) # (!\data_path_u|B_Reg\(3) & (!\data_path_u|ALU_unit|Add0~5\))))
-- \data_path_u|ALU_unit|Add0~7\ = CARRY((\data_path_u|BUS1[3]~7_combout\ & (\data_path_u|B_Reg\(3) & !\data_path_u|ALU_unit|Add0~5\)) # (!\data_path_u|BUS1[3]~7_combout\ & ((\data_path_u|B_Reg\(3)) # (!\data_path_u|ALU_unit|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[3]~7_combout\,
	datab => \data_path_u|B_Reg\(3),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add0~5\,
	combout => \data_path_u|ALU_unit|Add0~6_combout\,
	cout => \data_path_u|ALU_unit|Add0~7\);

-- Location: LCCOMB_X29_Y22_N8
\data_path_u|ALU_unit|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add0~8_combout\ = ((\data_path_u|B_Reg\(4) $ (\data_path_u|BUS1[4]~9_combout\ $ (\data_path_u|ALU_unit|Add0~7\)))) # (GND)
-- \data_path_u|ALU_unit|Add0~9\ = CARRY((\data_path_u|B_Reg\(4) & (\data_path_u|BUS1[4]~9_combout\ & !\data_path_u|ALU_unit|Add0~7\)) # (!\data_path_u|B_Reg\(4) & ((\data_path_u|BUS1[4]~9_combout\) # (!\data_path_u|ALU_unit|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(4),
	datab => \data_path_u|BUS1[4]~9_combout\,
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add0~7\,
	combout => \data_path_u|ALU_unit|Add0~8_combout\,
	cout => \data_path_u|ALU_unit|Add0~9\);

-- Location: LCCOMB_X29_Y22_N10
\data_path_u|ALU_unit|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add0~10_combout\ = (\data_path_u|B_Reg\(5) & ((\data_path_u|BUS1[5]~11_combout\ & (!\data_path_u|ALU_unit|Add0~9\)) # (!\data_path_u|BUS1[5]~11_combout\ & ((\data_path_u|ALU_unit|Add0~9\) # (GND))))) # (!\data_path_u|B_Reg\(5) & 
-- ((\data_path_u|BUS1[5]~11_combout\ & (\data_path_u|ALU_unit|Add0~9\ & VCC)) # (!\data_path_u|BUS1[5]~11_combout\ & (!\data_path_u|ALU_unit|Add0~9\))))
-- \data_path_u|ALU_unit|Add0~11\ = CARRY((\data_path_u|B_Reg\(5) & ((!\data_path_u|ALU_unit|Add0~9\) # (!\data_path_u|BUS1[5]~11_combout\))) # (!\data_path_u|B_Reg\(5) & (!\data_path_u|BUS1[5]~11_combout\ & !\data_path_u|ALU_unit|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(5),
	datab => \data_path_u|BUS1[5]~11_combout\,
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add0~9\,
	combout => \data_path_u|ALU_unit|Add0~10_combout\,
	cout => \data_path_u|ALU_unit|Add0~11\);

-- Location: LCCOMB_X29_Y22_N12
\data_path_u|ALU_unit|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add0~12_combout\ = ((\data_path_u|B_Reg\(6) $ (\data_path_u|BUS1[6]~13_combout\ $ (\data_path_u|ALU_unit|Add0~11\)))) # (GND)
-- \data_path_u|ALU_unit|Add0~13\ = CARRY((\data_path_u|B_Reg\(6) & (\data_path_u|BUS1[6]~13_combout\ & !\data_path_u|ALU_unit|Add0~11\)) # (!\data_path_u|B_Reg\(6) & ((\data_path_u|BUS1[6]~13_combout\) # (!\data_path_u|ALU_unit|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(6),
	datab => \data_path_u|BUS1[6]~13_combout\,
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add0~11\,
	combout => \data_path_u|ALU_unit|Add0~12_combout\,
	cout => \data_path_u|ALU_unit|Add0~13\);

-- Location: LCCOMB_X27_Y21_N12
\data_path_u|ALU_unit|Add2~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~35_combout\ = (\data_path_u|ALU_unit|Add2~34_combout\ & ((\data_path_u|ALU_unit|Add1~12_combout\) # ((\data_path_u|ALU_unit|Mux8~1_combout\)))) # (!\data_path_u|ALU_unit|Add2~34_combout\ & 
-- (((!\data_path_u|ALU_unit|Mux8~1_combout\ & \data_path_u|ALU_unit|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add1~12_combout\,
	datab => \data_path_u|ALU_unit|Add2~34_combout\,
	datac => \data_path_u|ALU_unit|Mux8~1_combout\,
	datad => \data_path_u|ALU_unit|Add0~12_combout\,
	combout => \data_path_u|ALU_unit|Add2~35_combout\);

-- Location: LCCOMB_X27_Y21_N16
\data_path_u|ALU_unit|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~36_combout\ = (\data_path_u|ALU_unit|Add2~33_combout\) # ((\data_path_u|ALU_unit|Add2~3_combout\ & \data_path_u|ALU_unit|Add2~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|ALU_unit|Add2~3_combout\,
	datac => \data_path_u|ALU_unit|Add2~33_combout\,
	datad => \data_path_u|ALU_unit|Add2~35_combout\,
	combout => \data_path_u|ALU_unit|Add2~36_combout\);

-- Location: LCCOMB_X30_Y21_N20
\data_path_u|BUS2[6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[6]~15_combout\ = (\data_path_u|BUS2[6]~14_combout\) # ((\data_path_u|BUS2[0]~18_combout\ & \data_path_u|ALU_unit|Add2~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS2[6]~14_combout\,
	datac => \data_path_u|BUS2[0]~18_combout\,
	datad => \data_path_u|ALU_unit|Add2~36_combout\,
	combout => \data_path_u|BUS2[6]~15_combout\);

-- Location: FF_X29_Y21_N23
\data_path_u|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|PC[6]~22_combout\,
	asdata => \data_path_u|BUS2[6]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \control_unit_module|PC_Load~6_combout\,
	ena => \data_path_u|PC[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|PC\(6));

-- Location: LCCOMB_X29_Y21_N24
\data_path_u|PC[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|PC[7]~24_combout\ = \data_path_u|PC[6]~23\ $ (\data_path_u|PC\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \data_path_u|PC\(7),
	cin => \data_path_u|PC[6]~23\,
	combout => \data_path_u|PC[7]~24_combout\);

-- Location: FF_X29_Y21_N25
\data_path_u|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|PC[7]~24_combout\,
	asdata => \data_path_u|BUS2[7]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \control_unit_module|PC_Load~6_combout\,
	ena => \data_path_u|PC[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|PC\(7));

-- Location: FF_X28_Y21_N9
\data_path_u|B_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[7]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|B_Reg\(7));

-- Location: LCCOMB_X28_Y21_N8
\data_path_u|BUS1[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[7]~14_combout\ = (\control_unit_module|Selector16~0_combout\ & (((\data_path_u|B_Reg\(7))))) # (!\control_unit_module|Selector16~0_combout\ & ((\control_unit_module|Selector16~1_combout\ & ((\data_path_u|B_Reg\(7)))) # 
-- (!\control_unit_module|Selector16~1_combout\ & (\data_path_u|PC\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector16~0_combout\,
	datab => \data_path_u|PC\(7),
	datac => \data_path_u|B_Reg\(7),
	datad => \control_unit_module|Selector16~1_combout\,
	combout => \data_path_u|BUS1[7]~14_combout\);

-- Location: LCCOMB_X28_Y21_N30
\data_path_u|BUS1[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[7]~15_combout\ = (\control_unit_module|Selector17~1_combout\ & (!\control_unit_module|Selector16~2_combout\ & (\data_path_u|A_Reg\(7)))) # (!\control_unit_module|Selector17~1_combout\ & (((\data_path_u|BUS1[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector17~1_combout\,
	datab => \control_unit_module|Selector16~2_combout\,
	datac => \data_path_u|A_Reg\(7),
	datad => \data_path_u|BUS1[7]~14_combout\,
	combout => \data_path_u|BUS1[7]~15_combout\);

-- Location: IOIBUF_X32_Y29_N1
\from_memory[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(7),
	o => \from_memory[7]~input_o\);

-- Location: LCCOMB_X32_Y21_N14
\data_path_u|BUS2[7]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[7]~16_combout\ = (\control_unit_module|Selector19~2_combout\ & (((\from_memory[7]~input_o\ & \control_unit_module|Selector18~2_combout\)))) # (!\control_unit_module|Selector19~2_combout\ & (\data_path_u|BUS1[7]~15_combout\ & 
-- ((!\control_unit_module|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[7]~15_combout\,
	datab => \control_unit_module|Selector19~2_combout\,
	datac => \from_memory[7]~input_o\,
	datad => \control_unit_module|Selector18~2_combout\,
	combout => \data_path_u|BUS2[7]~16_combout\);

-- Location: LCCOMB_X29_Y23_N18
\data_path_u|ALU_unit|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add1~14_combout\ = \data_path_u|ALU_unit|Add1~13\ $ (\data_path_u|B_Reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \data_path_u|B_Reg\(7),
	cin => \data_path_u|ALU_unit|Add1~13\,
	combout => \data_path_u|ALU_unit|Add1~14_combout\);

-- Location: LCCOMB_X30_Y22_N24
\data_path_u|ALU_unit|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux1~0_combout\ = (\data_path_u|ALU_unit|Mux8~1_combout\ & ((\data_path_u|B_Reg\(7) & ((\data_path_u|BUS1[7]~15_combout\) # (\data_path_u|ALU_unit|Mux8~3_combout\))) # (!\data_path_u|B_Reg\(7) & (\data_path_u|BUS1[7]~15_combout\ & 
-- \data_path_u|ALU_unit|Mux8~3_combout\)))) # (!\data_path_u|ALU_unit|Mux8~1_combout\ & (((!\data_path_u|ALU_unit|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(7),
	datab => \data_path_u|ALU_unit|Mux8~1_combout\,
	datac => \data_path_u|BUS1[7]~15_combout\,
	datad => \data_path_u|ALU_unit|Mux8~3_combout\,
	combout => \data_path_u|ALU_unit|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y22_N14
\data_path_u|ALU_unit|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add0~14_combout\ = (\data_path_u|BUS1[7]~15_combout\ & ((\data_path_u|B_Reg\(7) & (!\data_path_u|ALU_unit|Add0~13\)) # (!\data_path_u|B_Reg\(7) & (\data_path_u|ALU_unit|Add0~13\ & VCC)))) # (!\data_path_u|BUS1[7]~15_combout\ & 
-- ((\data_path_u|B_Reg\(7) & ((\data_path_u|ALU_unit|Add0~13\) # (GND))) # (!\data_path_u|B_Reg\(7) & (!\data_path_u|ALU_unit|Add0~13\))))
-- \data_path_u|ALU_unit|Add0~15\ = CARRY((\data_path_u|BUS1[7]~15_combout\ & (\data_path_u|B_Reg\(7) & !\data_path_u|ALU_unit|Add0~13\)) # (!\data_path_u|BUS1[7]~15_combout\ & ((\data_path_u|B_Reg\(7)) # (!\data_path_u|ALU_unit|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[7]~15_combout\,
	datab => \data_path_u|B_Reg\(7),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add0~13\,
	combout => \data_path_u|ALU_unit|Add0~14_combout\,
	cout => \data_path_u|ALU_unit|Add0~15\);

-- Location: LCCOMB_X30_Y22_N26
\data_path_u|ALU_unit|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux1~1_combout\ = (\data_path_u|ALU_unit|Mux1~0_combout\ & (((\data_path_u|ALU_unit|Mux8~1_combout\) # (\data_path_u|ALU_unit|Add0~14_combout\)))) # (!\data_path_u|ALU_unit|Mux1~0_combout\ & (\data_path_u|ALU_unit|Add1~14_combout\ & 
-- (!\data_path_u|ALU_unit|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add1~14_combout\,
	datab => \data_path_u|ALU_unit|Mux1~0_combout\,
	datac => \data_path_u|ALU_unit|Mux8~1_combout\,
	datad => \data_path_u|ALU_unit|Add0~14_combout\,
	combout => \data_path_u|ALU_unit|Mux1~1_combout\);

-- Location: LCCOMB_X28_Y23_N22
\data_path_u|ALU_unit|Add2~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~37_combout\ = \data_path_u|B_Reg\(7) $ (!\data_path_u|ALU_unit|Add2~32\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|B_Reg\(7),
	cin => \data_path_u|ALU_unit|Add2~32\,
	combout => \data_path_u|ALU_unit|Add2~37_combout\);

-- Location: LCCOMB_X28_Y22_N26
\data_path_u|ALU_unit|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add3~14_combout\ = (\data_path_u|BUS1[7]~15_combout\ & ((\data_path_u|B_Reg\(7) & (\data_path_u|ALU_unit|Add3~13\ & VCC)) # (!\data_path_u|B_Reg\(7) & (!\data_path_u|ALU_unit|Add3~13\)))) # (!\data_path_u|BUS1[7]~15_combout\ & 
-- ((\data_path_u|B_Reg\(7) & (!\data_path_u|ALU_unit|Add3~13\)) # (!\data_path_u|B_Reg\(7) & ((\data_path_u|ALU_unit|Add3~13\) # (GND)))))
-- \data_path_u|ALU_unit|Add3~15\ = CARRY((\data_path_u|BUS1[7]~15_combout\ & (!\data_path_u|B_Reg\(7) & !\data_path_u|ALU_unit|Add3~13\)) # (!\data_path_u|BUS1[7]~15_combout\ & ((!\data_path_u|ALU_unit|Add3~13\) # (!\data_path_u|B_Reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[7]~15_combout\,
	datab => \data_path_u|B_Reg\(7),
	datad => VCC,
	cin => \data_path_u|ALU_unit|Add3~13\,
	combout => \data_path_u|ALU_unit|Add3~14_combout\,
	cout => \data_path_u|ALU_unit|Add3~15\);

-- Location: LCCOMB_X30_Y22_N18
\data_path_u|ALU_unit|Add2~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~39_combout\ = (\control_unit_module|ALU_Sel[2]~24_combout\ & ((\data_path_u|ALU_unit|Add2~37_combout\) # ((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~14_combout\)))) # 
-- (!\control_unit_module|ALU_Sel[2]~24_combout\ & (((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|ALU_Sel[2]~24_combout\,
	datab => \data_path_u|ALU_unit|Add2~37_combout\,
	datac => \data_path_u|ALU_unit|Mux8~0_combout\,
	datad => \data_path_u|ALU_unit|Add3~14_combout\,
	combout => \data_path_u|ALU_unit|Add2~39_combout\);

-- Location: LCCOMB_X30_Y22_N28
\data_path_u|ALU_unit|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~40_combout\ = (\data_path_u|ALU_unit|Add2~39_combout\) # ((\data_path_u|ALU_unit|Add2~3_combout\ & \data_path_u|ALU_unit|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add2~3_combout\,
	datac => \data_path_u|ALU_unit|Mux1~1_combout\,
	datad => \data_path_u|ALU_unit|Add2~39_combout\,
	combout => \data_path_u|ALU_unit|Add2~40_combout\);

-- Location: LCCOMB_X30_Y21_N28
\data_path_u|BUS2[7]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[7]~17_combout\ = (\data_path_u|BUS2[7]~16_combout\) # ((\data_path_u|BUS2[0]~18_combout\ & \data_path_u|ALU_unit|Add2~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS2[7]~16_combout\,
	datab => \data_path_u|BUS2[0]~18_combout\,
	datad => \data_path_u|ALU_unit|Add2~40_combout\,
	combout => \data_path_u|BUS2[7]~17_combout\);

-- Location: FF_X30_Y21_N15
\data_path_u|IR_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \data_path_u|BUS2[7]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|current_state.S_FETCH_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|IR_Reg\(7));

-- Location: LCCOMB_X31_Y21_N6
\control_unit_module|PC_Load~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|PC_Load~0_combout\ = (!\data_path_u|IR_Reg\(7) & (\data_path_u|IR_Reg\(5) & (!\data_path_u|IR_Reg\(6) & !\data_path_u|IR_Reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(7),
	datab => \data_path_u|IR_Reg\(5),
	datac => \data_path_u|IR_Reg\(6),
	datad => \data_path_u|IR_Reg\(4),
	combout => \control_unit_module|PC_Load~0_combout\);

-- Location: LCCOMB_X28_Y22_N28
\data_path_u|ALU_unit|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add3~16_combout\ = !\data_path_u|ALU_unit|Add3~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \data_path_u|ALU_unit|Add3~15\,
	combout => \data_path_u|ALU_unit|Add3~16_combout\);

-- Location: LCCOMB_X30_Y22_N4
\control_unit_module|ALU_Sel[0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|ALU_Sel[0]~22_combout\ = (\control_unit_module|ALU_Sel[2]~24_combout\) # ((!\control_unit_module|ALU_Sel[0]~21_combout\ & \control_unit_module|ALU_Sel[2]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_module|ALU_Sel[0]~21_combout\,
	datac => \control_unit_module|ALU_Sel[2]~23_combout\,
	datad => \control_unit_module|ALU_Sel[2]~24_combout\,
	combout => \control_unit_module|ALU_Sel[0]~22_combout\);

-- Location: LCCOMB_X29_Y22_N16
\data_path_u|ALU_unit|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add0~16_combout\ = \data_path_u|ALU_unit|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \data_path_u|ALU_unit|Add0~15\,
	combout => \data_path_u|ALU_unit|Add0~16_combout\);

-- Location: LCCOMB_X28_Y22_N2
\data_path_u|ALU_unit|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux10~0_combout\ = (\data_path_u|ALU_unit|Mux9~1_combout\ & ((\control_unit_module|ALU_Sel[0]~22_combout\ & ((\data_path_u|ALU_unit|Add0~16_combout\))) # (!\control_unit_module|ALU_Sel[0]~22_combout\ & 
-- (\data_path_u|ALU_unit|Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Mux9~1_combout\,
	datab => \data_path_u|ALU_unit|Add3~16_combout\,
	datac => \control_unit_module|ALU_Sel[0]~22_combout\,
	datad => \data_path_u|ALU_unit|Add0~16_combout\,
	combout => \data_path_u|ALU_unit|Mux10~0_combout\);

-- Location: FF_X28_Y22_N3
\data_path_u|CCR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|ALU_unit|Mux10~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|CCR\(0));

-- Location: LCCOMB_X35_Y21_N16
\control_unit_module|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal5~1_combout\ = (!\data_path_u|IR_Reg\(0) & (!\data_path_u|IR_Reg\(1) & (!\data_path_u|IR_Reg\(2) & \data_path_u|IR_Reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(0),
	datab => \data_path_u|IR_Reg\(1),
	datac => \data_path_u|IR_Reg\(2),
	datad => \data_path_u|IR_Reg\(3),
	combout => \control_unit_module|Equal5~1_combout\);

-- Location: LCCOMB_X30_Y22_N6
\data_path_u|ALU_unit|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux9~2_combout\ = (\data_path_u|B_Reg\(7) & (!\data_path_u|ALU_unit|Add2~40_combout\ & (\control_unit_module|ALU_Sel[0]~22_combout\ $ (\data_path_u|BUS1[7]~15_combout\)))) # (!\data_path_u|B_Reg\(7) & 
-- (\data_path_u|ALU_unit|Add2~40_combout\ & (\control_unit_module|ALU_Sel[0]~22_combout\ $ (!\data_path_u|BUS1[7]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(7),
	datab => \control_unit_module|ALU_Sel[0]~22_combout\,
	datac => \data_path_u|BUS1[7]~15_combout\,
	datad => \data_path_u|ALU_unit|Add2~40_combout\,
	combout => \data_path_u|ALU_unit|Mux9~2_combout\);

-- Location: LCCOMB_X30_Y22_N20
\data_path_u|ALU_unit|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux9~3_combout\ = (\data_path_u|ALU_unit|Mux9~1_combout\ & \data_path_u|ALU_unit|Mux9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|ALU_unit|Mux9~1_combout\,
	datad => \data_path_u|ALU_unit|Mux9~2_combout\,
	combout => \data_path_u|ALU_unit|Mux9~3_combout\);

-- Location: FF_X30_Y22_N21
\data_path_u|CCR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|ALU_unit|Mux9~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|CCR\(1));

-- Location: LCCOMB_X35_Y21_N6
\control_unit_module|PC_Load~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|PC_Load~3_combout\ = (\data_path_u|IR_Reg\(1) & ((\data_path_u|IR_Reg\(0) & (\data_path_u|CCR\(0))) # (!\data_path_u|IR_Reg\(0) & ((!\data_path_u|CCR\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(0),
	datab => \data_path_u|IR_Reg\(1),
	datac => \data_path_u|CCR\(0),
	datad => \data_path_u|CCR\(1),
	combout => \control_unit_module|PC_Load~3_combout\);

-- Location: LCCOMB_X28_Y22_N6
\data_path_u|ALU_unit|Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~23_combout\ = (\control_unit_module|ALU_Sel[2]~24_combout\ & ((\data_path_u|ALU_unit|Add2~21_combout\) # ((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~8_combout\)))) # 
-- (!\control_unit_module|ALU_Sel[2]~24_combout\ & (\data_path_u|ALU_unit|Mux8~0_combout\ & ((\data_path_u|ALU_unit|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|ALU_Sel[2]~24_combout\,
	datab => \data_path_u|ALU_unit|Mux8~0_combout\,
	datac => \data_path_u|ALU_unit|Add2~21_combout\,
	datad => \data_path_u|ALU_unit|Add3~8_combout\,
	combout => \data_path_u|ALU_unit|Add2~23_combout\);

-- Location: LCCOMB_X29_Y22_N28
\data_path_u|ALU_unit|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~24_combout\ = (\data_path_u|B_Reg\(4) & ((\data_path_u|ALU_unit|Mux8~3_combout\) # ((\data_path_u|ALU_unit|Mux8~1_combout\ & \data_path_u|BUS1[4]~9_combout\)))) # (!\data_path_u|B_Reg\(4) & (\data_path_u|ALU_unit|Mux8~3_combout\ 
-- & ((\data_path_u|BUS1[4]~9_combout\) # (!\data_path_u|ALU_unit|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(4),
	datab => \data_path_u|ALU_unit|Mux8~1_combout\,
	datac => \data_path_u|ALU_unit|Mux8~3_combout\,
	datad => \data_path_u|BUS1[4]~9_combout\,
	combout => \data_path_u|ALU_unit|Add2~24_combout\);

-- Location: LCCOMB_X29_Y22_N22
\data_path_u|ALU_unit|Add2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~25_combout\ = (\data_path_u|ALU_unit|Mux8~1_combout\ & (((\data_path_u|ALU_unit|Add2~24_combout\)))) # (!\data_path_u|ALU_unit|Mux8~1_combout\ & ((\data_path_u|ALU_unit|Add2~24_combout\ & (\data_path_u|ALU_unit|Add1~8_combout\)) 
-- # (!\data_path_u|ALU_unit|Add2~24_combout\ & ((\data_path_u|ALU_unit|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add1~8_combout\,
	datab => \data_path_u|ALU_unit|Mux8~1_combout\,
	datac => \data_path_u|ALU_unit|Add0~8_combout\,
	datad => \data_path_u|ALU_unit|Add2~24_combout\,
	combout => \data_path_u|ALU_unit|Add2~25_combout\);

-- Location: LCCOMB_X28_Y22_N8
\data_path_u|ALU_unit|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~26_combout\ = (\data_path_u|ALU_unit|Add2~23_combout\) # ((\data_path_u|ALU_unit|Add2~3_combout\ & \data_path_u|ALU_unit|Add2~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add2~23_combout\,
	datab => \data_path_u|ALU_unit|Add2~3_combout\,
	datad => \data_path_u|ALU_unit|Add2~25_combout\,
	combout => \data_path_u|ALU_unit|Add2~26_combout\);

-- Location: LCCOMB_X28_Y22_N30
\data_path_u|ALU_unit|Add2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~29_combout\ = (\data_path_u|ALU_unit|Add2~27_combout\ & ((\control_unit_module|ALU_Sel[2]~24_combout\) # ((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~10_combout\)))) # 
-- (!\data_path_u|ALU_unit|Add2~27_combout\ & (\data_path_u|ALU_unit|Mux8~0_combout\ & (\data_path_u|ALU_unit|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add2~27_combout\,
	datab => \data_path_u|ALU_unit|Mux8~0_combout\,
	datac => \data_path_u|ALU_unit|Add3~10_combout\,
	datad => \control_unit_module|ALU_Sel[2]~24_combout\,
	combout => \data_path_u|ALU_unit|Add2~29_combout\);

-- Location: LCCOMB_X30_Y21_N2
\data_path_u|ALU_unit|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux3~0_combout\ = (\data_path_u|ALU_unit|Mux8~1_combout\ & (((\data_path_u|ALU_unit|Mux8~3_combout\)))) # (!\data_path_u|ALU_unit|Mux8~1_combout\ & ((\data_path_u|ALU_unit|Mux8~3_combout\ & (\data_path_u|ALU_unit|Add1~10_combout\)) # 
-- (!\data_path_u|ALU_unit|Mux8~3_combout\ & ((\data_path_u|ALU_unit|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add1~10_combout\,
	datab => \data_path_u|ALU_unit|Mux8~1_combout\,
	datac => \data_path_u|ALU_unit|Mux8~3_combout\,
	datad => \data_path_u|ALU_unit|Add0~10_combout\,
	combout => \data_path_u|ALU_unit|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y21_N18
\data_path_u|ALU_unit|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux3~1_combout\ = (\data_path_u|BUS1[5]~11_combout\ & ((\data_path_u|ALU_unit|Mux3~0_combout\) # ((\data_path_u|B_Reg\(5) & \data_path_u|ALU_unit|Mux8~1_combout\)))) # (!\data_path_u|BUS1[5]~11_combout\ & 
-- (\data_path_u|ALU_unit|Mux3~0_combout\ & ((\data_path_u|B_Reg\(5)) # (!\data_path_u|ALU_unit|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[5]~11_combout\,
	datab => \data_path_u|B_Reg\(5),
	datac => \data_path_u|ALU_unit|Mux8~1_combout\,
	datad => \data_path_u|ALU_unit|Mux3~0_combout\,
	combout => \data_path_u|ALU_unit|Mux3~1_combout\);

-- Location: LCCOMB_X30_Y22_N22
\data_path_u|ALU_unit|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Equal0~1_combout\ = (!\data_path_u|ALU_unit|Add2~26_combout\ & (!\data_path_u|ALU_unit|Add2~29_combout\ & ((!\data_path_u|ALU_unit|Mux3~1_combout\) # (!\data_path_u|ALU_unit|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add2~3_combout\,
	datab => \data_path_u|ALU_unit|Add2~26_combout\,
	datac => \data_path_u|ALU_unit|Add2~29_combout\,
	datad => \data_path_u|ALU_unit|Mux3~1_combout\,
	combout => \data_path_u|ALU_unit|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y22_N16
\data_path_u|ALU_unit|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~4_combout\ = (\data_path_u|B_Reg\(0) & ((\data_path_u|ALU_unit|Mux8~3_combout\) # ((\data_path_u|ALU_unit|Mux8~1_combout\ & \data_path_u|BUS1[0]~1_combout\)))) # (!\data_path_u|B_Reg\(0) & (\data_path_u|ALU_unit|Mux8~3_combout\ 
-- & ((\data_path_u|BUS1[0]~1_combout\) # (!\data_path_u|ALU_unit|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(0),
	datab => \data_path_u|ALU_unit|Mux8~1_combout\,
	datac => \data_path_u|ALU_unit|Mux8~3_combout\,
	datad => \data_path_u|BUS1[0]~1_combout\,
	combout => \data_path_u|ALU_unit|Add2~4_combout\);

-- Location: LCCOMB_X30_Y22_N14
\data_path_u|ALU_unit|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~5_combout\ = (\data_path_u|ALU_unit|Mux8~1_combout\ & (((\data_path_u|ALU_unit|Add2~4_combout\)))) # (!\data_path_u|ALU_unit|Mux8~1_combout\ & ((\data_path_u|ALU_unit|Add2~4_combout\ & (\data_path_u|ALU_unit|Add1~0_combout\)) # 
-- (!\data_path_u|ALU_unit|Add2~4_combout\ & ((\data_path_u|ALU_unit|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add1~0_combout\,
	datab => \data_path_u|ALU_unit|Mux8~1_combout\,
	datac => \data_path_u|ALU_unit|Add0~0_combout\,
	datad => \data_path_u|ALU_unit|Add2~4_combout\,
	combout => \data_path_u|ALU_unit|Add2~5_combout\);

-- Location: LCCOMB_X30_Y22_N0
\data_path_u|ALU_unit|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~2_combout\ = (\control_unit_module|ALU_Sel[2]~24_combout\ & ((\data_path_u|ALU_unit|Add2~0_combout\) # ((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~0_combout\)))) # 
-- (!\control_unit_module|ALU_Sel[2]~24_combout\ & (((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|ALU_Sel[2]~24_combout\,
	datab => \data_path_u|ALU_unit|Add2~0_combout\,
	datac => \data_path_u|ALU_unit|Mux8~0_combout\,
	datad => \data_path_u|ALU_unit|Add3~0_combout\,
	combout => \data_path_u|ALU_unit|Add2~2_combout\);

-- Location: LCCOMB_X30_Y22_N12
\data_path_u|ALU_unit|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~6_combout\ = (\data_path_u|ALU_unit|Add2~2_combout\) # ((\data_path_u|ALU_unit|Add2~3_combout\ & \data_path_u|ALU_unit|Add2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add2~3_combout\,
	datac => \data_path_u|ALU_unit|Add2~5_combout\,
	datad => \data_path_u|ALU_unit|Add2~2_combout\,
	combout => \data_path_u|ALU_unit|Add2~6_combout\);

-- Location: LCCOMB_X28_Y22_N0
\data_path_u|ALU_unit|Add2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~19_combout\ = (\control_unit_module|ALU_Sel[2]~24_combout\ & ((\data_path_u|ALU_unit|Add2~17_combout\) # ((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~6_combout\)))) # 
-- (!\control_unit_module|ALU_Sel[2]~24_combout\ & (\data_path_u|ALU_unit|Mux8~0_combout\ & ((\data_path_u|ALU_unit|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|ALU_Sel[2]~24_combout\,
	datab => \data_path_u|ALU_unit|Mux8~0_combout\,
	datac => \data_path_u|ALU_unit|Add2~17_combout\,
	datad => \data_path_u|ALU_unit|Add3~6_combout\,
	combout => \data_path_u|ALU_unit|Add2~19_combout\);

-- Location: LCCOMB_X29_Y22_N18
\data_path_u|ALU_unit|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux5~0_combout\ = (\data_path_u|ALU_unit|Mux8~1_combout\ & (((\data_path_u|ALU_unit|Mux8~3_combout\)))) # (!\data_path_u|ALU_unit|Mux8~1_combout\ & ((\data_path_u|ALU_unit|Mux8~3_combout\ & (\data_path_u|ALU_unit|Add1~6_combout\)) # 
-- (!\data_path_u|ALU_unit|Mux8~3_combout\ & ((\data_path_u|ALU_unit|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add1~6_combout\,
	datab => \data_path_u|ALU_unit|Mux8~1_combout\,
	datac => \data_path_u|ALU_unit|Mux8~3_combout\,
	datad => \data_path_u|ALU_unit|Add0~6_combout\,
	combout => \data_path_u|ALU_unit|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y22_N24
\data_path_u|ALU_unit|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux5~1_combout\ = (\data_path_u|BUS1[3]~7_combout\ & ((\data_path_u|ALU_unit|Mux5~0_combout\) # ((\data_path_u|B_Reg\(3) & \data_path_u|ALU_unit|Mux8~1_combout\)))) # (!\data_path_u|BUS1[3]~7_combout\ & 
-- (\data_path_u|ALU_unit|Mux5~0_combout\ & ((\data_path_u|B_Reg\(3)) # (!\data_path_u|ALU_unit|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS1[3]~7_combout\,
	datab => \data_path_u|B_Reg\(3),
	datac => \data_path_u|ALU_unit|Mux8~1_combout\,
	datad => \data_path_u|ALU_unit|Mux5~0_combout\,
	combout => \data_path_u|ALU_unit|Mux5~1_combout\);

-- Location: LCCOMB_X29_Y22_N30
\data_path_u|ALU_unit|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~20_combout\ = (\data_path_u|ALU_unit|Add2~19_combout\) # ((\data_path_u|ALU_unit|Add2~3_combout\ & \data_path_u|ALU_unit|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|ALU_unit|Add2~3_combout\,
	datac => \data_path_u|ALU_unit|Add2~19_combout\,
	datad => \data_path_u|ALU_unit|Mux5~1_combout\,
	combout => \data_path_u|ALU_unit|Add2~20_combout\);

-- Location: LCCOMB_X28_Y22_N4
\data_path_u|ALU_unit|Add2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~9_combout\ = (\control_unit_module|ALU_Sel[2]~24_combout\ & ((\data_path_u|ALU_unit|Add2~7_combout\) # ((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~2_combout\)))) # 
-- (!\control_unit_module|ALU_Sel[2]~24_combout\ & (\data_path_u|ALU_unit|Mux8~0_combout\ & (\data_path_u|ALU_unit|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|ALU_Sel[2]~24_combout\,
	datab => \data_path_u|ALU_unit|Mux8~0_combout\,
	datac => \data_path_u|ALU_unit|Add3~2_combout\,
	datad => \data_path_u|ALU_unit|Add2~7_combout\,
	combout => \data_path_u|ALU_unit|Add2~9_combout\);

-- Location: LCCOMB_X31_Y22_N24
\data_path_u|ALU_unit|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux7~0_combout\ = (\data_path_u|ALU_unit|Mux8~3_combout\ & ((\data_path_u|ALU_unit|Add1~2_combout\) # ((\data_path_u|ALU_unit|Mux8~1_combout\)))) # (!\data_path_u|ALU_unit|Mux8~3_combout\ & (((!\data_path_u|ALU_unit|Mux8~1_combout\ & 
-- \data_path_u|ALU_unit|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Mux8~3_combout\,
	datab => \data_path_u|ALU_unit|Add1~2_combout\,
	datac => \data_path_u|ALU_unit|Mux8~1_combout\,
	datad => \data_path_u|ALU_unit|Add0~2_combout\,
	combout => \data_path_u|ALU_unit|Mux7~0_combout\);

-- Location: LCCOMB_X31_Y22_N2
\data_path_u|ALU_unit|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Mux7~1_combout\ = (\data_path_u|B_Reg\(1) & ((\data_path_u|ALU_unit|Mux7~0_combout\) # ((\data_path_u|BUS1[1]~3_combout\ & \data_path_u|ALU_unit|Mux8~1_combout\)))) # (!\data_path_u|B_Reg\(1) & (\data_path_u|ALU_unit|Mux7~0_combout\ 
-- & ((\data_path_u|BUS1[1]~3_combout\) # (!\data_path_u|ALU_unit|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(1),
	datab => \data_path_u|BUS1[1]~3_combout\,
	datac => \data_path_u|ALU_unit|Mux8~1_combout\,
	datad => \data_path_u|ALU_unit|Mux7~0_combout\,
	combout => \data_path_u|ALU_unit|Mux7~1_combout\);

-- Location: LCCOMB_X28_Y22_N10
\data_path_u|ALU_unit|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~10_combout\ = (\data_path_u|ALU_unit|Add2~9_combout\) # ((\data_path_u|ALU_unit|Add2~3_combout\ & \data_path_u|ALU_unit|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|ALU_unit|Add2~3_combout\,
	datac => \data_path_u|ALU_unit|Add2~9_combout\,
	datad => \data_path_u|ALU_unit|Mux7~1_combout\,
	combout => \data_path_u|ALU_unit|Add2~10_combout\);

-- Location: LCCOMB_X27_Y21_N10
\data_path_u|ALU_unit|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~14_combout\ = (\data_path_u|B_Reg\(2) & ((\data_path_u|ALU_unit|Mux8~3_combout\) # ((\data_path_u|BUS1[2]~5_combout\ & \data_path_u|ALU_unit|Mux8~1_combout\)))) # (!\data_path_u|B_Reg\(2) & (\data_path_u|ALU_unit|Mux8~3_combout\ 
-- & ((\data_path_u|BUS1[2]~5_combout\) # (!\data_path_u|ALU_unit|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|B_Reg\(2),
	datab => \data_path_u|BUS1[2]~5_combout\,
	datac => \data_path_u|ALU_unit|Mux8~1_combout\,
	datad => \data_path_u|ALU_unit|Mux8~3_combout\,
	combout => \data_path_u|ALU_unit|Add2~14_combout\);

-- Location: LCCOMB_X27_Y21_N14
\data_path_u|ALU_unit|Add2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~15_combout\ = (\data_path_u|ALU_unit|Add2~14_combout\ & ((\data_path_u|ALU_unit|Add1~4_combout\) # ((\data_path_u|ALU_unit|Mux8~1_combout\)))) # (!\data_path_u|ALU_unit|Add2~14_combout\ & 
-- (((!\data_path_u|ALU_unit|Mux8~1_combout\ & \data_path_u|ALU_unit|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add2~14_combout\,
	datab => \data_path_u|ALU_unit|Add1~4_combout\,
	datac => \data_path_u|ALU_unit|Mux8~1_combout\,
	datad => \data_path_u|ALU_unit|Add0~4_combout\,
	combout => \data_path_u|ALU_unit|Add2~15_combout\);

-- Location: LCCOMB_X27_Y21_N28
\data_path_u|ALU_unit|Add2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~13_combout\ = (\data_path_u|ALU_unit|Add2~11_combout\ & ((\control_unit_module|ALU_Sel[2]~24_combout\) # ((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~4_combout\)))) # 
-- (!\data_path_u|ALU_unit|Add2~11_combout\ & (((\data_path_u|ALU_unit|Mux8~0_combout\ & \data_path_u|ALU_unit|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add2~11_combout\,
	datab => \control_unit_module|ALU_Sel[2]~24_combout\,
	datac => \data_path_u|ALU_unit|Mux8~0_combout\,
	datad => \data_path_u|ALU_unit|Add3~4_combout\,
	combout => \data_path_u|ALU_unit|Add2~13_combout\);

-- Location: LCCOMB_X27_Y21_N0
\data_path_u|ALU_unit|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~16_combout\ = (\data_path_u|ALU_unit|Add2~13_combout\) # ((\data_path_u|ALU_unit|Add2~3_combout\ & \data_path_u|ALU_unit|Add2~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|ALU_unit|Add2~3_combout\,
	datac => \data_path_u|ALU_unit|Add2~15_combout\,
	datad => \data_path_u|ALU_unit|Add2~13_combout\,
	combout => \data_path_u|ALU_unit|Add2~16_combout\);

-- Location: LCCOMB_X30_Y22_N8
\data_path_u|ALU_unit|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Equal0~0_combout\ = (!\data_path_u|ALU_unit|Add2~6_combout\ & (!\data_path_u|ALU_unit|Add2~20_combout\ & (!\data_path_u|ALU_unit|Add2~10_combout\ & !\data_path_u|ALU_unit|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add2~6_combout\,
	datab => \data_path_u|ALU_unit|Add2~20_combout\,
	datac => \data_path_u|ALU_unit|Add2~10_combout\,
	datad => \data_path_u|ALU_unit|Add2~16_combout\,
	combout => \data_path_u|ALU_unit|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y22_N10
\data_path_u|ALU_unit|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Equal0~2_combout\ = (\data_path_u|ALU_unit|Equal0~1_combout\ & (!\data_path_u|ALU_unit|Add2~40_combout\ & (\data_path_u|ALU_unit|Equal0~0_combout\ & !\data_path_u|ALU_unit|Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Equal0~1_combout\,
	datab => \data_path_u|ALU_unit|Add2~40_combout\,
	datac => \data_path_u|ALU_unit|Equal0~0_combout\,
	datad => \data_path_u|ALU_unit|Add2~36_combout\,
	combout => \data_path_u|ALU_unit|Equal0~2_combout\);

-- Location: FF_X30_Y22_N11
\data_path_u|CCR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|ALU_unit|Equal0~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|CCR\(2));

-- Location: LCCOMB_X35_Y21_N30
\control_unit_module|PC_Load~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|PC_Load~2_combout\ = (!\data_path_u|IR_Reg\(1) & ((\data_path_u|IR_Reg\(0) & ((\data_path_u|CCR\(1)))) # (!\data_path_u|IR_Reg\(0) & (!\data_path_u|CCR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|CCR\(2),
	datab => \data_path_u|IR_Reg\(1),
	datac => \data_path_u|IR_Reg\(0),
	datad => \data_path_u|CCR\(1),
	combout => \control_unit_module|PC_Load~2_combout\);

-- Location: FF_X30_Y22_N29
\data_path_u|CCR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|ALU_unit|Add2~40_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|CCR\(3));

-- Location: LCCOMB_X35_Y21_N28
\control_unit_module|PC_Load~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|PC_Load~1_combout\ = (\data_path_u|IR_Reg\(1) & ((\data_path_u|IR_Reg\(0) & (\data_path_u|CCR\(2))) # (!\data_path_u|IR_Reg\(0) & ((!\data_path_u|CCR\(3)))))) # (!\data_path_u|IR_Reg\(1) & (((\data_path_u|CCR\(3)) # 
-- (!\data_path_u|IR_Reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|CCR\(2),
	datab => \data_path_u|IR_Reg\(1),
	datac => \data_path_u|IR_Reg\(0),
	datad => \data_path_u|CCR\(3),
	combout => \control_unit_module|PC_Load~1_combout\);

-- Location: LCCOMB_X35_Y21_N26
\control_unit_module|PC_Load~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|PC_Load~4_combout\ = (\data_path_u|IR_Reg\(2) & ((\control_unit_module|PC_Load~3_combout\) # ((\control_unit_module|PC_Load~2_combout\)))) # (!\data_path_u|IR_Reg\(2) & (((\control_unit_module|PC_Load~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|PC_Load~3_combout\,
	datab => \data_path_u|IR_Reg\(2),
	datac => \control_unit_module|PC_Load~2_combout\,
	datad => \control_unit_module|PC_Load~1_combout\,
	combout => \control_unit_module|PC_Load~4_combout\);

-- Location: LCCOMB_X35_Y21_N24
\control_unit_module|PC_Load~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|PC_Load~5_combout\ = (\data_path_u|CCR\(0) & (((\control_unit_module|PC_Load~4_combout\ & !\data_path_u|IR_Reg\(3))))) # (!\data_path_u|CCR\(0) & ((\control_unit_module|Equal5~1_combout\) # ((\control_unit_module|PC_Load~4_combout\ & 
-- !\data_path_u|IR_Reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|CCR\(0),
	datab => \control_unit_module|Equal5~1_combout\,
	datac => \control_unit_module|PC_Load~4_combout\,
	datad => \data_path_u|IR_Reg\(3),
	combout => \control_unit_module|PC_Load~5_combout\);

-- Location: LCCOMB_X35_Y21_N4
\control_unit_module|PC_Load~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|PC_Load~6_combout\ = (\control_unit_module|current_state.S_BRANCH_6~q\ & (\control_unit_module|PC_Load~0_combout\ & \control_unit_module|PC_Load~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_module|current_state.S_BRANCH_6~q\,
	datac => \control_unit_module|PC_Load~0_combout\,
	datad => \control_unit_module|PC_Load~5_combout\,
	combout => \control_unit_module|PC_Load~6_combout\);

-- Location: FF_X29_Y21_N11
\data_path_u|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|PC[0]~8_combout\,
	asdata => \data_path_u|BUS2[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \control_unit_module|PC_Load~6_combout\,
	ena => \data_path_u|PC[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|PC\(0));

-- Location: LCCOMB_X29_Y21_N12
\data_path_u|PC[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|PC[1]~12_combout\ = (\data_path_u|PC\(1) & (!\data_path_u|PC[0]~9\)) # (!\data_path_u|PC\(1) & ((\data_path_u|PC[0]~9\) # (GND)))
-- \data_path_u|PC[1]~13\ = CARRY((!\data_path_u|PC[0]~9\) # (!\data_path_u|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|PC\(1),
	datad => VCC,
	cin => \data_path_u|PC[0]~9\,
	combout => \data_path_u|PC[1]~12_combout\,
	cout => \data_path_u|PC[1]~13\);

-- Location: FF_X29_Y21_N13
\data_path_u|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|PC[1]~12_combout\,
	asdata => \data_path_u|BUS2[1]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \control_unit_module|PC_Load~6_combout\,
	ena => \data_path_u|PC[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|PC\(1));

-- Location: FF_X29_Y21_N15
\data_path_u|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|PC[2]~14_combout\,
	asdata => \data_path_u|BUS2[2]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \control_unit_module|PC_Load~6_combout\,
	ena => \data_path_u|PC[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|PC\(2));

-- Location: LCCOMB_X28_Y21_N16
\data_path_u|BUS1[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[2]~4_combout\ = (\control_unit_module|Selector16~0_combout\ & (((\data_path_u|B_Reg\(2))))) # (!\control_unit_module|Selector16~0_combout\ & ((\control_unit_module|Selector16~1_combout\ & ((\data_path_u|B_Reg\(2)))) # 
-- (!\control_unit_module|Selector16~1_combout\ & (\data_path_u|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector16~0_combout\,
	datab => \data_path_u|PC\(2),
	datac => \data_path_u|B_Reg\(2),
	datad => \control_unit_module|Selector16~1_combout\,
	combout => \data_path_u|BUS1[2]~4_combout\);

-- Location: FF_X28_Y21_N19
\data_path_u|A_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[2]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|A_Reg\(2));

-- Location: LCCOMB_X28_Y21_N18
\data_path_u|BUS1[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[2]~5_combout\ = (\control_unit_module|Selector17~1_combout\ & (((\data_path_u|A_Reg\(2) & !\control_unit_module|Selector16~2_combout\)))) # (!\control_unit_module|Selector17~1_combout\ & (\data_path_u|BUS1[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector17~1_combout\,
	datab => \data_path_u|BUS1[2]~4_combout\,
	datac => \data_path_u|A_Reg\(2),
	datad => \control_unit_module|Selector16~2_combout\,
	combout => \data_path_u|BUS1[2]~5_combout\);

-- Location: LCCOMB_X27_Y21_N18
\data_path_u|BUS2[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[2]~6_combout\ = (\control_unit_module|Selector19~2_combout\ & (\control_unit_module|Selector18~2_combout\ & (\from_memory[2]~input_o\))) # (!\control_unit_module|Selector19~2_combout\ & (!\control_unit_module|Selector18~2_combout\ & 
-- ((\data_path_u|BUS1[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector19~2_combout\,
	datab => \control_unit_module|Selector18~2_combout\,
	datac => \from_memory[2]~input_o\,
	datad => \data_path_u|BUS1[2]~5_combout\,
	combout => \data_path_u|BUS2[2]~6_combout\);

-- Location: LCCOMB_X27_Y21_N8
\data_path_u|BUS2[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[2]~7_combout\ = (\data_path_u|BUS2[2]~6_combout\) # ((\data_path_u|BUS2[0]~18_combout\ & \data_path_u|ALU_unit|Add2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS2[0]~18_combout\,
	datac => \data_path_u|BUS2[2]~6_combout\,
	datad => \data_path_u|ALU_unit|Add2~16_combout\,
	combout => \data_path_u|BUS2[2]~7_combout\);

-- Location: LCCOMB_X27_Y21_N26
\data_path_u|IR_Reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|IR_Reg[2]~feeder_combout\ = \data_path_u|BUS2[2]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_path_u|BUS2[2]~7_combout\,
	combout => \data_path_u|IR_Reg[2]~feeder_combout\);

-- Location: FF_X27_Y21_N27
\data_path_u|IR_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_path_u|IR_Reg[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \control_unit_module|current_state.S_FETCH_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|IR_Reg\(2));

-- Location: LCCOMB_X29_Y21_N6
\control_unit_module|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|LessThan1~0_combout\ = (!\data_path_u|IR_Reg\(1) & !\data_path_u|IR_Reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|IR_Reg\(1),
	datad => \data_path_u|IR_Reg\(2),
	combout => \control_unit_module|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y21_N8
\control_unit_module|Equal13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal13~0_combout\ = (\control_unit_module|LessThan1~0_combout\ & (\data_path_u|IR_Reg\(3) & (\data_path_u|IR_Reg\(0) & \control_unit_module|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|LessThan1~0_combout\,
	datab => \data_path_u|IR_Reg\(3),
	datac => \data_path_u|IR_Reg\(0),
	datad => \control_unit_module|Equal6~0_combout\,
	combout => \control_unit_module|Equal13~0_combout\);

-- Location: LCCOMB_X29_Y21_N2
\control_unit_module|Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector16~1_combout\ = (\control_unit_module|current_state.S_DATA_MAN_4~q\ & ((\control_unit_module|Equal13~0_combout\) # ((\data_path_u|IR_Reg\(0) & \control_unit_module|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(0),
	datab => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	datac => \control_unit_module|Equal13~0_combout\,
	datad => \control_unit_module|Equal10~0_combout\,
	combout => \control_unit_module|Selector16~1_combout\);

-- Location: LCCOMB_X28_Y21_N2
\control_unit_module|Selector16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector16~2_combout\ = (\control_unit_module|Selector16~0_combout\) # (\control_unit_module|Selector16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_unit_module|Selector16~0_combout\,
	datad => \control_unit_module|Selector16~1_combout\,
	combout => \control_unit_module|Selector16~2_combout\);

-- Location: FF_X28_Y21_N15
\data_path_u|A_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[3]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|A_Reg\(3));

-- Location: LCCOMB_X28_Y21_N28
\data_path_u|BUS1[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[3]~6_combout\ = (\control_unit_module|Selector16~0_combout\ & (((\data_path_u|B_Reg\(3))))) # (!\control_unit_module|Selector16~0_combout\ & ((\control_unit_module|Selector16~1_combout\ & ((\data_path_u|B_Reg\(3)))) # 
-- (!\control_unit_module|Selector16~1_combout\ & (\data_path_u|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector16~0_combout\,
	datab => \data_path_u|PC\(3),
	datac => \data_path_u|B_Reg\(3),
	datad => \control_unit_module|Selector16~1_combout\,
	combout => \data_path_u|BUS1[3]~6_combout\);

-- Location: LCCOMB_X28_Y21_N14
\data_path_u|BUS1[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[3]~7_combout\ = (\control_unit_module|Selector17~1_combout\ & (!\control_unit_module|Selector16~2_combout\ & (\data_path_u|A_Reg\(3)))) # (!\control_unit_module|Selector17~1_combout\ & (((\data_path_u|BUS1[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector17~1_combout\,
	datab => \control_unit_module|Selector16~2_combout\,
	datac => \data_path_u|A_Reg\(3),
	datad => \data_path_u|BUS1[3]~6_combout\,
	combout => \data_path_u|BUS1[3]~7_combout\);

-- Location: LCCOMB_X33_Y21_N6
\data_path_u|BUS2[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[3]~8_combout\ = (\control_unit_module|Selector18~2_combout\ & (\from_memory[3]~input_o\ & (\control_unit_module|Selector19~2_combout\))) # (!\control_unit_module|Selector18~2_combout\ & (((!\control_unit_module|Selector19~2_combout\ & 
-- \data_path_u|BUS1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector18~2_combout\,
	datab => \from_memory[3]~input_o\,
	datac => \control_unit_module|Selector19~2_combout\,
	datad => \data_path_u|BUS1[3]~7_combout\,
	combout => \data_path_u|BUS2[3]~8_combout\);

-- Location: LCCOMB_X30_Y21_N4
\data_path_u|BUS2[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[3]~9_combout\ = (\data_path_u|BUS2[3]~8_combout\) # ((\data_path_u|BUS2[0]~18_combout\ & \data_path_u|ALU_unit|Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS2[3]~8_combout\,
	datab => \data_path_u|BUS2[0]~18_combout\,
	datad => \data_path_u|ALU_unit|Add2~20_combout\,
	combout => \data_path_u|BUS2[3]~9_combout\);

-- Location: FF_X30_Y21_N13
\data_path_u|IR_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \data_path_u|BUS2[3]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|current_state.S_FETCH_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|IR_Reg\(3));

-- Location: LCCOMB_X31_Y21_N18
\control_unit_module|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal5~0_combout\ = (\data_path_u|IR_Reg\(3) & (!\data_path_u|IR_Reg\(0) & (\control_unit_module|Equal4~0_combout\ & \control_unit_module|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(3),
	datab => \data_path_u|IR_Reg\(0),
	datac => \control_unit_module|Equal4~0_combout\,
	datad => \control_unit_module|LessThan1~0_combout\,
	combout => \control_unit_module|Equal5~0_combout\);

-- Location: LCCOMB_X31_Y21_N4
\control_unit_module|LOAD_STORE_OP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|LOAD_STORE_OP~0_combout\ = (!\control_unit_module|Equal5~0_combout\ & ((\data_path_u|IR_Reg\(0)) # ((\data_path_u|IR_Reg\(4)) # (!\control_unit_module|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(0),
	datab => \data_path_u|IR_Reg\(4),
	datac => \control_unit_module|Equal0~1_combout\,
	datad => \control_unit_module|Equal5~0_combout\,
	combout => \control_unit_module|LOAD_STORE_OP~0_combout\);

-- Location: LCCOMB_X32_Y21_N2
\control_unit_module|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector18~0_combout\ = (\control_unit_module|current_state.S_FETCH_2~q\) # ((\control_unit_module|PC_Load~0_combout\ & (\control_unit_module|current_state.S_BRANCH_6~q\ & !\control_unit_module|BRANCH_OP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|PC_Load~0_combout\,
	datab => \control_unit_module|current_state.S_BRANCH_6~q\,
	datac => \control_unit_module|BRANCH_OP~0_combout\,
	datad => \control_unit_module|current_state.S_FETCH_2~q\,
	combout => \control_unit_module|Selector18~0_combout\);

-- Location: LCCOMB_X32_Y21_N6
\control_unit_module|Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector18~1_combout\ = (\control_unit_module|Selector18~0_combout\) # ((\control_unit_module|current_state.S_LOAD_AND_STORE_7~q\ & ((\control_unit_module|Equal3~0_combout\) # (\control_unit_module|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_LOAD_AND_STORE_7~q\,
	datab => \control_unit_module|Selector18~0_combout\,
	datac => \control_unit_module|Equal3~0_combout\,
	datad => \control_unit_module|Equal4~1_combout\,
	combout => \control_unit_module|Selector18~1_combout\);

-- Location: LCCOMB_X32_Y21_N0
\control_unit_module|Selector18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector18~2_combout\ = (\control_unit_module|Selector18~1_combout\) # ((\control_unit_module|current_state.S_LOAD_AND_STORE_6~q\ & ((!\control_unit_module|LOAD_STORE_OP~0_combout\) # (!\control_unit_module|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector1~0_combout\,
	datab => \control_unit_module|LOAD_STORE_OP~0_combout\,
	datac => \control_unit_module|current_state.S_LOAD_AND_STORE_6~q\,
	datad => \control_unit_module|Selector18~1_combout\,
	combout => \control_unit_module|Selector18~2_combout\);

-- Location: IOIBUF_X41_Y23_N1
\from_memory[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(5),
	o => \from_memory[5]~input_o\);

-- Location: LCCOMB_X33_Y21_N12
\data_path_u|BUS2[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[5]~12_combout\ = (\control_unit_module|Selector18~2_combout\ & (((\control_unit_module|Selector19~2_combout\ & \from_memory[5]~input_o\)))) # (!\control_unit_module|Selector18~2_combout\ & (\data_path_u|BUS1[5]~11_combout\ & 
-- (!\control_unit_module|Selector19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector18~2_combout\,
	datab => \data_path_u|BUS1[5]~11_combout\,
	datac => \control_unit_module|Selector19~2_combout\,
	datad => \from_memory[5]~input_o\,
	combout => \data_path_u|BUS2[5]~12_combout\);

-- Location: LCCOMB_X30_Y21_N24
\data_path_u|ALU_unit|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|ALU_unit|Add2~30_combout\ = (\data_path_u|ALU_unit|Add2~29_combout\) # ((\data_path_u|ALU_unit|Add2~3_combout\ & \data_path_u|ALU_unit|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|ALU_unit|Add2~3_combout\,
	datab => \data_path_u|ALU_unit|Add2~29_combout\,
	datad => \data_path_u|ALU_unit|Mux3~1_combout\,
	combout => \data_path_u|ALU_unit|Add2~30_combout\);

-- Location: LCCOMB_X30_Y21_N10
\data_path_u|BUS2[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[5]~13_combout\ = (\data_path_u|BUS2[5]~12_combout\) # ((\data_path_u|BUS2[0]~18_combout\ & \data_path_u|ALU_unit|Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|BUS2[5]~12_combout\,
	datac => \data_path_u|BUS2[0]~18_combout\,
	datad => \data_path_u|ALU_unit|Add2~30_combout\,
	combout => \data_path_u|BUS2[5]~13_combout\);

-- Location: FF_X30_Y21_N11
\data_path_u|IR_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_path_u|BUS2[5]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \control_unit_module|current_state.S_FETCH_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|IR_Reg\(5));

-- Location: LCCOMB_X30_Y21_N16
\control_unit_module|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal6~0_combout\ = (!\data_path_u|IR_Reg\(5) & (\data_path_u|IR_Reg\(6) & (!\data_path_u|IR_Reg\(7) & !\data_path_u|IR_Reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(5),
	datab => \data_path_u|IR_Reg\(6),
	datac => \data_path_u|IR_Reg\(7),
	datad => \data_path_u|IR_Reg\(4),
	combout => \control_unit_module|Equal6~0_combout\);

-- Location: LCCOMB_X30_Y21_N0
\control_unit_module|DATA_MAN_OP~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|DATA_MAN_OP~2_combout\ = (\data_path_u|IR_Reg\(3) $ (((!\data_path_u|IR_Reg\(1) & !\data_path_u|IR_Reg\(2))))) # (!\control_unit_module|Equal6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(1),
	datab => \control_unit_module|Equal6~0_combout\,
	datac => \data_path_u|IR_Reg\(2),
	datad => \data_path_u|IR_Reg\(3),
	combout => \control_unit_module|DATA_MAN_OP~2_combout\);

-- Location: LCCOMB_X31_Y21_N16
\control_unit_module|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector12~0_combout\ = (!\control_unit_module|DATA_MAN_OP~2_combout\ & (\control_unit_module|current_state.S_DECODE_3~q\ & (\control_unit_module|Selector1~0_combout\ & \control_unit_module|LOAD_STORE_OP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|DATA_MAN_OP~2_combout\,
	datab => \control_unit_module|current_state.S_DECODE_3~q\,
	datac => \control_unit_module|Selector1~0_combout\,
	datad => \control_unit_module|LOAD_STORE_OP~0_combout\,
	combout => \control_unit_module|Selector12~0_combout\);

-- Location: LCCOMB_X31_Y21_N8
\control_unit_module|next_state.S_DATA_MAN_4_690\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_DATA_MAN_4_690~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & (\control_unit_module|Selector12~0_combout\)) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- ((\control_unit_module|next_state.S_DATA_MAN_4_690~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_module|Selector12~0_combout\,
	datac => \control_unit_module|next_state.S_DATA_MAN_4_690~combout\,
	datad => \control_unit_module|Selector1~2clkctrl_outclk\,
	combout => \control_unit_module|next_state.S_DATA_MAN_4_690~combout\);

-- Location: FF_X31_Y21_N9
\control_unit_module|current_state.S_DATA_MAN_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control_unit_module|next_state.S_DATA_MAN_4_690~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_DATA_MAN_4~q\);

-- Location: LCCOMB_X31_Y21_N10
\control_unit_module|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector17~0_combout\ = (!\data_path_u|IR_Reg\(0) & (\control_unit_module|current_state.S_LOAD_AND_STORE_7~q\ & (\control_unit_module|Equal0~1_combout\ & \data_path_u|IR_Reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(0),
	datab => \control_unit_module|current_state.S_LOAD_AND_STORE_7~q\,
	datac => \control_unit_module|Equal0~1_combout\,
	datad => \data_path_u|IR_Reg\(4),
	combout => \control_unit_module|Selector17~0_combout\);

-- Location: LCCOMB_X28_Y21_N0
\control_unit_module|Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector17~1_combout\ = (\control_unit_module|Selector17~0_combout\) # ((\control_unit_module|current_state.S_DATA_MAN_4~q\ & ((\control_unit_module|Equal12~0_combout\) # (!\control_unit_module|ALU_Sel[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	datab => \control_unit_module|ALU_Sel[2]~20_combout\,
	datac => \control_unit_module|Selector17~0_combout\,
	datad => \control_unit_module|Equal12~0_combout\,
	combout => \control_unit_module|Selector17~1_combout\);

-- Location: FF_X28_Y21_N27
\data_path_u|A_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[1]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|A_Reg\(1));

-- Location: LCCOMB_X28_Y21_N20
\data_path_u|BUS1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[1]~2_combout\ = (\control_unit_module|Selector16~0_combout\ & (((\data_path_u|B_Reg\(1))))) # (!\control_unit_module|Selector16~0_combout\ & ((\control_unit_module|Selector16~1_combout\ & ((\data_path_u|B_Reg\(1)))) # 
-- (!\control_unit_module|Selector16~1_combout\ & (\data_path_u|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector16~0_combout\,
	datab => \data_path_u|PC\(1),
	datac => \data_path_u|B_Reg\(1),
	datad => \control_unit_module|Selector16~1_combout\,
	combout => \data_path_u|BUS1[1]~2_combout\);

-- Location: LCCOMB_X28_Y21_N26
\data_path_u|BUS1[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS1[1]~3_combout\ = (\control_unit_module|Selector17~1_combout\ & (!\control_unit_module|Selector16~2_combout\ & (\data_path_u|A_Reg\(1)))) # (!\control_unit_module|Selector17~1_combout\ & (((\data_path_u|BUS1[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector17~1_combout\,
	datab => \control_unit_module|Selector16~2_combout\,
	datac => \data_path_u|A_Reg\(1),
	datad => \data_path_u|BUS1[1]~2_combout\,
	combout => \data_path_u|BUS1[1]~3_combout\);

-- Location: LCCOMB_X29_Y21_N30
\data_path_u|BUS2[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[1]~4_combout\ = (\control_unit_module|Selector18~2_combout\ & (\from_memory[1]~input_o\ & ((\control_unit_module|Selector19~2_combout\)))) # (!\control_unit_module|Selector18~2_combout\ & (((\data_path_u|BUS1[1]~3_combout\ & 
-- !\control_unit_module|Selector19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[1]~input_o\,
	datab => \data_path_u|BUS1[1]~3_combout\,
	datac => \control_unit_module|Selector18~2_combout\,
	datad => \control_unit_module|Selector19~2_combout\,
	combout => \data_path_u|BUS2[1]~4_combout\);

-- Location: LCCOMB_X29_Y21_N28
\data_path_u|BUS2[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[1]~5_combout\ = (\data_path_u|BUS2[1]~4_combout\) # ((\data_path_u|BUS2[0]~18_combout\ & \data_path_u|ALU_unit|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|BUS2[0]~18_combout\,
	datac => \data_path_u|BUS2[1]~4_combout\,
	datad => \data_path_u|ALU_unit|Add2~10_combout\,
	combout => \data_path_u|BUS2[1]~5_combout\);

-- Location: FF_X29_Y21_N29
\data_path_u|IR_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_path_u|BUS2[1]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \control_unit_module|current_state.S_FETCH_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|IR_Reg\(1));

-- Location: LCCOMB_X30_Y21_N30
\control_unit_module|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal0~0_combout\ = (!\data_path_u|IR_Reg\(5) & (!\data_path_u|IR_Reg\(6) & !\data_path_u|IR_Reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(5),
	datab => \data_path_u|IR_Reg\(6),
	datad => \data_path_u|IR_Reg\(3),
	combout => \control_unit_module|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y21_N6
\control_unit_module|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Equal0~1_combout\ = (\data_path_u|IR_Reg\(1) & (\data_path_u|IR_Reg\(7) & (\control_unit_module|Equal0~0_combout\ & \data_path_u|IR_Reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(1),
	datab => \data_path_u|IR_Reg\(7),
	datac => \control_unit_module|Equal0~0_combout\,
	datad => \data_path_u|IR_Reg\(2),
	combout => \control_unit_module|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y21_N14
\control_unit_module|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector1~0_combout\ = (!\control_unit_module|Equal4~1_combout\ & (((!\data_path_u|IR_Reg\(4) & !\data_path_u|IR_Reg\(0))) # (!\control_unit_module|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Equal0~1_combout\,
	datab => \data_path_u|IR_Reg\(4),
	datac => \data_path_u|IR_Reg\(0),
	datad => \control_unit_module|Equal4~1_combout\,
	combout => \control_unit_module|Selector1~0_combout\);

-- Location: LCCOMB_X32_Y21_N28
\control_unit_module|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector11~0_combout\ = (\control_unit_module|current_state.S_LOAD_AND_STORE_6~q\ & \control_unit_module|LOAD_STORE_OP~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_unit_module|current_state.S_LOAD_AND_STORE_6~q\,
	datad => \control_unit_module|LOAD_STORE_OP~0_combout\,
	combout => \control_unit_module|Selector11~0_combout\);

-- Location: LCCOMB_X35_Y21_N2
\control_unit_module|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector1~1_combout\ = ((\control_unit_module|PC_Load~0_combout\ & !\control_unit_module|BRANCH_OP~0_combout\)) # (!\control_unit_module|Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector13~0_combout\,
	datac => \control_unit_module|PC_Load~0_combout\,
	datad => \control_unit_module|BRANCH_OP~0_combout\,
	combout => \control_unit_module|Selector1~1_combout\);

-- Location: LCCOMB_X32_Y21_N20
\control_unit_module|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector1~2_combout\ = (\control_unit_module|Selector1~1_combout\ & (((!\control_unit_module|Selector11~0_combout\ & !\control_unit_module|current_state.S_LOAD_AND_STORE_7~q\)) # (!\control_unit_module|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector1~0_combout\,
	datab => \control_unit_module|Selector11~0_combout\,
	datac => \control_unit_module|Selector1~1_combout\,
	datad => \control_unit_module|current_state.S_LOAD_AND_STORE_7~q\,
	combout => \control_unit_module|Selector1~2_combout\);

-- Location: CLKCTRL_G7
\control_unit_module|Selector1~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \control_unit_module|Selector1~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \control_unit_module|Selector1~2clkctrl_outclk\);

-- Location: LCCOMB_X32_Y21_N12
\control_unit_module|next_state.S_LOAD_AND_STORE_7_717\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_LOAD_AND_STORE_7_717~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & ((\control_unit_module|Selector11~0_combout\))) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- (\control_unit_module|next_state.S_LOAD_AND_STORE_7_717~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_module|next_state.S_LOAD_AND_STORE_7_717~combout\,
	datac => \control_unit_module|Selector1~2clkctrl_outclk\,
	datad => \control_unit_module|Selector11~0_combout\,
	combout => \control_unit_module|next_state.S_LOAD_AND_STORE_7_717~combout\);

-- Location: FF_X32_Y21_N13
\control_unit_module|current_state.S_LOAD_AND_STORE_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \control_unit_module|next_state.S_LOAD_AND_STORE_7_717~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_LOAD_AND_STORE_7~q\);

-- Location: LCCOMB_X31_Y22_N22
\control_unit_module|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector4~0_combout\ = (\control_unit_module|current_state.S_LOAD_AND_STORE_7~q\) # ((\control_unit_module|current_state.S_DATA_MAN_4~q\) # (\control_unit_module|current_state.S_BRANCH_6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_module|current_state.S_LOAD_AND_STORE_7~q\,
	datac => \control_unit_module|current_state.S_DATA_MAN_4~q\,
	datad => \control_unit_module|current_state.S_BRANCH_6~q\,
	combout => \control_unit_module|Selector4~0_combout\);

-- Location: LCCOMB_X31_Y22_N4
\control_unit_module|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector4~1_combout\ = (\control_unit_module|Selector4~0_combout\) # ((\control_unit_module|current_state.S_LOAD_AND_STORE_6~q\ & ((\control_unit_module|Equal2~0_combout\) # (\control_unit_module|Selector23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector4~0_combout\,
	datab => \control_unit_module|current_state.S_LOAD_AND_STORE_6~q\,
	datac => \control_unit_module|Equal2~0_combout\,
	datad => \control_unit_module|Selector23~1_combout\,
	combout => \control_unit_module|Selector4~1_combout\);

-- Location: LCCOMB_X31_Y22_N18
\control_unit_module|next_state.S_FETCH_0_906\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_FETCH_0_906~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & ((\control_unit_module|Selector4~1_combout\))) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- (\control_unit_module|next_state.S_FETCH_0_906~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_module|next_state.S_FETCH_0_906~combout\,
	datac => \control_unit_module|Selector4~1_combout\,
	datad => \control_unit_module|Selector1~2clkctrl_outclk\,
	combout => \control_unit_module|next_state.S_FETCH_0_906~combout\);

-- Location: LCCOMB_X31_Y22_N30
\control_unit_module|current_state.S_FETCH_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|current_state.S_FETCH_0~0_combout\ = !\control_unit_module|next_state.S_FETCH_0_906~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control_unit_module|next_state.S_FETCH_0_906~combout\,
	combout => \control_unit_module|current_state.S_FETCH_0~0_combout\);

-- Location: FF_X31_Y22_N31
\control_unit_module|current_state.S_FETCH_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control_unit_module|current_state.S_FETCH_0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_FETCH_0~q\);

-- Location: LCCOMB_X31_Y22_N8
\control_unit_module|next_state.S_FETCH_1_879\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_FETCH_1_879~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & (!\control_unit_module|current_state.S_FETCH_0~q\)) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- ((\control_unit_module|next_state.S_FETCH_1_879~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_module|current_state.S_FETCH_0~q\,
	datac => \control_unit_module|next_state.S_FETCH_1_879~combout\,
	datad => \control_unit_module|Selector1~2clkctrl_outclk\,
	combout => \control_unit_module|next_state.S_FETCH_1_879~combout\);

-- Location: FF_X31_Y22_N9
\control_unit_module|current_state.S_FETCH_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control_unit_module|next_state.S_FETCH_1_879~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_FETCH_1~q\);

-- Location: LCCOMB_X31_Y22_N28
\control_unit_module|next_state.S_FETCH_2_852\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_FETCH_2_852~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & ((\control_unit_module|current_state.S_FETCH_1~q\))) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- (\control_unit_module|next_state.S_FETCH_2_852~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_module|next_state.S_FETCH_2_852~combout\,
	datac => \control_unit_module|current_state.S_FETCH_1~q\,
	datad => \control_unit_module|Selector1~2clkctrl_outclk\,
	combout => \control_unit_module|next_state.S_FETCH_2_852~combout\);

-- Location: FF_X31_Y22_N29
\control_unit_module|current_state.S_FETCH_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control_unit_module|next_state.S_FETCH_2_852~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_FETCH_2~q\);

-- Location: LCCOMB_X35_Y21_N14
\control_unit_module|next_state.S_DECODE_3_825\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_DECODE_3_825~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & (\control_unit_module|current_state.S_FETCH_2~q\)) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- ((\control_unit_module|next_state.S_DECODE_3_825~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_FETCH_2~q\,
	datac => \control_unit_module|next_state.S_DECODE_3_825~combout\,
	datad => \control_unit_module|Selector1~2clkctrl_outclk\,
	combout => \control_unit_module|next_state.S_DECODE_3_825~combout\);

-- Location: FF_X35_Y21_N15
\control_unit_module|current_state.S_DECODE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control_unit_module|next_state.S_DECODE_3_825~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_DECODE_3~q\);

-- Location: LCCOMB_X31_Y21_N26
\control_unit_module|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector8~0_combout\ = (\control_unit_module|current_state.S_DECODE_3~q\ & ((!\control_unit_module|LOAD_STORE_OP~0_combout\) # (!\control_unit_module|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_DECODE_3~q\,
	datab => \control_unit_module|Selector1~0_combout\,
	datad => \control_unit_module|LOAD_STORE_OP~0_combout\,
	combout => \control_unit_module|Selector8~0_combout\);

-- Location: LCCOMB_X31_Y21_N22
\control_unit_module|next_state.S_LOAD_AND_STORE_4_798\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|next_state.S_LOAD_AND_STORE_4_798~combout\ = (GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & (\control_unit_module|Selector8~0_combout\)) # (!GLOBAL(\control_unit_module|Selector1~2clkctrl_outclk\) & 
-- ((\control_unit_module|next_state.S_LOAD_AND_STORE_4_798~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector8~0_combout\,
	datac => \control_unit_module|next_state.S_LOAD_AND_STORE_4_798~combout\,
	datad => \control_unit_module|Selector1~2clkctrl_outclk\,
	combout => \control_unit_module|next_state.S_LOAD_AND_STORE_4_798~combout\);

-- Location: FF_X31_Y21_N23
\control_unit_module|current_state.S_LOAD_AND_STORE_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control_unit_module|next_state.S_LOAD_AND_STORE_4_798~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_module|current_state.S_LOAD_AND_STORE_4~q\);

-- Location: LCCOMB_X32_Y21_N24
\control_unit_module|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector19~0_combout\ = (\control_unit_module|current_state.S_FETCH_0~q\ & (((\control_unit_module|BRANCH_OP~0_combout\) # (!\control_unit_module|PC_Load~0_combout\)) # (!\control_unit_module|current_state.S_BRANCH_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|current_state.S_BRANCH_4~q\,
	datab => \control_unit_module|current_state.S_FETCH_0~q\,
	datac => \control_unit_module|BRANCH_OP~0_combout\,
	datad => \control_unit_module|PC_Load~0_combout\,
	combout => \control_unit_module|Selector19~0_combout\);

-- Location: LCCOMB_X32_Y21_N16
\control_unit_module|Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector19~2_combout\ = (\control_unit_module|Selector19~0_combout\ & ((!\control_unit_module|current_state.S_LOAD_AND_STORE_4~q\) # (!\control_unit_module|Selector19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector19~1_combout\,
	datab => \control_unit_module|current_state.S_LOAD_AND_STORE_4~q\,
	datad => \control_unit_module|Selector19~0_combout\,
	combout => \control_unit_module|Selector19~2_combout\);

-- Location: LCCOMB_X32_Y21_N10
\data_path_u|BUS2[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[4]~10_combout\ = (\control_unit_module|Selector19~2_combout\ & (\from_memory[4]~input_o\ & ((\control_unit_module|Selector18~2_combout\)))) # (!\control_unit_module|Selector19~2_combout\ & (((\data_path_u|BUS1[4]~9_combout\ & 
-- !\control_unit_module|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[4]~input_o\,
	datab => \control_unit_module|Selector19~2_combout\,
	datac => \data_path_u|BUS1[4]~9_combout\,
	datad => \control_unit_module|Selector18~2_combout\,
	combout => \data_path_u|BUS2[4]~10_combout\);

-- Location: LCCOMB_X31_Y21_N24
\data_path_u|BUS2[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[4]~11_combout\ = (\data_path_u|BUS2[4]~10_combout\) # ((\data_path_u|BUS2[0]~18_combout\ & \data_path_u|ALU_unit|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|BUS2[0]~18_combout\,
	datac => \data_path_u|BUS2[4]~10_combout\,
	datad => \data_path_u|ALU_unit|Add2~26_combout\,
	combout => \data_path_u|BUS2[4]~11_combout\);

-- Location: FF_X31_Y21_N27
\data_path_u|IR_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \data_path_u|BUS2[4]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|current_state.S_FETCH_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|IR_Reg\(4));

-- Location: LCCOMB_X31_Y21_N2
\control_unit_module|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|process_1~0_combout\ = ((\data_path_u|IR_Reg\(2) & ((\data_path_u|IR_Reg\(3)) # (!\data_path_u|IR_Reg\(1)))) # (!\data_path_u|IR_Reg\(2) & ((\data_path_u|IR_Reg\(1)) # (!\data_path_u|IR_Reg\(3))))) # 
-- (!\control_unit_module|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(2),
	datab => \data_path_u|IR_Reg\(1),
	datac => \control_unit_module|Equal4~0_combout\,
	datad => \data_path_u|IR_Reg\(3),
	combout => \control_unit_module|process_1~0_combout\);

-- Location: LCCOMB_X32_Y21_N22
\control_unit_module|Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector19~1_combout\ = ((\data_path_u|IR_Reg\(4) & \control_unit_module|Equal0~1_combout\)) # (!\control_unit_module|process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_path_u|IR_Reg\(4),
	datab => \control_unit_module|Equal0~1_combout\,
	datad => \control_unit_module|process_1~0_combout\,
	combout => \control_unit_module|Selector19~1_combout\);

-- Location: LCCOMB_X32_Y21_N18
\data_path_u|BUS2[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[0]~18_combout\ = (\control_unit_module|Selector19~0_combout\ & (!\control_unit_module|Selector18~2_combout\ & ((!\control_unit_module|current_state.S_LOAD_AND_STORE_4~q\) # (!\control_unit_module|Selector19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_module|Selector19~1_combout\,
	datab => \control_unit_module|Selector19~0_combout\,
	datac => \control_unit_module|current_state.S_LOAD_AND_STORE_4~q\,
	datad => \control_unit_module|Selector18~2_combout\,
	combout => \data_path_u|BUS2[0]~18_combout\);

-- Location: IOIBUF_X26_Y29_N29
\from_memory[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(0),
	o => \from_memory[0]~input_o\);

-- Location: LCCOMB_X29_Y21_N4
\data_path_u|BUS2[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[0]~2_combout\ = (\control_unit_module|Selector18~2_combout\ & (\from_memory[0]~input_o\ & ((\control_unit_module|Selector19~2_combout\)))) # (!\control_unit_module|Selector18~2_combout\ & (((\data_path_u|BUS1[0]~1_combout\ & 
-- !\control_unit_module|Selector19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[0]~input_o\,
	datab => \control_unit_module|Selector18~2_combout\,
	datac => \data_path_u|BUS1[0]~1_combout\,
	datad => \control_unit_module|Selector19~2_combout\,
	combout => \data_path_u|BUS2[0]~2_combout\);

-- Location: LCCOMB_X29_Y21_N26
\data_path_u|BUS2[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|BUS2[0]~3_combout\ = (\data_path_u|BUS2[0]~2_combout\) # ((\data_path_u|BUS2[0]~18_combout\ & \data_path_u|ALU_unit|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|BUS2[0]~18_combout\,
	datac => \data_path_u|BUS2[0]~2_combout\,
	datad => \data_path_u|ALU_unit|Add2~6_combout\,
	combout => \data_path_u|BUS2[0]~3_combout\);

-- Location: LCCOMB_X33_Y21_N24
\control_unit_module|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|Selector20~0_combout\ = ((\control_unit_module|current_state.S_LOAD_AND_STORE_6~q\ & !\control_unit_module|Selector1~0_combout\)) # (!\control_unit_module|Selector19~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_module|current_state.S_LOAD_AND_STORE_6~q\,
	datac => \control_unit_module|Selector19~2_combout\,
	datad => \control_unit_module|Selector1~0_combout\,
	combout => \control_unit_module|Selector20~0_combout\);

-- Location: FF_X30_Y21_N31
\data_path_u|MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|MAR\(0));

-- Location: LCCOMB_X33_Y21_N20
\data_path_u|MAR[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|MAR[1]~feeder_combout\ = \data_path_u|BUS2[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_path_u|BUS2[1]~5_combout\,
	combout => \data_path_u|MAR[1]~feeder_combout\);

-- Location: FF_X33_Y21_N21
\data_path_u|MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|MAR[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \control_unit_module|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|MAR\(1));

-- Location: FF_X27_Y21_N9
\data_path_u|MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|BUS2[2]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \control_unit_module|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|MAR\(2));

-- Location: FF_X30_Y21_N29
\data_path_u|MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[3]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|MAR\(3));

-- Location: FF_X32_Y21_N9
\data_path_u|MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[4]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|MAR\(4));

-- Location: FF_X30_Y21_N9
\data_path_u|MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[5]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|MAR\(5));

-- Location: FF_X30_Y21_N25
\data_path_u|MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_path_u|BUS2[6]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \control_unit_module|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|MAR\(6));

-- Location: LCCOMB_X33_Y21_N30
\data_path_u|MAR[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_path_u|MAR[7]~feeder_combout\ = \data_path_u|BUS2[7]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_path_u|BUS2[7]~17_combout\,
	combout => \data_path_u|MAR[7]~feeder_combout\);

-- Location: FF_X33_Y21_N31
\data_path_u|MAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_path_u|MAR[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \control_unit_module|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_path_u|MAR\(7));

-- Location: LCCOMB_X32_Y22_N28
\control_unit_module|write~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_unit_module|write~0_combout\ = (\data_path_u|IR_Reg\(4) & (\control_unit_module|Equal0~1_combout\ & \control_unit_module|current_state.S_LOAD_AND_STORE_7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_path_u|IR_Reg\(4),
	datac => \control_unit_module|Equal0~1_combout\,
	datad => \control_unit_module|current_state.S_LOAD_AND_STORE_7~q\,
	combout => \control_unit_module|write~0_combout\);

ww_address(0) <= \address[0]~output_o\;

ww_address(1) <= \address[1]~output_o\;

ww_address(2) <= \address[2]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_address(4) <= \address[4]~output_o\;

ww_address(5) <= \address[5]~output_o\;

ww_address(6) <= \address[6]~output_o\;

ww_address(7) <= \address[7]~output_o\;

ww_write <= \write~output_o\;

ww_to_memory(0) <= \to_memory[0]~output_o\;

ww_to_memory(1) <= \to_memory[1]~output_o\;

ww_to_memory(2) <= \to_memory[2]~output_o\;

ww_to_memory(3) <= \to_memory[3]~output_o\;

ww_to_memory(4) <= \to_memory[4]~output_o\;

ww_to_memory(5) <= \to_memory[5]~output_o\;

ww_to_memory(6) <= \to_memory[6]~output_o\;

ww_to_memory(7) <= \to_memory[7]~output_o\;
END structure;


