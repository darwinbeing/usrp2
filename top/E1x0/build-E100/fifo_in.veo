/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used             *
*     solely for design, simulation, implementation and creation of            *
*     design files limited to Xilinx devices or technologies. Use              *
*     with non-Xilinx devices or technologies is expressly prohibited          *
*     and immediately terminates your license.                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"            *
*     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                  *
*     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION          *
*     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION              *
*     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS                *
*     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                  *
*     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE         *
*     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY                 *
*     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                  *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS          *
*     FOR A PARTICULAR PURPOSE.                                                *
*                                                                              *
*     Xilinx products are not intended for use in life support                 *
*     appliances, devices, or systems. Use in such applications are            *
*     expressly prohibited.                                                    *
*                                                                              *
*     (c) Copyright 1995-2012 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/

// The FIFO Generator is a parameterizable first-in/first-out memory queue generator. Use it to generate resource and performance optimized FIFOs with common or independent read/write clock domains, and optional fixed or programmable full and empty flags and handshaking signals.  Choose from a selection of memory resource types for implementation.  Optional Hamming code based error detection and correction as well as error injection capability for system test help to insure data integrity.  FIFO width and depth are parameterizable, and for native interface FIFOs, asymmetric read and write port widths are also supported.

// Interfaces:
//    AXIStream_MASTER_M_AXIS
//    AXIStream_SLAVE_S_AXIS
//    AXI4_MASTER_M_AXI
//    AXI4_SLAVE_S_AXI
//    AXILite_MASTER_M_AXI
//    AXILite_SLAVE_S_AXI

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
fifo_in your_instance_name (
  .clk(clk), // input clk
  .srst(srst), // input srst
  .din(din), // input [15 : 0] din
  .wr_en(wr_en), // input wr_en
  .rd_en(rd_en), // input rd_en
  .dout(dout), // output [15 : 0] dout
  .full(full), // output full
  .almost_full(almost_full), // output almost_full
  .wr_ack(wr_ack), // output wr_ack
  .overflow(overflow), // output overflow
  .empty(empty), // output empty
  .valid(valid), // output valid
  .data_count(data_count) // output [4 : 0] data_count
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file fifo_in.v when simulating
// the core, fifo_in. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

