// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 22 02:38:50 2024
// Host        : KratX running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               A:/Masters_VT/Lab/Hicks/TDC2/TDCv3/TDCv3.sim/sim_1/synth/timing/xsim/tdc_tb_time_synth.v
// Design      : top_level
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* g_INITAL = "32" *) (* g_LEN = "32" *) 
module TDC
   (clkSrc,
    clkSample,
    start,
    clkProp,
    buffer);
  input clkSrc;
  input clkSample;
  input start;
  output [31:0]clkProp;
  output [31:0]buffer;

  wire [31:0]buffer;
  (* DONT_TOUCH *) (* RTL_KEEP = "true" *) wire [31:0]carryDelay;
  wire [31:0]clkProp;
  wire clkSample;
  wire clkSrc;
  wire start;

  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[0]),
        .Q(buffer[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[10] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[10]),
        .Q(buffer[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[11] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[11]),
        .Q(buffer[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[12] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[12]),
        .Q(buffer[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[13] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[13]),
        .Q(buffer[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[14] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[14]),
        .Q(buffer[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[15] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[15]),
        .Q(buffer[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[16] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[16]),
        .Q(buffer[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[17] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[17]),
        .Q(buffer[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[18] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[18]),
        .Q(buffer[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[19] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[19]),
        .Q(buffer[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[1]),
        .Q(buffer[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[20] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[20]),
        .Q(buffer[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[21] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[21]),
        .Q(buffer[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[22] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[22]),
        .Q(buffer[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[23] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[23]),
        .Q(buffer[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[24] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[24]),
        .Q(buffer[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[25] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[25]),
        .Q(buffer[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[26] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[26]),
        .Q(buffer[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[27] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[27]),
        .Q(buffer[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[28] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[28]),
        .Q(buffer[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[29] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[29]),
        .Q(buffer[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[2]),
        .Q(buffer[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[30] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[30]),
        .Q(buffer[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[31] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[31]),
        .Q(buffer[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[3]),
        .Q(buffer[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[4] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[4]),
        .Q(buffer[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[5] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[5]),
        .Q(buffer[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[6] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[6]),
        .Q(buffer[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[7] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[7]),
        .Q(buffer[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[8] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[8]),
        .Q(buffer[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[9] 
       (.C(start),
        .CE(1'b1),
        .D(clkProp[9]),
        .Q(buffer[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[0] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[0]),
        .Q(clkProp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[10] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[10]),
        .Q(clkProp[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[11] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[11]),
        .Q(clkProp[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[12] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[12]),
        .Q(clkProp[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[13] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[13]),
        .Q(clkProp[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[14] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[14]),
        .Q(clkProp[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[15] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[15]),
        .Q(clkProp[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[16] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[16]),
        .Q(clkProp[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[17] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[17]),
        .Q(clkProp[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[18] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[18]),
        .Q(clkProp[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[19] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[19]),
        .Q(clkProp[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[1] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[1]),
        .Q(clkProp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[20] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[20]),
        .Q(clkProp[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[21] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[21]),
        .Q(clkProp[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[22] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[22]),
        .Q(clkProp[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[23] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[23]),
        .Q(clkProp[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[24] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[24]),
        .Q(clkProp[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[25] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[25]),
        .Q(clkProp[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[26] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[26]),
        .Q(clkProp[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[27] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[27]),
        .Q(clkProp[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[28] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[28]),
        .Q(clkProp[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[29] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[29]),
        .Q(clkProp[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[2] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[2]),
        .Q(clkProp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[30] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[30]),
        .Q(clkProp[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[31] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[31]),
        .Q(clkProp[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[3] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[3]),
        .Q(clkProp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[4] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[4]),
        .Q(clkProp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[5] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[5]),
        .Q(clkProp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[6] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[6]),
        .Q(clkProp[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[7] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[7]),
        .Q(clkProp[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[8] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[8]),
        .Q(clkProp[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkProp_reg[9] 
       (.C(clkSample),
        .CE(1'b1),
        .D(carryDelay[9]),
        .Q(clkProp[9]),
        .R(1'b0));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[0].CARRY4_delay 
       (.I0(clkSrc),
        .O(carryDelay[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[10].CARRY4_delay 
       (.I0(carryDelay[9]),
        .O(carryDelay[10]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[11].CARRY4_delay 
       (.I0(carryDelay[10]),
        .O(carryDelay[11]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[12].CARRY4_delay 
       (.I0(carryDelay[11]),
        .O(carryDelay[12]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[13].CARRY4_delay 
       (.I0(carryDelay[12]),
        .O(carryDelay[13]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[14].CARRY4_delay 
       (.I0(carryDelay[13]),
        .O(carryDelay[14]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[15].CARRY4_delay 
       (.I0(carryDelay[14]),
        .O(carryDelay[15]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[16].CARRY4_delay 
       (.I0(carryDelay[15]),
        .O(carryDelay[16]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[17].CARRY4_delay 
       (.I0(carryDelay[16]),
        .O(carryDelay[17]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[18].CARRY4_delay 
       (.I0(carryDelay[17]),
        .O(carryDelay[18]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[19].CARRY4_delay 
       (.I0(carryDelay[18]),
        .O(carryDelay[19]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[1].CARRY4_delay 
       (.I0(carryDelay[0]),
        .O(carryDelay[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[20].CARRY4_delay 
       (.I0(carryDelay[19]),
        .O(carryDelay[20]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[21].CARRY4_delay 
       (.I0(carryDelay[20]),
        .O(carryDelay[21]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[22].CARRY4_delay 
       (.I0(carryDelay[21]),
        .O(carryDelay[22]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[23].CARRY4_delay 
       (.I0(carryDelay[22]),
        .O(carryDelay[23]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[24].CARRY4_delay 
       (.I0(carryDelay[23]),
        .O(carryDelay[24]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[25].CARRY4_delay 
       (.I0(carryDelay[24]),
        .O(carryDelay[25]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[26].CARRY4_delay 
       (.I0(carryDelay[25]),
        .O(carryDelay[26]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[27].CARRY4_delay 
       (.I0(carryDelay[26]),
        .O(carryDelay[27]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[28].CARRY4_delay 
       (.I0(carryDelay[27]),
        .O(carryDelay[28]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[29].CARRY4_delay 
       (.I0(carryDelay[28]),
        .O(carryDelay[29]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[2].CARRY4_delay 
       (.I0(carryDelay[1]),
        .O(carryDelay[2]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[30].CARRY4_delay 
       (.I0(carryDelay[29]),
        .O(carryDelay[30]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[31].CARRY4_delay 
       (.I0(carryDelay[30]),
        .O(carryDelay[31]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[3].CARRY4_delay 
       (.I0(carryDelay[2]),
        .O(carryDelay[3]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[4].CARRY4_delay 
       (.I0(carryDelay[3]),
        .O(carryDelay[4]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[5].CARRY4_delay 
       (.I0(carryDelay[4]),
        .O(carryDelay[5]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[6].CARRY4_delay 
       (.I0(carryDelay[5]),
        .O(carryDelay[6]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[7].CARRY4_delay 
       (.I0(carryDelay[6]),
        .O(carryDelay[7]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[8].CARRY4_delay 
       (.I0(carryDelay[7]),
        .O(carryDelay[8]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \genblk1[9].CARRY4_delay 
       (.I0(carryDelay[8]),
        .O(carryDelay[9]));
endmodule

module clocks
   (clkSample,
    clkin1,
    rst);
  output clkSample;
  input clkin1;
  input rst;

  wire clkSample;
  wire clkfbout;
  wire clkfbout_buf;
  wire clkin1;
  wire clkout0;
  wire rst;
  wire NLW_MMCME2_ADV_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKOUT1_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKOUT2_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKOUT3_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKOUT4_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKOUT5_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_CLKOUT6_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_DRDY_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_LOCKED_UNCONNECTED;
  wire NLW_MMCME2_ADV_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_MMCME2_ADV_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(6.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(6.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(10.000000),
    .CLKOUT0_USE_FINE_PS("TRUE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("BUF_IN"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.000000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("TRUE")) 
    MMCME2_ADV_inst
       (.CLKFBIN(clkfbout_buf),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_MMCME2_ADV_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_MMCME2_ADV_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clkin1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_MMCME2_ADV_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clkout0),
        .CLKOUT0B(NLW_MMCME2_ADV_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_MMCME2_ADV_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_MMCME2_ADV_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_MMCME2_ADV_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_MMCME2_ADV_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_MMCME2_ADV_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_MMCME2_ADV_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_MMCME2_ADV_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_MMCME2_ADV_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_MMCME2_ADV_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_MMCME2_ADV_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_MMCME2_ADV_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_MMCME2_ADV_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_MMCME2_ADV_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkSample_buf
       (.I(clkout0),
        .O(clkSample));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout),
        .O(clkfbout_buf));
endmodule

module debouncer
   (clk,
    IN,
    OUT);
  input clk;
  input IN;
  output OUT;

  wire IN;
  wire OUT;
  wire OUT_INST_0_i_1_n_0;
  wire clk;
  wire [7:1]p_0_in;
  wire \shift_reg_n_0_[7] ;

  LUT5 #(
    .INIT(32'h00008000)) 
    OUT_INST_0
       (.I0(p_0_in[6]),
        .I1(p_0_in[5]),
        .I2(p_0_in[7]),
        .I3(\shift_reg_n_0_[7] ),
        .I4(OUT_INST_0_i_1_n_0),
        .O(OUT));
  LUT4 #(
    .INIT(16'h7FFF)) 
    OUT_INST_0_i_1
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .O(OUT_INST_0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(IN),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\shift_reg_n_0_[7] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer__3
   (clk,
    IN,
    OUT);
  input clk;
  input IN;
  output OUT;

  wire IN;
  wire OUT;
  wire OUT_INST_0_i_1_n_0;
  wire clk;
  wire [7:1]p_0_in;
  wire \shift_reg_n_0_[7] ;

  LUT5 #(
    .INIT(32'h00008000)) 
    OUT_INST_0
       (.I0(p_0_in[6]),
        .I1(p_0_in[5]),
        .I2(p_0_in[7]),
        .I3(\shift_reg_n_0_[7] ),
        .I4(OUT_INST_0_i_1_n_0),
        .O(OUT));
  LUT4 #(
    .INIT(16'h7FFF)) 
    OUT_INST_0_i_1
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .O(OUT_INST_0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(IN),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\shift_reg_n_0_[7] ),
        .R(1'b0));
endmodule

(* keep_hierarchy = "soft" *) 
(* NotValidForBitStream *)
module top_level
   (CLK,
    BUTTON,
    SWITCH,
    LED);
  input CLK;
  (* mark_debug = "true" *) input [3:0]BUTTON;
  (* mark_debug = "true" *) input [3:0]SWITCH;
  output [7:0]LED;

  wire [3:0]BUTTON;
  (* MARK_DEBUG *) wire [3:0]BUTTON_IBUF;
  wire Btrig;
  wire Btrig_last;
  (* IBUF_LOW_PWR *) wire CLK;
  wire [7:0]LED;
  wire [7:0]LED_OBUF;
  (* MARK_DEBUG *) wire [31:0]buffer;
  (* MARK_DEBUG *) wire [31:0]clkProp;
  wire clkSample;
  wire clkSrc;
  wire clkSrc_BUFG;
  wire rst;
  wire start;

initial begin
 $sdf_annotate("tdc_tb_time_synth.sdf",,,,"tool_control");
end
  (* mark_debug = "true" *) 
  IBUF \BUTTON_IBUF[0]_inst 
       (.I(BUTTON[0]),
        .O(BUTTON_IBUF[0]));
  (* mark_debug = "true" *) 
  IBUF \BUTTON_IBUF[3]_inst 
       (.I(BUTTON[3]),
        .O(BUTTON_IBUF[3]));
  FDRE #(
    .INIT(1'b0)) 
    Btrig_last_reg
       (.C(clkSrc_BUFG),
        .CE(1'b1),
        .D(Btrig),
        .Q(Btrig_last),
        .R(1'b0));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(LED_OBUF[7]),
        .O(LED[7]));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[0] 
       (.C(clkSrc_BUFG),
        .CE(1'b1),
        .D(buffer[0]),
        .Q(LED_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[1] 
       (.C(clkSrc_BUFG),
        .CE(1'b1),
        .D(buffer[1]),
        .Q(LED_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[2] 
       (.C(clkSrc_BUFG),
        .CE(1'b1),
        .D(buffer[2]),
        .Q(LED_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[3] 
       (.C(clkSrc_BUFG),
        .CE(1'b1),
        .D(buffer[3]),
        .Q(LED_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[4] 
       (.C(clkSrc_BUFG),
        .CE(1'b1),
        .D(buffer[4]),
        .Q(LED_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[5] 
       (.C(clkSrc_BUFG),
        .CE(1'b1),
        .D(buffer[5]),
        .Q(LED_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[6] 
       (.C(clkSrc_BUFG),
        .CE(1'b1),
        .D(buffer[6]),
        .Q(LED_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[7] 
       (.C(clkSrc_BUFG),
        .CE(1'b1),
        .D(buffer[7]),
        .Q(LED_OBUF[7]),
        .R(1'b0));
  BUFG clkSrc_BUFG_inst
       (.I(clkSrc),
        .O(clkSrc_BUFG));
  clocks clk_div
       (.clkSample(clkSample),
        .clkin1(clkSrc_BUFG),
        .rst(rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_buf
       (.I(CLK),
        .O(clkSrc));
  (* KEEP_HIERARCHY = "soft" *) 
  debouncer__3 instdb_rst
       (.IN(BUTTON_IBUF[0]),
        .OUT(rst),
        .clk(clkSrc_BUFG));
  (* KEEP_HIERARCHY = "soft" *) 
  debouncer instdb_trig
       (.IN(BUTTON_IBUF[3]),
        .OUT(Btrig),
        .clk(clkSrc_BUFG));
  (* KEEP_HIERARCHY = "soft" *) 
  (* g_INITAL = "32" *) 
  (* g_LEN = "32" *) 
  TDC sensor
       (.buffer(buffer),
        .clkProp(clkProp),
        .clkSample(clkSample),
        .clkSrc(clkSrc_BUFG),
        .start(start));
  LUT2 #(
    .INIT(4'h2)) 
    sensor_i_1
       (.I0(Btrig),
        .I1(Btrig_last),
        .O(start));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
