# BCD_15_Dot_Matrix_Decoder
This project implements a BCD-to-15-dot matrix decoder in Verilog, entirely simulated in Xilinx Vivado 2023.2. The module takes a 4-bit Binary-Coded-Decimal (BCD) input (representing digits 0-9 and symbols) and activates the appropiate 15-dot matrix pattern for each input.

# Project Summary
**Goal**: Convert a 4-bit BCD input into control signals for a 15-segment LED dot matrix.

**Tool Used**: Xilinx Vivado (simulation environment)

**Inputs**: 4-bit `bcd` signal (MSB to LSB: A, B, C, D)

**Output**: 15-bit `dots` signal representing the 3×5 dot matrix

# Dot Matrix Layout
The 15 dots are arranged ina 5-row by 3-column matrix:

a1 b1 c1 d1 e1
a2 b2 c2 d2 e2
a3 b3 c3 d3 e3

Each of these are driven by a corresponding bit in the 15-bit output signal 'dots [14:0]'.

# Files

| File         | Description                                      |
|--------------|--------------------------------------------------|
| `hwfive.v`   | Main Verilog module for the decoder logic        |
| `dotbench.v` | Testbench to apply all BCD values (0 to 15)      |
| `README.md`  | This project description and usage instructions  |

# Simulated Results
The project was simulated using Vivado's waveform viewer. The following simulation captures the behavior of the decoder module as BCD values from 0 to 2 are passed through it:

![15-dot matrix simulation results](https://github.com/user-attachments/assets/52359157-79d9-48d9-a959-9d889bd6e8d5)





