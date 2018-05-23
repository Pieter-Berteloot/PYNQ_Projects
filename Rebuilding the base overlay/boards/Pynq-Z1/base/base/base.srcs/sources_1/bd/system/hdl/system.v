//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
//Date        : Tue May 22 14:44:21 2018
//Host        : PieterBerteloot running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module frontend_imp_1IDM840
   (DDC_scl_i,
    DDC_scl_o,
    DDC_scl_t,
    DDC_sda_i,
    DDC_sda_o,
    DDC_sda_t,
    PixelClk,
    RefClk,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    TMDS_clk_n,
    TMDS_clk_p,
    TMDS_data_n,
    TMDS_data_p,
    aPixelClkLckd,
    aclk,
    ctrl_araddr,
    ctrl_arready,
    ctrl_arvalid,
    ctrl_awaddr,
    ctrl_awready,
    ctrl_awvalid,
    ctrl_bready,
    ctrl_bresp,
    ctrl_bvalid,
    ctrl_rdata,
    ctrl_rready,
    ctrl_rresp,
    ctrl_rvalid,
    ctrl_wdata,
    ctrl_wready,
    ctrl_wstrb,
    ctrl_wvalid,
    gpio_io_o,
    ip2intc_irpt,
    irq,
    resetn,
    s_axi_aclk,
    s_axi_aresetn,
    vid_io_in_reset,
    video_out_tdata,
    video_out_tlast,
    video_out_tready,
    video_out_tuser,
    video_out_tvalid);
  input DDC_scl_i;
  output DDC_scl_o;
  output DDC_scl_t;
  input DDC_sda_i;
  output DDC_sda_o;
  output DDC_sda_t;
  output PixelClk;
  input RefClk;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input TMDS_clk_n;
  input TMDS_clk_p;
  input [2:0]TMDS_data_n;
  input [2:0]TMDS_data_p;
  output aPixelClkLckd;
  input aclk;
  input [31:0]ctrl_araddr;
  output [0:0]ctrl_arready;
  input [0:0]ctrl_arvalid;
  input [31:0]ctrl_awaddr;
  output [0:0]ctrl_awready;
  input [0:0]ctrl_awvalid;
  input [0:0]ctrl_bready;
  output [1:0]ctrl_bresp;
  output [0:0]ctrl_bvalid;
  output [31:0]ctrl_rdata;
  input [0:0]ctrl_rready;
  output [1:0]ctrl_rresp;
  output [0:0]ctrl_rvalid;
  input [31:0]ctrl_wdata;
  output [0:0]ctrl_wready;
  input [3:0]ctrl_wstrb;
  input [0:0]ctrl_wvalid;
  output [0:0]gpio_io_o;
  output ip2intc_irpt;
  output irq;
  input [0:0]resetn;
  input s_axi_aclk;
  input [0:0]s_axi_aresetn;
  input [0:0]vid_io_in_reset;
  output [23:0]video_out_tdata;
  output video_out_tlast;
  input video_out_tready;
  output video_out_tuser;
  output video_out_tvalid;

  wire Conn1_SCL_I;
  wire Conn1_SCL_O;
  wire Conn1_SCL_T;
  wire Conn1_SDA_I;
  wire Conn1_SDA_O;
  wire Conn1_SDA_T;
  wire Conn2_CLK_N;
  wire Conn2_CLK_P;
  wire [2:0]Conn2_DATA_N;
  wire [2:0]Conn2_DATA_P;
  wire [31:0]Conn3_ARADDR;
  wire Conn3_ARREADY;
  wire [0:0]Conn3_ARVALID;
  wire [31:0]Conn3_AWADDR;
  wire Conn3_AWREADY;
  wire [0:0]Conn3_AWVALID;
  wire [0:0]Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [31:0]Conn3_RDATA;
  wire [0:0]Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [31:0]Conn3_WDATA;
  wire Conn3_WREADY;
  wire [3:0]Conn3_WSTRB;
  wire [0:0]Conn3_WVALID;
  wire Net;
  wire [0:0]Net1;
  wire RefClk_1;
  wire aclk_1;
  wire [0:0]axi_gpio_video_gpio_io_o;
  wire axi_gpio_video_ip2intc_irpt;
  wire dvi2rgb_0_PixelClk1;
  wire dvi2rgb_0_RGB_ACTIVE_VIDEO;
  wire [23:0]dvi2rgb_0_RGB_DATA;
  wire dvi2rgb_0_RGB_HSYNC;
  wire dvi2rgb_0_RGB_VSYNC;
  wire dvi2rgb_0_aPixelClkLckd;
  wire [23:0]hdmi_in_video_out_TDATA;
  wire hdmi_in_video_out_TLAST;
  wire hdmi_in_video_out_TREADY;
  wire hdmi_in_video_out_TUSER;
  wire hdmi_in_video_out_TVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_ARADDR;
  wire processing_system7_0_axi_periph_M07_AXI_ARREADY;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_AWADDR;
  wire processing_system7_0_axi_periph_M07_AXI_AWREADY;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_AWVALID;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M07_AXI_BRESP;
  wire processing_system7_0_axi_periph_M07_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_RDATA;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M07_AXI_RRESP;
  wire processing_system7_0_axi_periph_M07_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_WDATA;
  wire processing_system7_0_axi_periph_M07_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M07_AXI_WSTRB;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_WVALID;
  wire [0:0]resetn_1;
  wire v_tc_1_irq;
  wire v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO;
  wire v_vid_in_axi4s_0_vtiming_out_HSYNC;
  wire v_vid_in_axi4s_0_vtiming_out_VSYNC;
  wire [0:0]vid_io_in_reset_1;

  assign Conn1_SCL_I = DDC_scl_i;
  assign Conn1_SDA_I = DDC_sda_i;
  assign Conn2_CLK_N = TMDS_clk_n;
  assign Conn2_CLK_P = TMDS_clk_p;
  assign Conn2_DATA_N = TMDS_data_n[2:0];
  assign Conn2_DATA_P = TMDS_data_p[2:0];
  assign Conn3_ARADDR = ctrl_araddr[31:0];
  assign Conn3_ARVALID = ctrl_arvalid[0];
  assign Conn3_AWADDR = ctrl_awaddr[31:0];
  assign Conn3_AWVALID = ctrl_awvalid[0];
  assign Conn3_BREADY = ctrl_bready[0];
  assign Conn3_RREADY = ctrl_rready[0];
  assign Conn3_WDATA = ctrl_wdata[31:0];
  assign Conn3_WSTRB = ctrl_wstrb[3:0];
  assign Conn3_WVALID = ctrl_wvalid[0];
  assign DDC_scl_o = Conn1_SCL_O;
  assign DDC_scl_t = Conn1_SCL_T;
  assign DDC_sda_o = Conn1_SDA_O;
  assign DDC_sda_t = Conn1_SDA_T;
  assign Net = s_axi_aclk;
  assign Net1 = s_axi_aresetn[0];
  assign PixelClk = dvi2rgb_0_PixelClk1;
  assign RefClk_1 = RefClk;
  assign S_AXI_arready[0] = processing_system7_0_axi_periph_M07_AXI_ARREADY;
  assign S_AXI_awready[0] = processing_system7_0_axi_periph_M07_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = processing_system7_0_axi_periph_M07_AXI_BRESP;
  assign S_AXI_bvalid[0] = processing_system7_0_axi_periph_M07_AXI_BVALID;
  assign S_AXI_rdata[31:0] = processing_system7_0_axi_periph_M07_AXI_RDATA;
  assign S_AXI_rresp[1:0] = processing_system7_0_axi_periph_M07_AXI_RRESP;
  assign S_AXI_rvalid[0] = processing_system7_0_axi_periph_M07_AXI_RVALID;
  assign S_AXI_wready[0] = processing_system7_0_axi_periph_M07_AXI_WREADY;
  assign aPixelClkLckd = dvi2rgb_0_aPixelClkLckd;
  assign aclk_1 = aclk;
  assign ctrl_arready[0] = Conn3_ARREADY;
  assign ctrl_awready[0] = Conn3_AWREADY;
  assign ctrl_bresp[1:0] = Conn3_BRESP;
  assign ctrl_bvalid[0] = Conn3_BVALID;
  assign ctrl_rdata[31:0] = Conn3_RDATA;
  assign ctrl_rresp[1:0] = Conn3_RRESP;
  assign ctrl_rvalid[0] = Conn3_RVALID;
  assign ctrl_wready[0] = Conn3_WREADY;
  assign gpio_io_o[0] = axi_gpio_video_gpio_io_o;
  assign hdmi_in_video_out_TREADY = video_out_tready;
  assign ip2intc_irpt = axi_gpio_video_ip2intc_irpt;
  assign irq = v_tc_1_irq;
  assign processing_system7_0_axi_periph_M07_AXI_ARADDR = S_AXI_araddr[31:0];
  assign processing_system7_0_axi_periph_M07_AXI_ARVALID = S_AXI_arvalid[0];
  assign processing_system7_0_axi_periph_M07_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign processing_system7_0_axi_periph_M07_AXI_AWVALID = S_AXI_awvalid[0];
  assign processing_system7_0_axi_periph_M07_AXI_BREADY = S_AXI_bready[0];
  assign processing_system7_0_axi_periph_M07_AXI_RREADY = S_AXI_rready[0];
  assign processing_system7_0_axi_periph_M07_AXI_WDATA = S_AXI_wdata[31:0];
  assign processing_system7_0_axi_periph_M07_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign processing_system7_0_axi_periph_M07_AXI_WVALID = S_AXI_wvalid[0];
  assign resetn_1 = resetn[0];
  assign vid_io_in_reset_1 = vid_io_in_reset[0];
  assign video_out_tdata[23:0] = hdmi_in_video_out_TDATA;
  assign video_out_tlast = hdmi_in_video_out_TLAST;
  assign video_out_tuser = hdmi_in_video_out_TUSER;
  assign video_out_tvalid = hdmi_in_video_out_TVALID;
  system_axi_gpio_hdmiin_0 axi_gpio_hdmiin
       (.gpio2_io_i(dvi2rgb_0_aPixelClkLckd),
        .gpio_io_o(axi_gpio_video_gpio_io_o),
        .ip2intc_irpt(axi_gpio_video_ip2intc_irpt),
        .s_axi_aclk(Net),
        .s_axi_araddr(processing_system7_0_axi_periph_M07_AXI_ARADDR[8:0]),
        .s_axi_aresetn(Net1),
        .s_axi_arready(processing_system7_0_axi_periph_M07_AXI_ARREADY),
        .s_axi_arvalid(processing_system7_0_axi_periph_M07_AXI_ARVALID),
        .s_axi_awaddr(processing_system7_0_axi_periph_M07_AXI_AWADDR[8:0]),
        .s_axi_awready(processing_system7_0_axi_periph_M07_AXI_AWREADY),
        .s_axi_awvalid(processing_system7_0_axi_periph_M07_AXI_AWVALID),
        .s_axi_bready(processing_system7_0_axi_periph_M07_AXI_BREADY),
        .s_axi_bresp(processing_system7_0_axi_periph_M07_AXI_BRESP),
        .s_axi_bvalid(processing_system7_0_axi_periph_M07_AXI_BVALID),
        .s_axi_rdata(processing_system7_0_axi_periph_M07_AXI_RDATA),
        .s_axi_rready(processing_system7_0_axi_periph_M07_AXI_RREADY),
        .s_axi_rresp(processing_system7_0_axi_periph_M07_AXI_RRESP),
        .s_axi_rvalid(processing_system7_0_axi_periph_M07_AXI_RVALID),
        .s_axi_wdata(processing_system7_0_axi_periph_M07_AXI_WDATA),
        .s_axi_wready(processing_system7_0_axi_periph_M07_AXI_WREADY),
        .s_axi_wstrb(processing_system7_0_axi_periph_M07_AXI_WSTRB),
        .s_axi_wvalid(processing_system7_0_axi_periph_M07_AXI_WVALID));
  system_dvi2rgb_0_0 dvi2rgb_0
       (.DDC_SCL_I(Conn1_SCL_I),
        .DDC_SCL_O(Conn1_SCL_O),
        .DDC_SCL_T(Conn1_SCL_T),
        .DDC_SDA_I(Conn1_SDA_I),
        .DDC_SDA_O(Conn1_SDA_O),
        .DDC_SDA_T(Conn1_SDA_T),
        .PixelClk(dvi2rgb_0_PixelClk1),
        .RefClk(RefClk_1),
        .TMDS_Clk_n(Conn2_CLK_N),
        .TMDS_Clk_p(Conn2_CLK_P),
        .TMDS_Data_n(Conn2_DATA_N),
        .TMDS_Data_p(Conn2_DATA_P),
        .aPixelClkLckd(dvi2rgb_0_aPixelClkLckd),
        .aRst_n(Net1),
        .pRst_n(1'b1),
        .vid_pData(dvi2rgb_0_RGB_DATA),
        .vid_pHSync(dvi2rgb_0_RGB_HSYNC),
        .vid_pVDE(dvi2rgb_0_RGB_ACTIVE_VIDEO),
        .vid_pVSync(dvi2rgb_0_RGB_VSYNC));
  system_v_vid_in_axi4s_0_0 v_vid_in_axi4s_0
       (.aclk(aclk_1),
        .aclken(1'b1),
        .aresetn(1'b1),
        .axis_enable(1'b1),
        .m_axis_video_tdata(hdmi_in_video_out_TDATA),
        .m_axis_video_tlast(hdmi_in_video_out_TLAST),
        .m_axis_video_tready(hdmi_in_video_out_TREADY),
        .m_axis_video_tuser(hdmi_in_video_out_TUSER),
        .m_axis_video_tvalid(hdmi_in_video_out_TVALID),
        .vid_active_video(dvi2rgb_0_RGB_ACTIVE_VIDEO),
        .vid_data(dvi2rgb_0_RGB_DATA),
        .vid_field_id(1'b0),
        .vid_hblank(1'b0),
        .vid_hsync(dvi2rgb_0_RGB_HSYNC),
        .vid_io_in_ce(1'b1),
        .vid_io_in_clk(dvi2rgb_0_PixelClk1),
        .vid_io_in_reset(vid_io_in_reset_1),
        .vid_vblank(1'b0),
        .vid_vsync(dvi2rgb_0_RGB_VSYNC),
        .vtd_active_video(v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO),
        .vtd_hsync(v_vid_in_axi4s_0_vtiming_out_HSYNC),
        .vtd_vsync(v_vid_in_axi4s_0_vtiming_out_VSYNC));
  system_vtc_in_0 vtc_in
       (.active_video_in(v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO),
        .clk(dvi2rgb_0_PixelClk1),
        .clken(1'b1),
        .det_clken(1'b1),
        .hsync_in(v_vid_in_axi4s_0_vtiming_out_HSYNC),
        .irq(v_tc_1_irq),
        .resetn(resetn_1),
        .s_axi_aclk(Net),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(Conn3_ARADDR[8:0]),
        .s_axi_aresetn(Net1),
        .s_axi_arready(Conn3_ARREADY),
        .s_axi_arvalid(Conn3_ARVALID),
        .s_axi_awaddr(Conn3_AWADDR[8:0]),
        .s_axi_awready(Conn3_AWREADY),
        .s_axi_awvalid(Conn3_AWVALID),
        .s_axi_bready(Conn3_BREADY),
        .s_axi_bresp(Conn3_BRESP),
        .s_axi_bvalid(Conn3_BVALID),
        .s_axi_rdata(Conn3_RDATA),
        .s_axi_rready(Conn3_RREADY),
        .s_axi_rresp(Conn3_RRESP),
        .s_axi_rvalid(Conn3_RVALID),
        .s_axi_wdata(Conn3_WDATA),
        .s_axi_wready(Conn3_WREADY),
        .s_axi_wstrb(Conn3_WSTRB),
        .s_axi_wvalid(Conn3_WVALID),
        .vsync_in(v_vid_in_axi4s_0_vtiming_out_VSYNC));
endmodule

module frontend_imp_58W1JN
   (S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    TMDS_clk_n,
    TMDS_clk_p,
    TMDS_data_n,
    TMDS_data_p,
    aclk,
    aux_reset_in,
    ctrl_araddr,
    ctrl_arready,
    ctrl_arvalid,
    ctrl_awaddr,
    ctrl_awready,
    ctrl_awvalid,
    ctrl_bready,
    ctrl_bresp,
    ctrl_bvalid,
    ctrl_rdata,
    ctrl_rready,
    ctrl_rresp,
    ctrl_rvalid,
    ctrl_wdata,
    ctrl_wready,
    ctrl_wstrb,
    ctrl_wvalid,
    ext_reset_in,
    gpio_io_o,
    ip2intc_irpt,
    irq,
    locked,
    overflow,
    peripheral_aresetn,
    peripheral_reset,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arready,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awready,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_rdata,
    s00_axi_rready,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_wdata,
    s00_axi_wready,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s_axi_aresetn,
    slowest_sync_clk,
    status,
    underflow,
    video_in_tdata,
    video_in_tlast,
    video_in_tready,
    video_in_tuser,
    video_in_tvalid);
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  output TMDS_clk_n;
  output TMDS_clk_p;
  output [2:0]TMDS_data_n;
  output [2:0]TMDS_data_p;
  input aclk;
  input aux_reset_in;
  input [31:0]ctrl_araddr;
  output [0:0]ctrl_arready;
  input [0:0]ctrl_arvalid;
  input [31:0]ctrl_awaddr;
  output [0:0]ctrl_awready;
  input [0:0]ctrl_awvalid;
  input [0:0]ctrl_bready;
  output [1:0]ctrl_bresp;
  output [0:0]ctrl_bvalid;
  output [31:0]ctrl_rdata;
  input [0:0]ctrl_rready;
  output [1:0]ctrl_rresp;
  output [0:0]ctrl_rvalid;
  input [31:0]ctrl_wdata;
  output [0:0]ctrl_wready;
  input [3:0]ctrl_wstrb;
  input [0:0]ctrl_wvalid;
  input ext_reset_in;
  output [0:0]gpio_io_o;
  output ip2intc_irpt;
  output irq;
  output locked;
  output overflow;
  output [0:0]peripheral_aresetn;
  output [0:0]peripheral_reset;
  input s00_axi_aclk;
  input [31:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  output [0:0]s00_axi_arready;
  input [0:0]s00_axi_arvalid;
  input [31:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  output [0:0]s00_axi_awready;
  input [0:0]s00_axi_awvalid;
  input [0:0]s00_axi_bready;
  output [1:0]s00_axi_bresp;
  output [0:0]s00_axi_bvalid;
  output [31:0]s00_axi_rdata;
  input [0:0]s00_axi_rready;
  output [1:0]s00_axi_rresp;
  output [0:0]s00_axi_rvalid;
  input [31:0]s00_axi_wdata;
  output [0:0]s00_axi_wready;
  input [3:0]s00_axi_wstrb;
  input [0:0]s00_axi_wvalid;
  input [0:0]s_axi_aresetn;
  input slowest_sync_clk;
  output [31:0]status;
  output underflow;
  input [23:0]video_in_tdata;
  input video_in_tlast;
  output video_in_tready;
  input video_in_tuser;
  input video_in_tvalid;

  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire [2:0]Conn1_DATA_N;
  wire [2:0]Conn1_DATA_P;
  wire [31:0]Conn2_ARADDR;
  wire Conn2_ARREADY;
  wire [0:0]Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire Conn2_AWREADY;
  wire [0:0]Conn2_AWVALID;
  wire [0:0]Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire [0:0]Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire [0:0]Conn2_WVALID;
  wire Net;
  wire [0:0]Net1;
  wire aclk_1;
  wire aux_reset_in_1;
  wire axi_dynclk_0_LOCKED_O;
  wire axi_dynclk_0_PXL_CLK_5X_O;
  wire axi_dynclk_0_PXL_CLK_O;
  wire ext_reset_in_1;
  wire [0:0]hdmi_out_hpd_video_gpio_io_o;
  wire hdmi_out_hpd_video_ip2intc_irpt;
  wire locked;
  wire overflow;
  wire [0:0]proc_sys_reset_pixelclk_peripheral_aresetn;
  wire [0:0]proc_sys_reset_pixelclk_peripheral_reset;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_ARADDR;
  wire processing_system7_0_axi_periph_M06_AXI_ARREADY;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_AWADDR;
  wire processing_system7_0_axi_periph_M06_AXI_AWREADY;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_AWVALID;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M06_AXI_BRESP;
  wire processing_system7_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_RDATA;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M06_AXI_RRESP;
  wire processing_system7_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_WDATA;
  wire processing_system7_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M06_AXI_WSTRB;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_ARADDR;
  wire [2:0]processing_system7_0_axi_periph_M08_AXI_ARPROT;
  wire processing_system7_0_axi_periph_M08_AXI_ARREADY;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_AWADDR;
  wire [2:0]processing_system7_0_axi_periph_M08_AXI_AWPROT;
  wire processing_system7_0_axi_periph_M08_AXI_AWREADY;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_AWVALID;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M08_AXI_BRESP;
  wire processing_system7_0_axi_periph_M08_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_RDATA;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M08_AXI_RRESP;
  wire processing_system7_0_axi_periph_M08_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_WDATA;
  wire processing_system7_0_axi_periph_M08_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M08_AXI_WSTRB;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_WVALID;
  wire slowest_sync_clk_1;
  wire [31:0]status;
  wire underflow;
  wire v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO;
  wire [23:0]v_axi4s_vid_out_0_vid_io_out_DATA;
  wire v_axi4s_vid_out_0_vid_io_out_HSYNC;
  wire v_axi4s_vid_out_0_vid_io_out_VSYNC;
  wire v_tc_0_irq;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;
  wire [23:0]video_in_1_TDATA;
  wire video_in_1_TLAST;
  wire video_in_1_TREADY;
  wire video_in_1_TUSER;
  wire video_in_1_TVALID;

  assign Conn2_ARADDR = ctrl_araddr[31:0];
  assign Conn2_ARVALID = ctrl_arvalid[0];
  assign Conn2_AWADDR = ctrl_awaddr[31:0];
  assign Conn2_AWVALID = ctrl_awvalid[0];
  assign Conn2_BREADY = ctrl_bready[0];
  assign Conn2_RREADY = ctrl_rready[0];
  assign Conn2_WDATA = ctrl_wdata[31:0];
  assign Conn2_WSTRB = ctrl_wstrb[3:0];
  assign Conn2_WVALID = ctrl_wvalid[0];
  assign Net = s00_axi_aclk;
  assign Net1 = s_axi_aresetn[0];
  assign S_AXI_arready[0] = processing_system7_0_axi_periph_M06_AXI_ARREADY;
  assign S_AXI_awready[0] = processing_system7_0_axi_periph_M06_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = processing_system7_0_axi_periph_M06_AXI_BRESP;
  assign S_AXI_bvalid[0] = processing_system7_0_axi_periph_M06_AXI_BVALID;
  assign S_AXI_rdata[31:0] = processing_system7_0_axi_periph_M06_AXI_RDATA;
  assign S_AXI_rresp[1:0] = processing_system7_0_axi_periph_M06_AXI_RRESP;
  assign S_AXI_rvalid[0] = processing_system7_0_axi_periph_M06_AXI_RVALID;
  assign S_AXI_wready[0] = processing_system7_0_axi_periph_M06_AXI_WREADY;
  assign TMDS_clk_n = Conn1_CLK_N;
  assign TMDS_clk_p = Conn1_CLK_P;
  assign TMDS_data_n[2:0] = Conn1_DATA_N;
  assign TMDS_data_p[2:0] = Conn1_DATA_P;
  assign aclk_1 = aclk;
  assign aux_reset_in_1 = aux_reset_in;
  assign ctrl_arready[0] = Conn2_ARREADY;
  assign ctrl_awready[0] = Conn2_AWREADY;
  assign ctrl_bresp[1:0] = Conn2_BRESP;
  assign ctrl_bvalid[0] = Conn2_BVALID;
  assign ctrl_rdata[31:0] = Conn2_RDATA;
  assign ctrl_rresp[1:0] = Conn2_RRESP;
  assign ctrl_rvalid[0] = Conn2_RVALID;
  assign ctrl_wready[0] = Conn2_WREADY;
  assign ext_reset_in_1 = ext_reset_in;
  assign gpio_io_o[0] = hdmi_out_hpd_video_gpio_io_o;
  assign ip2intc_irpt = hdmi_out_hpd_video_ip2intc_irpt;
  assign irq = v_tc_0_irq;
  assign peripheral_aresetn[0] = proc_sys_reset_pixelclk_peripheral_aresetn;
  assign peripheral_reset[0] = proc_sys_reset_pixelclk_peripheral_reset;
  assign processing_system7_0_axi_periph_M06_AXI_ARADDR = S_AXI_araddr[31:0];
  assign processing_system7_0_axi_periph_M06_AXI_ARVALID = S_AXI_arvalid[0];
  assign processing_system7_0_axi_periph_M06_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign processing_system7_0_axi_periph_M06_AXI_AWVALID = S_AXI_awvalid[0];
  assign processing_system7_0_axi_periph_M06_AXI_BREADY = S_AXI_bready[0];
  assign processing_system7_0_axi_periph_M06_AXI_RREADY = S_AXI_rready[0];
  assign processing_system7_0_axi_periph_M06_AXI_WDATA = S_AXI_wdata[31:0];
  assign processing_system7_0_axi_periph_M06_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign processing_system7_0_axi_periph_M06_AXI_WVALID = S_AXI_wvalid[0];
  assign processing_system7_0_axi_periph_M08_AXI_ARADDR = s00_axi_araddr[31:0];
  assign processing_system7_0_axi_periph_M08_AXI_ARPROT = s00_axi_arprot[2:0];
  assign processing_system7_0_axi_periph_M08_AXI_ARVALID = s00_axi_arvalid[0];
  assign processing_system7_0_axi_periph_M08_AXI_AWADDR = s00_axi_awaddr[31:0];
  assign processing_system7_0_axi_periph_M08_AXI_AWPROT = s00_axi_awprot[2:0];
  assign processing_system7_0_axi_periph_M08_AXI_AWVALID = s00_axi_awvalid[0];
  assign processing_system7_0_axi_periph_M08_AXI_BREADY = s00_axi_bready[0];
  assign processing_system7_0_axi_periph_M08_AXI_RREADY = s00_axi_rready[0];
  assign processing_system7_0_axi_periph_M08_AXI_WDATA = s00_axi_wdata[31:0];
  assign processing_system7_0_axi_periph_M08_AXI_WSTRB = s00_axi_wstrb[3:0];
  assign processing_system7_0_axi_periph_M08_AXI_WVALID = s00_axi_wvalid[0];
  assign s00_axi_arready[0] = processing_system7_0_axi_periph_M08_AXI_ARREADY;
  assign s00_axi_awready[0] = processing_system7_0_axi_periph_M08_AXI_AWREADY;
  assign s00_axi_bresp[1:0] = processing_system7_0_axi_periph_M08_AXI_BRESP;
  assign s00_axi_bvalid[0] = processing_system7_0_axi_periph_M08_AXI_BVALID;
  assign s00_axi_rdata[31:0] = processing_system7_0_axi_periph_M08_AXI_RDATA;
  assign s00_axi_rresp[1:0] = processing_system7_0_axi_periph_M08_AXI_RRESP;
  assign s00_axi_rvalid[0] = processing_system7_0_axi_periph_M08_AXI_RVALID;
  assign s00_axi_wready[0] = processing_system7_0_axi_periph_M08_AXI_WREADY;
  assign slowest_sync_clk_1 = slowest_sync_clk;
  assign video_in_1_TDATA = video_in_tdata[23:0];
  assign video_in_1_TLAST = video_in_tlast;
  assign video_in_1_TUSER = video_in_tuser;
  assign video_in_1_TVALID = video_in_tvalid;
  assign video_in_tready = video_in_1_TREADY;
  system_axi_dynclk_0 axi_dynclk
       (.LOCKED_O(axi_dynclk_0_LOCKED_O),
        .PXL_CLK_5X_O(axi_dynclk_0_PXL_CLK_5X_O),
        .PXL_CLK_O(axi_dynclk_0_PXL_CLK_O),
        .REF_CLK_I(Net),
        .s00_axi_aclk(Net),
        .s00_axi_araddr(processing_system7_0_axi_periph_M08_AXI_ARADDR[4:0]),
        .s00_axi_aresetn(Net1),
        .s00_axi_arprot(processing_system7_0_axi_periph_M08_AXI_ARPROT),
        .s00_axi_arready(processing_system7_0_axi_periph_M08_AXI_ARREADY),
        .s00_axi_arvalid(processing_system7_0_axi_periph_M08_AXI_ARVALID),
        .s00_axi_awaddr(processing_system7_0_axi_periph_M08_AXI_AWADDR[4:0]),
        .s00_axi_awprot(processing_system7_0_axi_periph_M08_AXI_AWPROT),
        .s00_axi_awready(processing_system7_0_axi_periph_M08_AXI_AWREADY),
        .s00_axi_awvalid(processing_system7_0_axi_periph_M08_AXI_AWVALID),
        .s00_axi_bready(processing_system7_0_axi_periph_M08_AXI_BREADY),
        .s00_axi_bresp(processing_system7_0_axi_periph_M08_AXI_BRESP),
        .s00_axi_bvalid(processing_system7_0_axi_periph_M08_AXI_BVALID),
        .s00_axi_rdata(processing_system7_0_axi_periph_M08_AXI_RDATA),
        .s00_axi_rready(processing_system7_0_axi_periph_M08_AXI_RREADY),
        .s00_axi_rresp(processing_system7_0_axi_periph_M08_AXI_RRESP),
        .s00_axi_rvalid(processing_system7_0_axi_periph_M08_AXI_RVALID),
        .s00_axi_wdata(processing_system7_0_axi_periph_M08_AXI_WDATA),
        .s00_axi_wready(processing_system7_0_axi_periph_M08_AXI_WREADY),
        .s00_axi_wstrb(processing_system7_0_axi_periph_M08_AXI_WSTRB),
        .s00_axi_wvalid(processing_system7_0_axi_periph_M08_AXI_WVALID));
  system_hdmi_out_hpd_video_0 hdmi_out_hpd_video
       (.gpio_io_o(hdmi_out_hpd_video_gpio_io_o),
        .ip2intc_irpt(hdmi_out_hpd_video_ip2intc_irpt),
        .s_axi_aclk(Net),
        .s_axi_araddr(processing_system7_0_axi_periph_M06_AXI_ARADDR[8:0]),
        .s_axi_aresetn(Net1),
        .s_axi_arready(processing_system7_0_axi_periph_M06_AXI_ARREADY),
        .s_axi_arvalid(processing_system7_0_axi_periph_M06_AXI_ARVALID),
        .s_axi_awaddr(processing_system7_0_axi_periph_M06_AXI_AWADDR[8:0]),
        .s_axi_awready(processing_system7_0_axi_periph_M06_AXI_AWREADY),
        .s_axi_awvalid(processing_system7_0_axi_periph_M06_AXI_AWVALID),
        .s_axi_bready(processing_system7_0_axi_periph_M06_AXI_BREADY),
        .s_axi_bresp(processing_system7_0_axi_periph_M06_AXI_BRESP),
        .s_axi_bvalid(processing_system7_0_axi_periph_M06_AXI_BVALID),
        .s_axi_rdata(processing_system7_0_axi_periph_M06_AXI_RDATA),
        .s_axi_rready(processing_system7_0_axi_periph_M06_AXI_RREADY),
        .s_axi_rresp(processing_system7_0_axi_periph_M06_AXI_RRESP),
        .s_axi_rvalid(processing_system7_0_axi_periph_M06_AXI_RVALID),
        .s_axi_wdata(processing_system7_0_axi_periph_M06_AXI_WDATA),
        .s_axi_wready(processing_system7_0_axi_periph_M06_AXI_WREADY),
        .s_axi_wstrb(processing_system7_0_axi_periph_M06_AXI_WSTRB),
        .s_axi_wvalid(processing_system7_0_axi_periph_M06_AXI_WVALID));
  system_proc_sys_reset_pixelclk_0 proc_sys_reset_pixelclk
       (.aux_reset_in(aux_reset_in_1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_pixelclk_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_pixelclk_peripheral_reset),
        .slowest_sync_clk(slowest_sync_clk_1));
  system_rgb2dvi_0_0 rgb2dvi_0
       (.PixelClk(axi_dynclk_0_PXL_CLK_O),
        .SerialClk(axi_dynclk_0_PXL_CLK_5X_O),
        .TMDS_Clk_n(Conn1_CLK_N),
        .TMDS_Clk_p(Conn1_CLK_P),
        .TMDS_Data_n(Conn1_DATA_N),
        .TMDS_Data_p(Conn1_DATA_P),
        .aRst_n(axi_dynclk_0_LOCKED_O),
        .vid_pData(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_pHSync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_pVDE(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_pVSync(v_axi4s_vid_out_0_vid_io_out_VSYNC));
  system_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(aclk_1),
        .aclken(1'b1),
        .aresetn(1'b1),
        .fid(1'b0),
        .locked(locked),
        .overflow(overflow),
        .s_axis_video_tdata(video_in_1_TDATA),
        .s_axis_video_tlast(video_in_1_TLAST),
        .s_axis_video_tready(video_in_1_TREADY),
        .s_axis_video_tuser(video_in_1_TUSER),
        .s_axis_video_tvalid(video_in_1_TVALID),
        .status(status),
        .underflow(underflow),
        .vid_active_video(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_data(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_hsync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_io_out_ce(1'b1),
        .vid_io_out_clk(axi_dynclk_0_PXL_CLK_O),
        .vid_io_out_reset(1'b0),
        .vid_vsync(v_axi4s_vid_out_0_vid_io_out_VSYNC),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  system_vtc_out_0 vtc_out
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(axi_dynclk_0_PXL_CLK_O),
        .clken(1'b1),
        .fsync_in(1'b0),
        .gen_clken(1'b1),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .irq(v_tc_0_irq),
        .resetn(1'b1),
        .s_axi_aclk(Net),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(Conn2_ARADDR[8:0]),
        .s_axi_aresetn(Net1),
        .s_axi_arready(Conn2_ARREADY),
        .s_axi_arvalid(Conn2_ARVALID),
        .s_axi_awaddr(Conn2_AWADDR[8:0]),
        .s_axi_awready(Conn2_AWREADY),
        .s_axi_awvalid(Conn2_AWVALID),
        .s_axi_bready(Conn2_BREADY),
        .s_axi_bresp(Conn2_BRESP),
        .s_axi_bvalid(Conn2_BVALID),
        .s_axi_rdata(Conn2_RDATA),
        .s_axi_rready(Conn2_RREADY),
        .s_axi_rresp(Conn2_RRESP),
        .s_axi_rvalid(Conn2_RVALID),
        .s_axi_wdata(Conn2_WDATA),
        .s_axi_wready(Conn2_WREADY),
        .s_axi_wstrb(Conn2_WSTRB),
        .s_axi_wvalid(Conn2_WVALID),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
endmodule

module hdmi_in_imp_NQ29ND
   (DDC_scl_i,
    DDC_scl_o,
    DDC_scl_t,
    DDC_sda_i,
    DDC_sda_o,
    DDC_sda_t,
    PixelClk,
    RefClk,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    TMDS_clk_n,
    TMDS_clk_p,
    TMDS_data_n,
    TMDS_data_p,
    aPixelClkLckd,
    ap_clk,
    ap_rst_n,
    ap_rst_n_control,
    control,
    ctrl_araddr,
    ctrl_arready,
    ctrl_arvalid,
    ctrl_awaddr,
    ctrl_awready,
    ctrl_awvalid,
    ctrl_bready,
    ctrl_bresp,
    ctrl_bvalid,
    ctrl_rdata,
    ctrl_rready,
    ctrl_rresp,
    ctrl_rvalid,
    ctrl_wdata,
    ctrl_wready,
    ctrl_wstrb,
    ctrl_wvalid,
    gpio_io_o,
    ip2intc_irpt,
    irq,
    out_stream_tdata,
    out_stream_tlast,
    out_stream_tready,
    out_stream_tuser,
    out_stream_tvalid,
    resetn,
    s_axi_AXILiteS1_araddr,
    s_axi_AXILiteS1_arready,
    s_axi_AXILiteS1_arvalid,
    s_axi_AXILiteS1_awaddr,
    s_axi_AXILiteS1_awready,
    s_axi_AXILiteS1_awvalid,
    s_axi_AXILiteS1_bready,
    s_axi_AXILiteS1_bresp,
    s_axi_AXILiteS1_bvalid,
    s_axi_AXILiteS1_rdata,
    s_axi_AXILiteS1_rready,
    s_axi_AXILiteS1_rresp,
    s_axi_AXILiteS1_rvalid,
    s_axi_AXILiteS1_wdata,
    s_axi_AXILiteS1_wready,
    s_axi_AXILiteS1_wstrb,
    s_axi_AXILiteS1_wvalid,
    s_axi_AXILiteS2_araddr,
    s_axi_AXILiteS2_arready,
    s_axi_AXILiteS2_arvalid,
    s_axi_AXILiteS2_awaddr,
    s_axi_AXILiteS2_awready,
    s_axi_AXILiteS2_awvalid,
    s_axi_AXILiteS2_bready,
    s_axi_AXILiteS2_bresp,
    s_axi_AXILiteS2_bvalid,
    s_axi_AXILiteS2_rdata,
    s_axi_AXILiteS2_rready,
    s_axi_AXILiteS2_rresp,
    s_axi_AXILiteS2_rvalid,
    s_axi_AXILiteS2_wdata,
    s_axi_AXILiteS2_wready,
    s_axi_AXILiteS2_wstrb,
    s_axi_AXILiteS2_wvalid,
    s_axi_AXILiteS_araddr,
    s_axi_AXILiteS_arready,
    s_axi_AXILiteS_arvalid,
    s_axi_AXILiteS_awaddr,
    s_axi_AXILiteS_awready,
    s_axi_AXILiteS_awvalid,
    s_axi_AXILiteS_bready,
    s_axi_AXILiteS_bresp,
    s_axi_AXILiteS_bvalid,
    s_axi_AXILiteS_rdata,
    s_axi_AXILiteS_rready,
    s_axi_AXILiteS_rresp,
    s_axi_AXILiteS_rvalid,
    s_axi_AXILiteS_wdata,
    s_axi_AXILiteS_wready,
    s_axi_AXILiteS_wstrb,
    s_axi_AXILiteS_wvalid,
    vid_io_in_reset);
  input DDC_scl_i;
  output DDC_scl_o;
  output DDC_scl_t;
  input DDC_sda_i;
  output DDC_sda_o;
  output DDC_sda_t;
  output PixelClk;
  input RefClk;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input TMDS_clk_n;
  input TMDS_clk_p;
  input [2:0]TMDS_data_n;
  input [2:0]TMDS_data_p;
  output aPixelClkLckd;
  input ap_clk;
  input [0:0]ap_rst_n;
  input [0:0]ap_rst_n_control;
  input control;
  input [31:0]ctrl_araddr;
  output [0:0]ctrl_arready;
  input [0:0]ctrl_arvalid;
  input [31:0]ctrl_awaddr;
  output [0:0]ctrl_awready;
  input [0:0]ctrl_awvalid;
  input [0:0]ctrl_bready;
  output [1:0]ctrl_bresp;
  output [0:0]ctrl_bvalid;
  output [31:0]ctrl_rdata;
  input [0:0]ctrl_rready;
  output [1:0]ctrl_rresp;
  output [0:0]ctrl_rvalid;
  input [31:0]ctrl_wdata;
  output [0:0]ctrl_wready;
  input [3:0]ctrl_wstrb;
  input [0:0]ctrl_wvalid;
  output [0:0]gpio_io_o;
  output ip2intc_irpt;
  output irq;
  output [31:0]out_stream_tdata;
  output out_stream_tlast;
  input out_stream_tready;
  output [0:0]out_stream_tuser;
  output out_stream_tvalid;
  input [0:0]resetn;
  input [4:0]s_axi_AXILiteS1_araddr;
  output s_axi_AXILiteS1_arready;
  input s_axi_AXILiteS1_arvalid;
  input [4:0]s_axi_AXILiteS1_awaddr;
  output s_axi_AXILiteS1_awready;
  input s_axi_AXILiteS1_awvalid;
  input s_axi_AXILiteS1_bready;
  output [1:0]s_axi_AXILiteS1_bresp;
  output s_axi_AXILiteS1_bvalid;
  output [31:0]s_axi_AXILiteS1_rdata;
  input s_axi_AXILiteS1_rready;
  output [1:0]s_axi_AXILiteS1_rresp;
  output s_axi_AXILiteS1_rvalid;
  input [31:0]s_axi_AXILiteS1_wdata;
  output s_axi_AXILiteS1_wready;
  input [3:0]s_axi_AXILiteS1_wstrb;
  input s_axi_AXILiteS1_wvalid;
  input [6:0]s_axi_AXILiteS2_araddr;
  output s_axi_AXILiteS2_arready;
  input s_axi_AXILiteS2_arvalid;
  input [6:0]s_axi_AXILiteS2_awaddr;
  output s_axi_AXILiteS2_awready;
  input s_axi_AXILiteS2_awvalid;
  input s_axi_AXILiteS2_bready;
  output [1:0]s_axi_AXILiteS2_bresp;
  output s_axi_AXILiteS2_bvalid;
  output [31:0]s_axi_AXILiteS2_rdata;
  input s_axi_AXILiteS2_rready;
  output [1:0]s_axi_AXILiteS2_rresp;
  output s_axi_AXILiteS2_rvalid;
  input [31:0]s_axi_AXILiteS2_wdata;
  output s_axi_AXILiteS2_wready;
  input [3:0]s_axi_AXILiteS2_wstrb;
  input s_axi_AXILiteS2_wvalid;
  input [6:0]s_axi_AXILiteS_araddr;
  output s_axi_AXILiteS_arready;
  input s_axi_AXILiteS_arvalid;
  input [6:0]s_axi_AXILiteS_awaddr;
  output s_axi_AXILiteS_awready;
  input s_axi_AXILiteS_awvalid;
  input s_axi_AXILiteS_bready;
  output [1:0]s_axi_AXILiteS_bresp;
  output s_axi_AXILiteS_bvalid;
  output [31:0]s_axi_AXILiteS_rdata;
  input s_axi_AXILiteS_rready;
  output [1:0]s_axi_AXILiteS_rresp;
  output s_axi_AXILiteS_rvalid;
  input [31:0]s_axi_AXILiteS_wdata;
  output s_axi_AXILiteS_wready;
  input [3:0]s_axi_AXILiteS_wstrb;
  input s_axi_AXILiteS_wvalid;
  input [0:0]vid_io_in_reset;

  wire [31:0]Conn3_ARADDR;
  wire [0:0]Conn3_ARREADY;
  wire [0:0]Conn3_ARVALID;
  wire [31:0]Conn3_AWADDR;
  wire [0:0]Conn3_AWREADY;
  wire [0:0]Conn3_AWVALID;
  wire [0:0]Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire [0:0]Conn3_BVALID;
  wire [31:0]Conn3_RDATA;
  wire [0:0]Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire [0:0]Conn3_RVALID;
  wire [31:0]Conn3_WDATA;
  wire [0:0]Conn3_WREADY;
  wire [3:0]Conn3_WSTRB;
  wire [0:0]Conn3_WVALID;
  wire [4:0]Conn5_ARADDR;
  wire Conn5_ARREADY;
  wire Conn5_ARVALID;
  wire [4:0]Conn5_AWADDR;
  wire Conn5_AWREADY;
  wire Conn5_AWVALID;
  wire Conn5_BREADY;
  wire [1:0]Conn5_BRESP;
  wire Conn5_BVALID;
  wire [31:0]Conn5_RDATA;
  wire Conn5_RREADY;
  wire [1:0]Conn5_RRESP;
  wire Conn5_RVALID;
  wire [31:0]Conn5_WDATA;
  wire Conn5_WREADY;
  wire [3:0]Conn5_WSTRB;
  wire Conn5_WVALID;
  wire [6:0]Conn6_ARADDR;
  wire Conn6_ARREADY;
  wire Conn6_ARVALID;
  wire [6:0]Conn6_AWADDR;
  wire Conn6_AWREADY;
  wire Conn6_AWVALID;
  wire Conn6_BREADY;
  wire [1:0]Conn6_BRESP;
  wire Conn6_BVALID;
  wire [31:0]Conn6_RDATA;
  wire Conn6_RREADY;
  wire [1:0]Conn6_RRESP;
  wire Conn6_RVALID;
  wire [31:0]Conn6_WDATA;
  wire Conn6_WREADY;
  wire [3:0]Conn6_WSTRB;
  wire Conn6_WVALID;
  wire Net;
  wire [0:0]Net1;
  wire RefClk_1;
  wire TMDS_1_CLK_N;
  wire TMDS_1_CLK_P;
  wire [2:0]TMDS_1_DATA_N;
  wire [2:0]TMDS_1_DATA_P;
  wire aclk_1;
  wire [0:0]axi_gpio_video_gpio_io_o;
  wire axi_gpio_video_ip2intc_irpt;
  wire [23:0]axis_register_slice_0_M_AXIS_TDATA;
  wire axis_register_slice_0_M_AXIS_TLAST;
  wire axis_register_slice_0_M_AXIS_TREADY;
  wire [0:0]axis_register_slice_0_M_AXIS_TUSER;
  wire axis_register_slice_0_M_AXIS_TVALID;
  wire axis_register_slice_0_s_axis_tready;
  wire [23:0]color_convert_out_data_TDATA;
  wire [0:0]color_convert_out_data_TLAST;
  wire [0:0]color_convert_out_data_TUSER;
  wire color_convert_out_data_TVALID;
  wire dvi2rgb_0_PixelClk;
  wire dvi2rgb_0_aPixelClkLckd;
  wire filter_0_input_r_TREADY;
  wire [23:0]filter_0_output_r_TDATA;
  wire [0:0]filter_0_output_r_TLAST;
  wire [0:0]filter_0_output_r_TUSER;
  wire filter_0_output_r_TVALID;
  wire frontend_DDC_SCL_I;
  wire frontend_DDC_SCL_O;
  wire frontend_DDC_SCL_T;
  wire frontend_DDC_SDA_I;
  wire frontend_DDC_SDA_O;
  wire frontend_DDC_SDA_T;
  wire [23:0]hdmi_in_video_out_TDATA;
  wire hdmi_in_video_out_TLAST;
  wire hdmi_in_video_out_TREADY;
  wire hdmi_in_video_out_TUSER;
  wire hdmi_in_video_out_TVALID;
  wire [31:0]in_pixelformat_M00_AXIS_TDATA;
  wire [0:0]in_pixelformat_M00_AXIS_TLAST;
  wire in_pixelformat_M00_AXIS_TREADY;
  wire [0:0]in_pixelformat_M00_AXIS_TUSER;
  wire in_pixelformat_M00_AXIS_TVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_ARADDR;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_ARREADY;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_AWADDR;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_AWREADY;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_AWVALID;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M07_AXI_BRESP;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_RDATA;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M07_AXI_RRESP;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_WDATA;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M07_AXI_WSTRB;
  wire [0:0]processing_system7_0_axi_periph_M07_AXI_WVALID;
  wire [0:0]resetn_1;
  wire [0:0]rst_processing_system7_0_100M_peripheral_aresetn;
  wire [6:0]s_axi_AXILiteS2_1_ARADDR;
  wire s_axi_AXILiteS2_1_ARREADY;
  wire s_axi_AXILiteS2_1_ARVALID;
  wire [6:0]s_axi_AXILiteS2_1_AWADDR;
  wire s_axi_AXILiteS2_1_AWREADY;
  wire s_axi_AXILiteS2_1_AWVALID;
  wire s_axi_AXILiteS2_1_BREADY;
  wire [1:0]s_axi_AXILiteS2_1_BRESP;
  wire s_axi_AXILiteS2_1_BVALID;
  wire [31:0]s_axi_AXILiteS2_1_RDATA;
  wire s_axi_AXILiteS2_1_RREADY;
  wire [1:0]s_axi_AXILiteS2_1_RRESP;
  wire s_axi_AXILiteS2_1_RVALID;
  wire [31:0]s_axi_AXILiteS2_1_WDATA;
  wire s_axi_AXILiteS2_1_WREADY;
  wire [3:0]s_axi_AXILiteS2_1_WSTRB;
  wire s_axi_AXILiteS2_1_WVALID;
  wire v_tc_1_irq;
  wire [0:0]vid_io_in_reset_1;

  assign Conn3_ARADDR = ctrl_araddr[31:0];
  assign Conn3_ARVALID = ctrl_arvalid[0];
  assign Conn3_AWADDR = ctrl_awaddr[31:0];
  assign Conn3_AWVALID = ctrl_awvalid[0];
  assign Conn3_BREADY = ctrl_bready[0];
  assign Conn3_RREADY = ctrl_rready[0];
  assign Conn3_WDATA = ctrl_wdata[31:0];
  assign Conn3_WSTRB = ctrl_wstrb[3:0];
  assign Conn3_WVALID = ctrl_wvalid[0];
  assign Conn5_ARADDR = s_axi_AXILiteS1_araddr[4:0];
  assign Conn5_ARVALID = s_axi_AXILiteS1_arvalid;
  assign Conn5_AWADDR = s_axi_AXILiteS1_awaddr[4:0];
  assign Conn5_AWVALID = s_axi_AXILiteS1_awvalid;
  assign Conn5_BREADY = s_axi_AXILiteS1_bready;
  assign Conn5_RREADY = s_axi_AXILiteS1_rready;
  assign Conn5_WDATA = s_axi_AXILiteS1_wdata[31:0];
  assign Conn5_WSTRB = s_axi_AXILiteS1_wstrb[3:0];
  assign Conn5_WVALID = s_axi_AXILiteS1_wvalid;
  assign Conn6_ARADDR = s_axi_AXILiteS_araddr[6:0];
  assign Conn6_ARVALID = s_axi_AXILiteS_arvalid;
  assign Conn6_AWADDR = s_axi_AXILiteS_awaddr[6:0];
  assign Conn6_AWVALID = s_axi_AXILiteS_awvalid;
  assign Conn6_BREADY = s_axi_AXILiteS_bready;
  assign Conn6_RREADY = s_axi_AXILiteS_rready;
  assign Conn6_WDATA = s_axi_AXILiteS_wdata[31:0];
  assign Conn6_WSTRB = s_axi_AXILiteS_wstrb[3:0];
  assign Conn6_WVALID = s_axi_AXILiteS_wvalid;
  assign DDC_scl_o = frontend_DDC_SCL_O;
  assign DDC_scl_t = frontend_DDC_SCL_T;
  assign DDC_sda_o = frontend_DDC_SDA_O;
  assign DDC_sda_t = frontend_DDC_SDA_T;
  assign Net = control;
  assign Net1 = ap_rst_n_control[0];
  assign PixelClk = dvi2rgb_0_PixelClk;
  assign RefClk_1 = RefClk;
  assign S_AXI_arready[0] = processing_system7_0_axi_periph_M07_AXI_ARREADY;
  assign S_AXI_awready[0] = processing_system7_0_axi_periph_M07_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = processing_system7_0_axi_periph_M07_AXI_BRESP;
  assign S_AXI_bvalid[0] = processing_system7_0_axi_periph_M07_AXI_BVALID;
  assign S_AXI_rdata[31:0] = processing_system7_0_axi_periph_M07_AXI_RDATA;
  assign S_AXI_rresp[1:0] = processing_system7_0_axi_periph_M07_AXI_RRESP;
  assign S_AXI_rvalid[0] = processing_system7_0_axi_periph_M07_AXI_RVALID;
  assign S_AXI_wready[0] = processing_system7_0_axi_periph_M07_AXI_WREADY;
  assign TMDS_1_CLK_N = TMDS_clk_n;
  assign TMDS_1_CLK_P = TMDS_clk_p;
  assign TMDS_1_DATA_N = TMDS_data_n[2:0];
  assign TMDS_1_DATA_P = TMDS_data_p[2:0];
  assign aPixelClkLckd = dvi2rgb_0_aPixelClkLckd;
  assign aclk_1 = ap_clk;
  assign ctrl_arready[0] = Conn3_ARREADY;
  assign ctrl_awready[0] = Conn3_AWREADY;
  assign ctrl_bresp[1:0] = Conn3_BRESP;
  assign ctrl_bvalid[0] = Conn3_BVALID;
  assign ctrl_rdata[31:0] = Conn3_RDATA;
  assign ctrl_rresp[1:0] = Conn3_RRESP;
  assign ctrl_rvalid[0] = Conn3_RVALID;
  assign ctrl_wready[0] = Conn3_WREADY;
  assign frontend_DDC_SCL_I = DDC_scl_i;
  assign frontend_DDC_SDA_I = DDC_sda_i;
  assign gpio_io_o[0] = axi_gpio_video_gpio_io_o;
  assign in_pixelformat_M00_AXIS_TREADY = out_stream_tready;
  assign ip2intc_irpt = axi_gpio_video_ip2intc_irpt;
  assign irq = v_tc_1_irq;
  assign out_stream_tdata[31:0] = in_pixelformat_M00_AXIS_TDATA;
  assign out_stream_tlast = in_pixelformat_M00_AXIS_TLAST;
  assign out_stream_tuser[0] = in_pixelformat_M00_AXIS_TUSER;
  assign out_stream_tvalid = in_pixelformat_M00_AXIS_TVALID;
  assign processing_system7_0_axi_periph_M07_AXI_ARADDR = S_AXI_araddr[31:0];
  assign processing_system7_0_axi_periph_M07_AXI_ARVALID = S_AXI_arvalid[0];
  assign processing_system7_0_axi_periph_M07_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign processing_system7_0_axi_periph_M07_AXI_AWVALID = S_AXI_awvalid[0];
  assign processing_system7_0_axi_periph_M07_AXI_BREADY = S_AXI_bready[0];
  assign processing_system7_0_axi_periph_M07_AXI_RREADY = S_AXI_rready[0];
  assign processing_system7_0_axi_periph_M07_AXI_WDATA = S_AXI_wdata[31:0];
  assign processing_system7_0_axi_periph_M07_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign processing_system7_0_axi_periph_M07_AXI_WVALID = S_AXI_wvalid[0];
  assign resetn_1 = resetn[0];
  assign rst_processing_system7_0_100M_peripheral_aresetn = ap_rst_n[0];
  assign s_axi_AXILiteS1_arready = Conn5_ARREADY;
  assign s_axi_AXILiteS1_awready = Conn5_AWREADY;
  assign s_axi_AXILiteS1_bresp[1:0] = Conn5_BRESP;
  assign s_axi_AXILiteS1_bvalid = Conn5_BVALID;
  assign s_axi_AXILiteS1_rdata[31:0] = Conn5_RDATA;
  assign s_axi_AXILiteS1_rresp[1:0] = Conn5_RRESP;
  assign s_axi_AXILiteS1_rvalid = Conn5_RVALID;
  assign s_axi_AXILiteS1_wready = Conn5_WREADY;
  assign s_axi_AXILiteS2_1_ARADDR = s_axi_AXILiteS2_araddr[6:0];
  assign s_axi_AXILiteS2_1_ARVALID = s_axi_AXILiteS2_arvalid;
  assign s_axi_AXILiteS2_1_AWADDR = s_axi_AXILiteS2_awaddr[6:0];
  assign s_axi_AXILiteS2_1_AWVALID = s_axi_AXILiteS2_awvalid;
  assign s_axi_AXILiteS2_1_BREADY = s_axi_AXILiteS2_bready;
  assign s_axi_AXILiteS2_1_RREADY = s_axi_AXILiteS2_rready;
  assign s_axi_AXILiteS2_1_WDATA = s_axi_AXILiteS2_wdata[31:0];
  assign s_axi_AXILiteS2_1_WSTRB = s_axi_AXILiteS2_wstrb[3:0];
  assign s_axi_AXILiteS2_1_WVALID = s_axi_AXILiteS2_wvalid;
  assign s_axi_AXILiteS2_arready = s_axi_AXILiteS2_1_ARREADY;
  assign s_axi_AXILiteS2_awready = s_axi_AXILiteS2_1_AWREADY;
  assign s_axi_AXILiteS2_bresp[1:0] = s_axi_AXILiteS2_1_BRESP;
  assign s_axi_AXILiteS2_bvalid = s_axi_AXILiteS2_1_BVALID;
  assign s_axi_AXILiteS2_rdata[31:0] = s_axi_AXILiteS2_1_RDATA;
  assign s_axi_AXILiteS2_rresp[1:0] = s_axi_AXILiteS2_1_RRESP;
  assign s_axi_AXILiteS2_rvalid = s_axi_AXILiteS2_1_RVALID;
  assign s_axi_AXILiteS2_wready = s_axi_AXILiteS2_1_WREADY;
  assign s_axi_AXILiteS_arready = Conn6_ARREADY;
  assign s_axi_AXILiteS_awready = Conn6_AWREADY;
  assign s_axi_AXILiteS_bresp[1:0] = Conn6_BRESP;
  assign s_axi_AXILiteS_bvalid = Conn6_BVALID;
  assign s_axi_AXILiteS_rdata[31:0] = Conn6_RDATA;
  assign s_axi_AXILiteS_rresp[1:0] = Conn6_RRESP;
  assign s_axi_AXILiteS_rvalid = Conn6_RVALID;
  assign s_axi_AXILiteS_wready = Conn6_WREADY;
  assign vid_io_in_reset_1 = vid_io_in_reset[0];
  system_axis_register_slice_0_0 axis_register_slice_0
       (.aclk(aclk_1),
        .aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .m_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .m_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_register_slice_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata(filter_0_output_r_TDATA),
        .s_axis_tlast(filter_0_output_r_TLAST),
        .s_axis_tready(axis_register_slice_0_s_axis_tready),
        .s_axis_tuser(filter_0_output_r_TUSER),
        .s_axis_tvalid(filter_0_output_r_TVALID));
  system_color_convert_0 color_convert
       (.ap_clk(aclk_1),
        .ap_rst_n(rst_processing_system7_0_100M_peripheral_aresetn),
        .ap_rst_n_control(rst_processing_system7_0_100M_peripheral_aresetn),
        .control(aclk_1),
        .in_data_TDATA(hdmi_in_video_out_TDATA),
        .in_data_TLAST(hdmi_in_video_out_TLAST),
        .in_data_TREADY(hdmi_in_video_out_TREADY),
        .in_data_TUSER(hdmi_in_video_out_TUSER),
        .in_data_TVALID(hdmi_in_video_out_TVALID),
        .out_data_TDATA(color_convert_out_data_TDATA),
        .out_data_TLAST(color_convert_out_data_TLAST),
        .out_data_TREADY(filter_0_input_r_TREADY),
        .out_data_TUSER(color_convert_out_data_TUSER),
        .out_data_TVALID(color_convert_out_data_TVALID),
        .s_axi_AXILiteS_ARADDR(Conn6_ARADDR),
        .s_axi_AXILiteS_ARREADY(Conn6_ARREADY),
        .s_axi_AXILiteS_ARVALID(Conn6_ARVALID),
        .s_axi_AXILiteS_AWADDR(Conn6_AWADDR),
        .s_axi_AXILiteS_AWREADY(Conn6_AWREADY),
        .s_axi_AXILiteS_AWVALID(Conn6_AWVALID),
        .s_axi_AXILiteS_BREADY(Conn6_BREADY),
        .s_axi_AXILiteS_BRESP(Conn6_BRESP),
        .s_axi_AXILiteS_BVALID(Conn6_BVALID),
        .s_axi_AXILiteS_RDATA(Conn6_RDATA),
        .s_axi_AXILiteS_RREADY(Conn6_RREADY),
        .s_axi_AXILiteS_RRESP(Conn6_RRESP),
        .s_axi_AXILiteS_RVALID(Conn6_RVALID),
        .s_axi_AXILiteS_WDATA(Conn6_WDATA),
        .s_axi_AXILiteS_WREADY(Conn6_WREADY),
        .s_axi_AXILiteS_WSTRB(Conn6_WSTRB),
        .s_axi_AXILiteS_WVALID(Conn6_WVALID));
  system_filter_0_0 filter_0
       (.ap_clk(aclk_1),
        .ap_rst_n(rst_processing_system7_0_100M_peripheral_aresetn),
        .input_r_TDATA(color_convert_out_data_TDATA),
        .input_r_TDEST(1'b0),
        .input_r_TID(1'b0),
        .input_r_TLAST(color_convert_out_data_TLAST),
        .input_r_TREADY(filter_0_input_r_TREADY),
        .input_r_TUSER(color_convert_out_data_TUSER),
        .input_r_TVALID(color_convert_out_data_TVALID),
        .output_r_TDATA(filter_0_output_r_TDATA),
        .output_r_TLAST(filter_0_output_r_TLAST),
        .output_r_TREADY(axis_register_slice_0_s_axis_tready),
        .output_r_TUSER(filter_0_output_r_TUSER),
        .output_r_TVALID(filter_0_output_r_TVALID),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS2_1_ARADDR),
        .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS2_1_ARREADY),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS2_1_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS2_1_AWADDR),
        .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS2_1_AWREADY),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS2_1_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS2_1_BREADY),
        .s_axi_AXILiteS_BRESP(s_axi_AXILiteS2_1_BRESP),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS2_1_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS2_1_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS2_1_RREADY),
        .s_axi_AXILiteS_RRESP(s_axi_AXILiteS2_1_RRESP),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS2_1_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS2_1_WDATA),
        .s_axi_AXILiteS_WREADY(s_axi_AXILiteS2_1_WREADY),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS2_1_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS2_1_WVALID));
  frontend_imp_1IDM840 frontend
       (.DDC_scl_i(frontend_DDC_SCL_I),
        .DDC_scl_o(frontend_DDC_SCL_O),
        .DDC_scl_t(frontend_DDC_SCL_T),
        .DDC_sda_i(frontend_DDC_SDA_I),
        .DDC_sda_o(frontend_DDC_SDA_O),
        .DDC_sda_t(frontend_DDC_SDA_T),
        .PixelClk(dvi2rgb_0_PixelClk),
        .RefClk(RefClk_1),
        .S_AXI_araddr(processing_system7_0_axi_periph_M07_AXI_ARADDR),
        .S_AXI_arready(processing_system7_0_axi_periph_M07_AXI_ARREADY),
        .S_AXI_arvalid(processing_system7_0_axi_periph_M07_AXI_ARVALID),
        .S_AXI_awaddr(processing_system7_0_axi_periph_M07_AXI_AWADDR),
        .S_AXI_awready(processing_system7_0_axi_periph_M07_AXI_AWREADY),
        .S_AXI_awvalid(processing_system7_0_axi_periph_M07_AXI_AWVALID),
        .S_AXI_bready(processing_system7_0_axi_periph_M07_AXI_BREADY),
        .S_AXI_bresp(processing_system7_0_axi_periph_M07_AXI_BRESP),
        .S_AXI_bvalid(processing_system7_0_axi_periph_M07_AXI_BVALID),
        .S_AXI_rdata(processing_system7_0_axi_periph_M07_AXI_RDATA),
        .S_AXI_rready(processing_system7_0_axi_periph_M07_AXI_RREADY),
        .S_AXI_rresp(processing_system7_0_axi_periph_M07_AXI_RRESP),
        .S_AXI_rvalid(processing_system7_0_axi_periph_M07_AXI_RVALID),
        .S_AXI_wdata(processing_system7_0_axi_periph_M07_AXI_WDATA),
        .S_AXI_wready(processing_system7_0_axi_periph_M07_AXI_WREADY),
        .S_AXI_wstrb(processing_system7_0_axi_periph_M07_AXI_WSTRB),
        .S_AXI_wvalid(processing_system7_0_axi_periph_M07_AXI_WVALID),
        .TMDS_clk_n(TMDS_1_CLK_N),
        .TMDS_clk_p(TMDS_1_CLK_P),
        .TMDS_data_n(TMDS_1_DATA_N),
        .TMDS_data_p(TMDS_1_DATA_P),
        .aPixelClkLckd(dvi2rgb_0_aPixelClkLckd),
        .aclk(aclk_1),
        .ctrl_araddr(Conn3_ARADDR),
        .ctrl_arready(Conn3_ARREADY),
        .ctrl_arvalid(Conn3_ARVALID),
        .ctrl_awaddr(Conn3_AWADDR),
        .ctrl_awready(Conn3_AWREADY),
        .ctrl_awvalid(Conn3_AWVALID),
        .ctrl_bready(Conn3_BREADY),
        .ctrl_bresp(Conn3_BRESP),
        .ctrl_bvalid(Conn3_BVALID),
        .ctrl_rdata(Conn3_RDATA),
        .ctrl_rready(Conn3_RREADY),
        .ctrl_rresp(Conn3_RRESP),
        .ctrl_rvalid(Conn3_RVALID),
        .ctrl_wdata(Conn3_WDATA),
        .ctrl_wready(Conn3_WREADY),
        .ctrl_wstrb(Conn3_WSTRB),
        .ctrl_wvalid(Conn3_WVALID),
        .gpio_io_o(axi_gpio_video_gpio_io_o),
        .ip2intc_irpt(axi_gpio_video_ip2intc_irpt),
        .irq(v_tc_1_irq),
        .resetn(resetn_1),
        .s_axi_aclk(Net),
        .s_axi_aresetn(Net1),
        .vid_io_in_reset(vid_io_in_reset_1),
        .video_out_tdata(hdmi_in_video_out_TDATA),
        .video_out_tlast(hdmi_in_video_out_TLAST),
        .video_out_tready(hdmi_in_video_out_TREADY),
        .video_out_tuser(hdmi_in_video_out_TUSER),
        .video_out_tvalid(hdmi_in_video_out_TVALID));
  system_pixel_pack_0 pixel_pack
       (.ap_clk(aclk_1),
        .ap_rst_n(rst_processing_system7_0_100M_peripheral_aresetn),
        .ap_rst_n_control(rst_processing_system7_0_100M_peripheral_aresetn),
        .control(aclk_1),
        .in_stream_TDATA(axis_register_slice_0_M_AXIS_TDATA),
        .in_stream_TLAST(axis_register_slice_0_M_AXIS_TLAST),
        .in_stream_TREADY(axis_register_slice_0_M_AXIS_TREADY),
        .in_stream_TUSER(axis_register_slice_0_M_AXIS_TUSER),
        .in_stream_TVALID(axis_register_slice_0_M_AXIS_TVALID),
        .out_stream_TDATA(in_pixelformat_M00_AXIS_TDATA),
        .out_stream_TLAST(in_pixelformat_M00_AXIS_TLAST),
        .out_stream_TREADY(in_pixelformat_M00_AXIS_TREADY),
        .out_stream_TUSER(in_pixelformat_M00_AXIS_TUSER),
        .out_stream_TVALID(in_pixelformat_M00_AXIS_TVALID),
        .s_axi_AXILiteS_ARADDR(Conn5_ARADDR),
        .s_axi_AXILiteS_ARREADY(Conn5_ARREADY),
        .s_axi_AXILiteS_ARVALID(Conn5_ARVALID),
        .s_axi_AXILiteS_AWADDR(Conn5_AWADDR),
        .s_axi_AXILiteS_AWREADY(Conn5_AWREADY),
        .s_axi_AXILiteS_AWVALID(Conn5_AWVALID),
        .s_axi_AXILiteS_BREADY(Conn5_BREADY),
        .s_axi_AXILiteS_BRESP(Conn5_BRESP),
        .s_axi_AXILiteS_BVALID(Conn5_BVALID),
        .s_axi_AXILiteS_RDATA(Conn5_RDATA),
        .s_axi_AXILiteS_RREADY(Conn5_RREADY),
        .s_axi_AXILiteS_RRESP(Conn5_RRESP),
        .s_axi_AXILiteS_RVALID(Conn5_RVALID),
        .s_axi_AXILiteS_WDATA(Conn5_WDATA),
        .s_axi_AXILiteS_WREADY(Conn5_WREADY),
        .s_axi_AXILiteS_WSTRB(Conn5_WSTRB),
        .s_axi_AXILiteS_WVALID(Conn5_WVALID));
endmodule

module hdmi_out_imp_1JATQKJ
   (S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    TMDS_clk_n,
    TMDS_clk_p,
    TMDS_data_n,
    TMDS_data_p,
    ap_clk,
    ap_rst_n,
    ap_rst_n_control,
    aux_reset_in,
    control,
    ctrl_araddr,
    ctrl_arready,
    ctrl_arvalid,
    ctrl_awaddr,
    ctrl_awready,
    ctrl_awvalid,
    ctrl_bready,
    ctrl_bresp,
    ctrl_bvalid,
    ctrl_rdata,
    ctrl_rready,
    ctrl_rresp,
    ctrl_rvalid,
    ctrl_wdata,
    ctrl_wready,
    ctrl_wstrb,
    ctrl_wvalid,
    ext_reset_in,
    gpio_io_o,
    in_stream_tdata,
    in_stream_tlast,
    in_stream_tready,
    in_stream_tuser,
    in_stream_tvalid,
    ip2intc_irpt,
    irq,
    locked,
    overflow,
    peripheral_aresetn,
    peripheral_reset,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arready,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awready,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_rdata,
    s00_axi_rready,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_wdata,
    s00_axi_wready,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s_axi_AXILiteS1_araddr,
    s_axi_AXILiteS1_arready,
    s_axi_AXILiteS1_arvalid,
    s_axi_AXILiteS1_awaddr,
    s_axi_AXILiteS1_awready,
    s_axi_AXILiteS1_awvalid,
    s_axi_AXILiteS1_bready,
    s_axi_AXILiteS1_bresp,
    s_axi_AXILiteS1_bvalid,
    s_axi_AXILiteS1_rdata,
    s_axi_AXILiteS1_rready,
    s_axi_AXILiteS1_rresp,
    s_axi_AXILiteS1_rvalid,
    s_axi_AXILiteS1_wdata,
    s_axi_AXILiteS1_wready,
    s_axi_AXILiteS1_wstrb,
    s_axi_AXILiteS1_wvalid,
    s_axi_AXILiteS_araddr,
    s_axi_AXILiteS_arready,
    s_axi_AXILiteS_arvalid,
    s_axi_AXILiteS_awaddr,
    s_axi_AXILiteS_awready,
    s_axi_AXILiteS_awvalid,
    s_axi_AXILiteS_bready,
    s_axi_AXILiteS_bresp,
    s_axi_AXILiteS_bvalid,
    s_axi_AXILiteS_rdata,
    s_axi_AXILiteS_rready,
    s_axi_AXILiteS_rresp,
    s_axi_AXILiteS_rvalid,
    s_axi_AXILiteS_wdata,
    s_axi_AXILiteS_wready,
    s_axi_AXILiteS_wstrb,
    s_axi_AXILiteS_wvalid,
    slowest_sync_clk,
    status,
    underflow);
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  output TMDS_clk_n;
  output TMDS_clk_p;
  output [2:0]TMDS_data_n;
  output [2:0]TMDS_data_p;
  input ap_clk;
  input [0:0]ap_rst_n;
  input [0:0]ap_rst_n_control;
  input aux_reset_in;
  input control;
  input [31:0]ctrl_araddr;
  output [0:0]ctrl_arready;
  input [0:0]ctrl_arvalid;
  input [31:0]ctrl_awaddr;
  output [0:0]ctrl_awready;
  input [0:0]ctrl_awvalid;
  input [0:0]ctrl_bready;
  output [1:0]ctrl_bresp;
  output [0:0]ctrl_bvalid;
  output [31:0]ctrl_rdata;
  input [0:0]ctrl_rready;
  output [1:0]ctrl_rresp;
  output [0:0]ctrl_rvalid;
  input [31:0]ctrl_wdata;
  output [0:0]ctrl_wready;
  input [3:0]ctrl_wstrb;
  input [0:0]ctrl_wvalid;
  input ext_reset_in;
  output [0:0]gpio_io_o;
  input [31:0]in_stream_tdata;
  input in_stream_tlast;
  output in_stream_tready;
  input [0:0]in_stream_tuser;
  input in_stream_tvalid;
  output ip2intc_irpt;
  output irq;
  output locked;
  output overflow;
  output [0:0]peripheral_aresetn;
  output [0:0]peripheral_reset;
  input [31:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  output [0:0]s00_axi_arready;
  input [0:0]s00_axi_arvalid;
  input [31:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  output [0:0]s00_axi_awready;
  input [0:0]s00_axi_awvalid;
  input [0:0]s00_axi_bready;
  output [1:0]s00_axi_bresp;
  output [0:0]s00_axi_bvalid;
  output [31:0]s00_axi_rdata;
  input [0:0]s00_axi_rready;
  output [1:0]s00_axi_rresp;
  output [0:0]s00_axi_rvalid;
  input [31:0]s00_axi_wdata;
  output [0:0]s00_axi_wready;
  input [3:0]s00_axi_wstrb;
  input [0:0]s00_axi_wvalid;
  input [6:0]s_axi_AXILiteS1_araddr;
  output s_axi_AXILiteS1_arready;
  input s_axi_AXILiteS1_arvalid;
  input [6:0]s_axi_AXILiteS1_awaddr;
  output s_axi_AXILiteS1_awready;
  input s_axi_AXILiteS1_awvalid;
  input s_axi_AXILiteS1_bready;
  output [1:0]s_axi_AXILiteS1_bresp;
  output s_axi_AXILiteS1_bvalid;
  output [31:0]s_axi_AXILiteS1_rdata;
  input s_axi_AXILiteS1_rready;
  output [1:0]s_axi_AXILiteS1_rresp;
  output s_axi_AXILiteS1_rvalid;
  input [31:0]s_axi_AXILiteS1_wdata;
  output s_axi_AXILiteS1_wready;
  input [3:0]s_axi_AXILiteS1_wstrb;
  input s_axi_AXILiteS1_wvalid;
  input [4:0]s_axi_AXILiteS_araddr;
  output s_axi_AXILiteS_arready;
  input s_axi_AXILiteS_arvalid;
  input [4:0]s_axi_AXILiteS_awaddr;
  output s_axi_AXILiteS_awready;
  input s_axi_AXILiteS_awvalid;
  input s_axi_AXILiteS_bready;
  output [1:0]s_axi_AXILiteS_bresp;
  output s_axi_AXILiteS_bvalid;
  output [31:0]s_axi_AXILiteS_rdata;
  input s_axi_AXILiteS_rready;
  output [1:0]s_axi_AXILiteS_rresp;
  output s_axi_AXILiteS_rvalid;
  input [31:0]s_axi_AXILiteS_wdata;
  output s_axi_AXILiteS_wready;
  input [3:0]s_axi_AXILiteS_wstrb;
  input s_axi_AXILiteS_wvalid;
  input slowest_sync_clk;
  output [31:0]status;
  output underflow;

  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire [2:0]Conn1_DATA_N;
  wire [2:0]Conn1_DATA_P;
  wire [31:0]Conn2_ARADDR;
  wire [0:0]Conn2_ARREADY;
  wire [0:0]Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire [0:0]Conn2_AWREADY;
  wire [0:0]Conn2_AWVALID;
  wire [0:0]Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire [0:0]Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire [0:0]Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire [0:0]Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire [0:0]Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire [0:0]Conn2_WVALID;
  wire [6:0]Conn7_ARADDR;
  wire Conn7_ARREADY;
  wire Conn7_ARVALID;
  wire [6:0]Conn7_AWADDR;
  wire Conn7_AWREADY;
  wire Conn7_AWVALID;
  wire Conn7_BREADY;
  wire [1:0]Conn7_BRESP;
  wire Conn7_BVALID;
  wire [31:0]Conn7_RDATA;
  wire Conn7_RREADY;
  wire [1:0]Conn7_RRESP;
  wire Conn7_RVALID;
  wire [31:0]Conn7_WDATA;
  wire Conn7_WREADY;
  wire [3:0]Conn7_WSTRB;
  wire Conn7_WVALID;
  wire [4:0]Conn8_ARADDR;
  wire Conn8_ARREADY;
  wire Conn8_ARVALID;
  wire [4:0]Conn8_AWADDR;
  wire Conn8_AWREADY;
  wire Conn8_AWVALID;
  wire Conn8_BREADY;
  wire [1:0]Conn8_BRESP;
  wire Conn8_BVALID;
  wire [31:0]Conn8_RDATA;
  wire Conn8_RREADY;
  wire [1:0]Conn8_RRESP;
  wire Conn8_RVALID;
  wire [31:0]Conn8_WDATA;
  wire Conn8_WREADY;
  wire [3:0]Conn8_WSTRB;
  wire Conn8_WVALID;
  wire Net;
  wire [0:0]Net1;
  wire aclk_1;
  wire aux_reset_in_1;
  wire [31:0]axi_vdma_0_M_AXIS_MM2S_TDATA;
  wire axi_vdma_0_M_AXIS_MM2S_TLAST;
  wire axi_vdma_0_M_AXIS_MM2S_TREADY;
  wire [0:0]axi_vdma_0_M_AXIS_MM2S_TUSER;
  wire axi_vdma_0_M_AXIS_MM2S_TVALID;
  wire [23:0]axis_register_slice_0_M_AXIS_TDATA;
  wire axis_register_slice_0_M_AXIS_TLAST;
  wire axis_register_slice_0_M_AXIS_TREADY;
  wire [0:0]axis_register_slice_0_M_AXIS_TUSER;
  wire axis_register_slice_0_M_AXIS_TVALID;
  wire ext_reset_in_1;
  wire [0:0]frontend_peripheral_aresetn;
  wire [0:0]frontend_peripheral_reset;
  wire [0:0]hdmi_out_hpd_video_gpio_io_o;
  wire hdmi_out_hpd_video_ip2intc_irpt;
  wire locked;
  wire overflow;
  wire [23:0]pixel_unpack_out_stream_TDATA;
  wire [0:0]pixel_unpack_out_stream_TLAST;
  wire pixel_unpack_out_stream_TREADY;
  wire [0:0]pixel_unpack_out_stream_TUSER;
  wire pixel_unpack_out_stream_TVALID;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_ARADDR;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_ARREADY;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_AWADDR;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_AWREADY;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_AWVALID;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M06_AXI_BRESP;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_RDATA;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M06_AXI_RRESP;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_WDATA;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M06_AXI_WSTRB;
  wire [0:0]processing_system7_0_axi_periph_M06_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_ARADDR;
  wire [2:0]processing_system7_0_axi_periph_M08_AXI_ARPROT;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_ARREADY;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_AWADDR;
  wire [2:0]processing_system7_0_axi_periph_M08_AXI_AWPROT;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_AWREADY;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_AWVALID;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M08_AXI_BRESP;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_RDATA;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M08_AXI_RRESP;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_WDATA;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M08_AXI_WSTRB;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_WVALID;
  wire [0:0]rst_processing_system7_0_100M_peripheral_aresetn;
  wire slowest_sync_clk_1;
  wire [31:0]status;
  wire underflow;
  wire v_tc_0_irq;
  wire [23:0]video_in_1_TDATA;
  wire [0:0]video_in_1_TLAST;
  wire video_in_1_TREADY;
  wire [0:0]video_in_1_TUSER;
  wire video_in_1_TVALID;

  assign Conn2_ARADDR = ctrl_araddr[31:0];
  assign Conn2_ARVALID = ctrl_arvalid[0];
  assign Conn2_AWADDR = ctrl_awaddr[31:0];
  assign Conn2_AWVALID = ctrl_awvalid[0];
  assign Conn2_BREADY = ctrl_bready[0];
  assign Conn2_RREADY = ctrl_rready[0];
  assign Conn2_WDATA = ctrl_wdata[31:0];
  assign Conn2_WSTRB = ctrl_wstrb[3:0];
  assign Conn2_WVALID = ctrl_wvalid[0];
  assign Conn7_ARADDR = s_axi_AXILiteS1_araddr[6:0];
  assign Conn7_ARVALID = s_axi_AXILiteS1_arvalid;
  assign Conn7_AWADDR = s_axi_AXILiteS1_awaddr[6:0];
  assign Conn7_AWVALID = s_axi_AXILiteS1_awvalid;
  assign Conn7_BREADY = s_axi_AXILiteS1_bready;
  assign Conn7_RREADY = s_axi_AXILiteS1_rready;
  assign Conn7_WDATA = s_axi_AXILiteS1_wdata[31:0];
  assign Conn7_WSTRB = s_axi_AXILiteS1_wstrb[3:0];
  assign Conn7_WVALID = s_axi_AXILiteS1_wvalid;
  assign Conn8_ARADDR = s_axi_AXILiteS_araddr[4:0];
  assign Conn8_ARVALID = s_axi_AXILiteS_arvalid;
  assign Conn8_AWADDR = s_axi_AXILiteS_awaddr[4:0];
  assign Conn8_AWVALID = s_axi_AXILiteS_awvalid;
  assign Conn8_BREADY = s_axi_AXILiteS_bready;
  assign Conn8_RREADY = s_axi_AXILiteS_rready;
  assign Conn8_WDATA = s_axi_AXILiteS_wdata[31:0];
  assign Conn8_WSTRB = s_axi_AXILiteS_wstrb[3:0];
  assign Conn8_WVALID = s_axi_AXILiteS_wvalid;
  assign Net = control;
  assign Net1 = ap_rst_n_control[0];
  assign S_AXI_arready[0] = processing_system7_0_axi_periph_M06_AXI_ARREADY;
  assign S_AXI_awready[0] = processing_system7_0_axi_periph_M06_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = processing_system7_0_axi_periph_M06_AXI_BRESP;
  assign S_AXI_bvalid[0] = processing_system7_0_axi_periph_M06_AXI_BVALID;
  assign S_AXI_rdata[31:0] = processing_system7_0_axi_periph_M06_AXI_RDATA;
  assign S_AXI_rresp[1:0] = processing_system7_0_axi_periph_M06_AXI_RRESP;
  assign S_AXI_rvalid[0] = processing_system7_0_axi_periph_M06_AXI_RVALID;
  assign S_AXI_wready[0] = processing_system7_0_axi_periph_M06_AXI_WREADY;
  assign TMDS_clk_n = Conn1_CLK_N;
  assign TMDS_clk_p = Conn1_CLK_P;
  assign TMDS_data_n[2:0] = Conn1_DATA_N;
  assign TMDS_data_p[2:0] = Conn1_DATA_P;
  assign aclk_1 = ap_clk;
  assign aux_reset_in_1 = aux_reset_in;
  assign axi_vdma_0_M_AXIS_MM2S_TDATA = in_stream_tdata[31:0];
  assign axi_vdma_0_M_AXIS_MM2S_TLAST = in_stream_tlast;
  assign axi_vdma_0_M_AXIS_MM2S_TUSER = in_stream_tuser[0];
  assign axi_vdma_0_M_AXIS_MM2S_TVALID = in_stream_tvalid;
  assign ctrl_arready[0] = Conn2_ARREADY;
  assign ctrl_awready[0] = Conn2_AWREADY;
  assign ctrl_bresp[1:0] = Conn2_BRESP;
  assign ctrl_bvalid[0] = Conn2_BVALID;
  assign ctrl_rdata[31:0] = Conn2_RDATA;
  assign ctrl_rresp[1:0] = Conn2_RRESP;
  assign ctrl_rvalid[0] = Conn2_RVALID;
  assign ctrl_wready[0] = Conn2_WREADY;
  assign ext_reset_in_1 = ext_reset_in;
  assign gpio_io_o[0] = hdmi_out_hpd_video_gpio_io_o;
  assign in_stream_tready = axi_vdma_0_M_AXIS_MM2S_TREADY;
  assign ip2intc_irpt = hdmi_out_hpd_video_ip2intc_irpt;
  assign irq = v_tc_0_irq;
  assign peripheral_aresetn[0] = frontend_peripheral_aresetn;
  assign peripheral_reset[0] = frontend_peripheral_reset;
  assign processing_system7_0_axi_periph_M06_AXI_ARADDR = S_AXI_araddr[31:0];
  assign processing_system7_0_axi_periph_M06_AXI_ARVALID = S_AXI_arvalid[0];
  assign processing_system7_0_axi_periph_M06_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign processing_system7_0_axi_periph_M06_AXI_AWVALID = S_AXI_awvalid[0];
  assign processing_system7_0_axi_periph_M06_AXI_BREADY = S_AXI_bready[0];
  assign processing_system7_0_axi_periph_M06_AXI_RREADY = S_AXI_rready[0];
  assign processing_system7_0_axi_periph_M06_AXI_WDATA = S_AXI_wdata[31:0];
  assign processing_system7_0_axi_periph_M06_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign processing_system7_0_axi_periph_M06_AXI_WVALID = S_AXI_wvalid[0];
  assign processing_system7_0_axi_periph_M08_AXI_ARADDR = s00_axi_araddr[31:0];
  assign processing_system7_0_axi_periph_M08_AXI_ARPROT = s00_axi_arprot[2:0];
  assign processing_system7_0_axi_periph_M08_AXI_ARVALID = s00_axi_arvalid[0];
  assign processing_system7_0_axi_periph_M08_AXI_AWADDR = s00_axi_awaddr[31:0];
  assign processing_system7_0_axi_periph_M08_AXI_AWPROT = s00_axi_awprot[2:0];
  assign processing_system7_0_axi_periph_M08_AXI_AWVALID = s00_axi_awvalid[0];
  assign processing_system7_0_axi_periph_M08_AXI_BREADY = s00_axi_bready[0];
  assign processing_system7_0_axi_periph_M08_AXI_RREADY = s00_axi_rready[0];
  assign processing_system7_0_axi_periph_M08_AXI_WDATA = s00_axi_wdata[31:0];
  assign processing_system7_0_axi_periph_M08_AXI_WSTRB = s00_axi_wstrb[3:0];
  assign processing_system7_0_axi_periph_M08_AXI_WVALID = s00_axi_wvalid[0];
  assign rst_processing_system7_0_100M_peripheral_aresetn = ap_rst_n[0];
  assign s00_axi_arready[0] = processing_system7_0_axi_periph_M08_AXI_ARREADY;
  assign s00_axi_awready[0] = processing_system7_0_axi_periph_M08_AXI_AWREADY;
  assign s00_axi_bresp[1:0] = processing_system7_0_axi_periph_M08_AXI_BRESP;
  assign s00_axi_bvalid[0] = processing_system7_0_axi_periph_M08_AXI_BVALID;
  assign s00_axi_rdata[31:0] = processing_system7_0_axi_periph_M08_AXI_RDATA;
  assign s00_axi_rresp[1:0] = processing_system7_0_axi_periph_M08_AXI_RRESP;
  assign s00_axi_rvalid[0] = processing_system7_0_axi_periph_M08_AXI_RVALID;
  assign s00_axi_wready[0] = processing_system7_0_axi_periph_M08_AXI_WREADY;
  assign s_axi_AXILiteS1_arready = Conn7_ARREADY;
  assign s_axi_AXILiteS1_awready = Conn7_AWREADY;
  assign s_axi_AXILiteS1_bresp[1:0] = Conn7_BRESP;
  assign s_axi_AXILiteS1_bvalid = Conn7_BVALID;
  assign s_axi_AXILiteS1_rdata[31:0] = Conn7_RDATA;
  assign s_axi_AXILiteS1_rresp[1:0] = Conn7_RRESP;
  assign s_axi_AXILiteS1_rvalid = Conn7_RVALID;
  assign s_axi_AXILiteS1_wready = Conn7_WREADY;
  assign s_axi_AXILiteS_arready = Conn8_ARREADY;
  assign s_axi_AXILiteS_awready = Conn8_AWREADY;
  assign s_axi_AXILiteS_bresp[1:0] = Conn8_BRESP;
  assign s_axi_AXILiteS_bvalid = Conn8_BVALID;
  assign s_axi_AXILiteS_rdata[31:0] = Conn8_RDATA;
  assign s_axi_AXILiteS_rresp[1:0] = Conn8_RRESP;
  assign s_axi_AXILiteS_rvalid = Conn8_RVALID;
  assign s_axi_AXILiteS_wready = Conn8_WREADY;
  assign slowest_sync_clk_1 = slowest_sync_clk;
  system_axis_register_slice_0_1 axis_register_slice_0
       (.aclk(aclk_1),
        .aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .m_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .m_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_register_slice_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata(pixel_unpack_out_stream_TDATA),
        .s_axis_tlast(pixel_unpack_out_stream_TLAST),
        .s_axis_tready(pixel_unpack_out_stream_TREADY),
        .s_axis_tuser(pixel_unpack_out_stream_TUSER),
        .s_axis_tvalid(pixel_unpack_out_stream_TVALID));
  system_color_convert_1 color_convert
       (.ap_clk(aclk_1),
        .ap_rst_n(rst_processing_system7_0_100M_peripheral_aresetn),
        .ap_rst_n_control(rst_processing_system7_0_100M_peripheral_aresetn),
        .control(aclk_1),
        .in_data_TDATA(axis_register_slice_0_M_AXIS_TDATA),
        .in_data_TLAST(axis_register_slice_0_M_AXIS_TLAST),
        .in_data_TREADY(axis_register_slice_0_M_AXIS_TREADY),
        .in_data_TUSER(axis_register_slice_0_M_AXIS_TUSER),
        .in_data_TVALID(axis_register_slice_0_M_AXIS_TVALID),
        .out_data_TDATA(video_in_1_TDATA),
        .out_data_TLAST(video_in_1_TLAST),
        .out_data_TREADY(video_in_1_TREADY),
        .out_data_TUSER(video_in_1_TUSER),
        .out_data_TVALID(video_in_1_TVALID),
        .s_axi_AXILiteS_ARADDR(Conn7_ARADDR),
        .s_axi_AXILiteS_ARREADY(Conn7_ARREADY),
        .s_axi_AXILiteS_ARVALID(Conn7_ARVALID),
        .s_axi_AXILiteS_AWADDR(Conn7_AWADDR),
        .s_axi_AXILiteS_AWREADY(Conn7_AWREADY),
        .s_axi_AXILiteS_AWVALID(Conn7_AWVALID),
        .s_axi_AXILiteS_BREADY(Conn7_BREADY),
        .s_axi_AXILiteS_BRESP(Conn7_BRESP),
        .s_axi_AXILiteS_BVALID(Conn7_BVALID),
        .s_axi_AXILiteS_RDATA(Conn7_RDATA),
        .s_axi_AXILiteS_RREADY(Conn7_RREADY),
        .s_axi_AXILiteS_RRESP(Conn7_RRESP),
        .s_axi_AXILiteS_RVALID(Conn7_RVALID),
        .s_axi_AXILiteS_WDATA(Conn7_WDATA),
        .s_axi_AXILiteS_WREADY(Conn7_WREADY),
        .s_axi_AXILiteS_WSTRB(Conn7_WSTRB),
        .s_axi_AXILiteS_WVALID(Conn7_WVALID));
  frontend_imp_58W1JN frontend
       (.S_AXI_araddr(processing_system7_0_axi_periph_M06_AXI_ARADDR),
        .S_AXI_arready(processing_system7_0_axi_periph_M06_AXI_ARREADY),
        .S_AXI_arvalid(processing_system7_0_axi_periph_M06_AXI_ARVALID),
        .S_AXI_awaddr(processing_system7_0_axi_periph_M06_AXI_AWADDR),
        .S_AXI_awready(processing_system7_0_axi_periph_M06_AXI_AWREADY),
        .S_AXI_awvalid(processing_system7_0_axi_periph_M06_AXI_AWVALID),
        .S_AXI_bready(processing_system7_0_axi_periph_M06_AXI_BREADY),
        .S_AXI_bresp(processing_system7_0_axi_periph_M06_AXI_BRESP),
        .S_AXI_bvalid(processing_system7_0_axi_periph_M06_AXI_BVALID),
        .S_AXI_rdata(processing_system7_0_axi_periph_M06_AXI_RDATA),
        .S_AXI_rready(processing_system7_0_axi_periph_M06_AXI_RREADY),
        .S_AXI_rresp(processing_system7_0_axi_periph_M06_AXI_RRESP),
        .S_AXI_rvalid(processing_system7_0_axi_periph_M06_AXI_RVALID),
        .S_AXI_wdata(processing_system7_0_axi_periph_M06_AXI_WDATA),
        .S_AXI_wready(processing_system7_0_axi_periph_M06_AXI_WREADY),
        .S_AXI_wstrb(processing_system7_0_axi_periph_M06_AXI_WSTRB),
        .S_AXI_wvalid(processing_system7_0_axi_periph_M06_AXI_WVALID),
        .TMDS_clk_n(Conn1_CLK_N),
        .TMDS_clk_p(Conn1_CLK_P),
        .TMDS_data_n(Conn1_DATA_N),
        .TMDS_data_p(Conn1_DATA_P),
        .aclk(aclk_1),
        .aux_reset_in(aux_reset_in_1),
        .ctrl_araddr(Conn2_ARADDR),
        .ctrl_arready(Conn2_ARREADY),
        .ctrl_arvalid(Conn2_ARVALID),
        .ctrl_awaddr(Conn2_AWADDR),
        .ctrl_awready(Conn2_AWREADY),
        .ctrl_awvalid(Conn2_AWVALID),
        .ctrl_bready(Conn2_BREADY),
        .ctrl_bresp(Conn2_BRESP),
        .ctrl_bvalid(Conn2_BVALID),
        .ctrl_rdata(Conn2_RDATA),
        .ctrl_rready(Conn2_RREADY),
        .ctrl_rresp(Conn2_RRESP),
        .ctrl_rvalid(Conn2_RVALID),
        .ctrl_wdata(Conn2_WDATA),
        .ctrl_wready(Conn2_WREADY),
        .ctrl_wstrb(Conn2_WSTRB),
        .ctrl_wvalid(Conn2_WVALID),
        .ext_reset_in(ext_reset_in_1),
        .gpio_io_o(hdmi_out_hpd_video_gpio_io_o),
        .ip2intc_irpt(hdmi_out_hpd_video_ip2intc_irpt),
        .irq(v_tc_0_irq),
        .locked(locked),
        .overflow(overflow),
        .peripheral_aresetn(frontend_peripheral_aresetn),
        .peripheral_reset(frontend_peripheral_reset),
        .s00_axi_aclk(Net),
        .s00_axi_araddr(processing_system7_0_axi_periph_M08_AXI_ARADDR),
        .s00_axi_arprot(processing_system7_0_axi_periph_M08_AXI_ARPROT),
        .s00_axi_arready(processing_system7_0_axi_periph_M08_AXI_ARREADY),
        .s00_axi_arvalid(processing_system7_0_axi_periph_M08_AXI_ARVALID),
        .s00_axi_awaddr(processing_system7_0_axi_periph_M08_AXI_AWADDR),
        .s00_axi_awprot(processing_system7_0_axi_periph_M08_AXI_AWPROT),
        .s00_axi_awready(processing_system7_0_axi_periph_M08_AXI_AWREADY),
        .s00_axi_awvalid(processing_system7_0_axi_periph_M08_AXI_AWVALID),
        .s00_axi_bready(processing_system7_0_axi_periph_M08_AXI_BREADY),
        .s00_axi_bresp(processing_system7_0_axi_periph_M08_AXI_BRESP),
        .s00_axi_bvalid(processing_system7_0_axi_periph_M08_AXI_BVALID),
        .s00_axi_rdata(processing_system7_0_axi_periph_M08_AXI_RDATA),
        .s00_axi_rready(processing_system7_0_axi_periph_M08_AXI_RREADY),
        .s00_axi_rresp(processing_system7_0_axi_periph_M08_AXI_RRESP),
        .s00_axi_rvalid(processing_system7_0_axi_periph_M08_AXI_RVALID),
        .s00_axi_wdata(processing_system7_0_axi_periph_M08_AXI_WDATA),
        .s00_axi_wready(processing_system7_0_axi_periph_M08_AXI_WREADY),
        .s00_axi_wstrb(processing_system7_0_axi_periph_M08_AXI_WSTRB),
        .s00_axi_wvalid(processing_system7_0_axi_periph_M08_AXI_WVALID),
        .s_axi_aresetn(Net1),
        .slowest_sync_clk(slowest_sync_clk_1),
        .status(status),
        .underflow(underflow),
        .video_in_tdata(video_in_1_TDATA),
        .video_in_tlast(video_in_1_TLAST),
        .video_in_tready(video_in_1_TREADY),
        .video_in_tuser(video_in_1_TUSER),
        .video_in_tvalid(video_in_1_TVALID));
  system_pixel_unpack_0 pixel_unpack
       (.ap_clk(aclk_1),
        .ap_rst_n(rst_processing_system7_0_100M_peripheral_aresetn),
        .ap_rst_n_control(rst_processing_system7_0_100M_peripheral_aresetn),
        .control(aclk_1),
        .in_stream_TDATA(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .in_stream_TLAST(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .in_stream_TREADY(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .in_stream_TUSER(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .in_stream_TVALID(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .out_stream_TDATA(pixel_unpack_out_stream_TDATA),
        .out_stream_TLAST(pixel_unpack_out_stream_TLAST),
        .out_stream_TREADY(pixel_unpack_out_stream_TREADY),
        .out_stream_TUSER(pixel_unpack_out_stream_TUSER),
        .out_stream_TVALID(pixel_unpack_out_stream_TVALID),
        .s_axi_AXILiteS_ARADDR(Conn8_ARADDR),
        .s_axi_AXILiteS_ARREADY(Conn8_ARREADY),
        .s_axi_AXILiteS_ARVALID(Conn8_ARVALID),
        .s_axi_AXILiteS_AWADDR(Conn8_AWADDR),
        .s_axi_AXILiteS_AWREADY(Conn8_AWREADY),
        .s_axi_AXILiteS_AWVALID(Conn8_AWVALID),
        .s_axi_AXILiteS_BREADY(Conn8_BREADY),
        .s_axi_AXILiteS_BRESP(Conn8_BRESP),
        .s_axi_AXILiteS_BVALID(Conn8_BVALID),
        .s_axi_AXILiteS_RDATA(Conn8_RDATA),
        .s_axi_AXILiteS_RREADY(Conn8_RREADY),
        .s_axi_AXILiteS_RRESP(Conn8_RRESP),
        .s_axi_AXILiteS_RVALID(Conn8_RVALID),
        .s_axi_AXILiteS_WDATA(Conn8_WDATA),
        .s_axi_AXILiteS_WREADY(Conn8_WREADY),
        .s_axi_AXILiteS_WSTRB(Conn8_WSTRB),
        .s_axi_AXILiteS_WVALID(Conn8_WVALID));
endmodule

module m00_couplers_imp_17F0U9H
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_1D9ZDWS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [0:0]auto_pc_to_m00_couplers_ARID;
  wire [3:0]auto_pc_to_m00_couplers_ARLEN;
  wire [1:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire [3:0]auto_pc_to_m00_couplers_ARQOS;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [0:0]auto_pc_to_m00_couplers_AWID;
  wire [3:0]auto_pc_to_m00_couplers_AWLEN;
  wire [1:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire [3:0]auto_pc_to_m00_couplers_AWQOS;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire [5:0]auto_pc_to_m00_couplers_BID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [63:0]auto_pc_to_m00_couplers_RDATA;
  wire [5:0]auto_pc_to_m00_couplers_RID;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [63:0]auto_pc_to_m00_couplers_WDATA;
  wire [0:0]auto_pc_to_m00_couplers_WID;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [7:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [0:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [0:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [63:0]m00_couplers_to_auto_pc_RDATA;
  wire [0:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [63:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [7:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[0] = auto_pc_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_pc_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wid[0] = auto_pc_to_m00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_m00_couplers_BID[0]),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_m00_couplers_RID[0]),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_m00_couplers_WID),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m00_couplers_imp_WKXF3L
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arid;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awid;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  input M_AXI_bid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arid;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awid;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARBURST;
  wire m00_couplers_to_m00_couplers_ARCACHE;
  wire m00_couplers_to_m00_couplers_ARID;
  wire m00_couplers_to_m00_couplers_ARLEN;
  wire m00_couplers_to_m00_couplers_ARLOCK;
  wire m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARQOS;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARREGION;
  wire m00_couplers_to_m00_couplers_ARSIZE;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWBURST;
  wire m00_couplers_to_m00_couplers_AWCACHE;
  wire m00_couplers_to_m00_couplers_AWID;
  wire m00_couplers_to_m00_couplers_AWLEN;
  wire m00_couplers_to_m00_couplers_AWLOCK;
  wire m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWQOS;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWREGION;
  wire m00_couplers_to_m00_couplers_AWSIZE;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RID;
  wire m00_couplers_to_m00_couplers_RLAST;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WLAST;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arregion = m00_couplers_to_m00_couplers_ARREGION;
  assign M_AXI_arsize = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awregion = m00_couplers_to_m00_couplers_AWREGION;
  assign M_AXI_awsize = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr;
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst;
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache;
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid;
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen;
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock;
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot;
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos;
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARREGION = S_AXI_arregion;
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr;
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst;
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache;
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid;
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen;
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock;
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot;
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos;
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWREGION = S_AXI_awregion;
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp;
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata;
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid;
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp;
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata;
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb;
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1ORP4PS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arid;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awid;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  input M_AXI_bid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arid;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awid;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARBURST;
  wire m01_couplers_to_m01_couplers_ARCACHE;
  wire m01_couplers_to_m01_couplers_ARID;
  wire m01_couplers_to_m01_couplers_ARLEN;
  wire m01_couplers_to_m01_couplers_ARLOCK;
  wire m01_couplers_to_m01_couplers_ARPROT;
  wire m01_couplers_to_m01_couplers_ARQOS;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARREGION;
  wire m01_couplers_to_m01_couplers_ARSIZE;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWBURST;
  wire m01_couplers_to_m01_couplers_AWCACHE;
  wire m01_couplers_to_m01_couplers_AWID;
  wire m01_couplers_to_m01_couplers_AWLEN;
  wire m01_couplers_to_m01_couplers_AWLOCK;
  wire m01_couplers_to_m01_couplers_AWPROT;
  wire m01_couplers_to_m01_couplers_AWQOS;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWREGION;
  wire m01_couplers_to_m01_couplers_AWSIZE;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RID;
  wire m01_couplers_to_m01_couplers_RLAST;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WLAST;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arburst = m01_couplers_to_m01_couplers_ARBURST;
  assign M_AXI_arcache = m01_couplers_to_m01_couplers_ARCACHE;
  assign M_AXI_arid = m01_couplers_to_m01_couplers_ARID;
  assign M_AXI_arlen = m01_couplers_to_m01_couplers_ARLEN;
  assign M_AXI_arlock = m01_couplers_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arqos = m01_couplers_to_m01_couplers_ARQOS;
  assign M_AXI_arregion = m01_couplers_to_m01_couplers_ARREGION;
  assign M_AXI_arsize = m01_couplers_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awburst = m01_couplers_to_m01_couplers_AWBURST;
  assign M_AXI_awcache = m01_couplers_to_m01_couplers_AWCACHE;
  assign M_AXI_awid = m01_couplers_to_m01_couplers_AWID;
  assign M_AXI_awlen = m01_couplers_to_m01_couplers_AWLEN;
  assign M_AXI_awlock = m01_couplers_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awqos = m01_couplers_to_m01_couplers_AWQOS;
  assign M_AXI_awregion = m01_couplers_to_m01_couplers_AWREGION;
  assign M_AXI_awsize = m01_couplers_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wlast = m01_couplers_to_m01_couplers_WLAST;
  assign M_AXI_wstrb = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bid = m01_couplers_to_m01_couplers_BID;
  assign S_AXI_bresp = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rid = m01_couplers_to_m01_couplers_RID;
  assign S_AXI_rlast = m01_couplers_to_m01_couplers_RLAST;
  assign S_AXI_rresp = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr;
  assign m01_couplers_to_m01_couplers_ARBURST = S_AXI_arburst;
  assign m01_couplers_to_m01_couplers_ARCACHE = S_AXI_arcache;
  assign m01_couplers_to_m01_couplers_ARID = S_AXI_arid;
  assign m01_couplers_to_m01_couplers_ARLEN = S_AXI_arlen;
  assign m01_couplers_to_m01_couplers_ARLOCK = S_AXI_arlock;
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot;
  assign m01_couplers_to_m01_couplers_ARQOS = S_AXI_arqos;
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARREGION = S_AXI_arregion;
  assign m01_couplers_to_m01_couplers_ARSIZE = S_AXI_arsize;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr;
  assign m01_couplers_to_m01_couplers_AWBURST = S_AXI_awburst;
  assign m01_couplers_to_m01_couplers_AWCACHE = S_AXI_awcache;
  assign m01_couplers_to_m01_couplers_AWID = S_AXI_awid;
  assign m01_couplers_to_m01_couplers_AWLEN = S_AXI_awlen;
  assign m01_couplers_to_m01_couplers_AWLOCK = S_AXI_awlock;
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot;
  assign m01_couplers_to_m01_couplers_AWQOS = S_AXI_awqos;
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWREGION = S_AXI_awregion;
  assign m01_couplers_to_m01_couplers_AWSIZE = S_AXI_awsize;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BID = M_AXI_bid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp;
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata;
  assign m01_couplers_to_m01_couplers_RID = M_AXI_rid;
  assign m01_couplers_to_m01_couplers_RLAST = M_AXI_rlast;
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp;
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata;
  assign m01_couplers_to_m01_couplers_WLAST = S_AXI_wlast;
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb;
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_DW50H0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [4:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [4:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [4:0]auto_cc_to_m01_couplers_ARADDR;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [4:0]auto_cc_to_m01_couplers_AWADDR;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[4:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[4:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  system_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[4:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[4:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m02_couplers_imp_1VD9O7M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arid;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awid;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  input M_AXI_bid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arid;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awid;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARBURST;
  wire m02_couplers_to_m02_couplers_ARCACHE;
  wire m02_couplers_to_m02_couplers_ARID;
  wire m02_couplers_to_m02_couplers_ARLEN;
  wire m02_couplers_to_m02_couplers_ARLOCK;
  wire m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARQOS;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARREGION;
  wire m02_couplers_to_m02_couplers_ARSIZE;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWBURST;
  wire m02_couplers_to_m02_couplers_AWCACHE;
  wire m02_couplers_to_m02_couplers_AWID;
  wire m02_couplers_to_m02_couplers_AWLEN;
  wire m02_couplers_to_m02_couplers_AWLOCK;
  wire m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWQOS;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWREGION;
  wire m02_couplers_to_m02_couplers_AWSIZE;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RID;
  wire m02_couplers_to_m02_couplers_RLAST;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WLAST;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arburst = m02_couplers_to_m02_couplers_ARBURST;
  assign M_AXI_arcache = m02_couplers_to_m02_couplers_ARCACHE;
  assign M_AXI_arid = m02_couplers_to_m02_couplers_ARID;
  assign M_AXI_arlen = m02_couplers_to_m02_couplers_ARLEN;
  assign M_AXI_arlock = m02_couplers_to_m02_couplers_ARLOCK;
  assign M_AXI_arprot = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arqos = m02_couplers_to_m02_couplers_ARQOS;
  assign M_AXI_arregion = m02_couplers_to_m02_couplers_ARREGION;
  assign M_AXI_arsize = m02_couplers_to_m02_couplers_ARSIZE;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awburst = m02_couplers_to_m02_couplers_AWBURST;
  assign M_AXI_awcache = m02_couplers_to_m02_couplers_AWCACHE;
  assign M_AXI_awid = m02_couplers_to_m02_couplers_AWID;
  assign M_AXI_awlen = m02_couplers_to_m02_couplers_AWLEN;
  assign M_AXI_awlock = m02_couplers_to_m02_couplers_AWLOCK;
  assign M_AXI_awprot = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awqos = m02_couplers_to_m02_couplers_AWQOS;
  assign M_AXI_awregion = m02_couplers_to_m02_couplers_AWREGION;
  assign M_AXI_awsize = m02_couplers_to_m02_couplers_AWSIZE;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wlast = m02_couplers_to_m02_couplers_WLAST;
  assign M_AXI_wstrb = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bid = m02_couplers_to_m02_couplers_BID;
  assign S_AXI_bresp = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rid = m02_couplers_to_m02_couplers_RID;
  assign S_AXI_rlast = m02_couplers_to_m02_couplers_RLAST;
  assign S_AXI_rresp = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr;
  assign m02_couplers_to_m02_couplers_ARBURST = S_AXI_arburst;
  assign m02_couplers_to_m02_couplers_ARCACHE = S_AXI_arcache;
  assign m02_couplers_to_m02_couplers_ARID = S_AXI_arid;
  assign m02_couplers_to_m02_couplers_ARLEN = S_AXI_arlen;
  assign m02_couplers_to_m02_couplers_ARLOCK = S_AXI_arlock;
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot;
  assign m02_couplers_to_m02_couplers_ARQOS = S_AXI_arqos;
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARREGION = S_AXI_arregion;
  assign m02_couplers_to_m02_couplers_ARSIZE = S_AXI_arsize;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr;
  assign m02_couplers_to_m02_couplers_AWBURST = S_AXI_awburst;
  assign m02_couplers_to_m02_couplers_AWCACHE = S_AXI_awcache;
  assign m02_couplers_to_m02_couplers_AWID = S_AXI_awid;
  assign m02_couplers_to_m02_couplers_AWLEN = S_AXI_awlen;
  assign m02_couplers_to_m02_couplers_AWLOCK = S_AXI_awlock;
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot;
  assign m02_couplers_to_m02_couplers_AWQOS = S_AXI_awqos;
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWREGION = S_AXI_awregion;
  assign m02_couplers_to_m02_couplers_AWSIZE = S_AXI_awsize;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BID = M_AXI_bid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp;
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata;
  assign m02_couplers_to_m02_couplers_RID = M_AXI_rid;
  assign m02_couplers_to_m02_couplers_RLAST = M_AXI_rlast;
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp;
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata;
  assign m02_couplers_to_m02_couplers_WLAST = S_AXI_wlast;
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb;
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_7Q885Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [6:0]auto_cc_to_m02_couplers_ARADDR;
  wire auto_cc_to_m02_couplers_ARREADY;
  wire auto_cc_to_m02_couplers_ARVALID;
  wire [6:0]auto_cc_to_m02_couplers_AWADDR;
  wire auto_cc_to_m02_couplers_AWREADY;
  wire auto_cc_to_m02_couplers_AWVALID;
  wire auto_cc_to_m02_couplers_BREADY;
  wire [1:0]auto_cc_to_m02_couplers_BRESP;
  wire auto_cc_to_m02_couplers_BVALID;
  wire [31:0]auto_cc_to_m02_couplers_RDATA;
  wire auto_cc_to_m02_couplers_RREADY;
  wire [1:0]auto_cc_to_m02_couplers_RRESP;
  wire auto_cc_to_m02_couplers_RVALID;
  wire [31:0]auto_cc_to_m02_couplers_WDATA;
  wire auto_cc_to_m02_couplers_WREADY;
  wire [3:0]auto_cc_to_m02_couplers_WSTRB;
  wire auto_cc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [31:0]m02_couplers_to_auto_cc_AWADDR;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [31:0]m02_couplers_to_auto_cc_RDATA;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [31:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [3:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[6:0] = auto_cc_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_cc_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  system_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
endmodule

module m03_couplers_imp_1EEWPTZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_PPDLC3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arid;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awid;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  input M_AXI_bid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arid;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awid;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARBURST;
  wire m03_couplers_to_m03_couplers_ARCACHE;
  wire m03_couplers_to_m03_couplers_ARID;
  wire m03_couplers_to_m03_couplers_ARLEN;
  wire m03_couplers_to_m03_couplers_ARLOCK;
  wire m03_couplers_to_m03_couplers_ARPROT;
  wire m03_couplers_to_m03_couplers_ARQOS;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARREGION;
  wire m03_couplers_to_m03_couplers_ARSIZE;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWBURST;
  wire m03_couplers_to_m03_couplers_AWCACHE;
  wire m03_couplers_to_m03_couplers_AWID;
  wire m03_couplers_to_m03_couplers_AWLEN;
  wire m03_couplers_to_m03_couplers_AWLOCK;
  wire m03_couplers_to_m03_couplers_AWPROT;
  wire m03_couplers_to_m03_couplers_AWQOS;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWREGION;
  wire m03_couplers_to_m03_couplers_AWSIZE;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RID;
  wire m03_couplers_to_m03_couplers_RLAST;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WLAST;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arburst = m03_couplers_to_m03_couplers_ARBURST;
  assign M_AXI_arcache = m03_couplers_to_m03_couplers_ARCACHE;
  assign M_AXI_arid = m03_couplers_to_m03_couplers_ARID;
  assign M_AXI_arlen = m03_couplers_to_m03_couplers_ARLEN;
  assign M_AXI_arlock = m03_couplers_to_m03_couplers_ARLOCK;
  assign M_AXI_arprot = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arqos = m03_couplers_to_m03_couplers_ARQOS;
  assign M_AXI_arregion = m03_couplers_to_m03_couplers_ARREGION;
  assign M_AXI_arsize = m03_couplers_to_m03_couplers_ARSIZE;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awburst = m03_couplers_to_m03_couplers_AWBURST;
  assign M_AXI_awcache = m03_couplers_to_m03_couplers_AWCACHE;
  assign M_AXI_awid = m03_couplers_to_m03_couplers_AWID;
  assign M_AXI_awlen = m03_couplers_to_m03_couplers_AWLEN;
  assign M_AXI_awlock = m03_couplers_to_m03_couplers_AWLOCK;
  assign M_AXI_awprot = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awqos = m03_couplers_to_m03_couplers_AWQOS;
  assign M_AXI_awregion = m03_couplers_to_m03_couplers_AWREGION;
  assign M_AXI_awsize = m03_couplers_to_m03_couplers_AWSIZE;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wlast = m03_couplers_to_m03_couplers_WLAST;
  assign M_AXI_wstrb = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bid = m03_couplers_to_m03_couplers_BID;
  assign S_AXI_bresp = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rid = m03_couplers_to_m03_couplers_RID;
  assign S_AXI_rlast = m03_couplers_to_m03_couplers_RLAST;
  assign S_AXI_rresp = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr;
  assign m03_couplers_to_m03_couplers_ARBURST = S_AXI_arburst;
  assign m03_couplers_to_m03_couplers_ARCACHE = S_AXI_arcache;
  assign m03_couplers_to_m03_couplers_ARID = S_AXI_arid;
  assign m03_couplers_to_m03_couplers_ARLEN = S_AXI_arlen;
  assign m03_couplers_to_m03_couplers_ARLOCK = S_AXI_arlock;
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot;
  assign m03_couplers_to_m03_couplers_ARQOS = S_AXI_arqos;
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARREGION = S_AXI_arregion;
  assign m03_couplers_to_m03_couplers_ARSIZE = S_AXI_arsize;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr;
  assign m03_couplers_to_m03_couplers_AWBURST = S_AXI_awburst;
  assign m03_couplers_to_m03_couplers_AWCACHE = S_AXI_awcache;
  assign m03_couplers_to_m03_couplers_AWID = S_AXI_awid;
  assign m03_couplers_to_m03_couplers_AWLEN = S_AXI_awlen;
  assign m03_couplers_to_m03_couplers_AWLOCK = S_AXI_awlock;
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot;
  assign m03_couplers_to_m03_couplers_AWQOS = S_AXI_awqos;
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWREGION = S_AXI_awregion;
  assign m03_couplers_to_m03_couplers_AWSIZE = S_AXI_awsize;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BID = M_AXI_bid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp;
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata;
  assign m03_couplers_to_m03_couplers_RID = M_AXI_rid;
  assign m03_couplers_to_m03_couplers_RLAST = M_AXI_rlast;
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp;
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata;
  assign m03_couplers_to_m03_couplers_WLAST = S_AXI_wlast;
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb;
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_18RU2BA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arid;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awid;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  input M_AXI_bid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arid;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awid;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARBURST;
  wire m04_couplers_to_m04_couplers_ARCACHE;
  wire m04_couplers_to_m04_couplers_ARID;
  wire m04_couplers_to_m04_couplers_ARLEN;
  wire m04_couplers_to_m04_couplers_ARLOCK;
  wire m04_couplers_to_m04_couplers_ARPROT;
  wire m04_couplers_to_m04_couplers_ARQOS;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARREGION;
  wire m04_couplers_to_m04_couplers_ARSIZE;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWBURST;
  wire m04_couplers_to_m04_couplers_AWCACHE;
  wire m04_couplers_to_m04_couplers_AWID;
  wire m04_couplers_to_m04_couplers_AWLEN;
  wire m04_couplers_to_m04_couplers_AWLOCK;
  wire m04_couplers_to_m04_couplers_AWPROT;
  wire m04_couplers_to_m04_couplers_AWQOS;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWREGION;
  wire m04_couplers_to_m04_couplers_AWSIZE;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RID;
  wire m04_couplers_to_m04_couplers_RLAST;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WLAST;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arburst = m04_couplers_to_m04_couplers_ARBURST;
  assign M_AXI_arcache = m04_couplers_to_m04_couplers_ARCACHE;
  assign M_AXI_arid = m04_couplers_to_m04_couplers_ARID;
  assign M_AXI_arlen = m04_couplers_to_m04_couplers_ARLEN;
  assign M_AXI_arlock = m04_couplers_to_m04_couplers_ARLOCK;
  assign M_AXI_arprot = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arqos = m04_couplers_to_m04_couplers_ARQOS;
  assign M_AXI_arregion = m04_couplers_to_m04_couplers_ARREGION;
  assign M_AXI_arsize = m04_couplers_to_m04_couplers_ARSIZE;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awburst = m04_couplers_to_m04_couplers_AWBURST;
  assign M_AXI_awcache = m04_couplers_to_m04_couplers_AWCACHE;
  assign M_AXI_awid = m04_couplers_to_m04_couplers_AWID;
  assign M_AXI_awlen = m04_couplers_to_m04_couplers_AWLEN;
  assign M_AXI_awlock = m04_couplers_to_m04_couplers_AWLOCK;
  assign M_AXI_awprot = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awqos = m04_couplers_to_m04_couplers_AWQOS;
  assign M_AXI_awregion = m04_couplers_to_m04_couplers_AWREGION;
  assign M_AXI_awsize = m04_couplers_to_m04_couplers_AWSIZE;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wlast = m04_couplers_to_m04_couplers_WLAST;
  assign M_AXI_wstrb = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bid = m04_couplers_to_m04_couplers_BID;
  assign S_AXI_bresp = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rid = m04_couplers_to_m04_couplers_RID;
  assign S_AXI_rlast = m04_couplers_to_m04_couplers_RLAST;
  assign S_AXI_rresp = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr;
  assign m04_couplers_to_m04_couplers_ARBURST = S_AXI_arburst;
  assign m04_couplers_to_m04_couplers_ARCACHE = S_AXI_arcache;
  assign m04_couplers_to_m04_couplers_ARID = S_AXI_arid;
  assign m04_couplers_to_m04_couplers_ARLEN = S_AXI_arlen;
  assign m04_couplers_to_m04_couplers_ARLOCK = S_AXI_arlock;
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot;
  assign m04_couplers_to_m04_couplers_ARQOS = S_AXI_arqos;
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARREGION = S_AXI_arregion;
  assign m04_couplers_to_m04_couplers_ARSIZE = S_AXI_arsize;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr;
  assign m04_couplers_to_m04_couplers_AWBURST = S_AXI_awburst;
  assign m04_couplers_to_m04_couplers_AWCACHE = S_AXI_awcache;
  assign m04_couplers_to_m04_couplers_AWID = S_AXI_awid;
  assign m04_couplers_to_m04_couplers_AWLEN = S_AXI_awlen;
  assign m04_couplers_to_m04_couplers_AWLOCK = S_AXI_awlock;
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot;
  assign m04_couplers_to_m04_couplers_AWQOS = S_AXI_awqos;
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWREGION = S_AXI_awregion;
  assign m04_couplers_to_m04_couplers_AWSIZE = S_AXI_awsize;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BID = M_AXI_bid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp;
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata;
  assign m04_couplers_to_m04_couplers_RID = M_AXI_rid;
  assign m04_couplers_to_m04_couplers_RLAST = M_AXI_rlast;
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp;
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata;
  assign m04_couplers_to_m04_couplers_WLAST = S_AXI_wlast;
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb;
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_K25AYA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_1RUS6CJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_47WDK7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m05_couplers_ARADDR;
  wire auto_pc_to_m05_couplers_ARREADY;
  wire auto_pc_to_m05_couplers_ARVALID;
  wire [31:0]auto_pc_to_m05_couplers_AWADDR;
  wire auto_pc_to_m05_couplers_AWREADY;
  wire auto_pc_to_m05_couplers_AWVALID;
  wire auto_pc_to_m05_couplers_BREADY;
  wire [1:0]auto_pc_to_m05_couplers_BRESP;
  wire auto_pc_to_m05_couplers_BVALID;
  wire [31:0]auto_pc_to_m05_couplers_RDATA;
  wire auto_pc_to_m05_couplers_RREADY;
  wire [1:0]auto_pc_to_m05_couplers_RRESP;
  wire auto_pc_to_m05_couplers_RVALID;
  wire [31:0]auto_pc_to_m05_couplers_WDATA;
  wire auto_pc_to_m05_couplers_WREADY;
  wire [3:0]auto_pc_to_m05_couplers_WSTRB;
  wire auto_pc_to_m05_couplers_WVALID;
  wire [31:0]m05_couplers_to_auto_pc_ARADDR;
  wire [1:0]m05_couplers_to_auto_pc_ARBURST;
  wire [3:0]m05_couplers_to_auto_pc_ARCACHE;
  wire [11:0]m05_couplers_to_auto_pc_ARID;
  wire [7:0]m05_couplers_to_auto_pc_ARLEN;
  wire [0:0]m05_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m05_couplers_to_auto_pc_ARPROT;
  wire [3:0]m05_couplers_to_auto_pc_ARQOS;
  wire m05_couplers_to_auto_pc_ARREADY;
  wire [3:0]m05_couplers_to_auto_pc_ARREGION;
  wire [2:0]m05_couplers_to_auto_pc_ARSIZE;
  wire m05_couplers_to_auto_pc_ARVALID;
  wire [31:0]m05_couplers_to_auto_pc_AWADDR;
  wire [1:0]m05_couplers_to_auto_pc_AWBURST;
  wire [3:0]m05_couplers_to_auto_pc_AWCACHE;
  wire [11:0]m05_couplers_to_auto_pc_AWID;
  wire [7:0]m05_couplers_to_auto_pc_AWLEN;
  wire [0:0]m05_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m05_couplers_to_auto_pc_AWPROT;
  wire [3:0]m05_couplers_to_auto_pc_AWQOS;
  wire m05_couplers_to_auto_pc_AWREADY;
  wire [3:0]m05_couplers_to_auto_pc_AWREGION;
  wire [2:0]m05_couplers_to_auto_pc_AWSIZE;
  wire m05_couplers_to_auto_pc_AWVALID;
  wire [11:0]m05_couplers_to_auto_pc_BID;
  wire m05_couplers_to_auto_pc_BREADY;
  wire [1:0]m05_couplers_to_auto_pc_BRESP;
  wire m05_couplers_to_auto_pc_BVALID;
  wire [31:0]m05_couplers_to_auto_pc_RDATA;
  wire [11:0]m05_couplers_to_auto_pc_RID;
  wire m05_couplers_to_auto_pc_RLAST;
  wire m05_couplers_to_auto_pc_RREADY;
  wire [1:0]m05_couplers_to_auto_pc_RRESP;
  wire m05_couplers_to_auto_pc_RVALID;
  wire [31:0]m05_couplers_to_auto_pc_WDATA;
  wire m05_couplers_to_auto_pc_WLAST;
  wire m05_couplers_to_auto_pc_WREADY;
  wire [3:0]m05_couplers_to_auto_pc_WSTRB;
  wire m05_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m05_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = m05_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = m05_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m05_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m05_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m05_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign m05_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m05_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m05_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m05_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m05_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m05_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign m05_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m05_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m05_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m05_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m05_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m05_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m05_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m05_couplers_WVALID),
        .s_axi_araddr(m05_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m05_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m05_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m05_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m05_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m05_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m05_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m05_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m05_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m05_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m05_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m05_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m05_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m05_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m05_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m05_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m05_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m05_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m05_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m05_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m05_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m05_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m05_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m05_couplers_to_auto_pc_BID),
        .s_axi_bready(m05_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m05_couplers_to_auto_pc_RID),
        .s_axi_rlast(m05_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m05_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m05_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m05_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_pc_WVALID));
endmodule

module m06_couplers_imp_1LOVFTD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [6:0]auto_cc_to_m06_couplers_ARADDR;
  wire auto_cc_to_m06_couplers_ARREADY;
  wire auto_cc_to_m06_couplers_ARVALID;
  wire [6:0]auto_cc_to_m06_couplers_AWADDR;
  wire auto_cc_to_m06_couplers_AWREADY;
  wire auto_cc_to_m06_couplers_AWVALID;
  wire auto_cc_to_m06_couplers_BREADY;
  wire [1:0]auto_cc_to_m06_couplers_BRESP;
  wire auto_cc_to_m06_couplers_BVALID;
  wire [31:0]auto_cc_to_m06_couplers_RDATA;
  wire auto_cc_to_m06_couplers_RREADY;
  wire [1:0]auto_cc_to_m06_couplers_RRESP;
  wire auto_cc_to_m06_couplers_RVALID;
  wire [31:0]auto_cc_to_m06_couplers_WDATA;
  wire auto_cc_to_m06_couplers_WREADY;
  wire [3:0]auto_cc_to_m06_couplers_WSTRB;
  wire auto_cc_to_m06_couplers_WVALID;
  wire [31:0]m06_couplers_to_auto_cc_ARADDR;
  wire [2:0]m06_couplers_to_auto_cc_ARPROT;
  wire m06_couplers_to_auto_cc_ARREADY;
  wire m06_couplers_to_auto_cc_ARVALID;
  wire [31:0]m06_couplers_to_auto_cc_AWADDR;
  wire [2:0]m06_couplers_to_auto_cc_AWPROT;
  wire m06_couplers_to_auto_cc_AWREADY;
  wire m06_couplers_to_auto_cc_AWVALID;
  wire m06_couplers_to_auto_cc_BREADY;
  wire [1:0]m06_couplers_to_auto_cc_BRESP;
  wire m06_couplers_to_auto_cc_BVALID;
  wire [31:0]m06_couplers_to_auto_cc_RDATA;
  wire m06_couplers_to_auto_cc_RREADY;
  wire [1:0]m06_couplers_to_auto_cc_RRESP;
  wire m06_couplers_to_auto_cc_RVALID;
  wire [31:0]m06_couplers_to_auto_cc_WDATA;
  wire m06_couplers_to_auto_cc_WREADY;
  wire [3:0]m06_couplers_to_auto_cc_WSTRB;
  wire m06_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[6:0] = auto_cc_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_cc_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m06_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  system_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m06_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m06_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m06_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m06_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m06_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m06_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m06_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m06_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m06_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m06_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m06_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m06_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m06_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_cc_WVALID));
endmodule

module m06_couplers_imp_ATGYFP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arid;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awid;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  input M_AXI_bid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arid;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awid;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARBURST;
  wire m06_couplers_to_m06_couplers_ARCACHE;
  wire m06_couplers_to_m06_couplers_ARID;
  wire m06_couplers_to_m06_couplers_ARLEN;
  wire m06_couplers_to_m06_couplers_ARLOCK;
  wire m06_couplers_to_m06_couplers_ARPROT;
  wire m06_couplers_to_m06_couplers_ARQOS;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARREGION;
  wire m06_couplers_to_m06_couplers_ARSIZE;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWBURST;
  wire m06_couplers_to_m06_couplers_AWCACHE;
  wire m06_couplers_to_m06_couplers_AWID;
  wire m06_couplers_to_m06_couplers_AWLEN;
  wire m06_couplers_to_m06_couplers_AWLOCK;
  wire m06_couplers_to_m06_couplers_AWPROT;
  wire m06_couplers_to_m06_couplers_AWQOS;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWREGION;
  wire m06_couplers_to_m06_couplers_AWSIZE;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RID;
  wire m06_couplers_to_m06_couplers_RLAST;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WLAST;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arburst = m06_couplers_to_m06_couplers_ARBURST;
  assign M_AXI_arcache = m06_couplers_to_m06_couplers_ARCACHE;
  assign M_AXI_arid = m06_couplers_to_m06_couplers_ARID;
  assign M_AXI_arlen = m06_couplers_to_m06_couplers_ARLEN;
  assign M_AXI_arlock = m06_couplers_to_m06_couplers_ARLOCK;
  assign M_AXI_arprot = m06_couplers_to_m06_couplers_ARPROT;
  assign M_AXI_arqos = m06_couplers_to_m06_couplers_ARQOS;
  assign M_AXI_arregion = m06_couplers_to_m06_couplers_ARREGION;
  assign M_AXI_arsize = m06_couplers_to_m06_couplers_ARSIZE;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awburst = m06_couplers_to_m06_couplers_AWBURST;
  assign M_AXI_awcache = m06_couplers_to_m06_couplers_AWCACHE;
  assign M_AXI_awid = m06_couplers_to_m06_couplers_AWID;
  assign M_AXI_awlen = m06_couplers_to_m06_couplers_AWLEN;
  assign M_AXI_awlock = m06_couplers_to_m06_couplers_AWLOCK;
  assign M_AXI_awprot = m06_couplers_to_m06_couplers_AWPROT;
  assign M_AXI_awqos = m06_couplers_to_m06_couplers_AWQOS;
  assign M_AXI_awregion = m06_couplers_to_m06_couplers_AWREGION;
  assign M_AXI_awsize = m06_couplers_to_m06_couplers_AWSIZE;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wlast = m06_couplers_to_m06_couplers_WLAST;
  assign M_AXI_wstrb = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bid = m06_couplers_to_m06_couplers_BID;
  assign S_AXI_bresp = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rid = m06_couplers_to_m06_couplers_RID;
  assign S_AXI_rlast = m06_couplers_to_m06_couplers_RLAST;
  assign S_AXI_rresp = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr;
  assign m06_couplers_to_m06_couplers_ARBURST = S_AXI_arburst;
  assign m06_couplers_to_m06_couplers_ARCACHE = S_AXI_arcache;
  assign m06_couplers_to_m06_couplers_ARID = S_AXI_arid;
  assign m06_couplers_to_m06_couplers_ARLEN = S_AXI_arlen;
  assign m06_couplers_to_m06_couplers_ARLOCK = S_AXI_arlock;
  assign m06_couplers_to_m06_couplers_ARPROT = S_AXI_arprot;
  assign m06_couplers_to_m06_couplers_ARQOS = S_AXI_arqos;
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARREGION = S_AXI_arregion;
  assign m06_couplers_to_m06_couplers_ARSIZE = S_AXI_arsize;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr;
  assign m06_couplers_to_m06_couplers_AWBURST = S_AXI_awburst;
  assign m06_couplers_to_m06_couplers_AWCACHE = S_AXI_awcache;
  assign m06_couplers_to_m06_couplers_AWID = S_AXI_awid;
  assign m06_couplers_to_m06_couplers_AWLEN = S_AXI_awlen;
  assign m06_couplers_to_m06_couplers_AWLOCK = S_AXI_awlock;
  assign m06_couplers_to_m06_couplers_AWPROT = S_AXI_awprot;
  assign m06_couplers_to_m06_couplers_AWQOS = S_AXI_awqos;
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWREGION = S_AXI_awregion;
  assign m06_couplers_to_m06_couplers_AWSIZE = S_AXI_awsize;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BID = M_AXI_bid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp;
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata;
  assign m06_couplers_to_m06_couplers_RID = M_AXI_rid;
  assign m06_couplers_to_m06_couplers_RLAST = M_AXI_rlast;
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp;
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata;
  assign m06_couplers_to_m06_couplers_WLAST = S_AXI_wlast;
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb;
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_11WAABO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m07_couplers_ARADDR;
  wire auto_pc_to_m07_couplers_ARREADY;
  wire auto_pc_to_m07_couplers_ARVALID;
  wire [31:0]auto_pc_to_m07_couplers_AWADDR;
  wire auto_pc_to_m07_couplers_AWREADY;
  wire auto_pc_to_m07_couplers_AWVALID;
  wire auto_pc_to_m07_couplers_BREADY;
  wire [1:0]auto_pc_to_m07_couplers_BRESP;
  wire auto_pc_to_m07_couplers_BVALID;
  wire [31:0]auto_pc_to_m07_couplers_RDATA;
  wire auto_pc_to_m07_couplers_RREADY;
  wire [1:0]auto_pc_to_m07_couplers_RRESP;
  wire auto_pc_to_m07_couplers_RVALID;
  wire [31:0]auto_pc_to_m07_couplers_WDATA;
  wire auto_pc_to_m07_couplers_WREADY;
  wire [3:0]auto_pc_to_m07_couplers_WSTRB;
  wire auto_pc_to_m07_couplers_WVALID;
  wire [31:0]m07_couplers_to_auto_pc_ARADDR;
  wire [1:0]m07_couplers_to_auto_pc_ARBURST;
  wire [3:0]m07_couplers_to_auto_pc_ARCACHE;
  wire [11:0]m07_couplers_to_auto_pc_ARID;
  wire [7:0]m07_couplers_to_auto_pc_ARLEN;
  wire [0:0]m07_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m07_couplers_to_auto_pc_ARPROT;
  wire [3:0]m07_couplers_to_auto_pc_ARQOS;
  wire m07_couplers_to_auto_pc_ARREADY;
  wire [3:0]m07_couplers_to_auto_pc_ARREGION;
  wire [2:0]m07_couplers_to_auto_pc_ARSIZE;
  wire m07_couplers_to_auto_pc_ARVALID;
  wire [31:0]m07_couplers_to_auto_pc_AWADDR;
  wire [1:0]m07_couplers_to_auto_pc_AWBURST;
  wire [3:0]m07_couplers_to_auto_pc_AWCACHE;
  wire [11:0]m07_couplers_to_auto_pc_AWID;
  wire [7:0]m07_couplers_to_auto_pc_AWLEN;
  wire [0:0]m07_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m07_couplers_to_auto_pc_AWPROT;
  wire [3:0]m07_couplers_to_auto_pc_AWQOS;
  wire m07_couplers_to_auto_pc_AWREADY;
  wire [3:0]m07_couplers_to_auto_pc_AWREGION;
  wire [2:0]m07_couplers_to_auto_pc_AWSIZE;
  wire m07_couplers_to_auto_pc_AWVALID;
  wire [11:0]m07_couplers_to_auto_pc_BID;
  wire m07_couplers_to_auto_pc_BREADY;
  wire [1:0]m07_couplers_to_auto_pc_BRESP;
  wire m07_couplers_to_auto_pc_BVALID;
  wire [31:0]m07_couplers_to_auto_pc_RDATA;
  wire [11:0]m07_couplers_to_auto_pc_RID;
  wire m07_couplers_to_auto_pc_RLAST;
  wire m07_couplers_to_auto_pc_RREADY;
  wire [1:0]m07_couplers_to_auto_pc_RRESP;
  wire m07_couplers_to_auto_pc_RVALID;
  wire [31:0]m07_couplers_to_auto_pc_WDATA;
  wire m07_couplers_to_auto_pc_WLAST;
  wire m07_couplers_to_auto_pc_WREADY;
  wire [3:0]m07_couplers_to_auto_pc_WSTRB;
  wire m07_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m07_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = m07_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = m07_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m07_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m07_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m07_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign m07_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m07_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m07_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m07_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m07_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m07_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m07_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m07_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign m07_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m07_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m07_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m07_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m07_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m07_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m07_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m07_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m07_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m07_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m07_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m07_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m07_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m07_couplers_WVALID),
        .s_axi_araddr(m07_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m07_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m07_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m07_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m07_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m07_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m07_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m07_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m07_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m07_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m07_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m07_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m07_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m07_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m07_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m07_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m07_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m07_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m07_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m07_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m07_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m07_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m07_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m07_couplers_to_auto_pc_BID),
        .s_axi_bready(m07_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m07_couplers_to_auto_pc_RID),
        .s_axi_rlast(m07_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m07_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m07_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m07_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_pc_WVALID));
endmodule

module m07_couplers_imp_R217WG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [4:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [4:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [4:0]auto_cc_to_m07_couplers_ARADDR;
  wire auto_cc_to_m07_couplers_ARREADY;
  wire auto_cc_to_m07_couplers_ARVALID;
  wire [4:0]auto_cc_to_m07_couplers_AWADDR;
  wire auto_cc_to_m07_couplers_AWREADY;
  wire auto_cc_to_m07_couplers_AWVALID;
  wire auto_cc_to_m07_couplers_BREADY;
  wire [1:0]auto_cc_to_m07_couplers_BRESP;
  wire auto_cc_to_m07_couplers_BVALID;
  wire [31:0]auto_cc_to_m07_couplers_RDATA;
  wire auto_cc_to_m07_couplers_RREADY;
  wire [1:0]auto_cc_to_m07_couplers_RRESP;
  wire auto_cc_to_m07_couplers_RVALID;
  wire [31:0]auto_cc_to_m07_couplers_WDATA;
  wire auto_cc_to_m07_couplers_WREADY;
  wire [3:0]auto_cc_to_m07_couplers_WSTRB;
  wire auto_cc_to_m07_couplers_WVALID;
  wire [31:0]m07_couplers_to_auto_cc_ARADDR;
  wire [2:0]m07_couplers_to_auto_cc_ARPROT;
  wire m07_couplers_to_auto_cc_ARREADY;
  wire m07_couplers_to_auto_cc_ARVALID;
  wire [31:0]m07_couplers_to_auto_cc_AWADDR;
  wire [2:0]m07_couplers_to_auto_cc_AWPROT;
  wire m07_couplers_to_auto_cc_AWREADY;
  wire m07_couplers_to_auto_cc_AWVALID;
  wire m07_couplers_to_auto_cc_BREADY;
  wire [1:0]m07_couplers_to_auto_cc_BRESP;
  wire m07_couplers_to_auto_cc_BVALID;
  wire [31:0]m07_couplers_to_auto_cc_RDATA;
  wire m07_couplers_to_auto_cc_RREADY;
  wire [1:0]m07_couplers_to_auto_cc_RRESP;
  wire m07_couplers_to_auto_cc_RVALID;
  wire [31:0]m07_couplers_to_auto_cc_WDATA;
  wire m07_couplers_to_auto_cc_WREADY;
  wire [3:0]m07_couplers_to_auto_cc_WSTRB;
  wire m07_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[4:0] = auto_cc_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[4:0] = auto_cc_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m07_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  system_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m07_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m07_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m07_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m07_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m07_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m07_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m07_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m07_couplers_to_auto_cc_ARADDR[4:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m07_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m07_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m07_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_cc_AWADDR[4:0]),
        .s_axi_awprot(m07_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m07_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m07_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m07_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m07_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m07_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_cc_WVALID));
endmodule

module m08_couplers_imp_1SWBGE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m08_couplers_to_m08_couplers_ARADDR;
  wire [1:0]m08_couplers_to_m08_couplers_ARBURST;
  wire [3:0]m08_couplers_to_m08_couplers_ARCACHE;
  wire [11:0]m08_couplers_to_m08_couplers_ARID;
  wire [7:0]m08_couplers_to_m08_couplers_ARLEN;
  wire [0:0]m08_couplers_to_m08_couplers_ARLOCK;
  wire [2:0]m08_couplers_to_m08_couplers_ARPROT;
  wire [3:0]m08_couplers_to_m08_couplers_ARQOS;
  wire [0:0]m08_couplers_to_m08_couplers_ARREADY;
  wire [3:0]m08_couplers_to_m08_couplers_ARREGION;
  wire [2:0]m08_couplers_to_m08_couplers_ARSIZE;
  wire [0:0]m08_couplers_to_m08_couplers_ARVALID;
  wire [31:0]m08_couplers_to_m08_couplers_AWADDR;
  wire [1:0]m08_couplers_to_m08_couplers_AWBURST;
  wire [3:0]m08_couplers_to_m08_couplers_AWCACHE;
  wire [11:0]m08_couplers_to_m08_couplers_AWID;
  wire [7:0]m08_couplers_to_m08_couplers_AWLEN;
  wire [0:0]m08_couplers_to_m08_couplers_AWLOCK;
  wire [2:0]m08_couplers_to_m08_couplers_AWPROT;
  wire [3:0]m08_couplers_to_m08_couplers_AWQOS;
  wire [0:0]m08_couplers_to_m08_couplers_AWREADY;
  wire [3:0]m08_couplers_to_m08_couplers_AWREGION;
  wire [2:0]m08_couplers_to_m08_couplers_AWSIZE;
  wire [0:0]m08_couplers_to_m08_couplers_AWVALID;
  wire [11:0]m08_couplers_to_m08_couplers_BID;
  wire [0:0]m08_couplers_to_m08_couplers_BREADY;
  wire [1:0]m08_couplers_to_m08_couplers_BRESP;
  wire [0:0]m08_couplers_to_m08_couplers_BVALID;
  wire [31:0]m08_couplers_to_m08_couplers_RDATA;
  wire [11:0]m08_couplers_to_m08_couplers_RID;
  wire [0:0]m08_couplers_to_m08_couplers_RLAST;
  wire [0:0]m08_couplers_to_m08_couplers_RREADY;
  wire [1:0]m08_couplers_to_m08_couplers_RRESP;
  wire [0:0]m08_couplers_to_m08_couplers_RVALID;
  wire [31:0]m08_couplers_to_m08_couplers_WDATA;
  wire [0:0]m08_couplers_to_m08_couplers_WLAST;
  wire [0:0]m08_couplers_to_m08_couplers_WREADY;
  wire [3:0]m08_couplers_to_m08_couplers_WSTRB;
  wire [0:0]m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m08_couplers_to_m08_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m08_couplers_to_m08_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = m08_couplers_to_m08_couplers_ARID;
  assign M_AXI_arlen[7:0] = m08_couplers_to_m08_couplers_ARLEN;
  assign M_AXI_arlock[0] = m08_couplers_to_m08_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m08_couplers_to_m08_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m08_couplers_to_m08_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m08_couplers_to_m08_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m08_couplers_to_m08_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m08_couplers_to_m08_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m08_couplers_to_m08_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = m08_couplers_to_m08_couplers_AWID;
  assign M_AXI_awlen[7:0] = m08_couplers_to_m08_couplers_AWLEN;
  assign M_AXI_awlock[0] = m08_couplers_to_m08_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m08_couplers_to_m08_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m08_couplers_to_m08_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m08_couplers_to_m08_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m08_couplers_to_m08_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready[0] = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready[0] = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wlast[0] = m08_couplers_to_m08_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready[0] = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready[0] = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bid[11:0] = m08_couplers_to_m08_couplers_BID;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid[0] = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rid[11:0] = m08_couplers_to_m08_couplers_RID;
  assign S_AXI_rlast[0] = m08_couplers_to_m08_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid[0] = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready[0] = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_m08_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m08_couplers_to_m08_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m08_couplers_to_m08_couplers_ARID = S_AXI_arid[11:0];
  assign m08_couplers_to_m08_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m08_couplers_to_m08_couplers_ARLOCK = S_AXI_arlock[0];
  assign m08_couplers_to_m08_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_m08_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready[0];
  assign m08_couplers_to_m08_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m08_couplers_to_m08_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid[0];
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_m08_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m08_couplers_to_m08_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m08_couplers_to_m08_couplers_AWID = S_AXI_awid[11:0];
  assign m08_couplers_to_m08_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m08_couplers_to_m08_couplers_AWLOCK = S_AXI_awlock[0];
  assign m08_couplers_to_m08_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_m08_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready[0];
  assign m08_couplers_to_m08_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m08_couplers_to_m08_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid[0];
  assign m08_couplers_to_m08_couplers_BID = M_AXI_bid[11:0];
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready[0];
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid[0];
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_couplers_to_m08_couplers_RID = M_AXI_rid[11:0];
  assign m08_couplers_to_m08_couplers_RLAST = M_AXI_rlast[0];
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready[0];
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid[0];
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_m08_couplers_WLAST = S_AXI_wlast[0];
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready[0];
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m08_couplers_imp_1UFEID6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m08_couplers_to_m08_couplers_ARADDR;
  wire [0:0]m08_couplers_to_m08_couplers_ARREADY;
  wire [0:0]m08_couplers_to_m08_couplers_ARVALID;
  wire [31:0]m08_couplers_to_m08_couplers_AWADDR;
  wire [0:0]m08_couplers_to_m08_couplers_AWREADY;
  wire [0:0]m08_couplers_to_m08_couplers_AWVALID;
  wire [0:0]m08_couplers_to_m08_couplers_BREADY;
  wire [1:0]m08_couplers_to_m08_couplers_BRESP;
  wire [0:0]m08_couplers_to_m08_couplers_BVALID;
  wire [31:0]m08_couplers_to_m08_couplers_RDATA;
  wire [0:0]m08_couplers_to_m08_couplers_RREADY;
  wire [1:0]m08_couplers_to_m08_couplers_RRESP;
  wire [0:0]m08_couplers_to_m08_couplers_RVALID;
  wire [31:0]m08_couplers_to_m08_couplers_WDATA;
  wire [0:0]m08_couplers_to_m08_couplers_WREADY;
  wire [3:0]m08_couplers_to_m08_couplers_WSTRB;
  wire [0:0]m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready[0] = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready[0] = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready[0] = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready[0] = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid[0] = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid[0] = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready[0] = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready[0];
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid[0];
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready[0];
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid[0];
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready[0];
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid[0];
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready[0];
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid[0];
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready[0];
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m09_couplers_imp_I1BV1N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m09_couplers_to_m09_couplers_ARADDR;
  wire [0:0]m09_couplers_to_m09_couplers_ARREADY;
  wire [0:0]m09_couplers_to_m09_couplers_ARVALID;
  wire [31:0]m09_couplers_to_m09_couplers_AWADDR;
  wire [0:0]m09_couplers_to_m09_couplers_AWREADY;
  wire [0:0]m09_couplers_to_m09_couplers_AWVALID;
  wire [0:0]m09_couplers_to_m09_couplers_BREADY;
  wire [1:0]m09_couplers_to_m09_couplers_BRESP;
  wire [0:0]m09_couplers_to_m09_couplers_BVALID;
  wire [31:0]m09_couplers_to_m09_couplers_RDATA;
  wire [0:0]m09_couplers_to_m09_couplers_RREADY;
  wire [1:0]m09_couplers_to_m09_couplers_RRESP;
  wire [0:0]m09_couplers_to_m09_couplers_RVALID;
  wire [31:0]m09_couplers_to_m09_couplers_WDATA;
  wire [0:0]m09_couplers_to_m09_couplers_WREADY;
  wire [3:0]m09_couplers_to_m09_couplers_WSTRB;
  wire [0:0]m09_couplers_to_m09_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m09_couplers_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m09_couplers_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m09_couplers_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m09_couplers_to_m09_couplers_AWVALID;
  assign M_AXI_bready[0] = m09_couplers_to_m09_couplers_BREADY;
  assign M_AXI_rready[0] = m09_couplers_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m09_couplers_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m09_couplers_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m09_couplers_to_m09_couplers_WVALID;
  assign S_AXI_arready[0] = m09_couplers_to_m09_couplers_ARREADY;
  assign S_AXI_awready[0] = m09_couplers_to_m09_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_m09_couplers_BRESP;
  assign S_AXI_bvalid[0] = m09_couplers_to_m09_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_m09_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_m09_couplers_RRESP;
  assign S_AXI_rvalid[0] = m09_couplers_to_m09_couplers_RVALID;
  assign S_AXI_wready[0] = m09_couplers_to_m09_couplers_WREADY;
  assign m09_couplers_to_m09_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_m09_couplers_ARREADY = M_AXI_arready[0];
  assign m09_couplers_to_m09_couplers_ARVALID = S_AXI_arvalid[0];
  assign m09_couplers_to_m09_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_m09_couplers_AWREADY = M_AXI_awready[0];
  assign m09_couplers_to_m09_couplers_AWVALID = S_AXI_awvalid[0];
  assign m09_couplers_to_m09_couplers_BREADY = S_AXI_bready[0];
  assign m09_couplers_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign m09_couplers_to_m09_couplers_BVALID = M_AXI_bvalid[0];
  assign m09_couplers_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign m09_couplers_to_m09_couplers_RREADY = S_AXI_rready[0];
  assign m09_couplers_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign m09_couplers_to_m09_couplers_RVALID = M_AXI_rvalid[0];
  assign m09_couplers_to_m09_couplers_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_m09_couplers_WREADY = M_AXI_wready[0];
  assign m09_couplers_to_m09_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_m09_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m10_couplers_imp_7QAL4M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [6:0]auto_cc_to_m10_couplers_ARADDR;
  wire auto_cc_to_m10_couplers_ARREADY;
  wire auto_cc_to_m10_couplers_ARVALID;
  wire [6:0]auto_cc_to_m10_couplers_AWADDR;
  wire auto_cc_to_m10_couplers_AWREADY;
  wire auto_cc_to_m10_couplers_AWVALID;
  wire auto_cc_to_m10_couplers_BREADY;
  wire [1:0]auto_cc_to_m10_couplers_BRESP;
  wire auto_cc_to_m10_couplers_BVALID;
  wire [31:0]auto_cc_to_m10_couplers_RDATA;
  wire auto_cc_to_m10_couplers_RREADY;
  wire [1:0]auto_cc_to_m10_couplers_RRESP;
  wire auto_cc_to_m10_couplers_RVALID;
  wire [31:0]auto_cc_to_m10_couplers_WDATA;
  wire auto_cc_to_m10_couplers_WREADY;
  wire [3:0]auto_cc_to_m10_couplers_WSTRB;
  wire auto_cc_to_m10_couplers_WVALID;
  wire [31:0]m10_couplers_to_auto_cc_ARADDR;
  wire [2:0]m10_couplers_to_auto_cc_ARPROT;
  wire m10_couplers_to_auto_cc_ARREADY;
  wire m10_couplers_to_auto_cc_ARVALID;
  wire [31:0]m10_couplers_to_auto_cc_AWADDR;
  wire [2:0]m10_couplers_to_auto_cc_AWPROT;
  wire m10_couplers_to_auto_cc_AWREADY;
  wire m10_couplers_to_auto_cc_AWVALID;
  wire m10_couplers_to_auto_cc_BREADY;
  wire [1:0]m10_couplers_to_auto_cc_BRESP;
  wire m10_couplers_to_auto_cc_BVALID;
  wire [31:0]m10_couplers_to_auto_cc_RDATA;
  wire m10_couplers_to_auto_cc_RREADY;
  wire [1:0]m10_couplers_to_auto_cc_RRESP;
  wire m10_couplers_to_auto_cc_RVALID;
  wire [31:0]m10_couplers_to_auto_cc_WDATA;
  wire m10_couplers_to_auto_cc_WREADY;
  wire [3:0]m10_couplers_to_auto_cc_WSTRB;
  wire m10_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[6:0] = auto_cc_to_m10_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_cc_to_m10_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m10_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m10_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m10_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m10_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m10_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m10_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m10_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m10_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m10_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m10_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m10_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  system_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m10_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m10_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m10_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m10_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m10_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m10_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m10_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m10_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m10_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m10_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m10_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m10_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m10_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m10_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m10_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m10_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m10_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m10_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m10_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m10_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m10_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m10_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m10_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m10_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m10_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m10_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m10_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m10_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m10_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m10_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m10_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m10_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m10_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m10_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m10_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m10_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_117EIM5
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [63:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [7:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_us_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_AWCACHE;
  wire [7:0]s00_couplers_to_auto_us_AWLEN;
  wire [2:0]s00_couplers_to_auto_us_AWPROT;
  wire s00_couplers_to_auto_us_AWREADY;
  wire [2:0]s00_couplers_to_auto_us_AWSIZE;
  wire s00_couplers_to_auto_us_AWVALID;
  wire s00_couplers_to_auto_us_BREADY;
  wire [1:0]s00_couplers_to_auto_us_BRESP;
  wire s00_couplers_to_auto_us_BVALID;
  wire [31:0]s00_couplers_to_auto_us_WDATA;
  wire s00_couplers_to_auto_us_WLAST;
  wire s00_couplers_to_auto_us_WREADY;
  wire [3:0]s00_couplers_to_auto_us_WSTRB;
  wire s00_couplers_to_auto_us_WVALID;

  assign M_AXI_awaddr[31:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_wdata[63:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_awready = s00_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_BVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_WREADY;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  system_auto_us_0 auto_us
       (.m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s00_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s00_couplers_to_auto_us_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_BVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_WVALID));
endmodule

module s00_couplers_imp_1BPMI78
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [3:0]s00_couplers_to_auto_pc_ARREGION;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire [0:0]s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire [0:0]s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire [0:0]s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire [0:0]s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [0:0]s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire [0:0]s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready[0] = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast[0] = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast[0];
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid[0];
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_IK3G2O
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [11:0]auto_pc_to_s00_couplers_ARID;
  wire [7:0]auto_pc_to_s00_couplers_ARLEN;
  wire [0:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [11:0]auto_pc_to_s00_couplers_AWID;
  wire [7:0]auto_pc_to_s00_couplers_AWLEN;
  wire [0:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire [11:0]auto_pc_to_s00_couplers_BID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire [11:0]auto_pc_to_s00_couplers_RID;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = auto_pc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = auto_pc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BID = M_AXI_bid[11:0];
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RID = M_AXI_rid[11:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_4 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_s00_couplers_BID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_s00_couplers_RID),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_B8JDWS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_us_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_to_s01_couplers_ARQOS;
  wire auto_us_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_to_s01_couplers_ARSIZE;
  wire auto_us_to_s01_couplers_ARVALID;
  wire [63:0]auto_us_to_s01_couplers_RDATA;
  wire auto_us_to_s01_couplers_RLAST;
  wire auto_us_to_s01_couplers_RREADY;
  wire [1:0]auto_us_to_s01_couplers_RRESP;
  wire auto_us_to_s01_couplers_RVALID;
  wire [31:0]s01_couplers_to_auto_us_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_ARCACHE;
  wire [7:0]s01_couplers_to_auto_us_ARLEN;
  wire [2:0]s01_couplers_to_auto_us_ARPROT;
  wire s01_couplers_to_auto_us_ARREADY;
  wire [2:0]s01_couplers_to_auto_us_ARSIZE;
  wire s01_couplers_to_auto_us_ARVALID;
  wire [31:0]s01_couplers_to_auto_us_RDATA;
  wire s01_couplers_to_auto_us_RLAST;
  wire s01_couplers_to_auto_us_RREADY;
  wire [1:0]s01_couplers_to_auto_us_RRESP;
  wire s01_couplers_to_auto_us_RVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s01_couplers_ARVALID;
  assign M_AXI_rready = auto_us_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s01_couplers_to_auto_us_ARREADY;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s01_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_RVALID;
  assign auto_us_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_RREADY = S_AXI_rready;
  system_auto_us_1 auto_us
       (.m_axi_araddr(auto_us_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s01_couplers_ARVALID),
        .m_axi_rdata(auto_us_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s01_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s01_couplers_to_auto_us_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s01_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_ARVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s01_couplers_to_auto_us_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_RVALID));
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=72,numReposBlks=39,numNonXlnxBlks=3,numHierBlks=33,maxHierDepth=3,numSysgenBlks=0,numHlsBlks=6,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    hdmi_in_clk_n,
    hdmi_in_clk_p,
    hdmi_in_data_n,
    hdmi_in_data_p,
    hdmi_in_ddc_scl_i,
    hdmi_in_ddc_scl_o,
    hdmi_in_ddc_scl_t,
    hdmi_in_ddc_sda_i,
    hdmi_in_ddc_sda_o,
    hdmi_in_ddc_sda_t,
    hdmi_in_hpd,
    hdmi_out_clk_n,
    hdmi_out_clk_p,
    hdmi_out_data_n,
    hdmi_out_data_p,
    hdmi_out_ddc_scl_i,
    hdmi_out_ddc_scl_o,
    hdmi_out_ddc_scl_t,
    hdmi_out_ddc_sda_i,
    hdmi_out_ddc_sda_o,
    hdmi_out_ddc_sda_t,
    hdmi_out_hpd);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input hdmi_in_clk_n;
  input hdmi_in_clk_p;
  input [2:0]hdmi_in_data_n;
  input [2:0]hdmi_in_data_p;
  input hdmi_in_ddc_scl_i;
  output hdmi_in_ddc_scl_o;
  output hdmi_in_ddc_scl_t;
  input hdmi_in_ddc_sda_i;
  output hdmi_in_ddc_sda_o;
  output hdmi_in_ddc_sda_t;
  output [0:0]hdmi_in_hpd;
  output hdmi_out_clk_n;
  output hdmi_out_clk_p;
  output [2:0]hdmi_out_data_n;
  output [2:0]hdmi_out_data_p;
  input hdmi_out_ddc_scl_i;
  output hdmi_out_ddc_scl_o;
  output hdmi_out_ddc_scl_t;
  input hdmi_out_ddc_sda_i;
  output hdmi_out_ddc_sda_o;
  output hdmi_out_ddc_sda_t;
  output [0:0]hdmi_out_hpd;

  wire [0:0]axi_gpio_video_gpio_io_o;
  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_ARCACHE;
  wire [0:0]axi_mem_intercon_M00_AXI_ARID;
  wire [3:0]axi_mem_intercon_M00_AXI_ARLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_ARQOS;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_ARSIZE;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [0:0]axi_mem_intercon_M00_AXI_AWID;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire [5:0]axi_mem_intercon_M00_AXI_BID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_RDATA;
  wire [5:0]axi_mem_intercon_M00_AXI_RID;
  wire axi_mem_intercon_M00_AXI_RLAST;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire [0:0]axi_mem_intercon_M00_AXI_WID;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire dvi2rgb_0_DDC_SCL_I;
  wire dvi2rgb_0_DDC_SCL_O;
  wire dvi2rgb_0_DDC_SCL_T;
  wire dvi2rgb_0_DDC_SDA_I;
  wire dvi2rgb_0_DDC_SDA_O;
  wire dvi2rgb_0_DDC_SDA_T;
  wire hdmi_in_1_CLK_N;
  wire hdmi_in_1_CLK_P;
  wire [2:0]hdmi_in_1_DATA_N;
  wire [2:0]hdmi_in_1_DATA_P;
  wire [0:0]hdmi_out_hpd_video_gpio_io_o;
  wire iop_interrupts_irq;
  wire [0:0]proc_sys_reset_fclk1_interconnect_aresetn;
  wire [0:0]proc_sys_reset_fclk1_peripheral_aresetn;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_CLK2;
  wire processing_system7_0_FCLK_CLK3;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire processing_system7_0_IIC_0_SCL_I;
  wire processing_system7_0_IIC_0_SCL_O;
  wire processing_system7_0_IIC_0_SCL_T;
  wire processing_system7_0_IIC_0_SDA_I;
  wire processing_system7_0_IIC_0_SDA_O;
  wire processing_system7_0_IIC_0_SDA_T;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M05_AXI_ARADDR;
  wire processing_system7_0_axi_periph_M05_AXI_ARREADY;
  wire processing_system7_0_axi_periph_M05_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M05_AXI_AWADDR;
  wire processing_system7_0_axi_periph_M05_AXI_AWREADY;
  wire processing_system7_0_axi_periph_M05_AXI_AWVALID;
  wire processing_system7_0_axi_periph_M05_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M05_AXI_BRESP;
  wire processing_system7_0_axi_periph_M05_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M05_AXI_RDATA;
  wire processing_system7_0_axi_periph_M05_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M05_AXI_RRESP;
  wire processing_system7_0_axi_periph_M05_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M05_AXI_WDATA;
  wire processing_system7_0_axi_periph_M05_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M05_AXI_WSTRB;
  wire processing_system7_0_axi_periph_M05_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_ARADDR;
  wire processing_system7_0_axi_periph_M07_AXI_ARREADY;
  wire processing_system7_0_axi_periph_M07_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_AWADDR;
  wire processing_system7_0_axi_periph_M07_AXI_AWREADY;
  wire processing_system7_0_axi_periph_M07_AXI_AWVALID;
  wire processing_system7_0_axi_periph_M07_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M07_AXI_BRESP;
  wire processing_system7_0_axi_periph_M07_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_RDATA;
  wire processing_system7_0_axi_periph_M07_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M07_AXI_RRESP;
  wire processing_system7_0_axi_periph_M07_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_WDATA;
  wire processing_system7_0_axi_periph_M07_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M07_AXI_WSTRB;
  wire processing_system7_0_axi_periph_M07_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_ARADDR;
  wire [1:0]processing_system7_0_axi_periph_M08_AXI_ARBURST;
  wire [3:0]processing_system7_0_axi_periph_M08_AXI_ARCACHE;
  wire [11:0]processing_system7_0_axi_periph_M08_AXI_ARID;
  wire [7:0]processing_system7_0_axi_periph_M08_AXI_ARLEN;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_ARLOCK;
  wire [2:0]processing_system7_0_axi_periph_M08_AXI_ARPROT;
  wire [3:0]processing_system7_0_axi_periph_M08_AXI_ARQOS;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_ARREADY;
  wire [3:0]processing_system7_0_axi_periph_M08_AXI_ARREGION;
  wire [2:0]processing_system7_0_axi_periph_M08_AXI_ARSIZE;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_AWADDR;
  wire [1:0]processing_system7_0_axi_periph_M08_AXI_AWBURST;
  wire [3:0]processing_system7_0_axi_periph_M08_AXI_AWCACHE;
  wire [11:0]processing_system7_0_axi_periph_M08_AXI_AWID;
  wire [7:0]processing_system7_0_axi_periph_M08_AXI_AWLEN;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_AWLOCK;
  wire [2:0]processing_system7_0_axi_periph_M08_AXI_AWPROT;
  wire [3:0]processing_system7_0_axi_periph_M08_AXI_AWQOS;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_AWREADY;
  wire [3:0]processing_system7_0_axi_periph_M08_AXI_AWREGION;
  wire [2:0]processing_system7_0_axi_periph_M08_AXI_AWSIZE;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_AWVALID;
  wire [11:0]processing_system7_0_axi_periph_M08_AXI_BID;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M08_AXI_BRESP;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_RDATA;
  wire [11:0]processing_system7_0_axi_periph_M08_AXI_RID;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_RLAST;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M08_AXI_RRESP;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_WDATA;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_WLAST;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M08_AXI_WSTRB;
  wire [0:0]processing_system7_0_axi_periph_M08_AXI_WVALID;
  wire [0:0]rst_processing_system7_0_fclk0_interconnect_aresetn;
  wire [0:0]rst_processing_system7_0_fclk0_peripheral_aresetn;
  wire video_TMDS1_CLK_N;
  wire video_TMDS1_CLK_P;
  wire [2:0]video_TMDS1_DATA_N;
  wire [2:0]video_TMDS1_DATA_P;
  wire [5:0]video_dout;

  assign dvi2rgb_0_DDC_SCL_I = hdmi_in_ddc_scl_i;
  assign dvi2rgb_0_DDC_SDA_I = hdmi_in_ddc_sda_i;
  assign hdmi_in_1_CLK_N = hdmi_in_clk_n;
  assign hdmi_in_1_CLK_P = hdmi_in_clk_p;
  assign hdmi_in_1_DATA_N = hdmi_in_data_n[2:0];
  assign hdmi_in_1_DATA_P = hdmi_in_data_p[2:0];
  assign hdmi_in_ddc_scl_o = dvi2rgb_0_DDC_SCL_O;
  assign hdmi_in_ddc_scl_t = dvi2rgb_0_DDC_SCL_T;
  assign hdmi_in_ddc_sda_o = dvi2rgb_0_DDC_SDA_O;
  assign hdmi_in_ddc_sda_t = dvi2rgb_0_DDC_SDA_T;
  assign hdmi_in_hpd[0] = axi_gpio_video_gpio_io_o;
  assign hdmi_out_clk_n = video_TMDS1_CLK_N;
  assign hdmi_out_clk_p = video_TMDS1_CLK_P;
  assign hdmi_out_data_n[2:0] = video_TMDS1_DATA_N;
  assign hdmi_out_data_p[2:0] = video_TMDS1_DATA_P;
  assign hdmi_out_ddc_scl_o = processing_system7_0_IIC_0_SCL_O;
  assign hdmi_out_ddc_scl_t = processing_system7_0_IIC_0_SCL_T;
  assign hdmi_out_ddc_sda_o = processing_system7_0_IIC_0_SDA_O;
  assign hdmi_out_ddc_sda_t = processing_system7_0_IIC_0_SDA_T;
  assign hdmi_out_hpd[0] = hdmi_out_hpd_video_gpio_io_o;
  assign processing_system7_0_IIC_0_SCL_I = hdmi_out_ddc_scl_i;
  assign processing_system7_0_IIC_0_SDA_I = hdmi_out_ddc_sda_i;
  system_add_function_0_1 add_function_0
       (.ap_clk(processing_system7_0_FCLK_CLK0),
        .ap_rst_n(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .s_axi_control_ARADDR(processing_system7_0_axi_periph_M07_AXI_ARADDR[5:0]),
        .s_axi_control_ARREADY(processing_system7_0_axi_periph_M07_AXI_ARREADY),
        .s_axi_control_ARVALID(processing_system7_0_axi_periph_M07_AXI_ARVALID),
        .s_axi_control_AWADDR(processing_system7_0_axi_periph_M07_AXI_AWADDR[5:0]),
        .s_axi_control_AWREADY(processing_system7_0_axi_periph_M07_AXI_AWREADY),
        .s_axi_control_AWVALID(processing_system7_0_axi_periph_M07_AXI_AWVALID),
        .s_axi_control_BREADY(processing_system7_0_axi_periph_M07_AXI_BREADY),
        .s_axi_control_BRESP(processing_system7_0_axi_periph_M07_AXI_BRESP),
        .s_axi_control_BVALID(processing_system7_0_axi_periph_M07_AXI_BVALID),
        .s_axi_control_RDATA(processing_system7_0_axi_periph_M07_AXI_RDATA),
        .s_axi_control_RREADY(processing_system7_0_axi_periph_M07_AXI_RREADY),
        .s_axi_control_RRESP(processing_system7_0_axi_periph_M07_AXI_RRESP),
        .s_axi_control_RVALID(processing_system7_0_axi_periph_M07_AXI_RVALID),
        .s_axi_control_WDATA(processing_system7_0_axi_periph_M07_AXI_WDATA),
        .s_axi_control_WREADY(processing_system7_0_axi_periph_M07_AXI_WREADY),
        .s_axi_control_WSTRB(processing_system7_0_axi_periph_M07_AXI_WSTRB),
        .s_axi_control_WVALID(processing_system7_0_axi_periph_M07_AXI_WVALID));
  system_proc_sys_reset_fclk1_0 proc_sys_reset_fclk1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(proc_sys_reset_fclk1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_fclk1_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK1));
  system_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_CLK2(processing_system7_0_FCLK_CLK2),
        .FCLK_CLK3(processing_system7_0_FCLK_CLK3),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .I2C0_SCL_I(processing_system7_0_IIC_0_SCL_I),
        .I2C0_SCL_O(processing_system7_0_IIC_0_SCL_O),
        .I2C0_SCL_T(processing_system7_0_IIC_0_SCL_T),
        .I2C0_SDA_I(processing_system7_0_IIC_0_SDA_I),
        .I2C0_SDA_O(processing_system7_0_IIC_0_SDA_O),
        .I2C0_SDA_T(processing_system7_0_IIC_0_SDA_T),
        .IRQ_F2P(iop_interrupts_irq),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .M_AXI_GP1_ACLK(processing_system7_0_FCLK_CLK3),
        .M_AXI_GP1_ARREADY(1'b0),
        .M_AXI_GP1_AWREADY(1'b0),
        .M_AXI_GP1_BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP1_BRESP({1'b0,1'b0}),
        .M_AXI_GP1_BVALID(1'b0),
        .M_AXI_GP1_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP1_RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP1_RLAST(1'b0),
        .M_AXI_GP1_RRESP({1'b0,1'b0}),
        .M_AXI_GP1_RVALID(1'b0),
        .M_AXI_GP1_WREADY(1'b0),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_GP0_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARBURST({1'b0,1'b0}),
        .S_AXI_GP0_ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARLOCK({1'b0,1'b0}),
        .S_AXI_GP0_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARSIZE({1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARVALID(1'b0),
        .S_AXI_GP0_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWBURST({1'b0,1'b0}),
        .S_AXI_GP0_AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWLOCK({1'b0,1'b0}),
        .S_AXI_GP0_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWSIZE({1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWVALID(1'b0),
        .S_AXI_GP0_BREADY(1'b0),
        .S_AXI_GP0_RREADY(1'b0),
        .S_AXI_GP0_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_WLAST(1'b0),
        .S_AXI_GP0_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_WVALID(1'b0),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK1),
        .S_AXI_HP0_ARADDR(axi_mem_intercon_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_mem_intercon_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_mem_intercon_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_ARID}),
        .S_AXI_HP0_ARLEN(axi_mem_intercon_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_mem_intercon_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_mem_intercon_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_mem_intercon_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_mem_intercon_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_mem_intercon_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_mem_intercon_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(axi_mem_intercon_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_mem_intercon_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_mem_intercon_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_AWID}),
        .S_AXI_HP0_AWLEN(axi_mem_intercon_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_mem_intercon_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_mem_intercon_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_mem_intercon_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_mem_intercon_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_mem_intercon_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_mem_intercon_M00_AXI_AWVALID),
        .S_AXI_HP0_BID(axi_mem_intercon_M00_AXI_BID),
        .S_AXI_HP0_BREADY(axi_mem_intercon_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_mem_intercon_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_mem_intercon_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(axi_mem_intercon_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(axi_mem_intercon_M00_AXI_RID),
        .S_AXI_HP0_RLAST(axi_mem_intercon_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_mem_intercon_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_mem_intercon_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_mem_intercon_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(axi_mem_intercon_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_WID}),
        .S_AXI_HP0_WLAST(axi_mem_intercon_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_mem_intercon_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_mem_intercon_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_mem_intercon_M00_AXI_WVALID),
        .S_AXI_HP2_ACLK(processing_system7_0_FCLK_CLK3),
        .S_AXI_HP2_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARBURST({1'b0,1'b0}),
        .S_AXI_HP2_ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP2_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARSIZE({1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARVALID(1'b0),
        .S_AXI_HP2_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWBURST({1'b0,1'b0}),
        .S_AXI_HP2_AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWLOCK({1'b0,1'b0}),
        .S_AXI_HP2_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWSIZE({1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWVALID(1'b0),
        .S_AXI_HP2_BREADY(1'b0),
        .S_AXI_HP2_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP2_RREADY(1'b0),
        .S_AXI_HP2_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_WLAST(1'b0),
        .S_AXI_HP2_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP2_WSTRB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_WVALID(1'b0),
        .USB0_VBUS_PWRFAULT(1'b0));
  system_processing_system7_0_axi_periph_0 processing_system7_0_axi_periph
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_processing_system7_0_fclk0_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .M00_AXI_arready(1'b0),
        .M00_AXI_awready(1'b0),
        .M00_AXI_bid(1'b0),
        .M00_AXI_bresp(1'b0),
        .M00_AXI_bvalid(1'b0),
        .M00_AXI_rdata(1'b0),
        .M00_AXI_rid(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rresp(1'b0),
        .M00_AXI_rvalid(1'b0),
        .M00_AXI_wready(1'b0),
        .M01_ACLK(processing_system7_0_FCLK_CLK0),
        .M01_ARESETN(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .M01_AXI_arready(1'b0),
        .M01_AXI_awready(1'b0),
        .M01_AXI_bid(1'b0),
        .M01_AXI_bresp(1'b0),
        .M01_AXI_bvalid(1'b0),
        .M01_AXI_rdata(1'b0),
        .M01_AXI_rid(1'b0),
        .M01_AXI_rlast(1'b0),
        .M01_AXI_rresp(1'b0),
        .M01_AXI_rvalid(1'b0),
        .M01_AXI_wready(1'b0),
        .M02_ACLK(processing_system7_0_FCLK_CLK0),
        .M02_ARESETN(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .M02_AXI_arready(1'b0),
        .M02_AXI_awready(1'b0),
        .M02_AXI_bid(1'b0),
        .M02_AXI_bresp(1'b0),
        .M02_AXI_bvalid(1'b0),
        .M02_AXI_rdata(1'b0),
        .M02_AXI_rid(1'b0),
        .M02_AXI_rlast(1'b0),
        .M02_AXI_rresp(1'b0),
        .M02_AXI_rvalid(1'b0),
        .M02_AXI_wready(1'b0),
        .M03_ACLK(processing_system7_0_FCLK_CLK0),
        .M03_ARESETN(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .M03_AXI_arready(1'b0),
        .M03_AXI_awready(1'b0),
        .M03_AXI_bid(1'b0),
        .M03_AXI_bresp(1'b0),
        .M03_AXI_bvalid(1'b0),
        .M03_AXI_rdata(1'b0),
        .M03_AXI_rid(1'b0),
        .M03_AXI_rlast(1'b0),
        .M03_AXI_rresp(1'b0),
        .M03_AXI_rvalid(1'b0),
        .M03_AXI_wready(1'b0),
        .M04_ACLK(processing_system7_0_FCLK_CLK0),
        .M04_ARESETN(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .M04_AXI_arready(1'b0),
        .M04_AXI_awready(1'b0),
        .M04_AXI_bid(1'b0),
        .M04_AXI_bresp(1'b0),
        .M04_AXI_bvalid(1'b0),
        .M04_AXI_rdata(1'b0),
        .M04_AXI_rid(1'b0),
        .M04_AXI_rlast(1'b0),
        .M04_AXI_rresp(1'b0),
        .M04_AXI_rvalid(1'b0),
        .M04_AXI_wready(1'b0),
        .M05_ACLK(processing_system7_0_FCLK_CLK0),
        .M05_ARESETN(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .M05_AXI_araddr(processing_system7_0_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arready(processing_system7_0_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(processing_system7_0_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(processing_system7_0_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awready(processing_system7_0_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(processing_system7_0_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(processing_system7_0_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(processing_system7_0_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(processing_system7_0_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(processing_system7_0_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(processing_system7_0_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(processing_system7_0_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(processing_system7_0_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(processing_system7_0_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(processing_system7_0_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(processing_system7_0_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(processing_system7_0_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(processing_system7_0_FCLK_CLK0),
        .M06_ARESETN(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .M06_AXI_arready(1'b0),
        .M06_AXI_awready(1'b0),
        .M06_AXI_bid(1'b0),
        .M06_AXI_bresp(1'b0),
        .M06_AXI_bvalid(1'b0),
        .M06_AXI_rdata(1'b0),
        .M06_AXI_rid(1'b0),
        .M06_AXI_rlast(1'b0),
        .M06_AXI_rresp(1'b0),
        .M06_AXI_rvalid(1'b0),
        .M06_AXI_wready(1'b0),
        .M07_ACLK(processing_system7_0_FCLK_CLK0),
        .M07_ARESETN(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .M07_AXI_araddr(processing_system7_0_axi_periph_M07_AXI_ARADDR),
        .M07_AXI_arready(processing_system7_0_axi_periph_M07_AXI_ARREADY),
        .M07_AXI_arvalid(processing_system7_0_axi_periph_M07_AXI_ARVALID),
        .M07_AXI_awaddr(processing_system7_0_axi_periph_M07_AXI_AWADDR),
        .M07_AXI_awready(processing_system7_0_axi_periph_M07_AXI_AWREADY),
        .M07_AXI_awvalid(processing_system7_0_axi_periph_M07_AXI_AWVALID),
        .M07_AXI_bready(processing_system7_0_axi_periph_M07_AXI_BREADY),
        .M07_AXI_bresp(processing_system7_0_axi_periph_M07_AXI_BRESP),
        .M07_AXI_bvalid(processing_system7_0_axi_periph_M07_AXI_BVALID),
        .M07_AXI_rdata(processing_system7_0_axi_periph_M07_AXI_RDATA),
        .M07_AXI_rready(processing_system7_0_axi_periph_M07_AXI_RREADY),
        .M07_AXI_rresp(processing_system7_0_axi_periph_M07_AXI_RRESP),
        .M07_AXI_rvalid(processing_system7_0_axi_periph_M07_AXI_RVALID),
        .M07_AXI_wdata(processing_system7_0_axi_periph_M07_AXI_WDATA),
        .M07_AXI_wready(processing_system7_0_axi_periph_M07_AXI_WREADY),
        .M07_AXI_wstrb(processing_system7_0_axi_periph_M07_AXI_WSTRB),
        .M07_AXI_wvalid(processing_system7_0_axi_periph_M07_AXI_WVALID),
        .M08_ACLK(processing_system7_0_FCLK_CLK0),
        .M08_ARESETN(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .M08_AXI_araddr(processing_system7_0_axi_periph_M08_AXI_ARADDR),
        .M08_AXI_arburst(processing_system7_0_axi_periph_M08_AXI_ARBURST),
        .M08_AXI_arcache(processing_system7_0_axi_periph_M08_AXI_ARCACHE),
        .M08_AXI_arid(processing_system7_0_axi_periph_M08_AXI_ARID),
        .M08_AXI_arlen(processing_system7_0_axi_periph_M08_AXI_ARLEN),
        .M08_AXI_arlock(processing_system7_0_axi_periph_M08_AXI_ARLOCK),
        .M08_AXI_arprot(processing_system7_0_axi_periph_M08_AXI_ARPROT),
        .M08_AXI_arqos(processing_system7_0_axi_periph_M08_AXI_ARQOS),
        .M08_AXI_arready(processing_system7_0_axi_periph_M08_AXI_ARREADY),
        .M08_AXI_arregion(processing_system7_0_axi_periph_M08_AXI_ARREGION),
        .M08_AXI_arsize(processing_system7_0_axi_periph_M08_AXI_ARSIZE),
        .M08_AXI_arvalid(processing_system7_0_axi_periph_M08_AXI_ARVALID),
        .M08_AXI_awaddr(processing_system7_0_axi_periph_M08_AXI_AWADDR),
        .M08_AXI_awburst(processing_system7_0_axi_periph_M08_AXI_AWBURST),
        .M08_AXI_awcache(processing_system7_0_axi_periph_M08_AXI_AWCACHE),
        .M08_AXI_awid(processing_system7_0_axi_periph_M08_AXI_AWID),
        .M08_AXI_awlen(processing_system7_0_axi_periph_M08_AXI_AWLEN),
        .M08_AXI_awlock(processing_system7_0_axi_periph_M08_AXI_AWLOCK),
        .M08_AXI_awprot(processing_system7_0_axi_periph_M08_AXI_AWPROT),
        .M08_AXI_awqos(processing_system7_0_axi_periph_M08_AXI_AWQOS),
        .M08_AXI_awready(processing_system7_0_axi_periph_M08_AXI_AWREADY),
        .M08_AXI_awregion(processing_system7_0_axi_periph_M08_AXI_AWREGION),
        .M08_AXI_awsize(processing_system7_0_axi_periph_M08_AXI_AWSIZE),
        .M08_AXI_awvalid(processing_system7_0_axi_periph_M08_AXI_AWVALID),
        .M08_AXI_bid(processing_system7_0_axi_periph_M08_AXI_BID),
        .M08_AXI_bready(processing_system7_0_axi_periph_M08_AXI_BREADY),
        .M08_AXI_bresp(processing_system7_0_axi_periph_M08_AXI_BRESP),
        .M08_AXI_bvalid(processing_system7_0_axi_periph_M08_AXI_BVALID),
        .M08_AXI_rdata(processing_system7_0_axi_periph_M08_AXI_RDATA),
        .M08_AXI_rid(processing_system7_0_axi_periph_M08_AXI_RID),
        .M08_AXI_rlast(processing_system7_0_axi_periph_M08_AXI_RLAST),
        .M08_AXI_rready(processing_system7_0_axi_periph_M08_AXI_RREADY),
        .M08_AXI_rresp(processing_system7_0_axi_periph_M08_AXI_RRESP),
        .M08_AXI_rvalid(processing_system7_0_axi_periph_M08_AXI_RVALID),
        .M08_AXI_wdata(processing_system7_0_axi_periph_M08_AXI_WDATA),
        .M08_AXI_wlast(processing_system7_0_axi_periph_M08_AXI_WLAST),
        .M08_AXI_wready(processing_system7_0_axi_periph_M08_AXI_WREADY),
        .M08_AXI_wstrb(processing_system7_0_axi_periph_M08_AXI_WSTRB),
        .M08_AXI_wvalid(processing_system7_0_axi_periph_M08_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
  system_rst_processing_system7_0_fclk0_0 rst_processing_system7_0_fclk0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(rst_processing_system7_0_fclk0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  system_system_interrupts_0 system_interrupts
       (.intr(video_dout),
        .irq(iop_interrupts_irq),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(processing_system7_0_axi_periph_M05_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .s_axi_arready(processing_system7_0_axi_periph_M05_AXI_ARREADY),
        .s_axi_arvalid(processing_system7_0_axi_periph_M05_AXI_ARVALID),
        .s_axi_awaddr(processing_system7_0_axi_periph_M05_AXI_AWADDR[8:0]),
        .s_axi_awready(processing_system7_0_axi_periph_M05_AXI_AWREADY),
        .s_axi_awvalid(processing_system7_0_axi_periph_M05_AXI_AWVALID),
        .s_axi_bready(processing_system7_0_axi_periph_M05_AXI_BREADY),
        .s_axi_bresp(processing_system7_0_axi_periph_M05_AXI_BRESP),
        .s_axi_bvalid(processing_system7_0_axi_periph_M05_AXI_BVALID),
        .s_axi_rdata(processing_system7_0_axi_periph_M05_AXI_RDATA),
        .s_axi_rready(processing_system7_0_axi_periph_M05_AXI_RREADY),
        .s_axi_rresp(processing_system7_0_axi_periph_M05_AXI_RRESP),
        .s_axi_rvalid(processing_system7_0_axi_periph_M05_AXI_RVALID),
        .s_axi_wdata(processing_system7_0_axi_periph_M05_AXI_WDATA),
        .s_axi_wready(processing_system7_0_axi_periph_M05_AXI_WREADY),
        .s_axi_wstrb(processing_system7_0_axi_periph_M05_AXI_WSTRB),
        .s_axi_wvalid(processing_system7_0_axi_periph_M05_AXI_WVALID));
  video_imp_1EQPUBJ video
       (.DDC_scl_i(dvi2rgb_0_DDC_SCL_I),
        .DDC_scl_o(dvi2rgb_0_DDC_SCL_O),
        .DDC_scl_t(dvi2rgb_0_DDC_SCL_T),
        .DDC_sda_i(dvi2rgb_0_DDC_SDA_I),
        .DDC_sda_o(dvi2rgb_0_DDC_SDA_O),
        .DDC_sda_t(dvi2rgb_0_DDC_SDA_T),
        .M00_AXI_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_intercon_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_intercon_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_intercon_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wid(axi_mem_intercon_M00_AXI_WID),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S_AXI_CONTROL_araddr(processing_system7_0_axi_periph_M08_AXI_ARADDR),
        .S_AXI_CONTROL_arburst(processing_system7_0_axi_periph_M08_AXI_ARBURST),
        .S_AXI_CONTROL_arcache(processing_system7_0_axi_periph_M08_AXI_ARCACHE),
        .S_AXI_CONTROL_arid(processing_system7_0_axi_periph_M08_AXI_ARID),
        .S_AXI_CONTROL_arlen(processing_system7_0_axi_periph_M08_AXI_ARLEN),
        .S_AXI_CONTROL_arlock(processing_system7_0_axi_periph_M08_AXI_ARLOCK),
        .S_AXI_CONTROL_arprot(processing_system7_0_axi_periph_M08_AXI_ARPROT),
        .S_AXI_CONTROL_arqos(processing_system7_0_axi_periph_M08_AXI_ARQOS),
        .S_AXI_CONTROL_arready(processing_system7_0_axi_periph_M08_AXI_ARREADY),
        .S_AXI_CONTROL_arregion(processing_system7_0_axi_periph_M08_AXI_ARREGION),
        .S_AXI_CONTROL_arsize(processing_system7_0_axi_periph_M08_AXI_ARSIZE),
        .S_AXI_CONTROL_arvalid(processing_system7_0_axi_periph_M08_AXI_ARVALID),
        .S_AXI_CONTROL_awaddr(processing_system7_0_axi_periph_M08_AXI_AWADDR),
        .S_AXI_CONTROL_awburst(processing_system7_0_axi_periph_M08_AXI_AWBURST),
        .S_AXI_CONTROL_awcache(processing_system7_0_axi_periph_M08_AXI_AWCACHE),
        .S_AXI_CONTROL_awid(processing_system7_0_axi_periph_M08_AXI_AWID),
        .S_AXI_CONTROL_awlen(processing_system7_0_axi_periph_M08_AXI_AWLEN),
        .S_AXI_CONTROL_awlock(processing_system7_0_axi_periph_M08_AXI_AWLOCK),
        .S_AXI_CONTROL_awprot(processing_system7_0_axi_periph_M08_AXI_AWPROT),
        .S_AXI_CONTROL_awqos(processing_system7_0_axi_periph_M08_AXI_AWQOS),
        .S_AXI_CONTROL_awready(processing_system7_0_axi_periph_M08_AXI_AWREADY),
        .S_AXI_CONTROL_awregion(processing_system7_0_axi_periph_M08_AXI_AWREGION),
        .S_AXI_CONTROL_awsize(processing_system7_0_axi_periph_M08_AXI_AWSIZE),
        .S_AXI_CONTROL_awvalid(processing_system7_0_axi_periph_M08_AXI_AWVALID),
        .S_AXI_CONTROL_bid(processing_system7_0_axi_periph_M08_AXI_BID),
        .S_AXI_CONTROL_bready(processing_system7_0_axi_periph_M08_AXI_BREADY),
        .S_AXI_CONTROL_bresp(processing_system7_0_axi_periph_M08_AXI_BRESP),
        .S_AXI_CONTROL_bvalid(processing_system7_0_axi_periph_M08_AXI_BVALID),
        .S_AXI_CONTROL_rdata(processing_system7_0_axi_periph_M08_AXI_RDATA),
        .S_AXI_CONTROL_rid(processing_system7_0_axi_periph_M08_AXI_RID),
        .S_AXI_CONTROL_rlast(processing_system7_0_axi_periph_M08_AXI_RLAST),
        .S_AXI_CONTROL_rready(processing_system7_0_axi_periph_M08_AXI_RREADY),
        .S_AXI_CONTROL_rresp(processing_system7_0_axi_periph_M08_AXI_RRESP),
        .S_AXI_CONTROL_rvalid(processing_system7_0_axi_periph_M08_AXI_RVALID),
        .S_AXI_CONTROL_wdata(processing_system7_0_axi_periph_M08_AXI_WDATA),
        .S_AXI_CONTROL_wlast(processing_system7_0_axi_periph_M08_AXI_WLAST),
        .S_AXI_CONTROL_wready(processing_system7_0_axi_periph_M08_AXI_WREADY),
        .S_AXI_CONTROL_wstrb(processing_system7_0_axi_periph_M08_AXI_WSTRB),
        .S_AXI_CONTROL_wvalid(processing_system7_0_axi_periph_M08_AXI_WVALID),
        .TMDS1_clk_n(video_TMDS1_CLK_N),
        .TMDS1_clk_p(video_TMDS1_CLK_P),
        .TMDS1_data_n(video_TMDS1_DATA_N),
        .TMDS1_data_p(video_TMDS1_DATA_P),
        .TMDS_clk_n(hdmi_in_1_CLK_N),
        .TMDS_clk_p(hdmi_in_1_CLK_P),
        .TMDS_data_n(hdmi_in_1_DATA_N),
        .TMDS_data_p(hdmi_in_1_DATA_P),
        .control_clock(processing_system7_0_FCLK_CLK0),
        .control_interconnect_reset_n(rst_processing_system7_0_fclk0_interconnect_aresetn),
        .control_reset_n(rst_processing_system7_0_fclk0_peripheral_aresetn),
        .data_clock(processing_system7_0_FCLK_CLK1),
        .data_interconnect_reset_n(proc_sys_reset_fclk1_interconnect_aresetn),
        .data_reset_n(proc_sys_reset_fclk1_peripheral_aresetn),
        .dout(video_dout),
        .gpio_io_o(hdmi_out_hpd_video_gpio_io_o),
        .gpio_io_o1(axi_gpio_video_gpio_io_o),
        .reference_clk(processing_system7_0_FCLK_CLK2),
        .system_reset(processing_system7_0_FCLK_RESET0_N));
endmodule

module system_axi_interconnect_0_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [4:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [4:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input [0:0]M02_ARESETN;
  output [6:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [6:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input [0:0]M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input [0:0]M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input [0:0]M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input [0:0]M06_ARESETN;
  output [6:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [6:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input [0:0]M07_ARESETN;
  output [4:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [4:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input [0:0]M08_ARESETN;
  output [31:0]M08_AXI_araddr;
  input [0:0]M08_AXI_arready;
  output [0:0]M08_AXI_arvalid;
  output [31:0]M08_AXI_awaddr;
  input [0:0]M08_AXI_awready;
  output [0:0]M08_AXI_awvalid;
  output [0:0]M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input [0:0]M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output [0:0]M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input [0:0]M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input [0:0]M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output [0:0]M08_AXI_wvalid;
  input M09_ACLK;
  input [0:0]M09_ARESETN;
  output [31:0]M09_AXI_araddr;
  input [0:0]M09_AXI_arready;
  output [0:0]M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  input [0:0]M09_AXI_awready;
  output [0:0]M09_AXI_awvalid;
  output [0:0]M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input [0:0]M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output [0:0]M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input [0:0]M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input [0:0]M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output [0:0]M09_AXI_wvalid;
  input M10_ACLK;
  input [0:0]M10_ARESETN;
  output [6:0]M10_AXI_araddr;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [6:0]M10_AXI_awaddr;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire M01_ACLK_1;
  wire [0:0]M01_ARESETN_1;
  wire M02_ACLK_1;
  wire [0:0]M02_ARESETN_1;
  wire M03_ACLK_1;
  wire [0:0]M03_ARESETN_1;
  wire M04_ACLK_1;
  wire [0:0]M04_ARESETN_1;
  wire M05_ACLK_1;
  wire [0:0]M05_ARESETN_1;
  wire M06_ACLK_1;
  wire [0:0]M06_ARESETN_1;
  wire M07_ACLK_1;
  wire [0:0]M07_ARESETN_1;
  wire M08_ACLK_1;
  wire [0:0]M08_ARESETN_1;
  wire M09_ACLK_1;
  wire [0:0]M09_ARESETN_1;
  wire M10_ACLK_1;
  wire [0:0]M10_ARESETN_1;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire [0:0]axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_0_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_0_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_0_to_s00_couplers_BID;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_0_to_s00_couplers_RID;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RLAST;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WLAST;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [4:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire m01_couplers_to_axi_interconnect_0_ARREADY;
  wire m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [4:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire m01_couplers_to_axi_interconnect_0_AWREADY;
  wire m01_couplers_to_axi_interconnect_0_AWVALID;
  wire m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire m01_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire m01_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire m01_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_WSTRB;
  wire m01_couplers_to_axi_interconnect_0_WVALID;
  wire [6:0]m02_couplers_to_axi_interconnect_0_ARADDR;
  wire m02_couplers_to_axi_interconnect_0_ARREADY;
  wire m02_couplers_to_axi_interconnect_0_ARVALID;
  wire [6:0]m02_couplers_to_axi_interconnect_0_AWADDR;
  wire m02_couplers_to_axi_interconnect_0_AWREADY;
  wire m02_couplers_to_axi_interconnect_0_AWVALID;
  wire m02_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_BRESP;
  wire m02_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_RDATA;
  wire m02_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_RRESP;
  wire m02_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_WDATA;
  wire m02_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_0_WSTRB;
  wire m02_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_ARADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_0_ARPROT;
  wire [0:0]m03_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m03_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_AWADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_0_AWPROT;
  wire [0:0]m03_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m03_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m03_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m03_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_ARADDR;
  wire [0:0]m04_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m04_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_AWADDR;
  wire [0:0]m04_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m04_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m04_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m04_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_ARADDR;
  wire [0:0]m05_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m05_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_AWADDR;
  wire [0:0]m05_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m05_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m05_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m05_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m05_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m05_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m05_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m05_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m05_couplers_to_axi_interconnect_0_WVALID;
  wire [6:0]m06_couplers_to_axi_interconnect_0_ARADDR;
  wire m06_couplers_to_axi_interconnect_0_ARREADY;
  wire m06_couplers_to_axi_interconnect_0_ARVALID;
  wire [6:0]m06_couplers_to_axi_interconnect_0_AWADDR;
  wire m06_couplers_to_axi_interconnect_0_AWREADY;
  wire m06_couplers_to_axi_interconnect_0_AWVALID;
  wire m06_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_0_BRESP;
  wire m06_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_0_RDATA;
  wire m06_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_0_RRESP;
  wire m06_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_0_WDATA;
  wire m06_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m06_couplers_to_axi_interconnect_0_WSTRB;
  wire m06_couplers_to_axi_interconnect_0_WVALID;
  wire [4:0]m07_couplers_to_axi_interconnect_0_ARADDR;
  wire m07_couplers_to_axi_interconnect_0_ARREADY;
  wire m07_couplers_to_axi_interconnect_0_ARVALID;
  wire [4:0]m07_couplers_to_axi_interconnect_0_AWADDR;
  wire m07_couplers_to_axi_interconnect_0_AWREADY;
  wire m07_couplers_to_axi_interconnect_0_AWVALID;
  wire m07_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m07_couplers_to_axi_interconnect_0_BRESP;
  wire m07_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_0_RDATA;
  wire m07_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m07_couplers_to_axi_interconnect_0_RRESP;
  wire m07_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_0_WDATA;
  wire m07_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m07_couplers_to_axi_interconnect_0_WSTRB;
  wire m07_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m08_couplers_to_axi_interconnect_0_ARADDR;
  wire [0:0]m08_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m08_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m08_couplers_to_axi_interconnect_0_AWADDR;
  wire [0:0]m08_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m08_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m08_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m08_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m08_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m08_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m08_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m08_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m08_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m08_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m08_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m08_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m08_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m09_couplers_to_axi_interconnect_0_ARADDR;
  wire [0:0]m09_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m09_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m09_couplers_to_axi_interconnect_0_AWADDR;
  wire [0:0]m09_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m09_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m09_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m09_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m09_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m09_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m09_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m09_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m09_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m09_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m09_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m09_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m09_couplers_to_axi_interconnect_0_WVALID;
  wire [6:0]m10_couplers_to_axi_interconnect_0_ARADDR;
  wire m10_couplers_to_axi_interconnect_0_ARREADY;
  wire m10_couplers_to_axi_interconnect_0_ARVALID;
  wire [6:0]m10_couplers_to_axi_interconnect_0_AWADDR;
  wire m10_couplers_to_axi_interconnect_0_AWREADY;
  wire m10_couplers_to_axi_interconnect_0_AWVALID;
  wire m10_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m10_couplers_to_axi_interconnect_0_BRESP;
  wire m10_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m10_couplers_to_axi_interconnect_0_RDATA;
  wire m10_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m10_couplers_to_axi_interconnect_0_RRESP;
  wire m10_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m10_couplers_to_axi_interconnect_0_WDATA;
  wire m10_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m10_couplers_to_axi_interconnect_0_WSTRB;
  wire m10_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [0:0]xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [0:0]xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire [0:0]xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire [0:0]xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire [0:0]xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [319:288]xbar_to_m09_couplers_ARADDR;
  wire [0:0]xbar_to_m09_couplers_ARREADY;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [319:288]xbar_to_m09_couplers_AWADDR;
  wire [0:0]xbar_to_m09_couplers_AWREADY;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire [0:0]xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire [0:0]xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire [0:0]xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [351:320]xbar_to_m10_couplers_ARADDR;
  wire [32:30]xbar_to_m10_couplers_ARPROT;
  wire xbar_to_m10_couplers_ARREADY;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [351:320]xbar_to_m10_couplers_AWADDR;
  wire [32:30]xbar_to_m10_couplers_AWPROT;
  wire xbar_to_m10_couplers_AWREADY;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire xbar_to_m10_couplers_BVALID;
  wire [31:0]xbar_to_m10_couplers_RDATA;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire xbar_to_m10_couplers_RVALID;
  wire [351:320]xbar_to_m10_couplers_WDATA;
  wire xbar_to_m10_couplers_WREADY;
  wire [43:40]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;
  wire [32:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [32:0]NLW_xbar_m_axi_awprot_UNCONNECTED;
  wire [43:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN[0];
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN[0];
  assign M01_AXI_araddr[4:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[4:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN[0];
  assign M02_AXI_araddr[6:0] = m02_couplers_to_axi_interconnect_0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[6:0] = m02_couplers_to_axi_interconnect_0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_0_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN[0];
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_interconnect_0_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_interconnect_0_ARPROT;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_interconnect_0_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_interconnect_0_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_interconnect_0_AWPROT;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_interconnect_0_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_interconnect_0_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_interconnect_0_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_0_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_0_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_interconnect_0_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN[0];
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_interconnect_0_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi_interconnect_0_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_interconnect_0_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi_interconnect_0_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi_interconnect_0_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi_interconnect_0_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_interconnect_0_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_interconnect_0_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi_interconnect_0_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN[0];
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_interconnect_0_ARADDR;
  assign M05_AXI_arvalid[0] = m05_couplers_to_axi_interconnect_0_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_interconnect_0_AWADDR;
  assign M05_AXI_awvalid[0] = m05_couplers_to_axi_interconnect_0_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_axi_interconnect_0_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_axi_interconnect_0_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_interconnect_0_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_interconnect_0_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_axi_interconnect_0_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN[0];
  assign M06_AXI_araddr[6:0] = m06_couplers_to_axi_interconnect_0_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_interconnect_0_ARVALID;
  assign M06_AXI_awaddr[6:0] = m06_couplers_to_axi_interconnect_0_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_interconnect_0_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_interconnect_0_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_interconnect_0_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_interconnect_0_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_interconnect_0_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_interconnect_0_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN[0];
  assign M07_AXI_araddr[4:0] = m07_couplers_to_axi_interconnect_0_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_axi_interconnect_0_ARVALID;
  assign M07_AXI_awaddr[4:0] = m07_couplers_to_axi_interconnect_0_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_axi_interconnect_0_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_axi_interconnect_0_BREADY;
  assign M07_AXI_rready = m07_couplers_to_axi_interconnect_0_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_interconnect_0_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_interconnect_0_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_axi_interconnect_0_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN[0];
  assign M08_AXI_araddr[31:0] = m08_couplers_to_axi_interconnect_0_ARADDR;
  assign M08_AXI_arvalid[0] = m08_couplers_to_axi_interconnect_0_ARVALID;
  assign M08_AXI_awaddr[31:0] = m08_couplers_to_axi_interconnect_0_AWADDR;
  assign M08_AXI_awvalid[0] = m08_couplers_to_axi_interconnect_0_AWVALID;
  assign M08_AXI_bready[0] = m08_couplers_to_axi_interconnect_0_BREADY;
  assign M08_AXI_rready[0] = m08_couplers_to_axi_interconnect_0_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_axi_interconnect_0_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_axi_interconnect_0_WSTRB;
  assign M08_AXI_wvalid[0] = m08_couplers_to_axi_interconnect_0_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN[0];
  assign M09_AXI_araddr[31:0] = m09_couplers_to_axi_interconnect_0_ARADDR;
  assign M09_AXI_arvalid[0] = m09_couplers_to_axi_interconnect_0_ARVALID;
  assign M09_AXI_awaddr[31:0] = m09_couplers_to_axi_interconnect_0_AWADDR;
  assign M09_AXI_awvalid[0] = m09_couplers_to_axi_interconnect_0_AWVALID;
  assign M09_AXI_bready[0] = m09_couplers_to_axi_interconnect_0_BREADY;
  assign M09_AXI_rready[0] = m09_couplers_to_axi_interconnect_0_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_axi_interconnect_0_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_axi_interconnect_0_WSTRB;
  assign M09_AXI_wvalid[0] = m09_couplers_to_axi_interconnect_0_WVALID;
  assign M10_ACLK_1 = M10_ACLK;
  assign M10_ARESETN_1 = M10_ARESETN[0];
  assign M10_AXI_araddr[6:0] = m10_couplers_to_axi_interconnect_0_ARADDR;
  assign M10_AXI_arvalid = m10_couplers_to_axi_interconnect_0_ARVALID;
  assign M10_AXI_awaddr[6:0] = m10_couplers_to_axi_interconnect_0_AWADDR;
  assign M10_AXI_awvalid = m10_couplers_to_axi_interconnect_0_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_axi_interconnect_0_BREADY;
  assign M10_AXI_rready = m10_couplers_to_axi_interconnect_0_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_axi_interconnect_0_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_axi_interconnect_0_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready[0] = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_0_to_s00_couplers_RID;
  assign S00_AXI_rlast[0] = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN[0];
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast[0];
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_0_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_interconnect_0_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_interconnect_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_interconnect_0_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_interconnect_0_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_interconnect_0_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi_interconnect_0_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi_interconnect_0_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi_interconnect_0_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_interconnect_0_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi_interconnect_0_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_axi_interconnect_0_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_axi_interconnect_0_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_axi_interconnect_0_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_axi_interconnect_0_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_interconnect_0_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_axi_interconnect_0_WREADY = M05_AXI_wready[0];
  assign m06_couplers_to_axi_interconnect_0_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_interconnect_0_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_interconnect_0_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_interconnect_0_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_interconnect_0_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_interconnect_0_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_interconnect_0_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_interconnect_0_WREADY = M06_AXI_wready;
  assign m07_couplers_to_axi_interconnect_0_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_axi_interconnect_0_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_axi_interconnect_0_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_interconnect_0_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_axi_interconnect_0_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi_interconnect_0_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_interconnect_0_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_axi_interconnect_0_WREADY = M07_AXI_wready;
  assign m08_couplers_to_axi_interconnect_0_ARREADY = M08_AXI_arready[0];
  assign m08_couplers_to_axi_interconnect_0_AWREADY = M08_AXI_awready[0];
  assign m08_couplers_to_axi_interconnect_0_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_axi_interconnect_0_BVALID = M08_AXI_bvalid[0];
  assign m08_couplers_to_axi_interconnect_0_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_axi_interconnect_0_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_axi_interconnect_0_RVALID = M08_AXI_rvalid[0];
  assign m08_couplers_to_axi_interconnect_0_WREADY = M08_AXI_wready[0];
  assign m09_couplers_to_axi_interconnect_0_ARREADY = M09_AXI_arready[0];
  assign m09_couplers_to_axi_interconnect_0_AWREADY = M09_AXI_awready[0];
  assign m09_couplers_to_axi_interconnect_0_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_axi_interconnect_0_BVALID = M09_AXI_bvalid[0];
  assign m09_couplers_to_axi_interconnect_0_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_axi_interconnect_0_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_axi_interconnect_0_RVALID = M09_AXI_rvalid[0];
  assign m09_couplers_to_axi_interconnect_0_WREADY = M09_AXI_wready[0];
  assign m10_couplers_to_axi_interconnect_0_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_axi_interconnect_0_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_axi_interconnect_0_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_axi_interconnect_0_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_axi_interconnect_0_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_axi_interconnect_0_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_axi_interconnect_0_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_axi_interconnect_0_WREADY = M10_AXI_wready;
  m00_couplers_imp_17F0U9H m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_DW50H0 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_7Q885Y m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1EEWPTZ m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arprot(m03_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awprot(m03_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_K25AYA m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1RUS6CJ m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_1LOVFTD m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_R217WG m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m07_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m07_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m07_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m07_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_1UFEID6 m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m08_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m08_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m08_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m08_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m08_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m08_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m08_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m08_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m08_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m08_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m08_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m08_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_I1BV1N m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m09_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m09_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m09_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m09_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m09_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m09_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m09_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m09_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m09_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m09_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m09_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m09_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_7QAL4M m10_couplers
       (.M_ACLK(M10_ACLK_1),
        .M_ARESETN(M10_ARESETN_1),
        .M_AXI_araddr(m10_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m10_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m10_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m10_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m10_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m10_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m10_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m10_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m10_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m10_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m10_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m10_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m10_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m10_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m10_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  s00_couplers_imp_1BPMI78 s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  system_xbar_0 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m10_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[29:24],xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[17:12],xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m10_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[29:24],xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[17:12],xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[3:0]}),
        .m_axi_wvalid({xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module system_axi_mem_intercon_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input [0:0]S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;

  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire S01_ACLK_1;
  wire [0:0]S01_ARESETN_1;
  wire axi_mem_intercon_ACLK_net;
  wire [0:0]axi_mem_intercon_ARESETN_net;
  wire [31:0]axi_mem_intercon_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_to_s00_couplers_AWLEN;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWPROT;
  wire axi_mem_intercon_to_s00_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_to_s00_couplers_AWVALID;
  wire axi_mem_intercon_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_BRESP;
  wire axi_mem_intercon_to_s00_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_WDATA;
  wire axi_mem_intercon_to_s00_couplers_WLAST;
  wire axi_mem_intercon_to_s00_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_to_s00_couplers_WVALID;
  wire [31:0]axi_mem_intercon_to_s01_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s01_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s01_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_to_s01_couplers_ARLEN;
  wire [2:0]axi_mem_intercon_to_s01_couplers_ARPROT;
  wire axi_mem_intercon_to_s01_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s01_couplers_ARSIZE;
  wire axi_mem_intercon_to_s01_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s01_couplers_RDATA;
  wire axi_mem_intercon_to_s01_couplers_RLAST;
  wire axi_mem_intercon_to_s01_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s01_couplers_RRESP;
  wire axi_mem_intercon_to_s01_couplers_RVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_ARADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_ARBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARCACHE;
  wire [0:0]m00_couplers_to_axi_mem_intercon_ARID;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARLEN;
  wire [1:0]m00_couplers_to_axi_mem_intercon_ARLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_ARPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARQOS;
  wire m00_couplers_to_axi_mem_intercon_ARREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_ARSIZE;
  wire m00_couplers_to_axi_mem_intercon_ARVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_AWADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_AWBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWCACHE;
  wire [0:0]m00_couplers_to_axi_mem_intercon_AWID;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWLEN;
  wire [1:0]m00_couplers_to_axi_mem_intercon_AWLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_AWPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWQOS;
  wire m00_couplers_to_axi_mem_intercon_AWREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_AWSIZE;
  wire m00_couplers_to_axi_mem_intercon_AWVALID;
  wire [5:0]m00_couplers_to_axi_mem_intercon_BID;
  wire m00_couplers_to_axi_mem_intercon_BREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_BRESP;
  wire m00_couplers_to_axi_mem_intercon_BVALID;
  wire [63:0]m00_couplers_to_axi_mem_intercon_RDATA;
  wire [5:0]m00_couplers_to_axi_mem_intercon_RID;
  wire m00_couplers_to_axi_mem_intercon_RLAST;
  wire m00_couplers_to_axi_mem_intercon_RREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_RRESP;
  wire m00_couplers_to_axi_mem_intercon_RVALID;
  wire [63:0]m00_couplers_to_axi_mem_intercon_WDATA;
  wire [0:0]m00_couplers_to_axi_mem_intercon_WID;
  wire m00_couplers_to_axi_mem_intercon_WLAST;
  wire m00_couplers_to_axi_mem_intercon_WREADY;
  wire [7:0]m00_couplers_to_axi_mem_intercon_WSTRB;
  wire m00_couplers_to_axi_mem_intercon_WVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [1:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [127:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN[0];
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_mem_intercon_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_mem_intercon_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_mem_intercon_ARCACHE;
  assign M00_AXI_arid[0] = m00_couplers_to_axi_mem_intercon_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_axi_mem_intercon_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_axi_mem_intercon_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_mem_intercon_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_mem_intercon_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_mem_intercon_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_mem_intercon_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_mem_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_mem_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_mem_intercon_AWCACHE;
  assign M00_AXI_awid[0] = m00_couplers_to_axi_mem_intercon_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_axi_mem_intercon_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_axi_mem_intercon_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_mem_intercon_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_mem_intercon_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_mem_intercon_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_mem_intercon_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_mem_intercon_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_mem_intercon_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_mem_intercon_WDATA;
  assign M00_AXI_wid[0] = m00_couplers_to_axi_mem_intercon_WID;
  assign M00_AXI_wlast = m00_couplers_to_axi_mem_intercon_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_mem_intercon_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_mem_intercon_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_awready = axi_mem_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_wready = axi_mem_intercon_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN[0];
  assign S01_AXI_arready = axi_mem_intercon_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[31:0] = axi_mem_intercon_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_mem_intercon_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_mem_intercon_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_mem_intercon_to_s01_couplers_RVALID;
  assign axi_mem_intercon_ACLK_net = ACLK;
  assign axi_mem_intercon_ARESETN_net = ARESETN[0];
  assign axi_mem_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_mem_intercon_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_mem_intercon_to_s01_couplers_RREADY = S01_AXI_rready;
  assign m00_couplers_to_axi_mem_intercon_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_mem_intercon_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_mem_intercon_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_mem_intercon_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_mem_intercon_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_mem_intercon_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_mem_intercon_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_mem_intercon_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_mem_intercon_WREADY = M00_AXI_wready;
  m00_couplers_imp_1D9ZDWS m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_mem_intercon_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_mem_intercon_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_mem_intercon_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_mem_intercon_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_mem_intercon_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_mem_intercon_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_mem_intercon_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_mem_intercon_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_mem_intercon_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_mem_intercon_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_mem_intercon_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_mem_intercon_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_mem_intercon_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_mem_intercon_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_mem_intercon_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_mem_intercon_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_mem_intercon_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_mem_intercon_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_mem_intercon_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_mem_intercon_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_mem_intercon_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_mem_intercon_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_mem_intercon_BID),
        .M_AXI_bready(m00_couplers_to_axi_mem_intercon_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_mem_intercon_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_mem_intercon_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_mem_intercon_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_mem_intercon_RID),
        .M_AXI_rlast(m00_couplers_to_axi_mem_intercon_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_mem_intercon_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_mem_intercon_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_mem_intercon_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_mem_intercon_WDATA),
        .M_AXI_wid(m00_couplers_to_axi_mem_intercon_WID),
        .M_AXI_wlast(m00_couplers_to_axi_mem_intercon_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_mem_intercon_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_mem_intercon_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_mem_intercon_WVALID),
        .S_ACLK(axi_mem_intercon_ACLK_net),
        .S_ARESETN(axi_mem_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_117EIM5 s00_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_awaddr(axi_mem_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_mem_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s00_couplers_BVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s00_couplers_WVALID));
  s01_couplers_imp_B8JDWS s01_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_to_s01_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_intercon_to_s01_couplers_ARPROT),
        .S_AXI_arready(axi_mem_intercon_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s01_couplers_ARVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s01_couplers_RVALID));
  system_xbar_1 xbar
       (.aclk(axi_mem_intercon_ACLK_net),
        .aresetn(axi_mem_intercon_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,1'b0,1'b0}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,1'b0}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[0]}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,1'b0}),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({1'b0,1'b0,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({1'b0,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize({1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({1'b0,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({1'b0,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[63:0]}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[0]}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,1'b0}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[1:0]}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[0]}),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({1'b1,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({1'b0,s00_couplers_to_xbar_WVALID}));
endmodule

module system_processing_system7_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arregion,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awregion,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arqos,
    M02_AXI_arready,
    M02_AXI_arregion,
    M02_AXI_arsize,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awid,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awqos,
    M02_AXI_awready,
    M02_AXI_awregion,
    M02_AXI_awsize,
    M02_AXI_awvalid,
    M02_AXI_bid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arid,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arqos,
    M03_AXI_arready,
    M03_AXI_arregion,
    M03_AXI_arsize,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awburst,
    M03_AXI_awcache,
    M03_AXI_awid,
    M03_AXI_awlen,
    M03_AXI_awlock,
    M03_AXI_awprot,
    M03_AXI_awqos,
    M03_AXI_awready,
    M03_AXI_awregion,
    M03_AXI_awsize,
    M03_AXI_awvalid,
    M03_AXI_bid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rid,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wlast,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arburst,
    M04_AXI_arcache,
    M04_AXI_arid,
    M04_AXI_arlen,
    M04_AXI_arlock,
    M04_AXI_arprot,
    M04_AXI_arqos,
    M04_AXI_arready,
    M04_AXI_arregion,
    M04_AXI_arsize,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awburst,
    M04_AXI_awcache,
    M04_AXI_awid,
    M04_AXI_awlen,
    M04_AXI_awlock,
    M04_AXI_awprot,
    M04_AXI_awqos,
    M04_AXI_awready,
    M04_AXI_awregion,
    M04_AXI_awsize,
    M04_AXI_awvalid,
    M04_AXI_bid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rid,
    M04_AXI_rlast,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wlast,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arburst,
    M06_AXI_arcache,
    M06_AXI_arid,
    M06_AXI_arlen,
    M06_AXI_arlock,
    M06_AXI_arprot,
    M06_AXI_arqos,
    M06_AXI_arready,
    M06_AXI_arregion,
    M06_AXI_arsize,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awburst,
    M06_AXI_awcache,
    M06_AXI_awid,
    M06_AXI_awlen,
    M06_AXI_awlock,
    M06_AXI_awprot,
    M06_AXI_awqos,
    M06_AXI_awready,
    M06_AXI_awregion,
    M06_AXI_awsize,
    M06_AXI_awvalid,
    M06_AXI_bid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rid,
    M06_AXI_rlast,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wlast,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arburst,
    M08_AXI_arcache,
    M08_AXI_arid,
    M08_AXI_arlen,
    M08_AXI_arlock,
    M08_AXI_arprot,
    M08_AXI_arqos,
    M08_AXI_arready,
    M08_AXI_arregion,
    M08_AXI_arsize,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awburst,
    M08_AXI_awcache,
    M08_AXI_awid,
    M08_AXI_awlen,
    M08_AXI_awlock,
    M08_AXI_awprot,
    M08_AXI_awqos,
    M08_AXI_awready,
    M08_AXI_awregion,
    M08_AXI_awsize,
    M08_AXI_awvalid,
    M08_AXI_bid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rid,
    M08_AXI_rlast,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wlast,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output M00_AXI_araddr;
  output M00_AXI_arburst;
  output M00_AXI_arcache;
  output M00_AXI_arid;
  output M00_AXI_arlen;
  output M00_AXI_arlock;
  output M00_AXI_arprot;
  output M00_AXI_arqos;
  input M00_AXI_arready;
  output M00_AXI_arregion;
  output M00_AXI_arsize;
  output M00_AXI_arvalid;
  output M00_AXI_awaddr;
  output M00_AXI_awburst;
  output M00_AXI_awcache;
  output M00_AXI_awid;
  output M00_AXI_awlen;
  output M00_AXI_awlock;
  output M00_AXI_awprot;
  output M00_AXI_awqos;
  input M00_AXI_awready;
  output M00_AXI_awregion;
  output M00_AXI_awsize;
  output M00_AXI_awvalid;
  input M00_AXI_bid;
  output M00_AXI_bready;
  input M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_rdata;
  input M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input M00_AXI_rresp;
  input M00_AXI_rvalid;
  output M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output M01_AXI_araddr;
  output M01_AXI_arburst;
  output M01_AXI_arcache;
  output M01_AXI_arid;
  output M01_AXI_arlen;
  output M01_AXI_arlock;
  output M01_AXI_arprot;
  output M01_AXI_arqos;
  input M01_AXI_arready;
  output M01_AXI_arregion;
  output M01_AXI_arsize;
  output M01_AXI_arvalid;
  output M01_AXI_awaddr;
  output M01_AXI_awburst;
  output M01_AXI_awcache;
  output M01_AXI_awid;
  output M01_AXI_awlen;
  output M01_AXI_awlock;
  output M01_AXI_awprot;
  output M01_AXI_awqos;
  input M01_AXI_awready;
  output M01_AXI_awregion;
  output M01_AXI_awsize;
  output M01_AXI_awvalid;
  input M01_AXI_bid;
  output M01_AXI_bready;
  input M01_AXI_bresp;
  input M01_AXI_bvalid;
  input M01_AXI_rdata;
  input M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input M01_AXI_rresp;
  input M01_AXI_rvalid;
  output M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input [0:0]M02_ARESETN;
  output M02_AXI_araddr;
  output M02_AXI_arburst;
  output M02_AXI_arcache;
  output M02_AXI_arid;
  output M02_AXI_arlen;
  output M02_AXI_arlock;
  output M02_AXI_arprot;
  output M02_AXI_arqos;
  input M02_AXI_arready;
  output M02_AXI_arregion;
  output M02_AXI_arsize;
  output M02_AXI_arvalid;
  output M02_AXI_awaddr;
  output M02_AXI_awburst;
  output M02_AXI_awcache;
  output M02_AXI_awid;
  output M02_AXI_awlen;
  output M02_AXI_awlock;
  output M02_AXI_awprot;
  output M02_AXI_awqos;
  input M02_AXI_awready;
  output M02_AXI_awregion;
  output M02_AXI_awsize;
  output M02_AXI_awvalid;
  input M02_AXI_bid;
  output M02_AXI_bready;
  input M02_AXI_bresp;
  input M02_AXI_bvalid;
  input M02_AXI_rdata;
  input M02_AXI_rid;
  input M02_AXI_rlast;
  output M02_AXI_rready;
  input M02_AXI_rresp;
  input M02_AXI_rvalid;
  output M02_AXI_wdata;
  output M02_AXI_wlast;
  input M02_AXI_wready;
  output M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input [0:0]M03_ARESETN;
  output M03_AXI_araddr;
  output M03_AXI_arburst;
  output M03_AXI_arcache;
  output M03_AXI_arid;
  output M03_AXI_arlen;
  output M03_AXI_arlock;
  output M03_AXI_arprot;
  output M03_AXI_arqos;
  input M03_AXI_arready;
  output M03_AXI_arregion;
  output M03_AXI_arsize;
  output M03_AXI_arvalid;
  output M03_AXI_awaddr;
  output M03_AXI_awburst;
  output M03_AXI_awcache;
  output M03_AXI_awid;
  output M03_AXI_awlen;
  output M03_AXI_awlock;
  output M03_AXI_awprot;
  output M03_AXI_awqos;
  input M03_AXI_awready;
  output M03_AXI_awregion;
  output M03_AXI_awsize;
  output M03_AXI_awvalid;
  input M03_AXI_bid;
  output M03_AXI_bready;
  input M03_AXI_bresp;
  input M03_AXI_bvalid;
  input M03_AXI_rdata;
  input M03_AXI_rid;
  input M03_AXI_rlast;
  output M03_AXI_rready;
  input M03_AXI_rresp;
  input M03_AXI_rvalid;
  output M03_AXI_wdata;
  output M03_AXI_wlast;
  input M03_AXI_wready;
  output M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input [0:0]M04_ARESETN;
  output M04_AXI_araddr;
  output M04_AXI_arburst;
  output M04_AXI_arcache;
  output M04_AXI_arid;
  output M04_AXI_arlen;
  output M04_AXI_arlock;
  output M04_AXI_arprot;
  output M04_AXI_arqos;
  input M04_AXI_arready;
  output M04_AXI_arregion;
  output M04_AXI_arsize;
  output M04_AXI_arvalid;
  output M04_AXI_awaddr;
  output M04_AXI_awburst;
  output M04_AXI_awcache;
  output M04_AXI_awid;
  output M04_AXI_awlen;
  output M04_AXI_awlock;
  output M04_AXI_awprot;
  output M04_AXI_awqos;
  input M04_AXI_awready;
  output M04_AXI_awregion;
  output M04_AXI_awsize;
  output M04_AXI_awvalid;
  input M04_AXI_bid;
  output M04_AXI_bready;
  input M04_AXI_bresp;
  input M04_AXI_bvalid;
  input M04_AXI_rdata;
  input M04_AXI_rid;
  input M04_AXI_rlast;
  output M04_AXI_rready;
  input M04_AXI_rresp;
  input M04_AXI_rvalid;
  output M04_AXI_wdata;
  output M04_AXI_wlast;
  input M04_AXI_wready;
  output M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input [0:0]M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input [0:0]M06_ARESETN;
  output M06_AXI_araddr;
  output M06_AXI_arburst;
  output M06_AXI_arcache;
  output M06_AXI_arid;
  output M06_AXI_arlen;
  output M06_AXI_arlock;
  output M06_AXI_arprot;
  output M06_AXI_arqos;
  input M06_AXI_arready;
  output M06_AXI_arregion;
  output M06_AXI_arsize;
  output M06_AXI_arvalid;
  output M06_AXI_awaddr;
  output M06_AXI_awburst;
  output M06_AXI_awcache;
  output M06_AXI_awid;
  output M06_AXI_awlen;
  output M06_AXI_awlock;
  output M06_AXI_awprot;
  output M06_AXI_awqos;
  input M06_AXI_awready;
  output M06_AXI_awregion;
  output M06_AXI_awsize;
  output M06_AXI_awvalid;
  input M06_AXI_bid;
  output M06_AXI_bready;
  input M06_AXI_bresp;
  input M06_AXI_bvalid;
  input M06_AXI_rdata;
  input M06_AXI_rid;
  input M06_AXI_rlast;
  output M06_AXI_rready;
  input M06_AXI_rresp;
  input M06_AXI_rvalid;
  output M06_AXI_wdata;
  output M06_AXI_wlast;
  input M06_AXI_wready;
  output M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input [0:0]M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input [0:0]M08_ARESETN;
  output [31:0]M08_AXI_araddr;
  output [1:0]M08_AXI_arburst;
  output [3:0]M08_AXI_arcache;
  output [11:0]M08_AXI_arid;
  output [7:0]M08_AXI_arlen;
  output [0:0]M08_AXI_arlock;
  output [2:0]M08_AXI_arprot;
  output [3:0]M08_AXI_arqos;
  input [0:0]M08_AXI_arready;
  output [3:0]M08_AXI_arregion;
  output [2:0]M08_AXI_arsize;
  output [0:0]M08_AXI_arvalid;
  output [31:0]M08_AXI_awaddr;
  output [1:0]M08_AXI_awburst;
  output [3:0]M08_AXI_awcache;
  output [11:0]M08_AXI_awid;
  output [7:0]M08_AXI_awlen;
  output [0:0]M08_AXI_awlock;
  output [2:0]M08_AXI_awprot;
  output [3:0]M08_AXI_awqos;
  input [0:0]M08_AXI_awready;
  output [3:0]M08_AXI_awregion;
  output [2:0]M08_AXI_awsize;
  output [0:0]M08_AXI_awvalid;
  input [11:0]M08_AXI_bid;
  output [0:0]M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input [0:0]M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  input [11:0]M08_AXI_rid;
  input [0:0]M08_AXI_rlast;
  output [0:0]M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input [0:0]M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  output [0:0]M08_AXI_wlast;
  input [0:0]M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output [0:0]M08_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire M01_ACLK_1;
  wire [0:0]M01_ARESETN_1;
  wire M02_ACLK_1;
  wire [0:0]M02_ARESETN_1;
  wire M03_ACLK_1;
  wire [0:0]M03_ARESETN_1;
  wire M04_ACLK_1;
  wire [0:0]M04_ARESETN_1;
  wire M05_ACLK_1;
  wire [0:0]M05_ARESETN_1;
  wire M06_ACLK_1;
  wire [0:0]M06_ARESETN_1;
  wire M07_ACLK_1;
  wire [0:0]M07_ARESETN_1;
  wire M08_ACLK_1;
  wire [0:0]M08_ARESETN_1;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARBURST;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARID;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARLEN;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARQOS;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARREGION;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWBURST;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWID;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWLEN;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWQOS;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWREGION;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m00_couplers_to_processing_system7_0_axi_periph_BID;
  wire m00_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire m00_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m00_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire m00_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m00_couplers_to_processing_system7_0_axi_periph_RID;
  wire m00_couplers_to_processing_system7_0_axi_periph_RLAST;
  wire m00_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire m00_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m00_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire m00_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m00_couplers_to_processing_system7_0_axi_periph_WLAST;
  wire m00_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire m00_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m00_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARBURST;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARID;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARLEN;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARQOS;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARREGION;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWBURST;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWID;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWLEN;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWQOS;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWREGION;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m01_couplers_to_processing_system7_0_axi_periph_BID;
  wire m01_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire m01_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m01_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire m01_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m01_couplers_to_processing_system7_0_axi_periph_RID;
  wire m01_couplers_to_processing_system7_0_axi_periph_RLAST;
  wire m01_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire m01_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m01_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire m01_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m01_couplers_to_processing_system7_0_axi_periph_WLAST;
  wire m01_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire m01_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m01_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARBURST;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARID;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARLEN;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARQOS;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARREGION;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  wire m02_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWBURST;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWID;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWLEN;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWQOS;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWREGION;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  wire m02_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m02_couplers_to_processing_system7_0_axi_periph_BID;
  wire m02_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire m02_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m02_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire m02_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m02_couplers_to_processing_system7_0_axi_periph_RID;
  wire m02_couplers_to_processing_system7_0_axi_periph_RLAST;
  wire m02_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire m02_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m02_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire m02_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m02_couplers_to_processing_system7_0_axi_periph_WLAST;
  wire m02_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire m02_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m02_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARBURST;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARID;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARLEN;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARQOS;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARREGION;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  wire m03_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWBURST;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWID;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWLEN;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWQOS;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWREGION;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  wire m03_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m03_couplers_to_processing_system7_0_axi_periph_BID;
  wire m03_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire m03_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m03_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire m03_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m03_couplers_to_processing_system7_0_axi_periph_RID;
  wire m03_couplers_to_processing_system7_0_axi_periph_RLAST;
  wire m03_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire m03_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m03_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire m03_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m03_couplers_to_processing_system7_0_axi_periph_WLAST;
  wire m03_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire m03_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m03_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARBURST;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARID;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARLEN;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARQOS;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARREGION;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  wire m04_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWBURST;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWID;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWLEN;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWQOS;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWREGION;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  wire m04_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m04_couplers_to_processing_system7_0_axi_periph_BID;
  wire m04_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire m04_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m04_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire m04_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m04_couplers_to_processing_system7_0_axi_periph_RID;
  wire m04_couplers_to_processing_system7_0_axi_periph_RLAST;
  wire m04_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire m04_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m04_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire m04_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m04_couplers_to_processing_system7_0_axi_periph_WLAST;
  wire m04_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire m04_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m04_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m05_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m05_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m05_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m05_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m05_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m05_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m05_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m05_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m05_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m05_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m05_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m05_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARBURST;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARID;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARLEN;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARQOS;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARREGION;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWBURST;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWID;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWLEN;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWQOS;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWREGION;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m06_couplers_to_processing_system7_0_axi_periph_BID;
  wire m06_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire m06_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m06_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire m06_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m06_couplers_to_processing_system7_0_axi_periph_RID;
  wire m06_couplers_to_processing_system7_0_axi_periph_RLAST;
  wire m06_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire m06_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m06_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire m06_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m06_couplers_to_processing_system7_0_axi_periph_WLAST;
  wire m06_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire m06_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m06_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m07_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m07_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m07_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m07_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m07_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m07_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m07_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m07_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m07_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m07_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m07_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m07_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m08_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire [1:0]m08_couplers_to_processing_system7_0_axi_periph_ARBURST;
  wire [3:0]m08_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  wire [11:0]m08_couplers_to_processing_system7_0_axi_periph_ARID;
  wire [7:0]m08_couplers_to_processing_system7_0_axi_periph_ARLEN;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  wire [2:0]m08_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire [3:0]m08_couplers_to_processing_system7_0_axi_periph_ARQOS;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire [3:0]m08_couplers_to_processing_system7_0_axi_periph_ARREGION;
  wire [2:0]m08_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m08_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire [1:0]m08_couplers_to_processing_system7_0_axi_periph_AWBURST;
  wire [3:0]m08_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  wire [11:0]m08_couplers_to_processing_system7_0_axi_periph_AWID;
  wire [7:0]m08_couplers_to_processing_system7_0_axi_periph_AWLEN;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  wire [2:0]m08_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire [3:0]m08_couplers_to_processing_system7_0_axi_periph_AWQOS;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire [3:0]m08_couplers_to_processing_system7_0_axi_periph_AWREGION;
  wire [2:0]m08_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire [11:0]m08_couplers_to_processing_system7_0_axi_periph_BID;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire [11:0]m08_couplers_to_processing_system7_0_axi_periph_RID;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_RLAST;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_WLAST;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire [0:0]m08_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire processing_system7_0_axi_periph_ACLK_net;
  wire [0:0]processing_system7_0_axi_periph_ARESETN_net;
  wire [31:0]processing_system7_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]processing_system7_0_axi_periph_to_s00_couplers_ARID;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]processing_system7_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_ARQOS;
  wire processing_system7_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]processing_system7_0_axi_periph_to_s00_couplers_ARSIZE;
  wire processing_system7_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]processing_system7_0_axi_periph_to_s00_couplers_AWID;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]processing_system7_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_AWQOS;
  wire processing_system7_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]processing_system7_0_axi_periph_to_s00_couplers_AWSIZE;
  wire processing_system7_0_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]processing_system7_0_axi_periph_to_s00_couplers_BID;
  wire processing_system7_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_BRESP;
  wire processing_system7_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]processing_system7_0_axi_periph_to_s00_couplers_RID;
  wire processing_system7_0_axi_periph_to_s00_couplers_RLAST;
  wire processing_system7_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_RRESP;
  wire processing_system7_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]processing_system7_0_axi_periph_to_s00_couplers_WDATA;
  wire [11:0]processing_system7_0_axi_periph_to_s00_couplers_WID;
  wire processing_system7_0_axi_periph_to_s00_couplers_WLAST;
  wire processing_system7_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_WSTRB;
  wire processing_system7_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [11:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [11:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [11:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [11:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [11:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [11:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [23:12]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [23:12]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire xbar_to_m01_couplers_RDATA;
  wire xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [35:24]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [35:24]xbar_to_m02_couplers_AWID;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire xbar_to_m02_couplers_BID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire xbar_to_m02_couplers_RDATA;
  wire xbar_to_m02_couplers_RID;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [47:36]xbar_to_m03_couplers_ARID;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [15:12]xbar_to_m03_couplers_ARQOS;
  wire xbar_to_m03_couplers_ARREADY;
  wire [15:12]xbar_to_m03_couplers_ARREGION;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [47:36]xbar_to_m03_couplers_AWID;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [15:12]xbar_to_m03_couplers_AWQOS;
  wire xbar_to_m03_couplers_AWREADY;
  wire [15:12]xbar_to_m03_couplers_AWREGION;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire xbar_to_m03_couplers_BID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire xbar_to_m03_couplers_RDATA;
  wire xbar_to_m03_couplers_RID;
  wire xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [59:48]xbar_to_m04_couplers_ARID;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [19:16]xbar_to_m04_couplers_ARQOS;
  wire xbar_to_m04_couplers_ARREADY;
  wire [19:16]xbar_to_m04_couplers_ARREGION;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [59:48]xbar_to_m04_couplers_AWID;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [19:16]xbar_to_m04_couplers_AWQOS;
  wire xbar_to_m04_couplers_AWREADY;
  wire [19:16]xbar_to_m04_couplers_AWREGION;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire xbar_to_m04_couplers_BID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire xbar_to_m04_couplers_RDATA;
  wire xbar_to_m04_couplers_RID;
  wire xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [11:10]xbar_to_m05_couplers_ARBURST;
  wire [23:20]xbar_to_m05_couplers_ARCACHE;
  wire [71:60]xbar_to_m05_couplers_ARID;
  wire [47:40]xbar_to_m05_couplers_ARLEN;
  wire [5:5]xbar_to_m05_couplers_ARLOCK;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [23:20]xbar_to_m05_couplers_ARQOS;
  wire xbar_to_m05_couplers_ARREADY;
  wire [23:20]xbar_to_m05_couplers_ARREGION;
  wire [17:15]xbar_to_m05_couplers_ARSIZE;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [11:10]xbar_to_m05_couplers_AWBURST;
  wire [23:20]xbar_to_m05_couplers_AWCACHE;
  wire [71:60]xbar_to_m05_couplers_AWID;
  wire [47:40]xbar_to_m05_couplers_AWLEN;
  wire [5:5]xbar_to_m05_couplers_AWLOCK;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [23:20]xbar_to_m05_couplers_AWQOS;
  wire xbar_to_m05_couplers_AWREADY;
  wire [23:20]xbar_to_m05_couplers_AWREGION;
  wire [17:15]xbar_to_m05_couplers_AWSIZE;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [11:0]xbar_to_m05_couplers_BID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [11:0]xbar_to_m05_couplers_RID;
  wire xbar_to_m05_couplers_RLAST;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [5:5]xbar_to_m05_couplers_WLAST;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [13:12]xbar_to_m06_couplers_ARBURST;
  wire [27:24]xbar_to_m06_couplers_ARCACHE;
  wire [83:72]xbar_to_m06_couplers_ARID;
  wire [55:48]xbar_to_m06_couplers_ARLEN;
  wire [6:6]xbar_to_m06_couplers_ARLOCK;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire [27:24]xbar_to_m06_couplers_ARQOS;
  wire xbar_to_m06_couplers_ARREADY;
  wire [27:24]xbar_to_m06_couplers_ARREGION;
  wire [20:18]xbar_to_m06_couplers_ARSIZE;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [13:12]xbar_to_m06_couplers_AWBURST;
  wire [27:24]xbar_to_m06_couplers_AWCACHE;
  wire [83:72]xbar_to_m06_couplers_AWID;
  wire [55:48]xbar_to_m06_couplers_AWLEN;
  wire [6:6]xbar_to_m06_couplers_AWLOCK;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire [27:24]xbar_to_m06_couplers_AWQOS;
  wire xbar_to_m06_couplers_AWREADY;
  wire [27:24]xbar_to_m06_couplers_AWREGION;
  wire [20:18]xbar_to_m06_couplers_AWSIZE;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire xbar_to_m06_couplers_BID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire xbar_to_m06_couplers_RDATA;
  wire xbar_to_m06_couplers_RID;
  wire xbar_to_m06_couplers_RLAST;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire [6:6]xbar_to_m06_couplers_WLAST;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [15:14]xbar_to_m07_couplers_ARBURST;
  wire [31:28]xbar_to_m07_couplers_ARCACHE;
  wire [95:84]xbar_to_m07_couplers_ARID;
  wire [63:56]xbar_to_m07_couplers_ARLEN;
  wire [7:7]xbar_to_m07_couplers_ARLOCK;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire [31:28]xbar_to_m07_couplers_ARQOS;
  wire xbar_to_m07_couplers_ARREADY;
  wire [31:28]xbar_to_m07_couplers_ARREGION;
  wire [23:21]xbar_to_m07_couplers_ARSIZE;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [15:14]xbar_to_m07_couplers_AWBURST;
  wire [31:28]xbar_to_m07_couplers_AWCACHE;
  wire [95:84]xbar_to_m07_couplers_AWID;
  wire [63:56]xbar_to_m07_couplers_AWLEN;
  wire [7:7]xbar_to_m07_couplers_AWLOCK;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire [31:28]xbar_to_m07_couplers_AWQOS;
  wire xbar_to_m07_couplers_AWREADY;
  wire [31:28]xbar_to_m07_couplers_AWREGION;
  wire [23:21]xbar_to_m07_couplers_AWSIZE;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [11:0]xbar_to_m07_couplers_BID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [11:0]xbar_to_m07_couplers_RID;
  wire xbar_to_m07_couplers_RLAST;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire [7:7]xbar_to_m07_couplers_WLAST;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [17:16]xbar_to_m08_couplers_ARBURST;
  wire [35:32]xbar_to_m08_couplers_ARCACHE;
  wire [107:96]xbar_to_m08_couplers_ARID;
  wire [71:64]xbar_to_m08_couplers_ARLEN;
  wire [8:8]xbar_to_m08_couplers_ARLOCK;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire [35:32]xbar_to_m08_couplers_ARQOS;
  wire [0:0]xbar_to_m08_couplers_ARREADY;
  wire [35:32]xbar_to_m08_couplers_ARREGION;
  wire [26:24]xbar_to_m08_couplers_ARSIZE;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [17:16]xbar_to_m08_couplers_AWBURST;
  wire [35:32]xbar_to_m08_couplers_AWCACHE;
  wire [107:96]xbar_to_m08_couplers_AWID;
  wire [71:64]xbar_to_m08_couplers_AWLEN;
  wire [8:8]xbar_to_m08_couplers_AWLOCK;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire [35:32]xbar_to_m08_couplers_AWQOS;
  wire [0:0]xbar_to_m08_couplers_AWREADY;
  wire [35:32]xbar_to_m08_couplers_AWREGION;
  wire [26:24]xbar_to_m08_couplers_AWSIZE;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [11:0]xbar_to_m08_couplers_BID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire [0:0]xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [11:0]xbar_to_m08_couplers_RID;
  wire [0:0]xbar_to_m08_couplers_RLAST;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire [0:0]xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire [8:8]xbar_to_m08_couplers_WLAST;
  wire [0:0]xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN[0];
  assign M00_AXI_araddr = m00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M00_AXI_arburst = m00_couplers_to_processing_system7_0_axi_periph_ARBURST;
  assign M00_AXI_arcache = m00_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  assign M00_AXI_arid = m00_couplers_to_processing_system7_0_axi_periph_ARID;
  assign M00_AXI_arlen = m00_couplers_to_processing_system7_0_axi_periph_ARLEN;
  assign M00_AXI_arlock = m00_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  assign M00_AXI_arprot = m00_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M00_AXI_arqos = m00_couplers_to_processing_system7_0_axi_periph_ARQOS;
  assign M00_AXI_arregion = m00_couplers_to_processing_system7_0_axi_periph_ARREGION;
  assign M00_AXI_arsize = m00_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr = m00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M00_AXI_awburst = m00_couplers_to_processing_system7_0_axi_periph_AWBURST;
  assign M00_AXI_awcache = m00_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  assign M00_AXI_awid = m00_couplers_to_processing_system7_0_axi_periph_AWID;
  assign M00_AXI_awlen = m00_couplers_to_processing_system7_0_axi_periph_AWLEN;
  assign M00_AXI_awlock = m00_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  assign M00_AXI_awprot = m00_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M00_AXI_awqos = m00_couplers_to_processing_system7_0_axi_periph_AWQOS;
  assign M00_AXI_awregion = m00_couplers_to_processing_system7_0_axi_periph_AWREGION;
  assign M00_AXI_awsize = m00_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M00_AXI_wdata = m00_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_processing_system7_0_axi_periph_WLAST;
  assign M00_AXI_wstrb = m00_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN[0];
  assign M01_AXI_araddr = m01_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M01_AXI_arburst = m01_couplers_to_processing_system7_0_axi_periph_ARBURST;
  assign M01_AXI_arcache = m01_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  assign M01_AXI_arid = m01_couplers_to_processing_system7_0_axi_periph_ARID;
  assign M01_AXI_arlen = m01_couplers_to_processing_system7_0_axi_periph_ARLEN;
  assign M01_AXI_arlock = m01_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  assign M01_AXI_arprot = m01_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M01_AXI_arqos = m01_couplers_to_processing_system7_0_axi_periph_ARQOS;
  assign M01_AXI_arregion = m01_couplers_to_processing_system7_0_axi_periph_ARREGION;
  assign M01_AXI_arsize = m01_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr = m01_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M01_AXI_awburst = m01_couplers_to_processing_system7_0_axi_periph_AWBURST;
  assign M01_AXI_awcache = m01_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  assign M01_AXI_awid = m01_couplers_to_processing_system7_0_axi_periph_AWID;
  assign M01_AXI_awlen = m01_couplers_to_processing_system7_0_axi_periph_AWLEN;
  assign M01_AXI_awlock = m01_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  assign M01_AXI_awprot = m01_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M01_AXI_awqos = m01_couplers_to_processing_system7_0_axi_periph_AWQOS;
  assign M01_AXI_awregion = m01_couplers_to_processing_system7_0_axi_periph_AWREGION;
  assign M01_AXI_awsize = m01_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M01_AXI_wdata = m01_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_processing_system7_0_axi_periph_WLAST;
  assign M01_AXI_wstrb = m01_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN[0];
  assign M02_AXI_araddr = m02_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M02_AXI_arburst = m02_couplers_to_processing_system7_0_axi_periph_ARBURST;
  assign M02_AXI_arcache = m02_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  assign M02_AXI_arid = m02_couplers_to_processing_system7_0_axi_periph_ARID;
  assign M02_AXI_arlen = m02_couplers_to_processing_system7_0_axi_periph_ARLEN;
  assign M02_AXI_arlock = m02_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  assign M02_AXI_arprot = m02_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M02_AXI_arqos = m02_couplers_to_processing_system7_0_axi_periph_ARQOS;
  assign M02_AXI_arregion = m02_couplers_to_processing_system7_0_axi_periph_ARREGION;
  assign M02_AXI_arsize = m02_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  assign M02_AXI_arvalid = m02_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr = m02_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M02_AXI_awburst = m02_couplers_to_processing_system7_0_axi_periph_AWBURST;
  assign M02_AXI_awcache = m02_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  assign M02_AXI_awid = m02_couplers_to_processing_system7_0_axi_periph_AWID;
  assign M02_AXI_awlen = m02_couplers_to_processing_system7_0_axi_periph_AWLEN;
  assign M02_AXI_awlock = m02_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  assign M02_AXI_awprot = m02_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M02_AXI_awqos = m02_couplers_to_processing_system7_0_axi_periph_AWQOS;
  assign M02_AXI_awregion = m02_couplers_to_processing_system7_0_axi_periph_AWREGION;
  assign M02_AXI_awsize = m02_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  assign M02_AXI_awvalid = m02_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M02_AXI_wdata = m02_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M02_AXI_wlast = m02_couplers_to_processing_system7_0_axi_periph_WLAST;
  assign M02_AXI_wstrb = m02_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN[0];
  assign M03_AXI_araddr = m03_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M03_AXI_arburst = m03_couplers_to_processing_system7_0_axi_periph_ARBURST;
  assign M03_AXI_arcache = m03_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  assign M03_AXI_arid = m03_couplers_to_processing_system7_0_axi_periph_ARID;
  assign M03_AXI_arlen = m03_couplers_to_processing_system7_0_axi_periph_ARLEN;
  assign M03_AXI_arlock = m03_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  assign M03_AXI_arprot = m03_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M03_AXI_arqos = m03_couplers_to_processing_system7_0_axi_periph_ARQOS;
  assign M03_AXI_arregion = m03_couplers_to_processing_system7_0_axi_periph_ARREGION;
  assign M03_AXI_arsize = m03_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  assign M03_AXI_arvalid = m03_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr = m03_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M03_AXI_awburst = m03_couplers_to_processing_system7_0_axi_periph_AWBURST;
  assign M03_AXI_awcache = m03_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  assign M03_AXI_awid = m03_couplers_to_processing_system7_0_axi_periph_AWID;
  assign M03_AXI_awlen = m03_couplers_to_processing_system7_0_axi_periph_AWLEN;
  assign M03_AXI_awlock = m03_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  assign M03_AXI_awprot = m03_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M03_AXI_awqos = m03_couplers_to_processing_system7_0_axi_periph_AWQOS;
  assign M03_AXI_awregion = m03_couplers_to_processing_system7_0_axi_periph_AWREGION;
  assign M03_AXI_awsize = m03_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  assign M03_AXI_awvalid = m03_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M03_AXI_wdata = m03_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M03_AXI_wlast = m03_couplers_to_processing_system7_0_axi_periph_WLAST;
  assign M03_AXI_wstrb = m03_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN[0];
  assign M04_AXI_araddr = m04_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M04_AXI_arburst = m04_couplers_to_processing_system7_0_axi_periph_ARBURST;
  assign M04_AXI_arcache = m04_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  assign M04_AXI_arid = m04_couplers_to_processing_system7_0_axi_periph_ARID;
  assign M04_AXI_arlen = m04_couplers_to_processing_system7_0_axi_periph_ARLEN;
  assign M04_AXI_arlock = m04_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  assign M04_AXI_arprot = m04_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M04_AXI_arqos = m04_couplers_to_processing_system7_0_axi_periph_ARQOS;
  assign M04_AXI_arregion = m04_couplers_to_processing_system7_0_axi_periph_ARREGION;
  assign M04_AXI_arsize = m04_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  assign M04_AXI_arvalid = m04_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr = m04_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M04_AXI_awburst = m04_couplers_to_processing_system7_0_axi_periph_AWBURST;
  assign M04_AXI_awcache = m04_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  assign M04_AXI_awid = m04_couplers_to_processing_system7_0_axi_periph_AWID;
  assign M04_AXI_awlen = m04_couplers_to_processing_system7_0_axi_periph_AWLEN;
  assign M04_AXI_awlock = m04_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  assign M04_AXI_awprot = m04_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M04_AXI_awqos = m04_couplers_to_processing_system7_0_axi_periph_AWQOS;
  assign M04_AXI_awregion = m04_couplers_to_processing_system7_0_axi_periph_AWREGION;
  assign M04_AXI_awsize = m04_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  assign M04_AXI_awvalid = m04_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M04_AXI_wdata = m04_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M04_AXI_wlast = m04_couplers_to_processing_system7_0_axi_periph_WLAST;
  assign M04_AXI_wstrb = m04_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN[0];
  assign M05_AXI_araddr[31:0] = m05_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN[0];
  assign M06_AXI_araddr = m06_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M06_AXI_arburst = m06_couplers_to_processing_system7_0_axi_periph_ARBURST;
  assign M06_AXI_arcache = m06_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  assign M06_AXI_arid = m06_couplers_to_processing_system7_0_axi_periph_ARID;
  assign M06_AXI_arlen = m06_couplers_to_processing_system7_0_axi_periph_ARLEN;
  assign M06_AXI_arlock = m06_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  assign M06_AXI_arprot = m06_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M06_AXI_arqos = m06_couplers_to_processing_system7_0_axi_periph_ARQOS;
  assign M06_AXI_arregion = m06_couplers_to_processing_system7_0_axi_periph_ARREGION;
  assign M06_AXI_arsize = m06_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  assign M06_AXI_arvalid = m06_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M06_AXI_awaddr = m06_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M06_AXI_awburst = m06_couplers_to_processing_system7_0_axi_periph_AWBURST;
  assign M06_AXI_awcache = m06_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  assign M06_AXI_awid = m06_couplers_to_processing_system7_0_axi_periph_AWID;
  assign M06_AXI_awlen = m06_couplers_to_processing_system7_0_axi_periph_AWLEN;
  assign M06_AXI_awlock = m06_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  assign M06_AXI_awprot = m06_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M06_AXI_awqos = m06_couplers_to_processing_system7_0_axi_periph_AWQOS;
  assign M06_AXI_awregion = m06_couplers_to_processing_system7_0_axi_periph_AWREGION;
  assign M06_AXI_awsize = m06_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  assign M06_AXI_awvalid = m06_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M06_AXI_wdata = m06_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M06_AXI_wlast = m06_couplers_to_processing_system7_0_axi_periph_WLAST;
  assign M06_AXI_wstrb = m06_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN[0];
  assign M07_AXI_araddr[31:0] = m07_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN[0];
  assign M08_AXI_araddr[31:0] = m08_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M08_AXI_arburst[1:0] = m08_couplers_to_processing_system7_0_axi_periph_ARBURST;
  assign M08_AXI_arcache[3:0] = m08_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  assign M08_AXI_arid[11:0] = m08_couplers_to_processing_system7_0_axi_periph_ARID;
  assign M08_AXI_arlen[7:0] = m08_couplers_to_processing_system7_0_axi_periph_ARLEN;
  assign M08_AXI_arlock[0] = m08_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  assign M08_AXI_arprot[2:0] = m08_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M08_AXI_arqos[3:0] = m08_couplers_to_processing_system7_0_axi_periph_ARQOS;
  assign M08_AXI_arregion[3:0] = m08_couplers_to_processing_system7_0_axi_periph_ARREGION;
  assign M08_AXI_arsize[2:0] = m08_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  assign M08_AXI_arvalid[0] = m08_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M08_AXI_awaddr[31:0] = m08_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M08_AXI_awburst[1:0] = m08_couplers_to_processing_system7_0_axi_periph_AWBURST;
  assign M08_AXI_awcache[3:0] = m08_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  assign M08_AXI_awid[11:0] = m08_couplers_to_processing_system7_0_axi_periph_AWID;
  assign M08_AXI_awlen[7:0] = m08_couplers_to_processing_system7_0_axi_periph_AWLEN;
  assign M08_AXI_awlock[0] = m08_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  assign M08_AXI_awprot[2:0] = m08_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M08_AXI_awqos[3:0] = m08_couplers_to_processing_system7_0_axi_periph_AWQOS;
  assign M08_AXI_awregion[3:0] = m08_couplers_to_processing_system7_0_axi_periph_AWREGION;
  assign M08_AXI_awsize[2:0] = m08_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  assign M08_AXI_awvalid[0] = m08_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M08_AXI_bready[0] = m08_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M08_AXI_rready[0] = m08_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M08_AXI_wlast[0] = m08_couplers_to_processing_system7_0_axi_periph_WLAST;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M08_AXI_wvalid[0] = m08_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = processing_system7_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = processing_system7_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = processing_system7_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = processing_system7_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = processing_system7_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = processing_system7_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = processing_system7_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = processing_system7_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = processing_system7_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = processing_system7_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_processing_system7_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_processing_system7_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_processing_system7_0_axi_periph_BID = M00_AXI_bid;
  assign m00_couplers_to_processing_system7_0_axi_periph_BRESP = M00_AXI_bresp;
  assign m00_couplers_to_processing_system7_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_processing_system7_0_axi_periph_RDATA = M00_AXI_rdata;
  assign m00_couplers_to_processing_system7_0_axi_periph_RID = M00_AXI_rid;
  assign m00_couplers_to_processing_system7_0_axi_periph_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_processing_system7_0_axi_periph_RRESP = M00_AXI_rresp;
  assign m00_couplers_to_processing_system7_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_processing_system7_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_processing_system7_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_processing_system7_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_processing_system7_0_axi_periph_BID = M01_AXI_bid;
  assign m01_couplers_to_processing_system7_0_axi_periph_BRESP = M01_AXI_bresp;
  assign m01_couplers_to_processing_system7_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_processing_system7_0_axi_periph_RDATA = M01_AXI_rdata;
  assign m01_couplers_to_processing_system7_0_axi_periph_RID = M01_AXI_rid;
  assign m01_couplers_to_processing_system7_0_axi_periph_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_processing_system7_0_axi_periph_RRESP = M01_AXI_rresp;
  assign m01_couplers_to_processing_system7_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_processing_system7_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_processing_system7_0_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_processing_system7_0_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_processing_system7_0_axi_periph_BID = M02_AXI_bid;
  assign m02_couplers_to_processing_system7_0_axi_periph_BRESP = M02_AXI_bresp;
  assign m02_couplers_to_processing_system7_0_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_processing_system7_0_axi_periph_RDATA = M02_AXI_rdata;
  assign m02_couplers_to_processing_system7_0_axi_periph_RID = M02_AXI_rid;
  assign m02_couplers_to_processing_system7_0_axi_periph_RLAST = M02_AXI_rlast;
  assign m02_couplers_to_processing_system7_0_axi_periph_RRESP = M02_AXI_rresp;
  assign m02_couplers_to_processing_system7_0_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_processing_system7_0_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_processing_system7_0_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_processing_system7_0_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_processing_system7_0_axi_periph_BID = M03_AXI_bid;
  assign m03_couplers_to_processing_system7_0_axi_periph_BRESP = M03_AXI_bresp;
  assign m03_couplers_to_processing_system7_0_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_processing_system7_0_axi_periph_RDATA = M03_AXI_rdata;
  assign m03_couplers_to_processing_system7_0_axi_periph_RID = M03_AXI_rid;
  assign m03_couplers_to_processing_system7_0_axi_periph_RLAST = M03_AXI_rlast;
  assign m03_couplers_to_processing_system7_0_axi_periph_RRESP = M03_AXI_rresp;
  assign m03_couplers_to_processing_system7_0_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_processing_system7_0_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_processing_system7_0_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_processing_system7_0_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_processing_system7_0_axi_periph_BID = M04_AXI_bid;
  assign m04_couplers_to_processing_system7_0_axi_periph_BRESP = M04_AXI_bresp;
  assign m04_couplers_to_processing_system7_0_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_processing_system7_0_axi_periph_RDATA = M04_AXI_rdata;
  assign m04_couplers_to_processing_system7_0_axi_periph_RID = M04_AXI_rid;
  assign m04_couplers_to_processing_system7_0_axi_periph_RLAST = M04_AXI_rlast;
  assign m04_couplers_to_processing_system7_0_axi_periph_RRESP = M04_AXI_rresp;
  assign m04_couplers_to_processing_system7_0_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_processing_system7_0_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_processing_system7_0_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_processing_system7_0_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_processing_system7_0_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_processing_system7_0_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_processing_system7_0_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_processing_system7_0_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_processing_system7_0_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_processing_system7_0_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_processing_system7_0_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_processing_system7_0_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_processing_system7_0_axi_periph_BID = M06_AXI_bid;
  assign m06_couplers_to_processing_system7_0_axi_periph_BRESP = M06_AXI_bresp;
  assign m06_couplers_to_processing_system7_0_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_processing_system7_0_axi_periph_RDATA = M06_AXI_rdata;
  assign m06_couplers_to_processing_system7_0_axi_periph_RID = M06_AXI_rid;
  assign m06_couplers_to_processing_system7_0_axi_periph_RLAST = M06_AXI_rlast;
  assign m06_couplers_to_processing_system7_0_axi_periph_RRESP = M06_AXI_rresp;
  assign m06_couplers_to_processing_system7_0_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_processing_system7_0_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_processing_system7_0_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_processing_system7_0_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_processing_system7_0_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_processing_system7_0_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_processing_system7_0_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_processing_system7_0_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_processing_system7_0_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_processing_system7_0_axi_periph_WREADY = M07_AXI_wready;
  assign m08_couplers_to_processing_system7_0_axi_periph_ARREADY = M08_AXI_arready[0];
  assign m08_couplers_to_processing_system7_0_axi_periph_AWREADY = M08_AXI_awready[0];
  assign m08_couplers_to_processing_system7_0_axi_periph_BID = M08_AXI_bid[11:0];
  assign m08_couplers_to_processing_system7_0_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_processing_system7_0_axi_periph_BVALID = M08_AXI_bvalid[0];
  assign m08_couplers_to_processing_system7_0_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_processing_system7_0_axi_periph_RID = M08_AXI_rid[11:0];
  assign m08_couplers_to_processing_system7_0_axi_periph_RLAST = M08_AXI_rlast[0];
  assign m08_couplers_to_processing_system7_0_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_processing_system7_0_axi_periph_RVALID = M08_AXI_rvalid[0];
  assign m08_couplers_to_processing_system7_0_axi_periph_WREADY = M08_AXI_wready[0];
  assign processing_system7_0_axi_periph_ACLK_net = ACLK;
  assign processing_system7_0_axi_periph_ARESETN_net = ARESETN[0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign processing_system7_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign processing_system7_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign processing_system7_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign processing_system7_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign processing_system7_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_WKXF3L m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m00_couplers_to_processing_system7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m00_couplers_to_processing_system7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m00_couplers_to_processing_system7_0_axi_periph_ARID),
        .M_AXI_arlen(m00_couplers_to_processing_system7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m00_couplers_to_processing_system7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arqos(m00_couplers_to_processing_system7_0_axi_periph_ARQOS),
        .M_AXI_arready(m00_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arregion(m00_couplers_to_processing_system7_0_axi_periph_ARREGION),
        .M_AXI_arsize(m00_couplers_to_processing_system7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m00_couplers_to_processing_system7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m00_couplers_to_processing_system7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m00_couplers_to_processing_system7_0_axi_periph_AWID),
        .M_AXI_awlen(m00_couplers_to_processing_system7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m00_couplers_to_processing_system7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awqos(m00_couplers_to_processing_system7_0_axi_periph_AWQOS),
        .M_AXI_awready(m00_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awregion(m00_couplers_to_processing_system7_0_axi_periph_AWREGION),
        .M_AXI_awsize(m00_couplers_to_processing_system7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bid(m00_couplers_to_processing_system7_0_axi_periph_BID),
        .M_AXI_bready(m00_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rid(m00_couplers_to_processing_system7_0_axi_periph_RID),
        .M_AXI_rlast(m00_couplers_to_processing_system7_0_axi_periph_RLAST),
        .M_AXI_rready(m00_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wlast(m00_couplers_to_processing_system7_0_axi_periph_WLAST),
        .M_AXI_wready(m00_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[0]),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST[0]),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE[0]),
        .S_AXI_arid(xbar_to_m00_couplers_ARID[0]),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN[0]),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT[0]),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS[0]),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION[0]),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE[0]),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[0]),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST[0]),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE[0]),
        .S_AXI_awid(xbar_to_m00_couplers_AWID[0]),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN[0]),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT[0]),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS[0]),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION[0]),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE[0]),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA[0]),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB[0]),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1ORP4PS m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m01_couplers_to_processing_system7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m01_couplers_to_processing_system7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m01_couplers_to_processing_system7_0_axi_periph_ARID),
        .M_AXI_arlen(m01_couplers_to_processing_system7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m01_couplers_to_processing_system7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arqos(m01_couplers_to_processing_system7_0_axi_periph_ARQOS),
        .M_AXI_arready(m01_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arregion(m01_couplers_to_processing_system7_0_axi_periph_ARREGION),
        .M_AXI_arsize(m01_couplers_to_processing_system7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m01_couplers_to_processing_system7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m01_couplers_to_processing_system7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m01_couplers_to_processing_system7_0_axi_periph_AWID),
        .M_AXI_awlen(m01_couplers_to_processing_system7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m01_couplers_to_processing_system7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awqos(m01_couplers_to_processing_system7_0_axi_periph_AWQOS),
        .M_AXI_awready(m01_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awregion(m01_couplers_to_processing_system7_0_axi_periph_AWREGION),
        .M_AXI_awsize(m01_couplers_to_processing_system7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bid(m01_couplers_to_processing_system7_0_axi_periph_BID),
        .M_AXI_bready(m01_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rid(m01_couplers_to_processing_system7_0_axi_periph_RID),
        .M_AXI_rlast(m01_couplers_to_processing_system7_0_axi_periph_RLAST),
        .M_AXI_rready(m01_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wlast(m01_couplers_to_processing_system7_0_axi_periph_WLAST),
        .M_AXI_wready(m01_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[32]),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST[2]),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE[4]),
        .S_AXI_arid(xbar_to_m01_couplers_ARID[12]),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN[8]),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT[3]),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS[4]),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION[4]),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE[3]),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[32]),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST[2]),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE[4]),
        .S_AXI_awid(xbar_to_m01_couplers_AWID[12]),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN[8]),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT[3]),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS[4]),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION[4]),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE[3]),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA[32]),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB[4]),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1VD9O7M m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m02_couplers_to_processing_system7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m02_couplers_to_processing_system7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m02_couplers_to_processing_system7_0_axi_periph_ARID),
        .M_AXI_arlen(m02_couplers_to_processing_system7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m02_couplers_to_processing_system7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m02_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arqos(m02_couplers_to_processing_system7_0_axi_periph_ARQOS),
        .M_AXI_arready(m02_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arregion(m02_couplers_to_processing_system7_0_axi_periph_ARREGION),
        .M_AXI_arsize(m02_couplers_to_processing_system7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m02_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m02_couplers_to_processing_system7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m02_couplers_to_processing_system7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m02_couplers_to_processing_system7_0_axi_periph_AWID),
        .M_AXI_awlen(m02_couplers_to_processing_system7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m02_couplers_to_processing_system7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m02_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awqos(m02_couplers_to_processing_system7_0_axi_periph_AWQOS),
        .M_AXI_awready(m02_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awregion(m02_couplers_to_processing_system7_0_axi_periph_AWREGION),
        .M_AXI_awsize(m02_couplers_to_processing_system7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m02_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bid(m02_couplers_to_processing_system7_0_axi_periph_BID),
        .M_AXI_bready(m02_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rid(m02_couplers_to_processing_system7_0_axi_periph_RID),
        .M_AXI_rlast(m02_couplers_to_processing_system7_0_axi_periph_RLAST),
        .M_AXI_rready(m02_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wlast(m02_couplers_to_processing_system7_0_axi_periph_WLAST),
        .M_AXI_wready(m02_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR[64]),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST[4]),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE[8]),
        .S_AXI_arid(xbar_to_m02_couplers_ARID[24]),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN[16]),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT[6]),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS[8]),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION[8]),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE[6]),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR[64]),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST[4]),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE[8]),
        .S_AXI_awid(xbar_to_m02_couplers_AWID[24]),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN[16]),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT[6]),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS[8]),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION[8]),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE[6]),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m02_couplers_BID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA[64]),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB[8]),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_PPDLC3 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m03_couplers_to_processing_system7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m03_couplers_to_processing_system7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m03_couplers_to_processing_system7_0_axi_periph_ARID),
        .M_AXI_arlen(m03_couplers_to_processing_system7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m03_couplers_to_processing_system7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m03_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arqos(m03_couplers_to_processing_system7_0_axi_periph_ARQOS),
        .M_AXI_arready(m03_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arregion(m03_couplers_to_processing_system7_0_axi_periph_ARREGION),
        .M_AXI_arsize(m03_couplers_to_processing_system7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m03_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m03_couplers_to_processing_system7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m03_couplers_to_processing_system7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m03_couplers_to_processing_system7_0_axi_periph_AWID),
        .M_AXI_awlen(m03_couplers_to_processing_system7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m03_couplers_to_processing_system7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m03_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awqos(m03_couplers_to_processing_system7_0_axi_periph_AWQOS),
        .M_AXI_awready(m03_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awregion(m03_couplers_to_processing_system7_0_axi_periph_AWREGION),
        .M_AXI_awsize(m03_couplers_to_processing_system7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m03_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bid(m03_couplers_to_processing_system7_0_axi_periph_BID),
        .M_AXI_bready(m03_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rid(m03_couplers_to_processing_system7_0_axi_periph_RID),
        .M_AXI_rlast(m03_couplers_to_processing_system7_0_axi_periph_RLAST),
        .M_AXI_rready(m03_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wlast(m03_couplers_to_processing_system7_0_axi_periph_WLAST),
        .M_AXI_wready(m03_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR[96]),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST[6]),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE[12]),
        .S_AXI_arid(xbar_to_m03_couplers_ARID[36]),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN[24]),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT[9]),
        .S_AXI_arqos(xbar_to_m03_couplers_ARQOS[12]),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m03_couplers_ARREGION[12]),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE[9]),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR[96]),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST[6]),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE[12]),
        .S_AXI_awid(xbar_to_m03_couplers_AWID[36]),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN[24]),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT[9]),
        .S_AXI_awqos(xbar_to_m03_couplers_AWQOS[12]),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m03_couplers_AWREGION[12]),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE[9]),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m03_couplers_BID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rid(xbar_to_m03_couplers_RID),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA[96]),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB[12]),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_18RU2BA m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m04_couplers_to_processing_system7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m04_couplers_to_processing_system7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m04_couplers_to_processing_system7_0_axi_periph_ARID),
        .M_AXI_arlen(m04_couplers_to_processing_system7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m04_couplers_to_processing_system7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m04_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arqos(m04_couplers_to_processing_system7_0_axi_periph_ARQOS),
        .M_AXI_arready(m04_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arregion(m04_couplers_to_processing_system7_0_axi_periph_ARREGION),
        .M_AXI_arsize(m04_couplers_to_processing_system7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m04_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m04_couplers_to_processing_system7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m04_couplers_to_processing_system7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m04_couplers_to_processing_system7_0_axi_periph_AWID),
        .M_AXI_awlen(m04_couplers_to_processing_system7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m04_couplers_to_processing_system7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m04_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awqos(m04_couplers_to_processing_system7_0_axi_periph_AWQOS),
        .M_AXI_awready(m04_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awregion(m04_couplers_to_processing_system7_0_axi_periph_AWREGION),
        .M_AXI_awsize(m04_couplers_to_processing_system7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m04_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bid(m04_couplers_to_processing_system7_0_axi_periph_BID),
        .M_AXI_bready(m04_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rid(m04_couplers_to_processing_system7_0_axi_periph_RID),
        .M_AXI_rlast(m04_couplers_to_processing_system7_0_axi_periph_RLAST),
        .M_AXI_rready(m04_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wlast(m04_couplers_to_processing_system7_0_axi_periph_WLAST),
        .M_AXI_wready(m04_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR[128]),
        .S_AXI_arburst(xbar_to_m04_couplers_ARBURST[8]),
        .S_AXI_arcache(xbar_to_m04_couplers_ARCACHE[16]),
        .S_AXI_arid(xbar_to_m04_couplers_ARID[48]),
        .S_AXI_arlen(xbar_to_m04_couplers_ARLEN[32]),
        .S_AXI_arlock(xbar_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT[12]),
        .S_AXI_arqos(xbar_to_m04_couplers_ARQOS[16]),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m04_couplers_ARREGION[16]),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE[12]),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR[128]),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST[8]),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE[16]),
        .S_AXI_awid(xbar_to_m04_couplers_AWID[48]),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN[32]),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT[12]),
        .S_AXI_awqos(xbar_to_m04_couplers_AWQOS[16]),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m04_couplers_AWREGION[16]),
        .S_AXI_awsize(xbar_to_m04_couplers_AWSIZE[12]),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m04_couplers_BID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rid(xbar_to_m04_couplers_RID),
        .S_AXI_rlast(xbar_to_m04_couplers_RLAST),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA[128]),
        .S_AXI_wlast(xbar_to_m04_couplers_WLAST),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB[16]),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_47WDK7 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arready(m05_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awready(m05_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m05_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m05_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m05_couplers_ARID),
        .S_AXI_arlen(xbar_to_m05_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m05_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m05_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m05_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m05_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m05_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m05_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m05_couplers_AWID),
        .S_AXI_awlen(xbar_to_m05_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m05_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m05_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m05_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m05_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m05_couplers_BID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rid(xbar_to_m05_couplers_RID),
        .S_AXI_rlast(xbar_to_m05_couplers_RLAST),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m05_couplers_WLAST),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_ATGYFP m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m06_couplers_to_processing_system7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m06_couplers_to_processing_system7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m06_couplers_to_processing_system7_0_axi_periph_ARID),
        .M_AXI_arlen(m06_couplers_to_processing_system7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m06_couplers_to_processing_system7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m06_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arqos(m06_couplers_to_processing_system7_0_axi_periph_ARQOS),
        .M_AXI_arready(m06_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arregion(m06_couplers_to_processing_system7_0_axi_periph_ARREGION),
        .M_AXI_arsize(m06_couplers_to_processing_system7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m06_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m06_couplers_to_processing_system7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m06_couplers_to_processing_system7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m06_couplers_to_processing_system7_0_axi_periph_AWID),
        .M_AXI_awlen(m06_couplers_to_processing_system7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m06_couplers_to_processing_system7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m06_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awqos(m06_couplers_to_processing_system7_0_axi_periph_AWQOS),
        .M_AXI_awready(m06_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awregion(m06_couplers_to_processing_system7_0_axi_periph_AWREGION),
        .M_AXI_awsize(m06_couplers_to_processing_system7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m06_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bid(m06_couplers_to_processing_system7_0_axi_periph_BID),
        .M_AXI_bready(m06_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rid(m06_couplers_to_processing_system7_0_axi_periph_RID),
        .M_AXI_rlast(m06_couplers_to_processing_system7_0_axi_periph_RLAST),
        .M_AXI_rready(m06_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wlast(m06_couplers_to_processing_system7_0_axi_periph_WLAST),
        .M_AXI_wready(m06_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR[192]),
        .S_AXI_arburst(xbar_to_m06_couplers_ARBURST[12]),
        .S_AXI_arcache(xbar_to_m06_couplers_ARCACHE[24]),
        .S_AXI_arid(xbar_to_m06_couplers_ARID[72]),
        .S_AXI_arlen(xbar_to_m06_couplers_ARLEN[48]),
        .S_AXI_arlock(xbar_to_m06_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT[18]),
        .S_AXI_arqos(xbar_to_m06_couplers_ARQOS[24]),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m06_couplers_ARREGION[24]),
        .S_AXI_arsize(xbar_to_m06_couplers_ARSIZE[18]),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR[192]),
        .S_AXI_awburst(xbar_to_m06_couplers_AWBURST[12]),
        .S_AXI_awcache(xbar_to_m06_couplers_AWCACHE[24]),
        .S_AXI_awid(xbar_to_m06_couplers_AWID[72]),
        .S_AXI_awlen(xbar_to_m06_couplers_AWLEN[48]),
        .S_AXI_awlock(xbar_to_m06_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT[18]),
        .S_AXI_awqos(xbar_to_m06_couplers_AWQOS[24]),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m06_couplers_AWREGION[24]),
        .S_AXI_awsize(xbar_to_m06_couplers_AWSIZE[18]),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m06_couplers_BID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rid(xbar_to_m06_couplers_RID),
        .S_AXI_rlast(xbar_to_m06_couplers_RLAST),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA[192]),
        .S_AXI_wlast(xbar_to_m06_couplers_WLAST),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB[24]),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_11WAABO m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arready(m07_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awready(m07_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m07_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m07_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m07_couplers_ARID),
        .S_AXI_arlen(xbar_to_m07_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m07_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m07_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m07_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m07_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m07_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m07_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m07_couplers_AWID),
        .S_AXI_awlen(xbar_to_m07_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m07_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m07_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m07_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m07_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m07_couplers_BID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rid(xbar_to_m07_couplers_RID),
        .S_AXI_rlast(xbar_to_m07_couplers_RLAST),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m07_couplers_WLAST),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_1SWBGE m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m08_couplers_to_processing_system7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m08_couplers_to_processing_system7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m08_couplers_to_processing_system7_0_axi_periph_ARID),
        .M_AXI_arlen(m08_couplers_to_processing_system7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m08_couplers_to_processing_system7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m08_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arqos(m08_couplers_to_processing_system7_0_axi_periph_ARQOS),
        .M_AXI_arready(m08_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arregion(m08_couplers_to_processing_system7_0_axi_periph_ARREGION),
        .M_AXI_arsize(m08_couplers_to_processing_system7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m08_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m08_couplers_to_processing_system7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m08_couplers_to_processing_system7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m08_couplers_to_processing_system7_0_axi_periph_AWID),
        .M_AXI_awlen(m08_couplers_to_processing_system7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m08_couplers_to_processing_system7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m08_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awqos(m08_couplers_to_processing_system7_0_axi_periph_AWQOS),
        .M_AXI_awready(m08_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awregion(m08_couplers_to_processing_system7_0_axi_periph_AWREGION),
        .M_AXI_awsize(m08_couplers_to_processing_system7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m08_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bid(m08_couplers_to_processing_system7_0_axi_periph_BID),
        .M_AXI_bready(m08_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rid(m08_couplers_to_processing_system7_0_axi_periph_RID),
        .M_AXI_rlast(m08_couplers_to_processing_system7_0_axi_periph_RLAST),
        .M_AXI_rready(m08_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wlast(m08_couplers_to_processing_system7_0_axi_periph_WLAST),
        .M_AXI_wready(m08_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m08_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m08_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m08_couplers_ARID),
        .S_AXI_arlen(xbar_to_m08_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m08_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m08_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m08_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m08_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m08_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m08_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m08_couplers_AWID),
        .S_AXI_awlen(xbar_to_m08_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m08_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m08_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m08_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m08_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m08_couplers_BID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rid(xbar_to_m08_couplers_RID),
        .S_AXI_rlast(xbar_to_m08_couplers_RLAST),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m08_couplers_WLAST),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  s00_couplers_imp_IK3G2O s00_couplers
       (.M_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .M_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(processing_system7_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(processing_system7_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(processing_system7_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(processing_system7_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(processing_system7_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(processing_system7_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(processing_system7_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(processing_system7_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(processing_system7_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(processing_system7_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(processing_system7_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(processing_system7_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(processing_system7_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(processing_system7_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(processing_system7_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(processing_system7_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(processing_system7_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(processing_system7_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(processing_system7_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(processing_system7_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(processing_system7_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(processing_system7_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(processing_system7_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(processing_system7_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(processing_system7_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(processing_system7_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(processing_system7_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(processing_system7_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(processing_system7_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(processing_system7_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(processing_system7_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(processing_system7_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(processing_system7_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(processing_system7_0_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(processing_system7_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(processing_system7_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(processing_system7_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(processing_system7_0_axi_periph_to_s00_couplers_WVALID));
  system_xbar_2 xbar
       (.aclk(processing_system7_0_axi_periph_ACLK_net),
        .aresetn(processing_system7_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m08_couplers_ARBURST,xbar_to_m07_couplers_ARBURST,xbar_to_m06_couplers_ARBURST,xbar_to_m05_couplers_ARBURST,xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m08_couplers_ARCACHE,xbar_to_m07_couplers_ARCACHE,xbar_to_m06_couplers_ARCACHE,xbar_to_m05_couplers_ARCACHE,xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m08_couplers_ARID,xbar_to_m07_couplers_ARID,xbar_to_m06_couplers_ARID,xbar_to_m05_couplers_ARID,xbar_to_m04_couplers_ARID,xbar_to_m03_couplers_ARID,xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m08_couplers_ARLEN,xbar_to_m07_couplers_ARLEN,xbar_to_m06_couplers_ARLEN,xbar_to_m05_couplers_ARLEN,xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m08_couplers_ARLOCK,xbar_to_m07_couplers_ARLOCK,xbar_to_m06_couplers_ARLOCK,xbar_to_m05_couplers_ARLOCK,xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m08_couplers_ARQOS,xbar_to_m07_couplers_ARQOS,xbar_to_m06_couplers_ARQOS,xbar_to_m05_couplers_ARQOS,xbar_to_m04_couplers_ARQOS,xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m08_couplers_ARREGION,xbar_to_m07_couplers_ARREGION,xbar_to_m06_couplers_ARREGION,xbar_to_m05_couplers_ARREGION,xbar_to_m04_couplers_ARREGION,xbar_to_m03_couplers_ARREGION,xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m08_couplers_ARSIZE,xbar_to_m07_couplers_ARSIZE,xbar_to_m06_couplers_ARSIZE,xbar_to_m05_couplers_ARSIZE,xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m08_couplers_AWBURST,xbar_to_m07_couplers_AWBURST,xbar_to_m06_couplers_AWBURST,xbar_to_m05_couplers_AWBURST,xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m08_couplers_AWCACHE,xbar_to_m07_couplers_AWCACHE,xbar_to_m06_couplers_AWCACHE,xbar_to_m05_couplers_AWCACHE,xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m08_couplers_AWID,xbar_to_m07_couplers_AWID,xbar_to_m06_couplers_AWID,xbar_to_m05_couplers_AWID,xbar_to_m04_couplers_AWID,xbar_to_m03_couplers_AWID,xbar_to_m02_couplers_AWID,xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m08_couplers_AWLEN,xbar_to_m07_couplers_AWLEN,xbar_to_m06_couplers_AWLEN,xbar_to_m05_couplers_AWLEN,xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m08_couplers_AWLOCK,xbar_to_m07_couplers_AWLOCK,xbar_to_m06_couplers_AWLOCK,xbar_to_m05_couplers_AWLOCK,xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m08_couplers_AWQOS,xbar_to_m07_couplers_AWQOS,xbar_to_m06_couplers_AWQOS,xbar_to_m05_couplers_AWQOS,xbar_to_m04_couplers_AWQOS,xbar_to_m03_couplers_AWQOS,xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m08_couplers_AWREGION,xbar_to_m07_couplers_AWREGION,xbar_to_m06_couplers_AWREGION,xbar_to_m05_couplers_AWREGION,xbar_to_m04_couplers_AWREGION,xbar_to_m03_couplers_AWREGION,xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m08_couplers_AWSIZE,xbar_to_m07_couplers_AWSIZE,xbar_to_m06_couplers_AWSIZE,xbar_to_m05_couplers_AWSIZE,xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m08_couplers_BID,xbar_to_m07_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m05_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID,xbar_to_m00_couplers_BID,xbar_to_m00_couplers_BID,xbar_to_m00_couplers_BID,xbar_to_m00_couplers_BID,xbar_to_m00_couplers_BID,xbar_to_m00_couplers_BID,xbar_to_m00_couplers_BID,xbar_to_m00_couplers_BID,xbar_to_m00_couplers_BID,xbar_to_m00_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m08_couplers_RID,xbar_to_m07_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m05_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID,xbar_to_m00_couplers_RID,xbar_to_m00_couplers_RID,xbar_to_m00_couplers_RID,xbar_to_m00_couplers_RID,xbar_to_m00_couplers_RID,xbar_to_m00_couplers_RID,xbar_to_m00_couplers_RID,xbar_to_m00_couplers_RID,xbar_to_m00_couplers_RID,xbar_to_m00_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m08_couplers_RLAST,xbar_to_m07_couplers_RLAST,xbar_to_m06_couplers_RLAST,xbar_to_m05_couplers_RLAST,xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m08_couplers_WLAST,xbar_to_m07_couplers_WLAST,xbar_to_m06_couplers_WLAST,xbar_to_m05_couplers_WLAST,xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module video_imp_1EQPUBJ
   (DDC_scl_i,
    DDC_scl_o,
    DDC_scl_t,
    DDC_sda_i,
    DDC_sda_o,
    DDC_sda_t,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S_AXI_CONTROL_araddr,
    S_AXI_CONTROL_arburst,
    S_AXI_CONTROL_arcache,
    S_AXI_CONTROL_arid,
    S_AXI_CONTROL_arlen,
    S_AXI_CONTROL_arlock,
    S_AXI_CONTROL_arprot,
    S_AXI_CONTROL_arqos,
    S_AXI_CONTROL_arready,
    S_AXI_CONTROL_arregion,
    S_AXI_CONTROL_arsize,
    S_AXI_CONTROL_arvalid,
    S_AXI_CONTROL_awaddr,
    S_AXI_CONTROL_awburst,
    S_AXI_CONTROL_awcache,
    S_AXI_CONTROL_awid,
    S_AXI_CONTROL_awlen,
    S_AXI_CONTROL_awlock,
    S_AXI_CONTROL_awprot,
    S_AXI_CONTROL_awqos,
    S_AXI_CONTROL_awready,
    S_AXI_CONTROL_awregion,
    S_AXI_CONTROL_awsize,
    S_AXI_CONTROL_awvalid,
    S_AXI_CONTROL_bid,
    S_AXI_CONTROL_bready,
    S_AXI_CONTROL_bresp,
    S_AXI_CONTROL_bvalid,
    S_AXI_CONTROL_rdata,
    S_AXI_CONTROL_rid,
    S_AXI_CONTROL_rlast,
    S_AXI_CONTROL_rready,
    S_AXI_CONTROL_rresp,
    S_AXI_CONTROL_rvalid,
    S_AXI_CONTROL_wdata,
    S_AXI_CONTROL_wlast,
    S_AXI_CONTROL_wready,
    S_AXI_CONTROL_wstrb,
    S_AXI_CONTROL_wvalid,
    TMDS1_clk_n,
    TMDS1_clk_p,
    TMDS1_data_n,
    TMDS1_data_p,
    TMDS_clk_n,
    TMDS_clk_p,
    TMDS_data_n,
    TMDS_data_p,
    control_clock,
    control_interconnect_reset_n,
    control_reset_n,
    data_clock,
    data_interconnect_reset_n,
    data_reset_n,
    dout,
    gpio_io_o,
    gpio_io_o1,
    reference_clk,
    system_reset);
  input DDC_scl_i;
  output DDC_scl_o;
  output DDC_scl_t;
  input DDC_sda_i;
  output DDC_sda_o;
  output DDC_sda_t;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input [31:0]S_AXI_CONTROL_araddr;
  input [1:0]S_AXI_CONTROL_arburst;
  input [3:0]S_AXI_CONTROL_arcache;
  input [11:0]S_AXI_CONTROL_arid;
  input [7:0]S_AXI_CONTROL_arlen;
  input [0:0]S_AXI_CONTROL_arlock;
  input [2:0]S_AXI_CONTROL_arprot;
  input [3:0]S_AXI_CONTROL_arqos;
  output [0:0]S_AXI_CONTROL_arready;
  input [3:0]S_AXI_CONTROL_arregion;
  input [2:0]S_AXI_CONTROL_arsize;
  input [0:0]S_AXI_CONTROL_arvalid;
  input [31:0]S_AXI_CONTROL_awaddr;
  input [1:0]S_AXI_CONTROL_awburst;
  input [3:0]S_AXI_CONTROL_awcache;
  input [11:0]S_AXI_CONTROL_awid;
  input [7:0]S_AXI_CONTROL_awlen;
  input [0:0]S_AXI_CONTROL_awlock;
  input [2:0]S_AXI_CONTROL_awprot;
  input [3:0]S_AXI_CONTROL_awqos;
  output [0:0]S_AXI_CONTROL_awready;
  input [3:0]S_AXI_CONTROL_awregion;
  input [2:0]S_AXI_CONTROL_awsize;
  input [0:0]S_AXI_CONTROL_awvalid;
  output [11:0]S_AXI_CONTROL_bid;
  input [0:0]S_AXI_CONTROL_bready;
  output [1:0]S_AXI_CONTROL_bresp;
  output [0:0]S_AXI_CONTROL_bvalid;
  output [31:0]S_AXI_CONTROL_rdata;
  output [11:0]S_AXI_CONTROL_rid;
  output [0:0]S_AXI_CONTROL_rlast;
  input [0:0]S_AXI_CONTROL_rready;
  output [1:0]S_AXI_CONTROL_rresp;
  output [0:0]S_AXI_CONTROL_rvalid;
  input [31:0]S_AXI_CONTROL_wdata;
  input [0:0]S_AXI_CONTROL_wlast;
  output [0:0]S_AXI_CONTROL_wready;
  input [3:0]S_AXI_CONTROL_wstrb;
  input [0:0]S_AXI_CONTROL_wvalid;
  output TMDS1_clk_n;
  output TMDS1_clk_p;
  output [2:0]TMDS1_data_n;
  output [2:0]TMDS1_data_p;
  input TMDS_clk_n;
  input TMDS_clk_p;
  input [2:0]TMDS_data_n;
  input [2:0]TMDS_data_p;
  input control_clock;
  input [0:0]control_interconnect_reset_n;
  input [0:0]control_reset_n;
  input data_clock;
  input [0:0]data_interconnect_reset_n;
  input [0:0]data_reset_n;
  output [5:0]dout;
  output [0:0]gpio_io_o;
  output [0:0]gpio_io_o1;
  input reference_clk;
  input system_reset;

  wire [0:0]ARESETN_1;
  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire [2:0]Conn1_DATA_N;
  wire [2:0]Conn1_DATA_P;
  wire [31:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [11:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire [0:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire [0:0]Conn2_ARREADY;
  wire [3:0]Conn2_ARREGION;
  wire [2:0]Conn2_ARSIZE;
  wire [0:0]Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [11:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire [0:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire [3:0]Conn2_AWQOS;
  wire [0:0]Conn2_AWREADY;
  wire [3:0]Conn2_AWREGION;
  wire [2:0]Conn2_AWSIZE;
  wire [0:0]Conn2_AWVALID;
  wire [11:0]Conn2_BID;
  wire [0:0]Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire [0:0]Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire [11:0]Conn2_RID;
  wire [0:0]Conn2_RLAST;
  wire [0:0]Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire [0:0]Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire [0:0]Conn2_WLAST;
  wire [0:0]Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire [0:0]Conn2_WVALID;
  wire Net;
  wire [0:0]Net1;
  wire RefClk_1;
  wire TMDS_1_CLK_N;
  wire TMDS_1_CLK_P;
  wire [2:0]TMDS_1_DATA_N;
  wire [2:0]TMDS_1_DATA_P;
  wire aclk_1;
  wire [0:0]axi_gpio_video_gpio_io_o;
  wire axi_gpio_video_ip2intc_irpt;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [4:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [4:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire [6:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire axi_interconnect_0_M02_AXI_ARVALID;
  wire [6:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire axi_interconnect_0_M02_AXI_AWVALID;
  wire axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  wire axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire axi_interconnect_0_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M03_AXI_ARPROT;
  wire [0:0]axi_interconnect_0_M03_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M03_AXI_AWPROT;
  wire [0:0]axi_interconnect_0_M03_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M03_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M03_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M03_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_ARADDR;
  wire [0:0]axi_interconnect_0_M04_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M04_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_AWADDR;
  wire [0:0]axi_interconnect_0_M04_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M04_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M04_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M04_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M04_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M04_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M04_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M04_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M04_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_ARADDR;
  wire [0:0]axi_interconnect_0_M05_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M05_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_AWADDR;
  wire [0:0]axi_interconnect_0_M05_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M05_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M05_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M05_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M05_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M05_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M05_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M05_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M05_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M05_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M05_AXI_WVALID;
  wire [6:0]axi_interconnect_0_M06_AXI_ARADDR;
  wire axi_interconnect_0_M06_AXI_ARREADY;
  wire axi_interconnect_0_M06_AXI_ARVALID;
  wire [6:0]axi_interconnect_0_M06_AXI_AWADDR;
  wire axi_interconnect_0_M06_AXI_AWREADY;
  wire axi_interconnect_0_M06_AXI_AWVALID;
  wire axi_interconnect_0_M06_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M06_AXI_BRESP;
  wire axi_interconnect_0_M06_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M06_AXI_RDATA;
  wire axi_interconnect_0_M06_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M06_AXI_RRESP;
  wire axi_interconnect_0_M06_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M06_AXI_WDATA;
  wire axi_interconnect_0_M06_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M06_AXI_WSTRB;
  wire axi_interconnect_0_M06_AXI_WVALID;
  wire [4:0]axi_interconnect_0_M07_AXI_ARADDR;
  wire axi_interconnect_0_M07_AXI_ARREADY;
  wire axi_interconnect_0_M07_AXI_ARVALID;
  wire [4:0]axi_interconnect_0_M07_AXI_AWADDR;
  wire axi_interconnect_0_M07_AXI_AWREADY;
  wire axi_interconnect_0_M07_AXI_AWVALID;
  wire axi_interconnect_0_M07_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M07_AXI_BRESP;
  wire axi_interconnect_0_M07_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M07_AXI_RDATA;
  wire axi_interconnect_0_M07_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M07_AXI_RRESP;
  wire axi_interconnect_0_M07_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M07_AXI_WDATA;
  wire axi_interconnect_0_M07_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M07_AXI_WSTRB;
  wire axi_interconnect_0_M07_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M08_AXI_ARADDR;
  wire [0:0]axi_interconnect_0_M08_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M08_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M08_AXI_AWADDR;
  wire [0:0]axi_interconnect_0_M08_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M08_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M08_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M08_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M08_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M08_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M08_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M08_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M08_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M08_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M08_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M08_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M08_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M09_AXI_ARADDR;
  wire [0:0]axi_interconnect_0_M09_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M09_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M09_AXI_AWADDR;
  wire [0:0]axi_interconnect_0_M09_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M09_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M09_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M09_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M09_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M09_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M09_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M09_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M09_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M09_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M09_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M09_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M09_AXI_WVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_ARCACHE;
  wire [0:0]axi_mem_intercon_M00_AXI_ARID;
  wire [3:0]axi_mem_intercon_M00_AXI_ARLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_ARQOS;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_ARSIZE;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [0:0]axi_mem_intercon_M00_AXI_AWID;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire [5:0]axi_mem_intercon_M00_AXI_BID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_RDATA;
  wire [5:0]axi_mem_intercon_M00_AXI_RID;
  wire axi_mem_intercon_M00_AXI_RLAST;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire [0:0]axi_mem_intercon_M00_AXI_WID;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire [31:0]axi_vdma_0_M_AXIS_MM2S_TDATA;
  wire axi_vdma_0_M_AXIS_MM2S_TLAST;
  wire axi_vdma_0_M_AXIS_MM2S_TREADY;
  wire [0:0]axi_vdma_0_M_AXIS_MM2S_TUSER;
  wire axi_vdma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_vdma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_vdma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_vdma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARPROT;
  wire axi_vdma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARSIZE;
  wire axi_vdma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_vdma_0_M_AXI_MM2S_RDATA;
  wire axi_vdma_0_M_AXI_MM2S_RLAST;
  wire axi_vdma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_RRESP;
  wire axi_vdma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_vdma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_vdma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_vdma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_vdma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_vdma_0_M_AXI_S2MM_AWPROT;
  wire axi_vdma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_vdma_0_M_AXI_S2MM_AWSIZE;
  wire axi_vdma_0_M_AXI_S2MM_AWVALID;
  wire axi_vdma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_vdma_0_M_AXI_S2MM_BRESP;
  wire axi_vdma_0_M_AXI_S2MM_BVALID;
  wire [31:0]axi_vdma_0_M_AXI_S2MM_WDATA;
  wire axi_vdma_0_M_AXI_S2MM_WLAST;
  wire axi_vdma_0_M_AXI_S2MM_WREADY;
  wire [3:0]axi_vdma_0_M_AXI_S2MM_WSTRB;
  wire axi_vdma_0_M_AXI_S2MM_WVALID;
  wire axi_vdma_0_mm2s_introut;
  wire axi_vdma_0_s2mm_introut;
  wire ext_reset_in_1;
  wire frontend_DDC_SCL_I;
  wire frontend_DDC_SCL_O;
  wire frontend_DDC_SCL_T;
  wire frontend_DDC_SDA_I;
  wire frontend_DDC_SDA_O;
  wire frontend_DDC_SDA_T;
  wire hdmi_in_PixelClk;
  wire hdmi_in_aPixelClkLckd;
  wire [0:0]hdmi_out_hpd_video_gpio_io_o;
  wire hdmi_out_hpd_video_ip2intc_irpt;
  wire [31:0]in_pixelformat_M00_AXIS_TDATA;
  wire in_pixelformat_M00_AXIS_TLAST;
  wire in_pixelformat_M00_AXIS_TREADY;
  wire [0:0]in_pixelformat_M00_AXIS_TUSER;
  wire in_pixelformat_M00_AXIS_TVALID;
  wire locked;
  wire overflow;
  wire [0:0]resetn_1;
  wire [0:0]rst_processing_system7_0_100M_interconnect_aresetn;
  wire [0:0]rst_processing_system7_0_100M_peripheral_aresetn;
  wire [6:0]s_axi_AXILiteS2_1_ARADDR;
  wire s_axi_AXILiteS2_1_ARREADY;
  wire s_axi_AXILiteS2_1_ARVALID;
  wire [6:0]s_axi_AXILiteS2_1_AWADDR;
  wire s_axi_AXILiteS2_1_AWREADY;
  wire s_axi_AXILiteS2_1_AWVALID;
  wire s_axi_AXILiteS2_1_BREADY;
  wire [1:0]s_axi_AXILiteS2_1_BRESP;
  wire s_axi_AXILiteS2_1_BVALID;
  wire [31:0]s_axi_AXILiteS2_1_RDATA;
  wire s_axi_AXILiteS2_1_RREADY;
  wire [1:0]s_axi_AXILiteS2_1_RRESP;
  wire s_axi_AXILiteS2_1_RVALID;
  wire [31:0]s_axi_AXILiteS2_1_WDATA;
  wire s_axi_AXILiteS2_1_WREADY;
  wire [3:0]s_axi_AXILiteS2_1_WSTRB;
  wire s_axi_AXILiteS2_1_WVALID;
  wire [31:0]status;
  wire underflow;
  wire v_tc_0_irq;
  wire v_tc_1_irq;
  wire [0:0]vid_io_in_reset_1;
  wire [5:0]xlconcat_0_dout;

  assign ARESETN_1 = control_interconnect_reset_n[0];
  assign Conn2_ARADDR = S_AXI_CONTROL_araddr[31:0];
  assign Conn2_ARBURST = S_AXI_CONTROL_arburst[1:0];
  assign Conn2_ARCACHE = S_AXI_CONTROL_arcache[3:0];
  assign Conn2_ARID = S_AXI_CONTROL_arid[11:0];
  assign Conn2_ARLEN = S_AXI_CONTROL_arlen[7:0];
  assign Conn2_ARLOCK = S_AXI_CONTROL_arlock[0];
  assign Conn2_ARPROT = S_AXI_CONTROL_arprot[2:0];
  assign Conn2_ARQOS = S_AXI_CONTROL_arqos[3:0];
  assign Conn2_ARREGION = S_AXI_CONTROL_arregion[3:0];
  assign Conn2_ARSIZE = S_AXI_CONTROL_arsize[2:0];
  assign Conn2_ARVALID = S_AXI_CONTROL_arvalid[0];
  assign Conn2_AWADDR = S_AXI_CONTROL_awaddr[31:0];
  assign Conn2_AWBURST = S_AXI_CONTROL_awburst[1:0];
  assign Conn2_AWCACHE = S_AXI_CONTROL_awcache[3:0];
  assign Conn2_AWID = S_AXI_CONTROL_awid[11:0];
  assign Conn2_AWLEN = S_AXI_CONTROL_awlen[7:0];
  assign Conn2_AWLOCK = S_AXI_CONTROL_awlock[0];
  assign Conn2_AWPROT = S_AXI_CONTROL_awprot[2:0];
  assign Conn2_AWQOS = S_AXI_CONTROL_awqos[3:0];
  assign Conn2_AWREGION = S_AXI_CONTROL_awregion[3:0];
  assign Conn2_AWSIZE = S_AXI_CONTROL_awsize[2:0];
  assign Conn2_AWVALID = S_AXI_CONTROL_awvalid[0];
  assign Conn2_BREADY = S_AXI_CONTROL_bready[0];
  assign Conn2_RREADY = S_AXI_CONTROL_rready[0];
  assign Conn2_WDATA = S_AXI_CONTROL_wdata[31:0];
  assign Conn2_WLAST = S_AXI_CONTROL_wlast[0];
  assign Conn2_WSTRB = S_AXI_CONTROL_wstrb[3:0];
  assign Conn2_WVALID = S_AXI_CONTROL_wvalid[0];
  assign DDC_scl_o = frontend_DDC_SCL_O;
  assign DDC_scl_t = frontend_DDC_SCL_T;
  assign DDC_sda_o = frontend_DDC_SDA_O;
  assign DDC_sda_t = frontend_DDC_SDA_T;
  assign M00_AXI_araddr[31:0] = axi_mem_intercon_M00_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = axi_mem_intercon_M00_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = axi_mem_intercon_M00_AXI_ARCACHE;
  assign M00_AXI_arid[0] = axi_mem_intercon_M00_AXI_ARID;
  assign M00_AXI_arlen[3:0] = axi_mem_intercon_M00_AXI_ARLEN;
  assign M00_AXI_arlock[1:0] = axi_mem_intercon_M00_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = axi_mem_intercon_M00_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = axi_mem_intercon_M00_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = axi_mem_intercon_M00_AXI_ARSIZE;
  assign M00_AXI_arvalid = axi_mem_intercon_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[31:0] = axi_mem_intercon_M00_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = axi_mem_intercon_M00_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = axi_mem_intercon_M00_AXI_AWCACHE;
  assign M00_AXI_awid[0] = axi_mem_intercon_M00_AXI_AWID;
  assign M00_AXI_awlen[3:0] = axi_mem_intercon_M00_AXI_AWLEN;
  assign M00_AXI_awlock[1:0] = axi_mem_intercon_M00_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = axi_mem_intercon_M00_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = axi_mem_intercon_M00_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = axi_mem_intercon_M00_AXI_AWSIZE;
  assign M00_AXI_awvalid = axi_mem_intercon_M00_AXI_AWVALID;
  assign M00_AXI_bready = axi_mem_intercon_M00_AXI_BREADY;
  assign M00_AXI_rready = axi_mem_intercon_M00_AXI_RREADY;
  assign M00_AXI_wdata[63:0] = axi_mem_intercon_M00_AXI_WDATA;
  assign M00_AXI_wid[0] = axi_mem_intercon_M00_AXI_WID;
  assign M00_AXI_wlast = axi_mem_intercon_M00_AXI_WLAST;
  assign M00_AXI_wstrb[7:0] = axi_mem_intercon_M00_AXI_WSTRB;
  assign M00_AXI_wvalid = axi_mem_intercon_M00_AXI_WVALID;
  assign Net = control_clock;
  assign Net1 = control_reset_n[0];
  assign RefClk_1 = reference_clk;
  assign S_AXI_CONTROL_arready[0] = Conn2_ARREADY;
  assign S_AXI_CONTROL_awready[0] = Conn2_AWREADY;
  assign S_AXI_CONTROL_bid[11:0] = Conn2_BID;
  assign S_AXI_CONTROL_bresp[1:0] = Conn2_BRESP;
  assign S_AXI_CONTROL_bvalid[0] = Conn2_BVALID;
  assign S_AXI_CONTROL_rdata[31:0] = Conn2_RDATA;
  assign S_AXI_CONTROL_rid[11:0] = Conn2_RID;
  assign S_AXI_CONTROL_rlast[0] = Conn2_RLAST;
  assign S_AXI_CONTROL_rresp[1:0] = Conn2_RRESP;
  assign S_AXI_CONTROL_rvalid[0] = Conn2_RVALID;
  assign S_AXI_CONTROL_wready[0] = Conn2_WREADY;
  assign TMDS1_clk_n = Conn1_CLK_N;
  assign TMDS1_clk_p = Conn1_CLK_P;
  assign TMDS1_data_n[2:0] = Conn1_DATA_N;
  assign TMDS1_data_p[2:0] = Conn1_DATA_P;
  assign TMDS_1_CLK_N = TMDS_clk_n;
  assign TMDS_1_CLK_P = TMDS_clk_p;
  assign TMDS_1_DATA_N = TMDS_data_n[2:0];
  assign TMDS_1_DATA_P = TMDS_data_p[2:0];
  assign aclk_1 = data_clock;
  assign axi_mem_intercon_M00_AXI_ARREADY = M00_AXI_arready;
  assign axi_mem_intercon_M00_AXI_AWREADY = M00_AXI_awready;
  assign axi_mem_intercon_M00_AXI_BID = M00_AXI_bid[5:0];
  assign axi_mem_intercon_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign axi_mem_intercon_M00_AXI_BVALID = M00_AXI_bvalid;
  assign axi_mem_intercon_M00_AXI_RDATA = M00_AXI_rdata[63:0];
  assign axi_mem_intercon_M00_AXI_RID = M00_AXI_rid[5:0];
  assign axi_mem_intercon_M00_AXI_RLAST = M00_AXI_rlast;
  assign axi_mem_intercon_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign axi_mem_intercon_M00_AXI_RVALID = M00_AXI_rvalid;
  assign axi_mem_intercon_M00_AXI_WREADY = M00_AXI_wready;
  assign dout[5:0] = xlconcat_0_dout;
  assign ext_reset_in_1 = system_reset;
  assign frontend_DDC_SCL_I = DDC_scl_i;
  assign frontend_DDC_SDA_I = DDC_sda_i;
  assign gpio_io_o[0] = hdmi_out_hpd_video_gpio_io_o;
  assign gpio_io_o1[0] = axi_gpio_video_gpio_io_o;
  assign rst_processing_system7_0_100M_interconnect_aresetn = data_interconnect_reset_n[0];
  assign rst_processing_system7_0_100M_peripheral_aresetn = data_reset_n[0];
  system_axi_interconnect_0_1 axi_interconnect_0
       (.ACLK(Net),
        .ARESETN(ARESETN_1),
        .M00_ACLK(Net),
        .M00_ARESETN(Net1),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(aclk_1),
        .M01_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(aclk_1),
        .M02_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(Net),
        .M03_ARESETN(Net1),
        .M03_AXI_araddr(axi_interconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arprot(axi_interconnect_0_M03_AXI_ARPROT),
        .M03_AXI_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awprot(axi_interconnect_0_M03_AXI_AWPROT),
        .M03_AXI_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .M04_ACLK(Net),
        .M04_ARESETN(Net1),
        .M04_AXI_araddr(axi_interconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_interconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_interconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_interconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_interconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_interconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_interconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_interconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_interconnect_0_M04_AXI_RDATA),
        .M04_AXI_rready(axi_interconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_interconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_interconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_interconnect_0_M04_AXI_WDATA),
        .M04_AXI_wready(axi_interconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_interconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_interconnect_0_M04_AXI_WVALID),
        .M05_ACLK(Net),
        .M05_ARESETN(Net1),
        .M05_AXI_araddr(axi_interconnect_0_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_interconnect_0_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_interconnect_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_interconnect_0_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_interconnect_0_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_interconnect_0_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_interconnect_0_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_interconnect_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_interconnect_0_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_interconnect_0_M05_AXI_RDATA),
        .M05_AXI_rready(axi_interconnect_0_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_interconnect_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_interconnect_0_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_interconnect_0_M05_AXI_WDATA),
        .M05_AXI_wready(axi_interconnect_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_interconnect_0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_interconnect_0_M05_AXI_WVALID),
        .M06_ACLK(aclk_1),
        .M06_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M06_AXI_araddr(axi_interconnect_0_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_interconnect_0_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_interconnect_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_interconnect_0_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_interconnect_0_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_interconnect_0_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_interconnect_0_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_interconnect_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_interconnect_0_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_interconnect_0_M06_AXI_RDATA),
        .M06_AXI_rready(axi_interconnect_0_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_interconnect_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_interconnect_0_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_interconnect_0_M06_AXI_WDATA),
        .M06_AXI_wready(axi_interconnect_0_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_interconnect_0_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_interconnect_0_M06_AXI_WVALID),
        .M07_ACLK(aclk_1),
        .M07_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M07_AXI_araddr(axi_interconnect_0_M07_AXI_ARADDR),
        .M07_AXI_arready(axi_interconnect_0_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_interconnect_0_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_interconnect_0_M07_AXI_AWADDR),
        .M07_AXI_awready(axi_interconnect_0_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_interconnect_0_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_interconnect_0_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_interconnect_0_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_interconnect_0_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_interconnect_0_M07_AXI_RDATA),
        .M07_AXI_rready(axi_interconnect_0_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_interconnect_0_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_interconnect_0_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_interconnect_0_M07_AXI_WDATA),
        .M07_AXI_wready(axi_interconnect_0_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_interconnect_0_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_interconnect_0_M07_AXI_WVALID),
        .M08_ACLK(Net),
        .M08_ARESETN(Net1),
        .M08_AXI_araddr(axi_interconnect_0_M08_AXI_ARADDR),
        .M08_AXI_arready(axi_interconnect_0_M08_AXI_ARREADY),
        .M08_AXI_arvalid(axi_interconnect_0_M08_AXI_ARVALID),
        .M08_AXI_awaddr(axi_interconnect_0_M08_AXI_AWADDR),
        .M08_AXI_awready(axi_interconnect_0_M08_AXI_AWREADY),
        .M08_AXI_awvalid(axi_interconnect_0_M08_AXI_AWVALID),
        .M08_AXI_bready(axi_interconnect_0_M08_AXI_BREADY),
        .M08_AXI_bresp(axi_interconnect_0_M08_AXI_BRESP),
        .M08_AXI_bvalid(axi_interconnect_0_M08_AXI_BVALID),
        .M08_AXI_rdata(axi_interconnect_0_M08_AXI_RDATA),
        .M08_AXI_rready(axi_interconnect_0_M08_AXI_RREADY),
        .M08_AXI_rresp(axi_interconnect_0_M08_AXI_RRESP),
        .M08_AXI_rvalid(axi_interconnect_0_M08_AXI_RVALID),
        .M08_AXI_wdata(axi_interconnect_0_M08_AXI_WDATA),
        .M08_AXI_wready(axi_interconnect_0_M08_AXI_WREADY),
        .M08_AXI_wstrb(axi_interconnect_0_M08_AXI_WSTRB),
        .M08_AXI_wvalid(axi_interconnect_0_M08_AXI_WVALID),
        .M09_ACLK(Net),
        .M09_ARESETN(Net1),
        .M09_AXI_araddr(axi_interconnect_0_M09_AXI_ARADDR),
        .M09_AXI_arready(axi_interconnect_0_M09_AXI_ARREADY),
        .M09_AXI_arvalid(axi_interconnect_0_M09_AXI_ARVALID),
        .M09_AXI_awaddr(axi_interconnect_0_M09_AXI_AWADDR),
        .M09_AXI_awready(axi_interconnect_0_M09_AXI_AWREADY),
        .M09_AXI_awvalid(axi_interconnect_0_M09_AXI_AWVALID),
        .M09_AXI_bready(axi_interconnect_0_M09_AXI_BREADY),
        .M09_AXI_bresp(axi_interconnect_0_M09_AXI_BRESP),
        .M09_AXI_bvalid(axi_interconnect_0_M09_AXI_BVALID),
        .M09_AXI_rdata(axi_interconnect_0_M09_AXI_RDATA),
        .M09_AXI_rready(axi_interconnect_0_M09_AXI_RREADY),
        .M09_AXI_rresp(axi_interconnect_0_M09_AXI_RRESP),
        .M09_AXI_rvalid(axi_interconnect_0_M09_AXI_RVALID),
        .M09_AXI_wdata(axi_interconnect_0_M09_AXI_WDATA),
        .M09_AXI_wready(axi_interconnect_0_M09_AXI_WREADY),
        .M09_AXI_wstrb(axi_interconnect_0_M09_AXI_WSTRB),
        .M09_AXI_wvalid(axi_interconnect_0_M09_AXI_WVALID),
        .M10_ACLK(aclk_1),
        .M10_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M10_AXI_araddr(s_axi_AXILiteS2_1_ARADDR),
        .M10_AXI_arready(s_axi_AXILiteS2_1_ARREADY),
        .M10_AXI_arvalid(s_axi_AXILiteS2_1_ARVALID),
        .M10_AXI_awaddr(s_axi_AXILiteS2_1_AWADDR),
        .M10_AXI_awready(s_axi_AXILiteS2_1_AWREADY),
        .M10_AXI_awvalid(s_axi_AXILiteS2_1_AWVALID),
        .M10_AXI_bready(s_axi_AXILiteS2_1_BREADY),
        .M10_AXI_bresp(s_axi_AXILiteS2_1_BRESP),
        .M10_AXI_bvalid(s_axi_AXILiteS2_1_BVALID),
        .M10_AXI_rdata(s_axi_AXILiteS2_1_RDATA),
        .M10_AXI_rready(s_axi_AXILiteS2_1_RREADY),
        .M10_AXI_rresp(s_axi_AXILiteS2_1_RRESP),
        .M10_AXI_rvalid(s_axi_AXILiteS2_1_RVALID),
        .M10_AXI_wdata(s_axi_AXILiteS2_1_WDATA),
        .M10_AXI_wready(s_axi_AXILiteS2_1_WREADY),
        .M10_AXI_wstrb(s_axi_AXILiteS2_1_WSTRB),
        .M10_AXI_wvalid(s_axi_AXILiteS2_1_WVALID),
        .S00_ACLK(Net),
        .S00_ARESETN(Net1),
        .S00_AXI_araddr(Conn2_ARADDR),
        .S00_AXI_arburst(Conn2_ARBURST),
        .S00_AXI_arcache(Conn2_ARCACHE),
        .S00_AXI_arid(Conn2_ARID),
        .S00_AXI_arlen(Conn2_ARLEN),
        .S00_AXI_arlock(Conn2_ARLOCK),
        .S00_AXI_arprot(Conn2_ARPROT),
        .S00_AXI_arqos(Conn2_ARQOS),
        .S00_AXI_arready(Conn2_ARREADY),
        .S00_AXI_arregion(Conn2_ARREGION),
        .S00_AXI_arsize(Conn2_ARSIZE),
        .S00_AXI_arvalid(Conn2_ARVALID),
        .S00_AXI_awaddr(Conn2_AWADDR),
        .S00_AXI_awburst(Conn2_AWBURST),
        .S00_AXI_awcache(Conn2_AWCACHE),
        .S00_AXI_awid(Conn2_AWID),
        .S00_AXI_awlen(Conn2_AWLEN),
        .S00_AXI_awlock(Conn2_AWLOCK),
        .S00_AXI_awprot(Conn2_AWPROT),
        .S00_AXI_awqos(Conn2_AWQOS),
        .S00_AXI_awready(Conn2_AWREADY),
        .S00_AXI_awregion(Conn2_AWREGION),
        .S00_AXI_awsize(Conn2_AWSIZE),
        .S00_AXI_awvalid(Conn2_AWVALID),
        .S00_AXI_bid(Conn2_BID),
        .S00_AXI_bready(Conn2_BREADY),
        .S00_AXI_bresp(Conn2_BRESP),
        .S00_AXI_bvalid(Conn2_BVALID),
        .S00_AXI_rdata(Conn2_RDATA),
        .S00_AXI_rid(Conn2_RID),
        .S00_AXI_rlast(Conn2_RLAST),
        .S00_AXI_rready(Conn2_RREADY),
        .S00_AXI_rresp(Conn2_RRESP),
        .S00_AXI_rvalid(Conn2_RVALID),
        .S00_AXI_wdata(Conn2_WDATA),
        .S00_AXI_wlast(Conn2_WLAST),
        .S00_AXI_wready(Conn2_WREADY),
        .S00_AXI_wstrb(Conn2_WSTRB),
        .S00_AXI_wvalid(Conn2_WVALID));
  system_axi_mem_intercon_1 axi_mem_intercon
       (.ACLK(aclk_1),
        .ARESETN(rst_processing_system7_0_100M_interconnect_aresetn),
        .M00_ACLK(aclk_1),
        .M00_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_intercon_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_intercon_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_intercon_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wid(axi_mem_intercon_M00_AXI_WID),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S00_ACLK(aclk_1),
        .S00_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .S00_AXI_awaddr(axi_vdma_0_M_AXI_S2MM_AWADDR),
        .S00_AXI_awburst(axi_vdma_0_M_AXI_S2MM_AWBURST),
        .S00_AXI_awcache(axi_vdma_0_M_AXI_S2MM_AWCACHE),
        .S00_AXI_awlen(axi_vdma_0_M_AXI_S2MM_AWLEN),
        .S00_AXI_awprot(axi_vdma_0_M_AXI_S2MM_AWPROT),
        .S00_AXI_awready(axi_vdma_0_M_AXI_S2MM_AWREADY),
        .S00_AXI_awsize(axi_vdma_0_M_AXI_S2MM_AWSIZE),
        .S00_AXI_awvalid(axi_vdma_0_M_AXI_S2MM_AWVALID),
        .S00_AXI_bready(axi_vdma_0_M_AXI_S2MM_BREADY),
        .S00_AXI_bresp(axi_vdma_0_M_AXI_S2MM_BRESP),
        .S00_AXI_bvalid(axi_vdma_0_M_AXI_S2MM_BVALID),
        .S00_AXI_wdata(axi_vdma_0_M_AXI_S2MM_WDATA),
        .S00_AXI_wlast(axi_vdma_0_M_AXI_S2MM_WLAST),
        .S00_AXI_wready(axi_vdma_0_M_AXI_S2MM_WREADY),
        .S00_AXI_wstrb(axi_vdma_0_M_AXI_S2MM_WSTRB),
        .S00_AXI_wvalid(axi_vdma_0_M_AXI_S2MM_WVALID),
        .S01_ACLK(aclk_1),
        .S01_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .S01_AXI_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .S01_AXI_arburst(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .S01_AXI_arcache(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .S01_AXI_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .S01_AXI_arprot(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .S01_AXI_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .S01_AXI_arsize(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .S01_AXI_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .S01_AXI_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .S01_AXI_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .S01_AXI_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .S01_AXI_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .S01_AXI_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID));
  system_axi_vdma_0 axi_vdma
       (.axi_resetn(Net1),
        .m_axi_mm2s_aclk(aclk_1),
        .m_axi_mm2s_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(aclk_1),
        .m_axi_s2mm_awaddr(axi_vdma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_vdma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_vdma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_vdma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_vdma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_vdma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_vdma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_vdma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_vdma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_vdma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_vdma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_vdma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_vdma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_vdma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_vdma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_vdma_0_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_aclk(aclk_1),
        .m_axis_mm2s_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .mm2s_introut(axi_vdma_0_mm2s_introut),
        .s2mm_introut(axi_vdma_0_s2mm_introut),
        .s_axi_lite_aclk(Net),
        .s_axi_lite_araddr(axi_interconnect_0_M00_AXI_ARADDR[8:0]),
        .s_axi_lite_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_0_M00_AXI_AWADDR[8:0]),
        .s_axi_lite_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .s_axis_s2mm_aclk(aclk_1),
        .s_axis_s2mm_tdata(in_pixelformat_M00_AXIS_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(in_pixelformat_M00_AXIS_TLAST),
        .s_axis_s2mm_tready(in_pixelformat_M00_AXIS_TREADY),
        .s_axis_s2mm_tuser(in_pixelformat_M00_AXIS_TUSER),
        .s_axis_s2mm_tvalid(in_pixelformat_M00_AXIS_TVALID));
  hdmi_in_imp_NQ29ND hdmi_in
       (.DDC_scl_i(frontend_DDC_SCL_I),
        .DDC_scl_o(frontend_DDC_SCL_O),
        .DDC_scl_t(frontend_DDC_SCL_T),
        .DDC_sda_i(frontend_DDC_SDA_I),
        .DDC_sda_o(frontend_DDC_SDA_O),
        .DDC_sda_t(frontend_DDC_SDA_T),
        .PixelClk(hdmi_in_PixelClk),
        .RefClk(RefClk_1),
        .S_AXI_araddr(axi_interconnect_0_M08_AXI_ARADDR),
        .S_AXI_arready(axi_interconnect_0_M08_AXI_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_M08_AXI_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_M08_AXI_AWADDR),
        .S_AXI_awready(axi_interconnect_0_M08_AXI_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_M08_AXI_AWVALID),
        .S_AXI_bready(axi_interconnect_0_M08_AXI_BREADY),
        .S_AXI_bresp(axi_interconnect_0_M08_AXI_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_M08_AXI_BVALID),
        .S_AXI_rdata(axi_interconnect_0_M08_AXI_RDATA),
        .S_AXI_rready(axi_interconnect_0_M08_AXI_RREADY),
        .S_AXI_rresp(axi_interconnect_0_M08_AXI_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_M08_AXI_RVALID),
        .S_AXI_wdata(axi_interconnect_0_M08_AXI_WDATA),
        .S_AXI_wready(axi_interconnect_0_M08_AXI_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_M08_AXI_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_M08_AXI_WVALID),
        .TMDS_clk_n(TMDS_1_CLK_N),
        .TMDS_clk_p(TMDS_1_CLK_P),
        .TMDS_data_n(TMDS_1_DATA_N),
        .TMDS_data_p(TMDS_1_DATA_P),
        .aPixelClkLckd(hdmi_in_aPixelClkLckd),
        .ap_clk(aclk_1),
        .ap_rst_n(rst_processing_system7_0_100M_peripheral_aresetn),
        .ap_rst_n_control(Net1),
        .control(Net),
        .ctrl_araddr(axi_interconnect_0_M09_AXI_ARADDR),
        .ctrl_arready(axi_interconnect_0_M09_AXI_ARREADY),
        .ctrl_arvalid(axi_interconnect_0_M09_AXI_ARVALID),
        .ctrl_awaddr(axi_interconnect_0_M09_AXI_AWADDR),
        .ctrl_awready(axi_interconnect_0_M09_AXI_AWREADY),
        .ctrl_awvalid(axi_interconnect_0_M09_AXI_AWVALID),
        .ctrl_bready(axi_interconnect_0_M09_AXI_BREADY),
        .ctrl_bresp(axi_interconnect_0_M09_AXI_BRESP),
        .ctrl_bvalid(axi_interconnect_0_M09_AXI_BVALID),
        .ctrl_rdata(axi_interconnect_0_M09_AXI_RDATA),
        .ctrl_rready(axi_interconnect_0_M09_AXI_RREADY),
        .ctrl_rresp(axi_interconnect_0_M09_AXI_RRESP),
        .ctrl_rvalid(axi_interconnect_0_M09_AXI_RVALID),
        .ctrl_wdata(axi_interconnect_0_M09_AXI_WDATA),
        .ctrl_wready(axi_interconnect_0_M09_AXI_WREADY),
        .ctrl_wstrb(axi_interconnect_0_M09_AXI_WSTRB),
        .ctrl_wvalid(axi_interconnect_0_M09_AXI_WVALID),
        .gpio_io_o(axi_gpio_video_gpio_io_o),
        .ip2intc_irpt(axi_gpio_video_ip2intc_irpt),
        .irq(v_tc_1_irq),
        .out_stream_tdata(in_pixelformat_M00_AXIS_TDATA),
        .out_stream_tlast(in_pixelformat_M00_AXIS_TLAST),
        .out_stream_tready(in_pixelformat_M00_AXIS_TREADY),
        .out_stream_tuser(in_pixelformat_M00_AXIS_TUSER),
        .out_stream_tvalid(in_pixelformat_M00_AXIS_TVALID),
        .resetn(resetn_1),
        .s_axi_AXILiteS1_araddr(axi_interconnect_0_M07_AXI_ARADDR),
        .s_axi_AXILiteS1_arready(axi_interconnect_0_M07_AXI_ARREADY),
        .s_axi_AXILiteS1_arvalid(axi_interconnect_0_M07_AXI_ARVALID),
        .s_axi_AXILiteS1_awaddr(axi_interconnect_0_M07_AXI_AWADDR),
        .s_axi_AXILiteS1_awready(axi_interconnect_0_M07_AXI_AWREADY),
        .s_axi_AXILiteS1_awvalid(axi_interconnect_0_M07_AXI_AWVALID),
        .s_axi_AXILiteS1_bready(axi_interconnect_0_M07_AXI_BREADY),
        .s_axi_AXILiteS1_bresp(axi_interconnect_0_M07_AXI_BRESP),
        .s_axi_AXILiteS1_bvalid(axi_interconnect_0_M07_AXI_BVALID),
        .s_axi_AXILiteS1_rdata(axi_interconnect_0_M07_AXI_RDATA),
        .s_axi_AXILiteS1_rready(axi_interconnect_0_M07_AXI_RREADY),
        .s_axi_AXILiteS1_rresp(axi_interconnect_0_M07_AXI_RRESP),
        .s_axi_AXILiteS1_rvalid(axi_interconnect_0_M07_AXI_RVALID),
        .s_axi_AXILiteS1_wdata(axi_interconnect_0_M07_AXI_WDATA),
        .s_axi_AXILiteS1_wready(axi_interconnect_0_M07_AXI_WREADY),
        .s_axi_AXILiteS1_wstrb(axi_interconnect_0_M07_AXI_WSTRB),
        .s_axi_AXILiteS1_wvalid(axi_interconnect_0_M07_AXI_WVALID),
        .s_axi_AXILiteS2_araddr(s_axi_AXILiteS2_1_ARADDR),
        .s_axi_AXILiteS2_arready(s_axi_AXILiteS2_1_ARREADY),
        .s_axi_AXILiteS2_arvalid(s_axi_AXILiteS2_1_ARVALID),
        .s_axi_AXILiteS2_awaddr(s_axi_AXILiteS2_1_AWADDR),
        .s_axi_AXILiteS2_awready(s_axi_AXILiteS2_1_AWREADY),
        .s_axi_AXILiteS2_awvalid(s_axi_AXILiteS2_1_AWVALID),
        .s_axi_AXILiteS2_bready(s_axi_AXILiteS2_1_BREADY),
        .s_axi_AXILiteS2_bresp(s_axi_AXILiteS2_1_BRESP),
        .s_axi_AXILiteS2_bvalid(s_axi_AXILiteS2_1_BVALID),
        .s_axi_AXILiteS2_rdata(s_axi_AXILiteS2_1_RDATA),
        .s_axi_AXILiteS2_rready(s_axi_AXILiteS2_1_RREADY),
        .s_axi_AXILiteS2_rresp(s_axi_AXILiteS2_1_RRESP),
        .s_axi_AXILiteS2_rvalid(s_axi_AXILiteS2_1_RVALID),
        .s_axi_AXILiteS2_wdata(s_axi_AXILiteS2_1_WDATA),
        .s_axi_AXILiteS2_wready(s_axi_AXILiteS2_1_WREADY),
        .s_axi_AXILiteS2_wstrb(s_axi_AXILiteS2_1_WSTRB),
        .s_axi_AXILiteS2_wvalid(s_axi_AXILiteS2_1_WVALID),
        .s_axi_AXILiteS_araddr(axi_interconnect_0_M06_AXI_ARADDR),
        .s_axi_AXILiteS_arready(axi_interconnect_0_M06_AXI_ARREADY),
        .s_axi_AXILiteS_arvalid(axi_interconnect_0_M06_AXI_ARVALID),
        .s_axi_AXILiteS_awaddr(axi_interconnect_0_M06_AXI_AWADDR),
        .s_axi_AXILiteS_awready(axi_interconnect_0_M06_AXI_AWREADY),
        .s_axi_AXILiteS_awvalid(axi_interconnect_0_M06_AXI_AWVALID),
        .s_axi_AXILiteS_bready(axi_interconnect_0_M06_AXI_BREADY),
        .s_axi_AXILiteS_bresp(axi_interconnect_0_M06_AXI_BRESP),
        .s_axi_AXILiteS_bvalid(axi_interconnect_0_M06_AXI_BVALID),
        .s_axi_AXILiteS_rdata(axi_interconnect_0_M06_AXI_RDATA),
        .s_axi_AXILiteS_rready(axi_interconnect_0_M06_AXI_RREADY),
        .s_axi_AXILiteS_rresp(axi_interconnect_0_M06_AXI_RRESP),
        .s_axi_AXILiteS_rvalid(axi_interconnect_0_M06_AXI_RVALID),
        .s_axi_AXILiteS_wdata(axi_interconnect_0_M06_AXI_WDATA),
        .s_axi_AXILiteS_wready(axi_interconnect_0_M06_AXI_WREADY),
        .s_axi_AXILiteS_wstrb(axi_interconnect_0_M06_AXI_WSTRB),
        .s_axi_AXILiteS_wvalid(axi_interconnect_0_M06_AXI_WVALID),
        .vid_io_in_reset(vid_io_in_reset_1));
  hdmi_out_imp_1JATQKJ hdmi_out
       (.S_AXI_araddr(axi_interconnect_0_M05_AXI_ARADDR),
        .S_AXI_arready(axi_interconnect_0_M05_AXI_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_M05_AXI_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_M05_AXI_AWADDR),
        .S_AXI_awready(axi_interconnect_0_M05_AXI_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_M05_AXI_AWVALID),
        .S_AXI_bready(axi_interconnect_0_M05_AXI_BREADY),
        .S_AXI_bresp(axi_interconnect_0_M05_AXI_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_M05_AXI_BVALID),
        .S_AXI_rdata(axi_interconnect_0_M05_AXI_RDATA),
        .S_AXI_rready(axi_interconnect_0_M05_AXI_RREADY),
        .S_AXI_rresp(axi_interconnect_0_M05_AXI_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_M05_AXI_RVALID),
        .S_AXI_wdata(axi_interconnect_0_M05_AXI_WDATA),
        .S_AXI_wready(axi_interconnect_0_M05_AXI_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_M05_AXI_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_M05_AXI_WVALID),
        .TMDS_clk_n(Conn1_CLK_N),
        .TMDS_clk_p(Conn1_CLK_P),
        .TMDS_data_n(Conn1_DATA_N),
        .TMDS_data_p(Conn1_DATA_P),
        .ap_clk(aclk_1),
        .ap_rst_n(rst_processing_system7_0_100M_peripheral_aresetn),
        .ap_rst_n_control(Net1),
        .aux_reset_in(hdmi_in_aPixelClkLckd),
        .control(Net),
        .ctrl_araddr(axi_interconnect_0_M04_AXI_ARADDR),
        .ctrl_arready(axi_interconnect_0_M04_AXI_ARREADY),
        .ctrl_arvalid(axi_interconnect_0_M04_AXI_ARVALID),
        .ctrl_awaddr(axi_interconnect_0_M04_AXI_AWADDR),
        .ctrl_awready(axi_interconnect_0_M04_AXI_AWREADY),
        .ctrl_awvalid(axi_interconnect_0_M04_AXI_AWVALID),
        .ctrl_bready(axi_interconnect_0_M04_AXI_BREADY),
        .ctrl_bresp(axi_interconnect_0_M04_AXI_BRESP),
        .ctrl_bvalid(axi_interconnect_0_M04_AXI_BVALID),
        .ctrl_rdata(axi_interconnect_0_M04_AXI_RDATA),
        .ctrl_rready(axi_interconnect_0_M04_AXI_RREADY),
        .ctrl_rresp(axi_interconnect_0_M04_AXI_RRESP),
        .ctrl_rvalid(axi_interconnect_0_M04_AXI_RVALID),
        .ctrl_wdata(axi_interconnect_0_M04_AXI_WDATA),
        .ctrl_wready(axi_interconnect_0_M04_AXI_WREADY),
        .ctrl_wstrb(axi_interconnect_0_M04_AXI_WSTRB),
        .ctrl_wvalid(axi_interconnect_0_M04_AXI_WVALID),
        .ext_reset_in(ext_reset_in_1),
        .gpio_io_o(hdmi_out_hpd_video_gpio_io_o),
        .in_stream_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .in_stream_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .in_stream_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .in_stream_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .in_stream_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .ip2intc_irpt(hdmi_out_hpd_video_ip2intc_irpt),
        .irq(v_tc_0_irq),
        .locked(locked),
        .overflow(overflow),
        .peripheral_aresetn(resetn_1),
        .peripheral_reset(vid_io_in_reset_1),
        .s00_axi_araddr(axi_interconnect_0_M03_AXI_ARADDR),
        .s00_axi_arprot(axi_interconnect_0_M03_AXI_ARPROT),
        .s00_axi_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .s00_axi_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .s00_axi_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .s00_axi_awprot(axi_interconnect_0_M03_AXI_AWPROT),
        .s00_axi_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .s00_axi_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .s00_axi_bready(axi_interconnect_0_M03_AXI_BREADY),
        .s00_axi_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .s00_axi_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .s00_axi_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .s00_axi_rready(axi_interconnect_0_M03_AXI_RREADY),
        .s00_axi_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .s00_axi_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .s00_axi_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .s00_axi_wready(axi_interconnect_0_M03_AXI_WREADY),
        .s00_axi_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .s00_axi_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .s_axi_AXILiteS1_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .s_axi_AXILiteS1_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_AXILiteS1_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_AXILiteS1_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .s_axi_AXILiteS1_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_AXILiteS1_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_AXILiteS1_bready(axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_AXILiteS1_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_AXILiteS1_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_AXILiteS1_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_AXILiteS1_rready(axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_AXILiteS1_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_AXILiteS1_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_AXILiteS1_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_AXILiteS1_wready(axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_AXILiteS1_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_AXILiteS1_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .s_axi_AXILiteS_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .s_axi_AXILiteS_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_AXILiteS_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_AXILiteS_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .s_axi_AXILiteS_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_AXILiteS_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_AXILiteS_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_AXILiteS_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_AXILiteS_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_AXILiteS_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_AXILiteS_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_AXILiteS_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_AXILiteS_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_AXILiteS_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_AXILiteS_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_AXILiteS_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_AXILiteS_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .slowest_sync_clk(hdmi_in_PixelClk),
        .status(status),
        .underflow(underflow));
  system_xlconcat_0_0 xlconcat_0
       (.In0(axi_vdma_0_s2mm_introut),
        .In1(axi_vdma_0_mm2s_introut),
        .In2(v_tc_0_irq),
        .In3(v_tc_1_irq),
        .In4(axi_gpio_video_ip2intc_irpt),
        .In5(hdmi_out_hpd_video_ip2intc_irpt),
        .dout(xlconcat_0_dout));
endmodule
