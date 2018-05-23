// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:filter:1.0
// IP Revision: 1805221440

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_filter_0_0 (
  s_axi_AXILiteS_AWADDR,
  s_axi_AXILiteS_AWVALID,
  s_axi_AXILiteS_AWREADY,
  s_axi_AXILiteS_WDATA,
  s_axi_AXILiteS_WSTRB,
  s_axi_AXILiteS_WVALID,
  s_axi_AXILiteS_WREADY,
  s_axi_AXILiteS_BRESP,
  s_axi_AXILiteS_BVALID,
  s_axi_AXILiteS_BREADY,
  s_axi_AXILiteS_ARADDR,
  s_axi_AXILiteS_ARVALID,
  s_axi_AXILiteS_ARREADY,
  s_axi_AXILiteS_RDATA,
  s_axi_AXILiteS_RRESP,
  s_axi_AXILiteS_RVALID,
  s_axi_AXILiteS_RREADY,
  ap_clk,
  ap_rst_n,
  input_r_TVALID,
  input_r_TREADY,
  input_r_TDATA,
  input_r_TKEEP,
  input_r_TSTRB,
  input_r_TUSER,
  input_r_TLAST,
  input_r_TID,
  input_r_TDEST,
  output_r_TVALID,
  output_r_TREADY,
  output_r_TDATA,
  output_r_TKEEP,
  output_r_TSTRB,
  output_r_TUSER,
  output_r_TLAST,
  output_r_TID,
  output_r_TDEST
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *)
input wire [6 : 0] s_axi_AXILiteS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *)
input wire s_axi_AXILiteS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *)
output wire s_axi_AXILiteS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *)
input wire [31 : 0] s_axi_AXILiteS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *)
input wire [3 : 0] s_axi_AXILiteS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *)
input wire s_axi_AXILiteS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *)
output wire s_axi_AXILiteS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *)
output wire [1 : 0] s_axi_AXILiteS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *)
output wire s_axi_AXILiteS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *)
input wire s_axi_AXILiteS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *)
input wire [6 : 0] s_axi_AXILiteS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *)
input wire s_axi_AXILiteS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *)
output wire s_axi_AXILiteS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *)
output wire [31 : 0] s_axi_AXILiteS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *)
output wire [1 : 0] s_axi_AXILiteS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *)
output wire s_axi_AXILiteS_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *)
input wire s_axi_AXILiteS_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TVALID" *)
input wire input_r_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TREADY" *)
output wire input_r_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TDATA" *)
input wire [23 : 0] input_r_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TKEEP" *)
input wire [2 : 0] input_r_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TSTRB" *)
input wire [2 : 0] input_r_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TUSER" *)
input wire [0 : 0] input_r_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TLAST" *)
input wire [0 : 0] input_r_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TID" *)
input wire [0 : 0] input_r_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TDEST" *)
input wire [0 : 0] input_r_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_r TVALID" *)
output wire output_r_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_r TREADY" *)
input wire output_r_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_r TDATA" *)
output wire [23 : 0] output_r_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_r TKEEP" *)
output wire [2 : 0] output_r_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_r TSTRB" *)
output wire [2 : 0] output_r_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_r TUSER" *)
output wire [0 : 0] output_r_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_r TLAST" *)
output wire [0 : 0] output_r_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_r TID" *)
output wire [0 : 0] output_r_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_r TDEST" *)
output wire [0 : 0] output_r_TDEST;

  filter #(
    .C_S_AXI_AXILITES_ADDR_WIDTH(7),
    .C_S_AXI_AXILITES_DATA_WIDTH(32)
  ) inst (
    .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
    .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
    .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
    .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
    .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
    .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
    .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
    .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
    .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
    .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
    .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
    .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
    .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
    .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
    .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
    .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
    .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .input_r_TVALID(input_r_TVALID),
    .input_r_TREADY(input_r_TREADY),
    .input_r_TDATA(input_r_TDATA),
    .input_r_TKEEP(input_r_TKEEP),
    .input_r_TSTRB(input_r_TSTRB),
    .input_r_TUSER(input_r_TUSER),
    .input_r_TLAST(input_r_TLAST),
    .input_r_TID(input_r_TID),
    .input_r_TDEST(input_r_TDEST),
    .output_r_TVALID(output_r_TVALID),
    .output_r_TREADY(output_r_TREADY),
    .output_r_TDATA(output_r_TDATA),
    .output_r_TKEEP(output_r_TKEEP),
    .output_r_TSTRB(output_r_TSTRB),
    .output_r_TUSER(output_r_TUSER),
    .output_r_TLAST(output_r_TLAST),
    .output_r_TID(output_r_TID),
    .output_r_TDEST(output_r_TDEST)
  );
endmodule
