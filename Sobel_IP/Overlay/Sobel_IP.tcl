
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
}


# CHANGE DESIGN NAME HERE
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: frontend
proc create_hier_cell_frontend_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_frontend_1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Master -vlnv digilentinc.com:interface:tmds_rtl:1.0 TMDS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 ctrl
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s00_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 video_in

  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aux_reset_in
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O -from 0 -to 0 gpio_io_o
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir O -type intr irq
  create_bd_pin -dir O locked
  create_bd_pin -dir O overflow
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_reset
  create_bd_pin -dir I -type clk s00_axi_aclk
  create_bd_pin -dir I -from 0 -to 0 -type rst s_axi_aresetn
  create_bd_pin -dir I -type clk slowest_sync_clk
  create_bd_pin -dir O -from 31 -to 0 status
  create_bd_pin -dir O underflow

  # Create instance: axi_dynclk, and set properties
  set axi_dynclk [ create_bd_cell -type ip -vlnv digilentinc.com:ip:axi_dynclk:1.0 axi_dynclk ]

  # Create instance: hdmi_out_hpd_video, and set properties
  set hdmi_out_hpd_video [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 hdmi_out_hpd_video ]
  set_property -dict [ list \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.C_INTERRUPT_PRESENT {1} \
 ] $hdmi_out_hpd_video

  # Create instance: proc_sys_reset_pixelclk, and set properties
  set proc_sys_reset_pixelclk [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_pixelclk ]

  # Create instance: rgb2dvi_0, and set properties
  set rgb2dvi_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:rgb2dvi:1.2 rgb2dvi_0 ]
  set_property -dict [ list \
CONFIG.kClkRange {2} \
CONFIG.kGenerateSerialClk {false} \
CONFIG.kRstActiveHigh {false} \
 ] $rgb2dvi_0

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
CONFIG.C_ADDR_WIDTH {11} \
CONFIG.C_HAS_ASYNC_CLK {1} \
CONFIG.C_HYSTERESIS_LEVEL {1024} \
CONFIG.C_VTG_MASTER_SLAVE {1} \
 ] $v_axi4s_vid_out_0

  # Create instance: vtc_out, and set properties
  set vtc_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 vtc_out ]
  set_property -dict [ list \
CONFIG.enable_detection {false} \
 ] $vtc_out

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins TMDS] [get_bd_intf_pins rgb2dvi_0/TMDS]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins ctrl] [get_bd_intf_pins vtc_out/ctrl]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M06_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins hdmi_out_hpd_video/S_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M08_AXI [get_bd_intf_pins s00_axi] [get_bd_intf_pins axi_dynclk/s00_axi]
  connect_bd_intf_net -intf_net v_axi4s_vid_out_0_vid_io_out [get_bd_intf_pins rgb2dvi_0/RGB] [get_bd_intf_pins v_axi4s_vid_out_0/vid_io_out]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins vtc_out/vtiming_out]
  connect_bd_intf_net -intf_net video_in_1 [get_bd_intf_pins video_in] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins s00_axi_aclk] [get_bd_pins axi_dynclk/REF_CLK_I] [get_bd_pins axi_dynclk/s00_axi_aclk] [get_bd_pins hdmi_out_hpd_video/s_axi_aclk] [get_bd_pins vtc_out/s_axi_aclk]
  connect_bd_net -net Net1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_dynclk/s00_axi_aresetn] [get_bd_pins hdmi_out_hpd_video/s_axi_aresetn] [get_bd_pins vtc_out/s_axi_aresetn]
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins v_axi4s_vid_out_0/aclk]
  connect_bd_net -net aux_reset_in_1 [get_bd_pins aux_reset_in] [get_bd_pins proc_sys_reset_pixelclk/aux_reset_in]
  connect_bd_net -net axi_dynclk_0_LOCKED_O [get_bd_pins axi_dynclk/LOCKED_O] [get_bd_pins rgb2dvi_0/aRst_n]
  connect_bd_net -net axi_dynclk_0_PXL_CLK_5X_O [get_bd_pins axi_dynclk/PXL_CLK_5X_O] [get_bd_pins rgb2dvi_0/SerialClk]
  connect_bd_net -net axi_dynclk_0_PXL_CLK_O [get_bd_pins axi_dynclk/PXL_CLK_O] [get_bd_pins rgb2dvi_0/PixelClk] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins vtc_out/clk]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins proc_sys_reset_pixelclk/ext_reset_in]
  connect_bd_net -net hdmi_out_hpd_video_gpio_io_o [get_bd_pins gpio_io_o] [get_bd_pins hdmi_out_hpd_video/gpio_io_o]
  connect_bd_net -net hdmi_out_hpd_video_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins hdmi_out_hpd_video/ip2intc_irpt]
  connect_bd_net -net locked [get_bd_pins locked] [get_bd_pins v_axi4s_vid_out_0/locked]
  connect_bd_net -net overflow [get_bd_pins overflow] [get_bd_pins v_axi4s_vid_out_0/overflow]
  connect_bd_net -net proc_sys_reset_pixelclk_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins proc_sys_reset_pixelclk/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_pixelclk_peripheral_reset [get_bd_pins peripheral_reset] [get_bd_pins proc_sys_reset_pixelclk/peripheral_reset]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins slowest_sync_clk] [get_bd_pins proc_sys_reset_pixelclk/slowest_sync_clk]
  connect_bd_net -net status [get_bd_pins status] [get_bd_pins v_axi4s_vid_out_0/status]
  connect_bd_net -net underflow [get_bd_pins underflow] [get_bd_pins v_axi4s_vid_out_0/underflow]
  connect_bd_net -net v_tc_0_irq [get_bd_pins irq] [get_bd_pins vtc_out/irq]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: frontend
proc create_hier_cell_frontend { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_frontend() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 DDC
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Slave -vlnv digilentinc.com:interface:tmds_rtl:1.0 TMDS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 ctrl
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 video_out

  # Create pins
  create_bd_pin -dir O -type clk PixelClk
  create_bd_pin -dir I -type clk RefClk
  create_bd_pin -dir O aPixelClkLckd
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir O -from 0 -to 0 gpio_io_o
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir O -type intr irq
  create_bd_pin -dir I -from 0 -to 0 -type rst resetn
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -from 0 -to 0 -type rst s_axi_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst vid_io_in_reset

  # Create instance: axi_gpio_hdmiin, and set properties
  set axi_gpio_hdmiin [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_hdmiin ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO2_WIDTH {1} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.C_INTERRUPT_PRESENT {1} \
CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_hdmiin

  # Create instance: dvi2rgb_0, and set properties
  set dvi2rgb_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:dvi2rgb:1.6 dvi2rgb_0 ]
  set_property -dict [ list \
CONFIG.kAddBUFG {false} \
CONFIG.kClkRange {1} \
CONFIG.kEdidFileName {720p_edid.txt} \
CONFIG.kRstActiveHigh {false} \
 ] $dvi2rgb_0

  # Create instance: v_vid_in_axi4s_0, and set properties
  set v_vid_in_axi4s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_0 ]
  set_property -dict [ list \
CONFIG.C_ADDR_WIDTH {12} \
CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_vid_in_axi4s_0

  # Create instance: vtc_in, and set properties
  set vtc_in [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 vtc_in ]
  set_property -dict [ list \
CONFIG.HAS_INTC_IF {true} \
CONFIG.enable_generation {false} \
CONFIG.horizontal_blank_detection {false} \
CONFIG.max_lines_per_frame {2048} \
CONFIG.vertical_blank_detection {false} \
 ] $vtc_in

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins DDC] [get_bd_intf_pins dvi2rgb_0/DDC]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins TMDS] [get_bd_intf_pins dvi2rgb_0/TMDS]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins ctrl] [get_bd_intf_pins vtc_in/ctrl]
  connect_bd_intf_net -intf_net dvi2rgb_0_RGB [get_bd_intf_pins dvi2rgb_0/RGB] [get_bd_intf_pins v_vid_in_axi4s_0/vid_io_in]
  connect_bd_intf_net -intf_net hdmi_in_video_out [get_bd_intf_pins video_out] [get_bd_intf_pins v_vid_in_axi4s_0/video_out]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M07_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_gpio_hdmiin/S_AXI]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_0_vtiming_out [get_bd_intf_pins v_vid_in_axi4s_0/vtiming_out] [get_bd_intf_pins vtc_in/vtiming_in]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins s_axi_aclk] [get_bd_pins axi_gpio_hdmiin/s_axi_aclk] [get_bd_pins vtc_in/s_axi_aclk]
  connect_bd_net -net Net1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_gpio_hdmiin/s_axi_aresetn] [get_bd_pins dvi2rgb_0/aRst_n] [get_bd_pins vtc_in/s_axi_aresetn]
  connect_bd_net -net RefClk_1 [get_bd_pins RefClk] [get_bd_pins dvi2rgb_0/RefClk]
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins v_vid_in_axi4s_0/aclk]
  connect_bd_net -net axi_gpio_video_gpio_io_o [get_bd_pins gpio_io_o] [get_bd_pins axi_gpio_hdmiin/gpio_io_o]
  connect_bd_net -net axi_gpio_video_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins axi_gpio_hdmiin/ip2intc_irpt]
  connect_bd_net -net dvi2rgb_0_PixelClk1 [get_bd_pins PixelClk] [get_bd_pins dvi2rgb_0/PixelClk] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_clk] [get_bd_pins vtc_in/clk]
  connect_bd_net -net dvi2rgb_0_aPixelClkLckd [get_bd_pins aPixelClkLckd] [get_bd_pins axi_gpio_hdmiin/gpio2_io_i] [get_bd_pins dvi2rgb_0/aPixelClkLckd]
  connect_bd_net -net resetn_1 [get_bd_pins resetn] [get_bd_pins vtc_in/resetn]
  connect_bd_net -net v_tc_1_irq [get_bd_pins irq] [get_bd_pins vtc_in/irq]
  connect_bd_net -net vid_io_in_reset_1 [get_bd_pins vid_io_in_reset] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_reset]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /video/hdmi_in/frontend] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port s_axi_aclk -pg 1 -y 310 -defaultsOSRD
preplace port PixelClk -pg 1 -y 210 -defaultsOSRD
preplace port ctrl -pg 1 -y 290 -defaultsOSRD
preplace port TMDS -pg 1 -y 170 -defaultsOSRD
preplace port aPixelClkLckd -pg 1 -y 100 -defaultsOSRD
preplace port RefClk -pg 1 -y 190 -defaultsOSRD
preplace port S_AXI -pg 1 -y 60 -defaultsOSRD
preplace port ip2intc_irpt -pg 1 -y 120 -defaultsOSRD
preplace port aclk -pg 1 -y 450 -defaultsOSRD
preplace port irq -pg 1 -y 490 -defaultsOSRD
preplace port DDC -pg 1 -y 170 -defaultsOSRD
preplace port video_out -pg 1 -y 350 -defaultsOSRD
preplace portBus resetn -pg 1 -y 560 -defaultsOSRD
preplace portBus vid_io_in_reset -pg 1 -y 430 -defaultsOSRD
preplace portBus s_axi_aresetn -pg 1 -y 210 -defaultsOSRD
preplace portBus gpio_io_o -pg 1 -y 60 -defaultsOSRD
preplace inst vtc_in -pg 1 -lvl 2 -y 480 -defaultsOSRD
preplace inst axi_gpio_hdmiin -pg 1 -lvl 2 -y 80 -defaultsOSRD
preplace inst v_vid_in_axi4s_0 -pg 1 -lvl 1 -y 440 -defaultsOSRD
preplace inst dvi2rgb_0 -pg 1 -lvl 1 -y 200 -defaultsOSRD
preplace netloc Conn1 1 1 2 NJ 170 NJ
preplace netloc Conn2 1 0 1 NJ
preplace netloc axi_gpio_video_ip2intc_irpt 1 2 1 NJ
preplace netloc Conn3 1 0 2 NJ 290 NJ
preplace netloc processing_system7_0_axi_periph_M07_AXI 1 0 2 NJ 60 NJ
preplace netloc dvi2rgb_0_PixelClk1 1 0 3 10 320 300 210 NJ
preplace netloc hdmi_in_video_out 1 1 2 NJ 350 NJ
preplace netloc RefClk_1 1 0 1 NJ
preplace netloc v_tc_1_irq 1 2 1 NJ
preplace netloc resetn_1 1 0 2 NJ 560 NJ
preplace netloc dvi2rgb_0_aPixelClkLckd 1 1 2 NJ 230 610
preplace netloc vid_io_in_reset_1 1 0 1 NJ
preplace netloc Net1 1 0 2 -10 110 320
preplace netloc Net 1 0 2 NJ 300 310
preplace netloc v_vid_in_axi4s_0_vtiming_out 1 1 1 N
preplace netloc axi_gpio_video_gpio_io_o 1 2 1 NJ
preplace netloc aclk_1 1 0 1 NJ
preplace netloc dvi2rgb_0_RGB 1 0 2 0 120 280
levelinfo -pg 1 -30 160 480 630 -top -90 -bot 610
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hdmi_out
proc create_hier_cell_hdmi_out { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_hdmi_out() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Master -vlnv digilentinc.com:interface:tmds_rtl:1.0 TMDS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 ctrl
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in_stream
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s00_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_AXILiteS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_AXILiteS1

  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst ap_rst_n
  create_bd_pin -dir I -from 0 -to 0 -type rst ap_rst_n_control
  create_bd_pin -dir I -type rst aux_reset_in
  create_bd_pin -dir I -type clk control
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O -from 0 -to 0 gpio_io_o
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir O -type intr irq
  create_bd_pin -dir O locked
  create_bd_pin -dir O overflow
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_reset
  create_bd_pin -dir I -type clk slowest_sync_clk
  create_bd_pin -dir O -from 31 -to 0 status
  create_bd_pin -dir O underflow

  # Create instance: axis_register_slice_0, and set properties
  set axis_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 axis_register_slice_0 ]

  # Create instance: color_convert, and set properties
  set color_convert [ create_bd_cell -type ip -vlnv xilinx.com:hls:color_convert:1.0 color_convert ]

  # Create instance: frontend
  create_hier_cell_frontend_1 $hier_obj frontend

  # Create instance: pixel_unpack, and set properties
  set pixel_unpack [ create_bd_cell -type ip -vlnv xilinx.com:hls:pixel_unpack:1.0 pixel_unpack ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins TMDS] [get_bd_intf_pins frontend/TMDS]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins ctrl] [get_bd_intf_pins frontend/ctrl]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins s_axi_AXILiteS1] [get_bd_intf_pins color_convert/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins s_axi_AXILiteS] [get_bd_intf_pins pixel_unpack/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins in_stream] [get_bd_intf_pins pixel_unpack/in_stream]
  connect_bd_intf_net -intf_net axis_register_slice_0_M_AXIS [get_bd_intf_pins axis_register_slice_0/M_AXIS] [get_bd_intf_pins color_convert/in_data]
  connect_bd_intf_net -intf_net pixel_unpack_out_stream [get_bd_intf_pins axis_register_slice_0/S_AXIS] [get_bd_intf_pins pixel_unpack/out_stream]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M06_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins frontend/S_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M08_AXI [get_bd_intf_pins s00_axi] [get_bd_intf_pins frontend/s00_axi]
  connect_bd_intf_net -intf_net video_in_1 [get_bd_intf_pins color_convert/out_data] [get_bd_intf_pins frontend/video_in]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins control] [get_bd_pins frontend/s00_axi_aclk]
  connect_bd_net -net Net1 [get_bd_pins ap_rst_n_control] [get_bd_pins frontend/s_axi_aresetn]
  connect_bd_net -net aclk_1 [get_bd_pins ap_clk] [get_bd_pins axis_register_slice_0/aclk] [get_bd_pins color_convert/ap_clk] [get_bd_pins color_convert/control] [get_bd_pins frontend/aclk] [get_bd_pins pixel_unpack/ap_clk] [get_bd_pins pixel_unpack/control]
  connect_bd_net -net aux_reset_in_1 [get_bd_pins aux_reset_in] [get_bd_pins frontend/aux_reset_in]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins frontend/ext_reset_in]
  connect_bd_net -net frontend_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins frontend/peripheral_aresetn]
  connect_bd_net -net frontend_peripheral_reset [get_bd_pins peripheral_reset] [get_bd_pins frontend/peripheral_reset]
  connect_bd_net -net hdmi_out_hpd_video_gpio_io_o [get_bd_pins gpio_io_o] [get_bd_pins frontend/gpio_io_o]
  connect_bd_net -net hdmi_out_hpd_video_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins frontend/ip2intc_irpt]
  connect_bd_net -net locked [get_bd_pins locked] [get_bd_pins frontend/locked]
  connect_bd_net -net overflow [get_bd_pins overflow] [get_bd_pins frontend/overflow]
  connect_bd_net -net rst_processing_system7_0_100M_peripheral_aresetn [get_bd_pins ap_rst_n] [get_bd_pins axis_register_slice_0/aresetn] [get_bd_pins color_convert/ap_rst_n] [get_bd_pins color_convert/ap_rst_n_control] [get_bd_pins pixel_unpack/ap_rst_n] [get_bd_pins pixel_unpack/ap_rst_n_control]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins slowest_sync_clk] [get_bd_pins frontend/slowest_sync_clk]
  connect_bd_net -net status [get_bd_pins status] [get_bd_pins frontend/status]
  connect_bd_net -net underflow [get_bd_pins underflow] [get_bd_pins frontend/underflow]
  connect_bd_net -net v_tc_0_irq [get_bd_pins irq] [get_bd_pins frontend/irq]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hdmi_in
proc create_hier_cell_hdmi_in { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_hdmi_in() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 DDC
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Slave -vlnv digilentinc.com:interface:tmds_rtl:1.0 TMDS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 ctrl
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_stream
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_AXILiteS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_AXILiteS1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_AXILiteS2

  # Create pins
  create_bd_pin -dir O -type clk PixelClk
  create_bd_pin -dir I -type clk RefClk
  create_bd_pin -dir O aPixelClkLckd
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst ap_rst_n
  create_bd_pin -dir I -from 0 -to 0 -type rst ap_rst_n_control
  create_bd_pin -dir I -type clk control
  create_bd_pin -dir O -from 0 -to 0 gpio_io_o
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir O -type intr irq
  create_bd_pin -dir I -from 0 -to 0 -type rst resetn
  create_bd_pin -dir I -from 0 -to 0 -type rst vid_io_in_reset

  # Create instance: axis_register_slice_0, and set properties
  set axis_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 axis_register_slice_0 ]

  # Create instance: color_convert, and set properties
  set color_convert [ create_bd_cell -type ip -vlnv xilinx.com:hls:color_convert:1.0 color_convert ]

  # Create instance: filter_0, and set properties
  set filter_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:filter:1.0 filter_0 ]

  # Create instance: frontend
  create_hier_cell_frontend $hier_obj frontend

  # Create instance: pixel_pack, and set properties
  set pixel_pack [ create_bd_cell -type ip -vlnv xilinx.com:hls:pixel_pack:1.0 pixel_pack ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins ctrl] [get_bd_intf_pins frontend/ctrl]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins s_axi_AXILiteS1] [get_bd_intf_pins pixel_pack/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins s_axi_AXILiteS] [get_bd_intf_pins color_convert/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net TMDS_1 [get_bd_intf_pins TMDS] [get_bd_intf_pins frontend/TMDS]
  connect_bd_intf_net -intf_net axis_register_slice_0_M_AXIS [get_bd_intf_pins axis_register_slice_0/M_AXIS] [get_bd_intf_pins pixel_pack/in_stream]
  connect_bd_intf_net -intf_net filter_0_output_r [get_bd_intf_pins axis_register_slice_0/S_AXIS] [get_bd_intf_pins filter_0/output_r]
  connect_bd_intf_net -intf_net frontend_DDC [get_bd_intf_pins DDC] [get_bd_intf_pins frontend/DDC]
  connect_bd_intf_net -intf_net hdmi_in_video_out [get_bd_intf_pins color_convert/in_data] [get_bd_intf_pins frontend/video_out]
  connect_bd_intf_net -intf_net in_pixelformat_M00_AXIS [get_bd_intf_pins out_stream] [get_bd_intf_pins pixel_pack/out_stream]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M07_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins frontend/S_AXI]
  connect_bd_intf_net -intf_net s_axi_AXILiteS2_1 [get_bd_intf_pins s_axi_AXILiteS2] [get_bd_intf_pins filter_0/s_axi_AXILiteS]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins control] [get_bd_pins frontend/s_axi_aclk]
  connect_bd_net -net Net1 [get_bd_pins ap_rst_n_control] [get_bd_pins frontend/s_axi_aresetn]
  connect_bd_net -net RefClk_1 [get_bd_pins RefClk] [get_bd_pins frontend/RefClk]
  connect_bd_net -net aclk_1 [get_bd_pins ap_clk] [get_bd_pins axis_register_slice_0/aclk] [get_bd_pins color_convert/ap_clk] [get_bd_pins color_convert/control] [get_bd_pins filter_0/ap_clk] [get_bd_pins frontend/aclk] [get_bd_pins pixel_pack/ap_clk] [get_bd_pins pixel_pack/control]
  connect_bd_net -net axi_gpio_video_gpio_io_o [get_bd_pins gpio_io_o] [get_bd_pins frontend/gpio_io_o]
  connect_bd_net -net axi_gpio_video_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins frontend/ip2intc_irpt]
  connect_bd_net -net color_convert_out_data_TDATA [get_bd_pins color_convert/out_data_TDATA] [get_bd_pins filter_0/input_r_TDATA]
  connect_bd_net -net color_convert_out_data_TLAST [get_bd_pins color_convert/out_data_TLAST] [get_bd_pins filter_0/input_r_TLAST]
  connect_bd_net -net color_convert_out_data_TUSER [get_bd_pins color_convert/out_data_TUSER] [get_bd_pins filter_0/input_r_TUSER]
  connect_bd_net -net color_convert_out_data_TVALID [get_bd_pins color_convert/out_data_TVALID] [get_bd_pins filter_0/input_r_TVALID]
  connect_bd_net -net dvi2rgb_0_PixelClk [get_bd_pins PixelClk] [get_bd_pins frontend/PixelClk]
  connect_bd_net -net dvi2rgb_0_aPixelClkLckd [get_bd_pins aPixelClkLckd] [get_bd_pins frontend/aPixelClkLckd]
  connect_bd_net -net filter_0_input_r_TREADY [get_bd_pins color_convert/out_data_TREADY] [get_bd_pins filter_0/input_r_TREADY]
  connect_bd_net -net resetn_1 [get_bd_pins resetn] [get_bd_pins frontend/resetn]
  connect_bd_net -net rst_processing_system7_0_100M_peripheral_aresetn [get_bd_pins ap_rst_n] [get_bd_pins axis_register_slice_0/aresetn] [get_bd_pins color_convert/ap_rst_n] [get_bd_pins color_convert/ap_rst_n_control] [get_bd_pins filter_0/ap_rst_n] [get_bd_pins pixel_pack/ap_rst_n] [get_bd_pins pixel_pack/ap_rst_n_control]
  connect_bd_net -net v_tc_1_irq [get_bd_pins irq] [get_bd_pins frontend/irq]
  connect_bd_net -net vid_io_in_reset_1 [get_bd_pins vid_io_in_reset] [get_bd_pins frontend/vid_io_in_reset]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /video/hdmi_in] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port out_stream -pg 1 -y 90 -defaultsOSRD
preplace port PixelClk -pg 1 -y 380 -defaultsOSRD
preplace port ctrl -pg 1 -y 360 -defaultsOSRD
preplace port TMDS -pg 1 -y 340 -defaultsOSRD
preplace port ap_clk -pg 1 -y 120 -defaultsOSRD
preplace port aPixelClkLckd -pg 1 -y 400 -defaultsOSRD
preplace port RefClk -pg 1 -y 380 -defaultsOSRD
preplace port control -pg 1 -y 440 -defaultsOSRD
preplace port s_axi_AXILiteS1 -pg 1 -y 40 -defaultsOSRD
preplace port s_axi_AXILiteS -pg 1 -y 100 -defaultsOSRD
preplace port S_AXI -pg 1 -y 320 -defaultsOSRD
preplace port s_axi_AXILiteS2 -pg 1 -y 20 -defaultsOSRD
preplace port ip2intc_irpt -pg 1 -y 440 -defaultsOSRD
preplace port irq -pg 1 -y 460 -defaultsOSRD
preplace port DDC -pg 1 -y 340 -defaultsOSRD
preplace portBus resetn -pg 1 -y 420 -defaultsOSRD
preplace portBus ap_rst_n_control -pg 1 -y 460 -defaultsOSRD
preplace portBus ap_rst_n -pg 1 -y 160 -defaultsOSRD
preplace portBus vid_io_in_reset -pg 1 -y 480 -defaultsOSRD
preplace portBus gpio_io_o -pg 1 -y 420 -defaultsOSRD
preplace inst pixel_pack -pg 1 -lvl 4 -y 90 -defaultsOSRD
preplace inst filter_0 -pg 1 -lvl 2 -y 200 -defaultsOSRD
preplace inst axis_register_slice_0 -pg 1 -lvl 3 -y 190 -defaultsOSRD
preplace inst frontend -pg 1 -lvl 4 -y 402 -defaultsOSRD
preplace inst color_convert -pg 1 -lvl 1 -y 190 -defaultsOSRD
preplace inst frontend|axi_gpio_hdmiin -pg 1 -lvl 2 -y 722 -defaultsOSRD
preplace inst frontend|vtc_in -pg 1 -lvl 2 -y 502 -defaultsOSRD
preplace inst frontend|v_vid_in_axi4s_0 -pg 1 -lvl 1 -y 402 -defaultsOSRD
preplace inst frontend|dvi2rgb_0 -pg 1 -lvl 1 -y 612 -defaultsOSRD
preplace netloc color_convert_out_data_TUSER 1 1 1 370
preplace netloc filter_0_input_r_TREADY 1 1 1 N
preplace netloc axi_gpio_video_ip2intc_irpt 1 4 1 NJ
preplace netloc frontend|hdmi_in_video_out 1 1 2 N 362 NJ
preplace netloc Conn3 1 0 4 NJ 360 NJ 360 NJ 360 NJ
preplace netloc frontend|RefClk_1 1 0 1 2820
preplace netloc TMDS_1 1 0 4 NJ 340 NJ 380 NJ 380 NJ
preplace netloc processing_system7_0_axi_periph_M07_AXI 1 0 4 NJ 350 NJ 350 NJ 350 NJ
preplace netloc color_convert_out_data_TDATA 1 1 1 N
preplace netloc frontend|Conn1 1 1 2 3120 342 NJ
preplace netloc frontend|axi_gpio_video_ip2intc_irpt 1 2 1 3510
preplace netloc frontend|aclk_1 1 0 1 2810
preplace netloc frontend|Net1 1 0 2 2860 732 3180
preplace netloc Conn5 1 0 4 NJ 40 NJ 40 NJ 40 NJ
preplace netloc in_pixelformat_M00_AXIS 1 4 1 NJ
preplace netloc frontend_DDC 1 4 1 NJ
preplace netloc hdmi_in_video_out 1 0 5 -20 330 NJ 330 NJ 260 NJ 260 3650
preplace netloc frontend|Conn2 1 0 1 N
preplace netloc filter_0_output_r 1 2 1 780
preplace netloc Conn6 1 0 1 NJ
preplace netloc RefClk_1 1 0 4 NJ 370 NJ 370 NJ 370 NJ
preplace netloc frontend|Conn3 1 0 2 NJ 532 3130
preplace netloc frontend|dvi2rgb_0_aPixelClkLckd 1 1 2 3170 632 3490
preplace netloc v_tc_1_irq 1 4 1 NJ
preplace netloc rst_processing_system7_0_100M_peripheral_aresetn 1 0 4 -40 290 NJ 340 800 120 2560
preplace netloc frontend|processing_system7_0_axi_periph_M07_AXI 1 0 2 NJ 702 N
preplace netloc frontend|dvi2rgb_0_PixelClk1 1 0 3 2880 522 3140 372 NJ
preplace netloc frontend|axi_gpio_video_gpio_io_o 1 2 1 N
preplace netloc resetn_1 1 0 4 NJ 420 NJ 420 NJ 420 NJ
preplace netloc dvi2rgb_0_aPixelClkLckd 1 4 1 NJ
preplace netloc frontend|v_vid_in_axi4s_0_vtiming_out 1 1 1 3150
preplace netloc frontend|resetn_1 1 0 2 NJ 712 3160
preplace netloc vid_io_in_reset_1 1 0 4 NJ 480 NJ 480 NJ 480 NJ
preplace netloc s_axi_AXILiteS2_1 1 0 2 NJ 20 390
preplace netloc Net1 1 0 4 NJ 460 NJ 460 NJ 460 NJ
preplace netloc Net 1 0 4 NJ 440 NJ 440 NJ 440 NJ
preplace netloc frontend|dvi2rgb_0_RGB 1 0 2 2870 692 3130
preplace netloc frontend|vid_io_in_reset_1 1 0 1 2840
preplace netloc frontend|v_tc_1_irq 1 2 1 3500
preplace netloc frontend|Net 1 0 2 NJ 722 3150
preplace netloc aclk_1 1 0 4 -30 90 380 70 790 80 2630
preplace netloc color_convert_out_data_TLAST 1 1 1 360
preplace netloc axi_gpio_video_gpio_io_o 1 4 1 NJ
preplace netloc axis_register_slice_0_M_AXIS 1 3 1 2570
preplace netloc color_convert_out_data_TVALID 1 1 1 N
preplace netloc dvi2rgb_0_PixelClk 1 4 1 NJ
levelinfo -pg 1 -60 200 610 2470 2870 3700 -top 0 -bot 840
levelinfo -hier frontend * 3000 3360 *
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: video
proc create_hier_cell_video { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_video() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 DDC
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CONTROL
  create_bd_intf_pin -mode Slave -vlnv digilentinc.com:interface:tmds_rtl:1.0 TMDS
  create_bd_intf_pin -mode Master -vlnv digilentinc.com:interface:tmds_rtl:1.0 TMDS1

  # Create pins
  create_bd_pin -dir I -type clk control_clock
  create_bd_pin -dir I -from 0 -to 0 -type rst control_interconnect_reset_n
  create_bd_pin -dir I -from 0 -to 0 -type rst control_reset_n
  create_bd_pin -dir I data_clock
  create_bd_pin -dir I -from 0 -to 0 -type rst data_interconnect_reset_n
  create_bd_pin -dir I -from 0 -to 0 -type rst data_reset_n
  create_bd_pin -dir O -from 5 -to 0 dout
  create_bd_pin -dir O -from 0 -to 0 gpio_io_o
  create_bd_pin -dir O -from 0 -to 0 gpio_io_o1
  create_bd_pin -dir I -type clk reference_clk
  create_bd_pin -dir I -type rst system_reset

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
CONFIG.NUM_MI {11} \
 ] $axi_interconnect_0

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
 ] $axi_mem_intercon

  # Create instance: axi_vdma, and set properties
  set axi_vdma [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma ]
  set_property -dict [ list \
CONFIG.c_m_axi_mm2s_data_width {32} \
CONFIG.c_m_axis_mm2s_tdata_width {32} \
CONFIG.c_mm2s_genlock_mode {1} \
CONFIG.c_mm2s_linebuffer_depth {512} \
CONFIG.c_mm2s_max_burst_length {32} \
CONFIG.c_num_fstores {4} \
CONFIG.c_s2mm_genlock_mode {0} \
CONFIG.c_s2mm_linebuffer_depth {4096} \
CONFIG.c_s2mm_max_burst_length {32} \
 ] $axi_vdma

  # Create instance: hdmi_in
  create_hier_cell_hdmi_in $hier_obj hdmi_in

  # Create instance: hdmi_out
  create_hier_cell_hdmi_out $hier_obj hdmi_out

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {6} \
 ] $xlconcat_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins TMDS1] [get_bd_intf_pins hdmi_out/TMDS]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S_AXI_CONTROL] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net TMDS_1 [get_bd_intf_pins TMDS] [get_bd_intf_pins hdmi_in/TMDS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins axi_vdma/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_interconnect_0/M01_AXI] [get_bd_intf_pins hdmi_out/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_interconnect_0/M02_AXI] [get_bd_intf_pins hdmi_out/s_axi_AXILiteS1]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_interconnect_0/M03_AXI] [get_bd_intf_pins hdmi_out/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins axi_interconnect_0/M04_AXI] [get_bd_intf_pins hdmi_out/ctrl]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins axi_interconnect_0/M05_AXI] [get_bd_intf_pins hdmi_out/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins axi_interconnect_0/M06_AXI] [get_bd_intf_pins hdmi_in/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_pins axi_interconnect_0/M07_AXI] [get_bd_intf_pins hdmi_in/s_axi_AXILiteS1]
  connect_bd_intf_net -intf_net axi_interconnect_0_M08_AXI [get_bd_intf_pins axi_interconnect_0/M08_AXI] [get_bd_intf_pins hdmi_in/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M09_AXI [get_bd_intf_pins axi_interconnect_0/M09_AXI] [get_bd_intf_pins hdmi_in/ctrl]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins axi_mem_intercon/M00_AXI]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma/M_AXIS_MM2S] [get_bd_intf_pins hdmi_out/in_stream]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_mem_intercon/S01_AXI] [get_bd_intf_pins axi_vdma/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_S2MM [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins axi_vdma/M_AXI_S2MM]
  connect_bd_intf_net -intf_net frontend_DDC [get_bd_intf_pins DDC] [get_bd_intf_pins hdmi_in/DDC]
  connect_bd_intf_net -intf_net in_pixelformat_M00_AXIS [get_bd_intf_pins axi_vdma/S_AXIS_S2MM] [get_bd_intf_pins hdmi_in/out_stream]
  connect_bd_intf_net -intf_net s_axi_AXILiteS2_1 [get_bd_intf_pins axi_interconnect_0/M10_AXI] [get_bd_intf_pins hdmi_in/s_axi_AXILiteS2]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins control_interconnect_reset_n] [get_bd_pins axi_interconnect_0/ARESETN]
  connect_bd_net -net Net [get_bd_pins control_clock] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M08_ACLK] [get_bd_pins axi_interconnect_0/M09_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_vdma/s_axi_lite_aclk] [get_bd_pins hdmi_in/control] [get_bd_pins hdmi_out/control]
  connect_bd_net -net Net1 [get_bd_pins control_reset_n] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/M08_ARESETN] [get_bd_pins axi_interconnect_0/M09_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_vdma/axi_resetn] [get_bd_pins hdmi_in/ap_rst_n_control] [get_bd_pins hdmi_out/ap_rst_n_control]
  connect_bd_net -net RefClk_1 [get_bd_pins reference_clk] [get_bd_pins hdmi_in/RefClk]
  connect_bd_net -net aclk_1 [get_bd_pins data_clock] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axi_interconnect_0/M10_ACLK] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins axi_vdma/m_axi_mm2s_aclk] [get_bd_pins axi_vdma/m_axi_s2mm_aclk] [get_bd_pins axi_vdma/m_axis_mm2s_aclk] [get_bd_pins axi_vdma/s_axis_s2mm_aclk] [get_bd_pins hdmi_in/ap_clk] [get_bd_pins hdmi_out/ap_clk]
  connect_bd_net -net axi_gpio_video_gpio_io_o [get_bd_pins gpio_io_o1] [get_bd_pins hdmi_in/gpio_io_o]
  connect_bd_net -net axi_gpio_video_ip2intc_irpt [get_bd_pins hdmi_in/ip2intc_irpt] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net axi_vdma_0_mm2s_introut [get_bd_pins axi_vdma/mm2s_introut] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_vdma_0_s2mm_introut [get_bd_pins axi_vdma/s2mm_introut] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins system_reset] [get_bd_pins hdmi_out/ext_reset_in]
  connect_bd_net -net hdmi_in_PixelClk [get_bd_pins hdmi_in/PixelClk] [get_bd_pins hdmi_out/slowest_sync_clk]
  connect_bd_net -net hdmi_in_aPixelClkLckd [get_bd_pins hdmi_in/aPixelClkLckd] [get_bd_pins hdmi_out/aux_reset_in]
  connect_bd_net -net hdmi_out_hpd_video_gpio_io_o [get_bd_pins gpio_io_o] [get_bd_pins hdmi_out/gpio_io_o]
  connect_bd_net -net hdmi_out_hpd_video_ip2intc_irpt [get_bd_pins hdmi_out/ip2intc_irpt] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net locked -boundary_type upper [get_bd_pins hdmi_out/locked]
  connect_bd_net -net overflow -boundary_type upper [get_bd_pins hdmi_out/overflow]
  connect_bd_net -net resetn_1 [get_bd_pins hdmi_in/resetn] [get_bd_pins hdmi_out/peripheral_aresetn]
  connect_bd_net -net rst_processing_system7_0_100M_interconnect_aresetn [get_bd_pins data_interconnect_reset_n] [get_bd_pins axi_mem_intercon/ARESETN]
  connect_bd_net -net rst_processing_system7_0_100M_peripheral_aresetn [get_bd_pins data_reset_n] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axi_interconnect_0/M10_ARESETN] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins hdmi_in/ap_rst_n] [get_bd_pins hdmi_out/ap_rst_n]
  connect_bd_net -net status -boundary_type upper [get_bd_pins hdmi_out/status]
  connect_bd_net -net underflow -boundary_type upper [get_bd_pins hdmi_out/underflow]
  connect_bd_net -net v_tc_0_irq [get_bd_pins hdmi_out/irq] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net v_tc_1_irq [get_bd_pins hdmi_in/irq] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net vid_io_in_reset_1 [get_bd_pins hdmi_in/vid_io_in_reset] [get_bd_pins hdmi_out/peripheral_reset]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins dout] [get_bd_pins xlconcat_0/dout]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /video] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port control_clock -pg 1 -y 100 -defaultsOSRD
preplace port TMDS1 -pg 1 -y 360 -defaultsOSRD
preplace port TMDS -pg 1 -y 660 -defaultsOSRD
preplace port S_AXI_CONTROL -pg 1 -y 80 -defaultsOSRD
preplace port data_clock -pg 1 -y 220 -defaultsOSRD
preplace port system_reset -pg 1 -y 720 -defaultsOSRD
preplace port reference_clk -pg 1 -y 680 -defaultsOSRD
preplace port DDC -pg 1 -y 620 -defaultsOSRD
preplace port M00_AXI -pg 1 -y 140 -defaultsOSRD
preplace portBus control_interconnect_reset_n -pg 1 -y 120 -defaultsOSRD
preplace portBus control_reset_n -pg 1 -y 160 -defaultsOSRD
preplace portBus dout -pg 1 -y 730 -defaultsOSRD
preplace portBus gpio_io_o1 -pg 1 -y 640 -defaultsOSRD
preplace portBus data_reset_n -pg 1 -y 240 -defaultsOSRD
preplace portBus data_interconnect_reset_n -pg 1 -y 20 -defaultsOSRD
preplace portBus gpio_io_o -pg 1 -y 380 -defaultsOSRD
preplace inst hdmi_in|filter_0 -pg 1 -lvl 3 -y 310 -defaultsOSRD
preplace inst axi_vdma -pg 1 -lvl 3 -y 430 -defaultsOSRD
preplace inst hdmi_in|frontend|vtc_in -pg 1 -lvl 2 -y 552 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 5 -y 730 -defaultsOSRD
preplace inst hdmi_in|frontend|dvi2rgb_0 -pg 1 -lvl 1 -y 662 -defaultsOSRD
preplace inst hdmi_in|frontend|v_vid_in_axi4s_0 -pg 1 -lvl 1 -y 452 -defaultsOSRD
preplace inst hdmi_in|frontend -pg 1 -lvl 2 -y 452 -defaultsOSRD
preplace inst hdmi_out -pg 1 -lvl 4 -y 450 -defaultsOSRD
preplace inst hdmi_in|frontend|axi_gpio_hdmiin -pg 1 -lvl 2 -y 772 -defaultsOSRD
preplace inst hdmi_in|color_convert -pg 1 -lvl 1 -y 460 -defaultsOSRD
preplace inst axi_interconnect_0 -pg 1 -lvl 1 -y 340 -defaultsOSRD
preplace inst hdmi_in -pg 1 -lvl 2 -y 450 -defaultsOSRD
preplace inst hdmi_in|axis_register_slice_0 -pg 1 -lvl 2 -y 1380 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 4 -y 140 -defaultsOSRD
preplace inst hdmi_in|pixel_pack -pg 1 -lvl 3 -y 650 -defaultsOSRD
preplace netloc axi_interconnect_0_M08_AXI 1 1 1 310
preplace netloc axi_vdma_0_M_AXI_MM2S 1 3 1 5600
preplace netloc axi_interconnect_0_M07_AXI 1 1 1 400
preplace netloc hdmi_in|axi_gpio_video_gpio_io_o 1 2 2 2510 520 NJ
preplace netloc hdmi_in|dvi2rgb_0_aPixelClkLckd 1 2 2 2500 500 NJ
preplace netloc hdmi_in|processing_system7_0_axi_periph_M07_AXI 1 0 2 NJ 610 NJ
preplace netloc axi_vdma_0_M_AXI_S2MM 1 3 1 5630
preplace netloc axi_vdma_0_s2mm_introut 1 3 2 5600 680 NJ
preplace netloc s_axi_AXILiteS2_1 1 1 1 420
preplace netloc hdmi_in_aPixelClkLckd 1 2 2 3120 580 NJ
preplace netloc axi_interconnect_0_M04_AXI 1 1 3 NJ 90 NJ 90 5670
preplace netloc hdmi_in|in_pixelformat_M00_AXIS 1 3 1 2940
preplace netloc axi_vdma_0_M_AXIS_MM2S 1 3 1 5610
preplace netloc hdmi_in|frontend|Net1 1 0 2 1680 782 2000
preplace netloc hdmi_in|filter_0_output_r 1 1 3 1130 310 NJ 450 2920
preplace netloc xlconcat_0_dout 1 5 2 NJ 730 N
preplace netloc locked 1 4 1 N
preplace netloc TMDS_1 1 0 2 NJ 660 NJ
preplace netloc hdmi_in|frontend|hdmi_in_video_out 1 1 2 N 412 NJ
preplace netloc hdmi_in|hdmi_in_video_out 1 0 3 690 290 NJ 290 2470
preplace netloc underflow 1 4 1 N
preplace netloc hdmi_out_hpd_video_ip2intc_irpt 1 4 1 6060
preplace netloc hdmi_in|resetn_1 1 0 2 NJ 740 NJ
preplace netloc hdmi_in|frontend|resetn_1 1 0 2 NJ 762 1980
preplace netloc axi_interconnect_0_M01_AXI 1 1 3 NJ 50 NJ 50 5620
preplace netloc axi_interconnect_0_M02_AXI 1 1 3 NJ 70 NJ 70 5590
preplace netloc hdmi_in|frontend|axi_gpio_video_gpio_io_o 1 2 1 N
preplace netloc hdmi_in|axi_gpio_video_ip2intc_irpt 1 2 2 2530 540 NJ
preplace netloc axi_gpio_video_ip2intc_irpt 1 2 3 NJ 710 NJ 710 6040
preplace netloc hdmi_in|frontend|dvi2rgb_0_RGB 1 0 2 1690 742 1950
preplace netloc hdmi_in|frontend|axi_gpio_video_ip2intc_irpt 1 2 1 2330
preplace netloc v_tc_1_irq 1 2 3 NJ 590 NJ 640 6050
preplace netloc aclk_1 1 0 4 -170 0 350 30 3170 130 5690
preplace netloc hdmi_out_hpd_video_gpio_io_o 1 4 3 NJ 380 NJ 380 NJ
preplace netloc hdmi_in|s_axi_AXILiteS2_1 1 0 3 NJ 230 NJ 230 N
preplace netloc hdmi_in|color_convert_out_data_TDATA 1 1 2 1100 270 NJ
preplace netloc axi_interconnect_0_M05_AXI 1 1 3 360 120 NJ 120 NJ
preplace netloc RefClk_1 1 0 2 NJ 680 NJ
preplace netloc hdmi_in|frontend|Conn1 1 1 2 1940 392 NJ
preplace netloc vid_io_in_reset_1 1 1 4 440 -20 NJ -20 NJ -20 6050
preplace netloc hdmi_in|frontend|Conn2 1 0 1 N
preplace netloc hdmi_in|frontend|vid_io_in_reset_1 1 0 1 1660
preplace netloc resetn_1 1 1 4 450 0 NJ 0 NJ -10 6040
preplace netloc axi_interconnect_0_M09_AXI 1 1 1 290
preplace netloc hdmi_in|frontend|Conn3 1 0 2 NJ 582 1950
preplace netloc in_pixelformat_M00_AXIS 1 2 1 3130
preplace netloc hdmi_in|axis_register_slice_0_M_AXIS 1 2 1 2580
preplace netloc hdmi_in|frontend|aclk_1 1 0 1 1630
preplace netloc hdmi_in|filter_0_input_r_TREADY 1 1 2 NJ 240 2580
preplace netloc ext_reset_in_1 1 0 4 NJ 720 NJ 100 NJ 100 NJ
preplace netloc axi_vdma_0_mm2s_introut 1 3 2 5620 700 NJ
preplace netloc overflow 1 4 1 N
preplace netloc hdmi_in|frontend|v_vid_in_axi4s_0_vtiming_out 1 1 1 1970
preplace netloc hdmi_in|aclk_1 1 0 3 670 350 1080 210 2520
preplace netloc hdmi_in|TMDS_1 1 0 2 NJ 600 NJ
preplace netloc hdmi_in|rst_processing_system7_0_100M_peripheral_aresetn 1 0 3 680 360 1120 300 2490
preplace netloc Net 1 0 4 -180 -20 340 40 3140 550 NJ
preplace netloc hdmi_in|frontend|dvi2rgb_0_PixelClk1 1 0 3 1700 572 1960 422 NJ
preplace netloc hdmi_in|Conn3 1 0 2 NJ 580 NJ
preplace netloc Net1 1 0 4 -160 20 370 20 3150 560 NJ
preplace netloc hdmi_in|dvi2rgb_0_PixelClk 1 2 2 2470 460 NJ
preplace netloc hdmi_in|RefClk_1 1 0 2 NJ 630 NJ
preplace netloc hdmi_in|frontend|v_tc_1_irq 1 2 1 2320
preplace netloc axi_interconnect_0_M06_AXI 1 1 1 380
preplace netloc hdmi_in|Conn5 1 0 3 NJ 200 NJ 200 2540
preplace netloc rst_processing_system7_0_100M_interconnect_aresetn 1 0 4 NJ -10 NJ -10 NJ 110 NJ
preplace netloc hdmi_in|Conn6 1 0 1 N
preplace netloc hdmi_in|color_convert_out_data_TLAST 1 1 2 1110 280 NJ
preplace netloc v_tc_0_irq 1 4 1 6070
preplace netloc hdmi_in|frontend|processing_system7_0_axi_periph_M07_AXI 1 0 2 NJ 752 N
preplace netloc hdmi_in|Net 1 0 2 NJ 710 NJ
preplace netloc hdmi_in|frontend|dvi2rgb_0_aPixelClkLckd 1 1 2 1990 682 2310
preplace netloc axi_gpio_video_gpio_io_o 1 2 5 NJ 620 NJ 620 NJ 620 NJ 620 NJ
preplace netloc hdmi_in_PixelClk 1 2 2 3130 570 NJ
preplace netloc Conn1 1 4 3 NJ 360 NJ 360 NJ
preplace netloc hdmi_in|frontend|RefClk_1 1 0 1 1640
preplace netloc hdmi_in|frontend_DDC 1 2 2 2480 440 NJ
preplace netloc Conn2 1 0 1 NJ
preplace netloc hdmi_in|v_tc_1_irq 1 2 2 2570 550 NJ
preplace netloc hdmi_in|color_convert_out_data_TVALID 1 1 2 NJ 250 2570
preplace netloc frontend_DDC 1 2 5 NJ 630 NJ 630 NJ 630 NJ 630 NJ
preplace netloc hdmi_in|vid_io_in_reset_1 1 0 2 NJ 760 NJ
preplace netloc status 1 4 1 N
preplace netloc axi_mem_intercon_M00_AXI 1 4 3 NJ 140 NJ 140 NJ
preplace netloc ARESETN_1 1 0 1 NJ
preplace netloc hdmi_in|Net1 1 0 2 NJ 690 NJ
preplace netloc hdmi_in|frontend|Net 1 0 2 NJ 772 1970
preplace netloc rst_processing_system7_0_100M_peripheral_aresetn 1 0 4 -190 670 410 110 NJ 150 5660
preplace netloc axi_interconnect_0_M03_AXI 1 1 3 NJ 80 NJ 80 5680
preplace netloc axi_interconnect_0_M00_AXI 1 1 2 NJ 130 3110
preplace netloc hdmi_in|color_convert_out_data_TUSER 1 1 2 1070 220 NJ
levelinfo -pg 1 -210 140 750 5430 5880 6160 6410 7340 -top -30 -bot 1510
levelinfo -hier hdmi_in * 880 1690 2750 *
levelinfo -hier hdmi_in|frontend * 1820 2180 *
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set hdmi_in [ create_bd_intf_port -mode Slave -vlnv digilentinc.com:interface:tmds_rtl:1.0 hdmi_in ]
  set hdmi_in_ddc [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 hdmi_in_ddc ]
  set hdmi_out [ create_bd_intf_port -mode Master -vlnv digilentinc.com:interface:tmds_rtl:1.0 hdmi_out ]
  set hdmi_out_ddc [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 hdmi_out_ddc ]

  # Create ports
  set hdmi_in_hpd [ create_bd_port -dir O -from 0 -to 0 hdmi_in_hpd ]
  set hdmi_out_hpd [ create_bd_port -dir O -from 0 -to 0 hdmi_out_hpd ]

  # Create instance: proc_sys_reset_fclk1, and set properties
  set proc_sys_reset_fclk1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_fclk1 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {650.000000} \
CONFIG.PCW_ACT_CAN0_PERIPHERAL_FREQMHZ {23.8095} \
CONFIG.PCW_ACT_CAN1_PERIPHERAL_FREQMHZ {23.8095} \
CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.096154} \
CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {142.857132} \
CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_ACT_I2C_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {650} \
CONFIG.PCW_ARMPLL_CTRL_FBDIV {26} \
CONFIG.PCW_CAN0_BASEADDR {0xE0008000} \
CONFIG.PCW_CAN0_CAN0_IO {<Select>} \
CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
CONFIG.PCW_CAN0_GRP_CLK_IO {<Select>} \
CONFIG.PCW_CAN0_HIGHADDR {0xE0008FFF} \
CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_CAN0_PERIPHERAL_FREQMHZ {-1} \
CONFIG.PCW_CAN1_BASEADDR {0xE0009000} \
CONFIG.PCW_CAN1_CAN1_IO {<Select>} \
CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
CONFIG.PCW_CAN1_GRP_CLK_IO {<Select>} \
CONFIG.PCW_CAN1_HIGHADDR {0xE0009FFF} \
CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_CAN1_PERIPHERAL_FREQMHZ {-1} \
CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
CONFIG.PCW_CLK0_FREQ {100000000} \
CONFIG.PCW_CLK1_FREQ {142857132} \
CONFIG.PCW_CLK2_FREQ {200000000} \
CONFIG.PCW_CLK3_FREQ {100000000} \
CONFIG.PCW_CORE0_FIQ_INTR {0} \
CONFIG.PCW_CORE0_IRQ_INTR {0} \
CONFIG.PCW_CORE1_FIQ_INTR {0} \
CONFIG.PCW_CORE1_IRQ_INTR {0} \
CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1300.000} \
CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {52} \
CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {2} \
CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
CONFIG.PCW_DDRPLL_CTRL_FBDIV {21} \
CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1050.000} \
CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(0)/LPR(32)} \
CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL {15} \
CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL {2} \
CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
CONFIG.PCW_DDR_PORT0_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT1_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PRIORITY_READPORT_0 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_1 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_2 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_3 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_0 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_1 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_2 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_3 {<Select>} \
CONFIG.PCW_DDR_RAM_BASEADDR {0x00100000} \
CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
CONFIG.PCW_DM_WIDTH {4} \
CONFIG.PCW_DQS_WIDTH {4} \
CONFIG.PCW_DQ_WIDTH {32} \
CONFIG.PCW_ENET0_BASEADDR {0xE000B000} \
CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
CONFIG.PCW_ENET0_HIGHADDR {0xE000BFFF} \
CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
CONFIG.PCW_ENET0_RESET_ENABLE {0} \
CONFIG.PCW_ENET0_RESET_IO {<Select>} \
CONFIG.PCW_ENET1_BASEADDR {0xE000C000} \
CONFIG.PCW_ENET1_ENET1_IO {<Select>} \
CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {0} \
CONFIG.PCW_ENET1_GRP_MDIO_IO {<Select>} \
CONFIG.PCW_ENET1_HIGHADDR {0xE000CFFF} \
CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
CONFIG.PCW_ENET1_RESET_ENABLE {0} \
CONFIG.PCW_ENET1_RESET_IO {<Select>} \
CONFIG.PCW_ENET_RESET_ENABLE {0} \
CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
CONFIG.PCW_ENET_RESET_SELECT {<Select>} \
CONFIG.PCW_EN_4K_TIMER {0} \
CONFIG.PCW_EN_CAN0 {0} \
CONFIG.PCW_EN_CAN1 {0} \
CONFIG.PCW_EN_CLK0_PORT {1} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_EN_CLK3_PORT {1} \
CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
CONFIG.PCW_EN_CLKTRIG1_PORT {0} \
CONFIG.PCW_EN_CLKTRIG2_PORT {0} \
CONFIG.PCW_EN_CLKTRIG3_PORT {0} \
CONFIG.PCW_EN_DDR {1} \
CONFIG.PCW_EN_EMIO_CAN0 {0} \
CONFIG.PCW_EN_EMIO_CAN1 {0} \
CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
CONFIG.PCW_EN_EMIO_ENET0 {0} \
CONFIG.PCW_EN_EMIO_ENET1 {0} \
CONFIG.PCW_EN_EMIO_GPIO {1} \
CONFIG.PCW_EN_EMIO_I2C0 {1} \
CONFIG.PCW_EN_EMIO_I2C1 {0} \
CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
CONFIG.PCW_EN_EMIO_PJTAG {0} \
CONFIG.PCW_EN_EMIO_SDIO0 {0} \
CONFIG.PCW_EN_EMIO_SDIO1 {0} \
CONFIG.PCW_EN_EMIO_SPI0 {0} \
CONFIG.PCW_EN_EMIO_SPI1 {0} \
CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
CONFIG.PCW_EN_EMIO_TRACE {0} \
CONFIG.PCW_EN_EMIO_TTC0 {0} \
CONFIG.PCW_EN_EMIO_TTC1 {0} \
CONFIG.PCW_EN_EMIO_UART0 {0} \
CONFIG.PCW_EN_EMIO_UART1 {0} \
CONFIG.PCW_EN_EMIO_WDT {0} \
CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
CONFIG.PCW_EN_ENET0 {1} \
CONFIG.PCW_EN_ENET1 {0} \
CONFIG.PCW_EN_GPIO {0} \
CONFIG.PCW_EN_I2C0 {1} \
CONFIG.PCW_EN_I2C1 {0} \
CONFIG.PCW_EN_MODEM_UART0 {0} \
CONFIG.PCW_EN_MODEM_UART1 {0} \
CONFIG.PCW_EN_PJTAG {0} \
CONFIG.PCW_EN_PTP_ENET0 {0} \
CONFIG.PCW_EN_PTP_ENET1 {0} \
CONFIG.PCW_EN_QSPI {1} \
CONFIG.PCW_EN_RST0_PORT {1} \
CONFIG.PCW_EN_RST1_PORT {0} \
CONFIG.PCW_EN_RST2_PORT {0} \
CONFIG.PCW_EN_RST3_PORT {0} \
CONFIG.PCW_EN_SDIO0 {1} \
CONFIG.PCW_EN_SDIO1 {0} \
CONFIG.PCW_EN_SMC {0} \
CONFIG.PCW_EN_SPI0 {0} \
CONFIG.PCW_EN_SPI1 {0} \
CONFIG.PCW_EN_TRACE {0} \
CONFIG.PCW_EN_TTC0 {0} \
CONFIG.PCW_EN_TTC1 {0} \
CONFIG.PCW_EN_UART0 {1} \
CONFIG.PCW_EN_UART1 {0} \
CONFIG.PCW_EN_USB0 {1} \
CONFIG.PCW_EN_USB1 {0} \
CONFIG.PCW_EN_WDT {0} \
CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {7} \
CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {2} \
CONFIG.PCW_FCLK_CLK0_BUF {true} \
CONFIG.PCW_FCLK_CLK1_BUF {true} \
CONFIG.PCW_FCLK_CLK2_BUF {true} \
CONFIG.PCW_FCLK_CLK3_BUF {true} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {142} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK2_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK3_ENABLE {1} \
CONFIG.PCW_FTM_CTI_IN0 {<Select>} \
CONFIG.PCW_FTM_CTI_IN1 {<Select>} \
CONFIG.PCW_FTM_CTI_IN2 {<Select>} \
CONFIG.PCW_FTM_CTI_IN3 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT0 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT1 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT2 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT3 {<Select>} \
CONFIG.PCW_GPIO_BASEADDR {0xE000A000} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_EMIO_GPIO_IO {7} \
CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {7} \
CONFIG.PCW_GPIO_HIGHADDR {0xE000AFFF} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {0} \
CONFIG.PCW_GPIO_MIO_GPIO_IO {<Select>} \
CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_I2C0_BASEADDR {0xE0004000} \
CONFIG.PCW_I2C0_GRP_INT_ENABLE {1} \
CONFIG.PCW_I2C0_GRP_INT_IO {EMIO} \
CONFIG.PCW_I2C0_HIGHADDR {0xE0004FFF} \
CONFIG.PCW_I2C0_I2C0_IO {EMIO} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_I2C0_RESET_ENABLE {0} \
CONFIG.PCW_I2C0_RESET_IO {<Select>} \
CONFIG.PCW_I2C1_BASEADDR {0xE0005000} \
CONFIG.PCW_I2C1_GRP_INT_ENABLE {0} \
CONFIG.PCW_I2C1_GRP_INT_IO {<Select>} \
CONFIG.PCW_I2C1_HIGHADDR {0xE0005FFF} \
CONFIG.PCW_I2C1_I2C1_IO {<Select>} \
CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_I2C1_RESET_ENABLE {0} \
CONFIG.PCW_I2C1_RESET_IO {<Select>} \
CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_I2C_RESET_ENABLE {0} \
CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
CONFIG.PCW_I2C_RESET_SELECT {<Select>} \
CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
CONFIG.PCW_INCLUDE_ACP_TRANS_CHECK {0} \
CONFIG.PCW_INCLUDE_TRACE_BUFFER {0} \
CONFIG.PCW_IOPLL_CTRL_FBDIV {20} \
CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
CONFIG.PCW_MIO_0_DIRECTION {<Select>} \
CONFIG.PCW_MIO_0_IOTYPE {<Select>} \
CONFIG.PCW_MIO_0_PULLUP {<Select>} \
CONFIG.PCW_MIO_0_SLEW {<Select>} \
CONFIG.PCW_MIO_10_DIRECTION {<Select>} \
CONFIG.PCW_MIO_10_IOTYPE {<Select>} \
CONFIG.PCW_MIO_10_PULLUP {<Select>} \
CONFIG.PCW_MIO_10_SLEW {<Select>} \
CONFIG.PCW_MIO_11_DIRECTION {<Select>} \
CONFIG.PCW_MIO_11_IOTYPE {<Select>} \
CONFIG.PCW_MIO_11_PULLUP {<Select>} \
CONFIG.PCW_MIO_11_SLEW {<Select>} \
CONFIG.PCW_MIO_12_DIRECTION {<Select>} \
CONFIG.PCW_MIO_12_IOTYPE {<Select>} \
CONFIG.PCW_MIO_12_PULLUP {<Select>} \
CONFIG.PCW_MIO_12_SLEW {<Select>} \
CONFIG.PCW_MIO_13_DIRECTION {<Select>} \
CONFIG.PCW_MIO_13_IOTYPE {<Select>} \
CONFIG.PCW_MIO_13_PULLUP {<Select>} \
CONFIG.PCW_MIO_13_SLEW {<Select>} \
CONFIG.PCW_MIO_14_DIRECTION {in} \
CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_14_PULLUP {enabled} \
CONFIG.PCW_MIO_14_SLEW {slow} \
CONFIG.PCW_MIO_15_DIRECTION {out} \
CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_15_PULLUP {enabled} \
CONFIG.PCW_MIO_15_SLEW {slow} \
CONFIG.PCW_MIO_16_DIRECTION {out} \
CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_16_PULLUP {enabled} \
CONFIG.PCW_MIO_16_SLEW {slow} \
CONFIG.PCW_MIO_17_DIRECTION {out} \
CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_17_PULLUP {enabled} \
CONFIG.PCW_MIO_17_SLEW {slow} \
CONFIG.PCW_MIO_18_DIRECTION {out} \
CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_18_PULLUP {enabled} \
CONFIG.PCW_MIO_18_SLEW {slow} \
CONFIG.PCW_MIO_19_DIRECTION {out} \
CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_19_PULLUP {enabled} \
CONFIG.PCW_MIO_19_SLEW {slow} \
CONFIG.PCW_MIO_1_DIRECTION {out} \
CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_1_PULLUP {enabled} \
CONFIG.PCW_MIO_1_SLEW {slow} \
CONFIG.PCW_MIO_20_DIRECTION {out} \
CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_20_PULLUP {enabled} \
CONFIG.PCW_MIO_20_SLEW {slow} \
CONFIG.PCW_MIO_21_DIRECTION {out} \
CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_21_PULLUP {enabled} \
CONFIG.PCW_MIO_21_SLEW {slow} \
CONFIG.PCW_MIO_22_DIRECTION {in} \
CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_22_PULLUP {enabled} \
CONFIG.PCW_MIO_22_SLEW {slow} \
CONFIG.PCW_MIO_23_DIRECTION {in} \
CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_23_PULLUP {enabled} \
CONFIG.PCW_MIO_23_SLEW {slow} \
CONFIG.PCW_MIO_24_DIRECTION {in} \
CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_24_PULLUP {enabled} \
CONFIG.PCW_MIO_24_SLEW {slow} \
CONFIG.PCW_MIO_25_DIRECTION {in} \
CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_25_PULLUP {enabled} \
CONFIG.PCW_MIO_25_SLEW {slow} \
CONFIG.PCW_MIO_26_DIRECTION {in} \
CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_26_PULLUP {enabled} \
CONFIG.PCW_MIO_26_SLEW {slow} \
CONFIG.PCW_MIO_27_DIRECTION {in} \
CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_27_PULLUP {enabled} \
CONFIG.PCW_MIO_27_SLEW {slow} \
CONFIG.PCW_MIO_28_DIRECTION {inout} \
CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_28_PULLUP {enabled} \
CONFIG.PCW_MIO_28_SLEW {slow} \
CONFIG.PCW_MIO_29_DIRECTION {in} \
CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_29_PULLUP {enabled} \
CONFIG.PCW_MIO_29_SLEW {slow} \
CONFIG.PCW_MIO_2_DIRECTION {inout} \
CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_2_PULLUP {disabled} \
CONFIG.PCW_MIO_2_SLEW {slow} \
CONFIG.PCW_MIO_30_DIRECTION {out} \
CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_30_PULLUP {enabled} \
CONFIG.PCW_MIO_30_SLEW {slow} \
CONFIG.PCW_MIO_31_DIRECTION {in} \
CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_31_PULLUP {enabled} \
CONFIG.PCW_MIO_31_SLEW {slow} \
CONFIG.PCW_MIO_32_DIRECTION {inout} \
CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_32_PULLUP {enabled} \
CONFIG.PCW_MIO_32_SLEW {slow} \
CONFIG.PCW_MIO_33_DIRECTION {inout} \
CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_33_PULLUP {enabled} \
CONFIG.PCW_MIO_33_SLEW {slow} \
CONFIG.PCW_MIO_34_DIRECTION {inout} \
CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_34_PULLUP {enabled} \
CONFIG.PCW_MIO_34_SLEW {slow} \
CONFIG.PCW_MIO_35_DIRECTION {inout} \
CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_35_PULLUP {enabled} \
CONFIG.PCW_MIO_35_SLEW {slow} \
CONFIG.PCW_MIO_36_DIRECTION {in} \
CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_36_PULLUP {enabled} \
CONFIG.PCW_MIO_36_SLEW {slow} \
CONFIG.PCW_MIO_37_DIRECTION {inout} \
CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_37_PULLUP {enabled} \
CONFIG.PCW_MIO_37_SLEW {slow} \
CONFIG.PCW_MIO_38_DIRECTION {inout} \
CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_38_PULLUP {enabled} \
CONFIG.PCW_MIO_38_SLEW {slow} \
CONFIG.PCW_MIO_39_DIRECTION {inout} \
CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_39_PULLUP {enabled} \
CONFIG.PCW_MIO_39_SLEW {slow} \
CONFIG.PCW_MIO_3_DIRECTION {inout} \
CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_3_PULLUP {disabled} \
CONFIG.PCW_MIO_3_SLEW {slow} \
CONFIG.PCW_MIO_40_DIRECTION {inout} \
CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_40_PULLUP {enabled} \
CONFIG.PCW_MIO_40_SLEW {slow} \
CONFIG.PCW_MIO_41_DIRECTION {inout} \
CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_41_PULLUP {enabled} \
CONFIG.PCW_MIO_41_SLEW {slow} \
CONFIG.PCW_MIO_42_DIRECTION {inout} \
CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_42_PULLUP {enabled} \
CONFIG.PCW_MIO_42_SLEW {slow} \
CONFIG.PCW_MIO_43_DIRECTION {inout} \
CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_43_PULLUP {enabled} \
CONFIG.PCW_MIO_43_SLEW {slow} \
CONFIG.PCW_MIO_44_DIRECTION {inout} \
CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_44_PULLUP {enabled} \
CONFIG.PCW_MIO_44_SLEW {slow} \
CONFIG.PCW_MIO_45_DIRECTION {inout} \
CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_45_PULLUP {enabled} \
CONFIG.PCW_MIO_45_SLEW {slow} \
CONFIG.PCW_MIO_46_DIRECTION {<Select>} \
CONFIG.PCW_MIO_46_IOTYPE {<Select>} \
CONFIG.PCW_MIO_46_PULLUP {<Select>} \
CONFIG.PCW_MIO_46_SLEW {<Select>} \
CONFIG.PCW_MIO_47_DIRECTION {in} \
CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_47_PULLUP {enabled} \
CONFIG.PCW_MIO_47_SLEW {slow} \
CONFIG.PCW_MIO_48_DIRECTION {<Select>} \
CONFIG.PCW_MIO_48_IOTYPE {<Select>} \
CONFIG.PCW_MIO_48_PULLUP {<Select>} \
CONFIG.PCW_MIO_48_SLEW {<Select>} \
CONFIG.PCW_MIO_49_DIRECTION {<Select>} \
CONFIG.PCW_MIO_49_IOTYPE {<Select>} \
CONFIG.PCW_MIO_49_PULLUP {<Select>} \
CONFIG.PCW_MIO_49_SLEW {<Select>} \
CONFIG.PCW_MIO_4_DIRECTION {inout} \
CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_4_PULLUP {disabled} \
CONFIG.PCW_MIO_4_SLEW {slow} \
CONFIG.PCW_MIO_50_DIRECTION {<Select>} \
CONFIG.PCW_MIO_50_IOTYPE {<Select>} \
CONFIG.PCW_MIO_50_PULLUP {<Select>} \
CONFIG.PCW_MIO_50_SLEW {<Select>} \
CONFIG.PCW_MIO_51_DIRECTION {<Select>} \
CONFIG.PCW_MIO_51_IOTYPE {<Select>} \
CONFIG.PCW_MIO_51_PULLUP {<Select>} \
CONFIG.PCW_MIO_51_SLEW {<Select>} \
CONFIG.PCW_MIO_52_DIRECTION {out} \
CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_52_PULLUP {enabled} \
CONFIG.PCW_MIO_52_SLEW {slow} \
CONFIG.PCW_MIO_53_DIRECTION {inout} \
CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_53_PULLUP {enabled} \
CONFIG.PCW_MIO_53_SLEW {slow} \
CONFIG.PCW_MIO_5_DIRECTION {inout} \
CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_5_PULLUP {disabled} \
CONFIG.PCW_MIO_5_SLEW {slow} \
CONFIG.PCW_MIO_6_DIRECTION {out} \
CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_6_PULLUP {disabled} \
CONFIG.PCW_MIO_6_SLEW {slow} \
CONFIG.PCW_MIO_7_DIRECTION {<Select>} \
CONFIG.PCW_MIO_7_IOTYPE {<Select>} \
CONFIG.PCW_MIO_7_PULLUP {<Select>} \
CONFIG.PCW_MIO_7_SLEW {<Select>} \
CONFIG.PCW_MIO_8_DIRECTION {out} \
CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_8_PULLUP {disabled} \
CONFIG.PCW_MIO_8_SLEW {slow} \
CONFIG.PCW_MIO_9_DIRECTION {<Select>} \
CONFIG.PCW_MIO_9_IOTYPE {<Select>} \
CONFIG.PCW_MIO_9_PULLUP {<Select>} \
CONFIG.PCW_MIO_9_SLEW {<Select>} \
CONFIG.PCW_MIO_PRIMITIVE {54} \
CONFIG.PCW_MIO_TREE_PERIPHERALS {unassigned#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#unassigned#Quad SPI Flash#unassigned#unassigned#unassigned#unassigned#unassigned#UART 0#UART 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#unassigned#SD 0#unassigned#unassigned#unassigned#unassigned#Enet 0#Enet 0} \
CONFIG.PCW_MIO_TREE_SIGNALS {unassigned#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]#qspi0_sclk#unassigned#qspi_fbclk#unassigned#unassigned#unassigned#unassigned#unassigned#rx#tx#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#unassigned#cd#unassigned#unassigned#unassigned#unassigned#mdc#mdio} \
CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {0} \
CONFIG.PCW_M_AXI_GP0_FREQMHZ {10} \
CONFIG.PCW_M_AXI_GP0_ID_WIDTH {12} \
CONFIG.PCW_M_AXI_GP0_SUPPORT_NARROW_BURST {0} \
CONFIG.PCW_M_AXI_GP0_THREAD_ID_WIDTH {12} \
CONFIG.PCW_M_AXI_GP1_ENABLE_STATIC_REMAP {0} \
CONFIG.PCW_M_AXI_GP1_FREQMHZ {10} \
CONFIG.PCW_M_AXI_GP1_ID_WIDTH {12} \
CONFIG.PCW_M_AXI_GP1_SUPPORT_NARROW_BURST {0} \
CONFIG.PCW_M_AXI_GP1_THREAD_ID_WIDTH {12} \
CONFIG.PCW_NAND_CYCLES_T_AR {1} \
CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
CONFIG.PCW_NAND_CYCLES_T_RC {11} \
CONFIG.PCW_NAND_CYCLES_T_REA {1} \
CONFIG.PCW_NAND_CYCLES_T_RR {1} \
CONFIG.PCW_NAND_CYCLES_T_WC {11} \
CONFIG.PCW_NAND_CYCLES_T_WP {1} \
CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
CONFIG.PCW_NAND_GRP_D8_IO {<Select>} \
CONFIG.PCW_NAND_NAND_IO {<Select>} \
CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_NOR_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_CS0_T_PC {1} \
CONFIG.PCW_NOR_CS0_T_RC {11} \
CONFIG.PCW_NOR_CS0_T_TR {1} \
CONFIG.PCW_NOR_CS0_T_WC {11} \
CONFIG.PCW_NOR_CS0_T_WP {1} \
CONFIG.PCW_NOR_CS0_WE_TIME {0} \
CONFIG.PCW_NOR_CS1_T_CEOE {1} \
CONFIG.PCW_NOR_CS1_T_PC {1} \
CONFIG.PCW_NOR_CS1_T_RC {11} \
CONFIG.PCW_NOR_CS1_T_TR {1} \
CONFIG.PCW_NOR_CS1_T_WC {11} \
CONFIG.PCW_NOR_CS1_T_WP {1} \
CONFIG.PCW_NOR_CS1_WE_TIME {0} \
CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
CONFIG.PCW_NOR_GRP_A25_IO {<Select>} \
CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
CONFIG.PCW_NOR_GRP_CS0_IO {<Select>} \
CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
CONFIG.PCW_NOR_GRP_CS1_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_CS0_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_CS1_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_INT_IO {<Select>} \
CONFIG.PCW_NOR_NOR_IO {<Select>} \
CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_RC {11} \
CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_WC {11} \
CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_RC {11} \
CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_WC {11} \
CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
CONFIG.PCW_P2F_CAN0_INTR {0} \
CONFIG.PCW_P2F_CAN1_INTR {0} \
CONFIG.PCW_P2F_CTI_INTR {0} \
CONFIG.PCW_P2F_DMAC0_INTR {0} \
CONFIG.PCW_P2F_DMAC1_INTR {0} \
CONFIG.PCW_P2F_DMAC2_INTR {0} \
CONFIG.PCW_P2F_DMAC3_INTR {0} \
CONFIG.PCW_P2F_DMAC4_INTR {0} \
CONFIG.PCW_P2F_DMAC5_INTR {0} \
CONFIG.PCW_P2F_DMAC6_INTR {0} \
CONFIG.PCW_P2F_DMAC7_INTR {0} \
CONFIG.PCW_P2F_DMAC_ABORT_INTR {0} \
CONFIG.PCW_P2F_ENET0_INTR {0} \
CONFIG.PCW_P2F_ENET1_INTR {0} \
CONFIG.PCW_P2F_GPIO_INTR {0} \
CONFIG.PCW_P2F_I2C0_INTR {0} \
CONFIG.PCW_P2F_I2C1_INTR {0} \
CONFIG.PCW_P2F_QSPI_INTR {0} \
CONFIG.PCW_P2F_SDIO0_INTR {0} \
CONFIG.PCW_P2F_SDIO1_INTR {0} \
CONFIG.PCW_P2F_SMC_INTR {0} \
CONFIG.PCW_P2F_SPI0_INTR {0} \
CONFIG.PCW_P2F_SPI1_INTR {0} \
CONFIG.PCW_P2F_UART0_INTR {0} \
CONFIG.PCW_P2F_UART1_INTR {0} \
CONFIG.PCW_P2F_USB0_INTR {0} \
CONFIG.PCW_P2F_USB1_INTR {0} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.223} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.212} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.085} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.092} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {0.040} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {0.058} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.009} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.033} \
CONFIG.PCW_PACKAGE_NAME {clg400} \
CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_PERIPHERAL_BOARD_PRESET {None} \
CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_PJTAG_PJTAG_IO {<Select>} \
CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_PS7_SI_REV {PRODUCTION} \
CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} \
CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_IO1_IO {<Select>} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_SS1_IO {<Select>} \
CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
CONFIG.PCW_SD0_GRP_POW_IO {<Select>} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
CONFIG.PCW_SD0_GRP_WP_IO {<Select>} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
CONFIG.PCW_SD1_GRP_CD_ENABLE {0} \
CONFIG.PCW_SD1_GRP_CD_IO {<Select>} \
CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
CONFIG.PCW_SD1_GRP_POW_IO {<Select>} \
CONFIG.PCW_SD1_GRP_WP_ENABLE {0} \
CONFIG.PCW_SD1_GRP_WP_IO {<Select>} \
CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SD1_SD1_IO {<Select>} \
CONFIG.PCW_SDIO0_BASEADDR {0xE0100000} \
CONFIG.PCW_SDIO0_HIGHADDR {0xE0100FFF} \
CONFIG.PCW_SDIO1_BASEADDR {0xE0101000} \
CONFIG.PCW_SDIO1_HIGHADDR {0xE0101FFF} \
CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {20} \
CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
CONFIG.PCW_SMC_CYCLE_T0 {NA} \
CONFIG.PCW_SMC_CYCLE_T1 {NA} \
CONFIG.PCW_SMC_CYCLE_T2 {NA} \
CONFIG.PCW_SMC_CYCLE_T3 {NA} \
CONFIG.PCW_SMC_CYCLE_T4 {NA} \
CONFIG.PCW_SMC_CYCLE_T5 {NA} \
CONFIG.PCW_SMC_CYCLE_T6 {NA} \
CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
CONFIG.PCW_SPI0_BASEADDR {0xE0006000} \
CONFIG.PCW_SPI0_GRP_SS0_ENABLE {0} \
CONFIG.PCW_SPI0_GRP_SS0_IO {<Select>} \
CONFIG.PCW_SPI0_GRP_SS1_ENABLE {0} \
CONFIG.PCW_SPI0_GRP_SS1_IO {<Select>} \
CONFIG.PCW_SPI0_GRP_SS2_ENABLE {0} \
CONFIG.PCW_SPI0_GRP_SS2_IO {<Select>} \
CONFIG.PCW_SPI0_HIGHADDR {0xE0006FFF} \
CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SPI0_SPI0_IO {<Select>} \
CONFIG.PCW_SPI1_BASEADDR {0xE0007000} \
CONFIG.PCW_SPI1_GRP_SS0_ENABLE {0} \
CONFIG.PCW_SPI1_GRP_SS0_IO {<Select>} \
CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
CONFIG.PCW_SPI1_GRP_SS1_IO {<Select>} \
CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
CONFIG.PCW_SPI1_GRP_SS2_IO {<Select>} \
CONFIG.PCW_SPI1_HIGHADDR {0xE0007FFF} \
CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SPI1_SPI1_IO {<Select>} \
CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
CONFIG.PCW_SPI_PERIPHERAL_VALID {0} \
CONFIG.PCW_S_AXI_ACP_ARUSER_VAL {31} \
CONFIG.PCW_S_AXI_ACP_AWUSER_VAL {31} \
CONFIG.PCW_S_AXI_ACP_FREQMHZ {10} \
CONFIG.PCW_S_AXI_ACP_ID_WIDTH {3} \
CONFIG.PCW_S_AXI_GP0_FREQMHZ {10} \
CONFIG.PCW_S_AXI_GP0_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_GP1_FREQMHZ {10} \
CONFIG.PCW_S_AXI_GP1_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP0_FREQMHZ {10} \
CONFIG.PCW_S_AXI_HP0_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP1_FREQMHZ {10} \
CONFIG.PCW_S_AXI_HP1_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP2_FREQMHZ {10} \
CONFIG.PCW_S_AXI_HP2_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP3_FREQMHZ {10} \
CONFIG.PCW_S_AXI_HP3_ID_WIDTH {6} \
CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_TRACE_BUFFER_CLOCK_DELAY {12} \
CONFIG.PCW_TRACE_BUFFER_FIFO_SIZE {128} \
CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_16BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_2BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_32BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_4BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_8BIT_IO {<Select>} \
CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TRACE_PIPELINE_WIDTH {8} \
CONFIG.PCW_TRACE_TRACE_IO {<Select>} \
CONFIG.PCW_TTC0_BASEADDR {0xE0104000} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_HIGHADDR {0xE0104fff} \
CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TTC0_TTC0_IO {<Select>} \
CONFIG.PCW_TTC1_BASEADDR {0xE0105000} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_HIGHADDR {0xE0105fff} \
CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TTC1_TTC1_IO {<Select>} \
CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_UART0_BASEADDR {0xE0000000} \
CONFIG.PCW_UART0_BAUD_RATE {115200} \
CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
CONFIG.PCW_UART0_GRP_FULL_IO {<Select>} \
CONFIG.PCW_UART0_HIGHADDR {0xE0000FFF} \
CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
CONFIG.PCW_UART1_BASEADDR {0xE0001000} \
CONFIG.PCW_UART1_BAUD_RATE {115200} \
CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
CONFIG.PCW_UART1_GRP_FULL_IO {<Select>} \
CONFIG.PCW_UART1_HIGHADDR {0xE0001FFF} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_UART1_UART1_IO {<Select>} \
CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {10} \
CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {525.000000} \
CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
CONFIG.PCW_UIPARAM_DDR_AL {0} \
CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
CONFIG.PCW_UIPARAM_DDR_BL {8} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.223} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.212} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.085} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.092} \
CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {16 Bit} \
CONFIG.PCW_UIPARAM_DDR_CL {7} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {25.8} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {80.4535} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {25.8} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {80.4535} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {80.4535} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {80.4535} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
CONFIG.PCW_UIPARAM_DDR_CWL {6} \
CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {15.6} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {105.056} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {18.8} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {66.904} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {89.1715} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {113.63} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.040} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.058} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {-0.009} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {-0.033} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {16.5} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {98.503} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {18} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {68.5855} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {90.295} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {103.977} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {525} \
CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {Custom} \
CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
CONFIG.PCW_UIPARAM_DDR_T_RC {50.625} \
CONFIG.PCW_UIPARAM_DDR_T_RCD {13.125} \
CONFIG.PCW_UIPARAM_DDR_T_RP {13.125} \
CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NA} \
CONFIG.PCW_USB0_BASEADDR {0xE0102000} \
CONFIG.PCW_USB0_HIGHADDR {0xE0102fff} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_USB0_RESET_ENABLE {0} \
CONFIG.PCW_USB0_RESET_IO {<Select>} \
CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
CONFIG.PCW_USB1_BASEADDR {0xE0103000} \
CONFIG.PCW_USB1_HIGHADDR {0xE0103fff} \
CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_USB1_RESET_ENABLE {0} \
CONFIG.PCW_USB1_RESET_IO {<Select>} \
CONFIG.PCW_USB1_USB1_IO {<Select>} \
CONFIG.PCW_USB_RESET_ENABLE {0} \
CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
CONFIG.PCW_USB_RESET_SELECT {<Select>} \
CONFIG.PCW_USE_AXI_FABRIC_IDLE {0} \
CONFIG.PCW_USE_AXI_NONSECURE {0} \
CONFIG.PCW_USE_CORESIGHT {0} \
CONFIG.PCW_USE_CROSS_TRIGGER {0} \
CONFIG.PCW_USE_CR_FABRIC {1} \
CONFIG.PCW_USE_DDR_BYPASS {0} \
CONFIG.PCW_USE_DEBUG {0} \
CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {0} \
CONFIG.PCW_USE_DMA0 {0} \
CONFIG.PCW_USE_DMA1 {0} \
CONFIG.PCW_USE_DMA2 {0} \
CONFIG.PCW_USE_DMA3 {0} \
CONFIG.PCW_USE_EXPANDED_IOP {0} \
CONFIG.PCW_USE_EXPANDED_PS_SLCR_REGISTERS {0} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_HIGH_OCM {0} \
CONFIG.PCW_USE_M_AXI_GP0 {1} \
CONFIG.PCW_USE_M_AXI_GP1 {1} \
CONFIG.PCW_USE_PROC_EVENT_BUS {0} \
CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} \
CONFIG.PCW_USE_S_AXI_ACP {0} \
CONFIG.PCW_USE_S_AXI_GP0 {1} \
CONFIG.PCW_USE_S_AXI_GP1 {0} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
CONFIG.PCW_USE_S_AXI_HP1 {0} \
CONFIG.PCW_USE_S_AXI_HP2 {1} \
CONFIG.PCW_USE_S_AXI_HP3 {0} \
CONFIG.PCW_USE_TRACE {0} \
CONFIG.PCW_USE_TRACE_DATA_EDGE_DETECTOR {0} \
CONFIG.PCW_VALUE_SILVERSION {3} \
CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_WDT_WDT_IO {<Select>} \
 ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {9} \
 ] $processing_system7_0_axi_periph

  # Create instance: rst_processing_system7_0_fclk0, and set properties
  set rst_processing_system7_0_fclk0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processing_system7_0_fclk0 ]

  # Create instance: system_interrupts, and set properties
  set system_interrupts [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 system_interrupts ]

  # Create instance: video
  create_hier_cell_video [current_bd_instance .] video

  # Create interface connections
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins processing_system7_0/S_AXI_HP0] [get_bd_intf_pins video/M00_AXI]
  connect_bd_intf_net -intf_net dvi2rgb_0_DDC [get_bd_intf_ports hdmi_in_ddc] [get_bd_intf_pins video/DDC]
  connect_bd_intf_net -intf_net hdmi_in_1 [get_bd_intf_ports hdmi_in] [get_bd_intf_pins video/TMDS]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_0 [get_bd_intf_ports hdmi_out_ddc] [get_bd_intf_pins processing_system7_0/IIC_0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M05_AXI [get_bd_intf_pins processing_system7_0_axi_periph/M05_AXI] [get_bd_intf_pins system_interrupts/s_axi]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M08_AXI [get_bd_intf_pins processing_system7_0_axi_periph/M08_AXI] [get_bd_intf_pins video/S_AXI_CONTROL]
  connect_bd_intf_net -intf_net video_TMDS1 [get_bd_intf_ports hdmi_out] [get_bd_intf_pins video/TMDS1]

  # Create port connections
  connect_bd_net -net axi_gpio_video_gpio_io_o [get_bd_ports hdmi_in_hpd] [get_bd_pins video/gpio_io_o1]
  connect_bd_net -net hdmi_out_hpd_video_gpio_io_o [get_bd_ports hdmi_out_hpd] [get_bd_pins video/gpio_io_o]
  connect_bd_net -net iop_interrupts_irq [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins system_interrupts/irq]
  connect_bd_net -net proc_sys_reset_fclk1_interconnect_aresetn [get_bd_pins proc_sys_reset_fclk1/interconnect_aresetn] [get_bd_pins video/data_interconnect_reset_n]
  connect_bd_net -net proc_sys_reset_fclk1_peripheral_aresetn [get_bd_pins proc_sys_reset_fclk1/peripheral_aresetn] [get_bd_pins video/data_reset_n]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_GP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/M02_ACLK] [get_bd_pins processing_system7_0_axi_periph/M03_ACLK] [get_bd_pins processing_system7_0_axi_periph/M04_ACLK] [get_bd_pins processing_system7_0_axi_periph/M05_ACLK] [get_bd_pins processing_system7_0_axi_periph/M06_ACLK] [get_bd_pins processing_system7_0_axi_periph/M07_ACLK] [get_bd_pins processing_system7_0_axi_periph/M08_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins rst_processing_system7_0_fclk0/slowest_sync_clk] [get_bd_pins system_interrupts/s_axi_aclk] [get_bd_pins video/control_clock]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins proc_sys_reset_fclk1/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK1] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins video/data_clock]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins processing_system7_0/FCLK_CLK2] [get_bd_pins video/reference_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK3 [get_bd_pins processing_system7_0/FCLK_CLK3] [get_bd_pins processing_system7_0/M_AXI_GP1_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP2_ACLK]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins proc_sys_reset_fclk1/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_fclk0/ext_reset_in] [get_bd_pins video/system_reset]
  connect_bd_net -net rst_processing_system7_0_fclk0_interconnect_aresetn [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins rst_processing_system7_0_fclk0/interconnect_aresetn] [get_bd_pins video/control_interconnect_reset_n]
  connect_bd_net -net rst_processing_system7_0_fclk0_peripheral_aresetn [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M02_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M03_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M04_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M05_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M06_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M07_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M08_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_processing_system7_0_fclk0/peripheral_aresetn] [get_bd_pins system_interrupts/s_axi_aresetn] [get_bd_pins video/control_reset_n]
  connect_bd_net -net video_dout [get_bd_pins system_interrupts/intr] [get_bd_pins video/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video/hdmi_out/frontend/axi_dynclk/s00_axi/reg0] SEG_axi_dynclk_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x41220000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video/hdmi_in/frontend/axi_gpio_hdmiin/S_AXI/Reg] SEG_axi_gpio_hdmiin_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video/axi_vdma/S_AXI_LITE/Reg] SEG_axi_vdma_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C50000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video/hdmi_in/color_convert/s_axi_AXILiteS/Reg] SEG_color_convert_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C60000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video/hdmi_out/color_convert/s_axi_AXILiteS/Reg] SEG_color_convert_out_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video/hdmi_in/filter_0/s_axi_AXILiteS/Reg] SEG_filter_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41230000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video/hdmi_out/frontend/hdmi_out_hpd_video/S_AXI/Reg] SEG_hdmi_out_hpd_video_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C40000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video/hdmi_in/pixel_pack/s_axi_AXILiteS/Reg] SEG_pixel_pack_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C70000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video/hdmi_out/pixel_unpack/s_axi_AXILiteS/Reg] SEG_pixel_unpack_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41800000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs system_interrupts/S_AXI/Reg] SEG_system_interrupts_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C30000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video/hdmi_in/frontend/vtc_in/ctrl/Reg] SEG_vtc_in_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs video/hdmi_out/frontend/vtc_out/ctrl/Reg] SEG_vtc_out_Reg
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces video/axi_vdma/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces video/axi_vdma/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port DDR -pg 1 -y 290 -defaultsOSRD
preplace port hdmi_out_ddc -pg 1 -y 330 -defaultsOSRD
preplace port hdmi_out -pg 1 -y 560 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 310 -defaultsOSRD
preplace port hdmi_in -pg 1 -y 580 -defaultsOSRD
preplace port hdmi_in_ddc -pg 1 -y 210 -defaultsOSRD
preplace portBus hdmi_out_hpd -pg 1 -y 670 -defaultsOSRD
preplace portBus hdmi_in_hpd -pg 1 -y 1170 -defaultsOSRD
preplace inst video|hdmi_in|frontend -pg 1 -lvl 2 -y -846 -defaultsOSRD
preplace inst video|axi_vdma -pg 1 -lvl 3 -y -1250 -defaultsOSRD
preplace inst video|axi_mem_intercon -pg 1 -lvl 4 -y -1300 -defaultsOSRD
preplace inst video|hdmi_out -pg 1 -lvl 4 -y -950 -defaultsOSRD
preplace inst video|hdmi_in -pg 1 -lvl 2 -y -848 -defaultsOSRD
preplace inst system_interrupts -pg 1 -lvl 3 -y -1530 -defaultsOSRD
preplace inst rst_processing_system7_0_fclk0 -pg 1 -lvl 1 -y 490 -defaultsOSRD
preplace inst video|hdmi_in|filter_0 -pg 1 -lvl 3 -y -988 -defaultsOSRD
preplace inst video|hdmi_in|axis_register_slice_0 -pg 1 -lvl 2 -y -184 -defaultsOSRD
preplace inst video|xlconcat_0 -pg 1 -lvl 5 -y -920 -defaultsOSRD
preplace inst video|hdmi_in|pixel_pack -pg 1 -lvl 3 -y -648 -defaultsOSRD
preplace inst proc_sys_reset_fclk1 -pg 1 -lvl 2 -y 1220 -defaultsOSRD
preplace inst video|hdmi_in|frontend|vtc_in -pg 1 -lvl 2 -y -746 -defaultsOSRD
preplace inst video|hdmi_in|color_convert -pg 1 -lvl 1 -y -838 -defaultsOSRD
preplace inst video|hdmi_in|frontend|dvi2rgb_0 -pg 1 -lvl 1 -y -636 -defaultsOSRD
preplace inst video -pg 1 -lvl 3 -y -1320 -defaultsOSRD
preplace inst video|axi_interconnect_0 -pg 1 -lvl 1 -y -1030 -defaultsOSRD
preplace inst video|hdmi_in|frontend|v_vid_in_axi4s_0 -pg 1 -lvl 1 -y -846 -defaultsOSRD
preplace inst video|hdmi_in|frontend|axi_gpio_hdmiin -pg 1 -lvl 2 -y -526 -defaultsOSRD
preplace inst processing_system7_0_axi_periph -pg 1 -lvl 2 -y 290 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 4 -y 380 -defaultsOSRD
preplace netloc video|hdmi_in|RefClk_1 1 0 2 NJ -938 NJ
preplace netloc video|v_tc_1_irq 1 2 3 NJ -760 NJ -760 5080
preplace netloc video|axi_interconnect_0_M07_AXI 1 1 1 1420
preplace netloc video|hdmi_in|frontend|aclk_1 1 0 1 2720
preplace netloc video|axi_interconnect_0_M03_AXI 1 1 3 NJ -1400 NJ -1400 4690
preplace netloc proc_sys_reset_fclk1_peripheral_aresetn 1 2 1 710
preplace netloc video_dout 1 2 2 730 -80 5480
preplace netloc video|hdmi_in|frontend|hdmi_in_video_out 1 1 2 N -886 NJ
preplace netloc video|axi_vdma_0_M_AXI_S2MM 1 3 1 4650
preplace netloc processing_system7_0_axi_periph_M08_AXI 1 2 1 670
preplace netloc video|axi_vdma_0_M_AXI_MM2S 1 3 1 4680
preplace netloc processing_system7_0_FIXED_IO 1 4 1 NJ
preplace netloc video|axi_vdma_0_M_AXIS_MM2S 1 3 1 4650
preplace netloc video|hdmi_in|color_convert_out_data_TVALID 1 1 2 NJ -1058 3660
preplace netloc video|overflow 1 4 1 N
preplace netloc video|hdmi_in|frontend|RefClk_1 1 0 1 2730
preplace netloc video|hdmi_in|frontend|Net 1 0 2 NJ -526 3060
preplace netloc video|hdmi_in|resetn_1 1 0 2 NJ -558 NJ
preplace netloc hdmi_in_1 1 0 3 NJ -1370 NJ -1370 NJ
preplace netloc iop_interrupts_irq 1 3 1 5500
preplace netloc video|hdmi_in|Net 1 0 2 NJ -588 NJ
preplace netloc video|axi_gpio_video_gpio_io_o 1 2 4 4220 -810 NJ -650 NJ -650 NJ
preplace netloc video|hdmi_in|frontend|Conn1 1 1 2 3030 -906 NJ
preplace netloc video|hdmi_in|TMDS_1 1 0 2 NJ -668 NJ
preplace netloc video|axi_interconnect_0_M00_AXI 1 1 2 1330 -1320 NJ
preplace netloc video|v_tc_0_irq 1 4 1 5060
preplace netloc video|hdmi_in|frontend|Conn2 1 0 1 N
preplace netloc video|hdmi_in|Net1 1 0 2 NJ -608 NJ
preplace netloc video|hdmi_in|frontend|Conn3 1 0 2 NJ -716 3040
preplace netloc video|hdmi_out_hpd_video_gpio_io_o 1 4 2 N -1020 NJ
preplace netloc video|axi_vdma_0_mm2s_introut 1 3 2 NJ -1150 5090
preplace netloc processing_system7_0_DDR 1 4 1 NJ
preplace netloc video|hdmi_in|frontend_DDC 1 2 2 3570 -858 NJ
preplace netloc dvi2rgb_0_DDC 1 3 2 NJ -1320 NJ
preplace netloc video|axi_interconnect_0_M01_AXI 1 1 3 NJ -1160 NJ -1130 4630
preplace netloc video|hdmi_out_hpd_video_ip2intc_irpt 1 4 1 5070
preplace netloc video|hdmi_in|hdmi_in_video_out 1 0 3 1670 -998 NJ -998 3560
preplace netloc video|frontend_DDC 1 2 4 4190 -900 NJ -1140 NJ -1320 NJ
preplace netloc video|vid_io_in_reset_1 1 1 4 1440 -1180 NJ -1110 NJ -750 5050
preplace netloc video|hdmi_in_PixelClk 1 2 2 NJ -850 4610
preplace netloc video|hdmi_in|frontend|v_vid_in_axi4s_0_vtiming_out 1 1 1 3060
preplace netloc processing_system7_0_axi_periph_M05_AXI 1 2 1 660
preplace netloc hdmi_out_hpd_video_gpio_io_o 1 3 2 NJ -1000 NJ
preplace netloc video|axi_gpio_video_ip2intc_irpt 1 2 3 NJ -790 NJ -780 5090
preplace netloc video|hdmi_in|color_convert_out_data_TUSER 1 1 2 NJ -1078 3650
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 5 -30 380 320 -50 720 -50 NJ -50 15890
preplace netloc video|axi_interconnect_0_M04_AXI 1 1 3 NJ -1410 NJ -1410 4720
preplace netloc video|hdmi_in|frontend|dvi2rgb_0_PixelClk1 1 0 3 2790 -726 3050 -876 NJ
preplace netloc video|hdmi_in|frontend|Net1 1 0 2 2770 -516 3090
preplace netloc video|axi_interconnect_0_M08_AXI 1 1 1 1320
preplace netloc video|axi_mem_intercon_M00_AXI 1 4 2 N -1300 NJ
preplace netloc video|resetn_1 1 1 4 1450 -1170 NJ -1120 NJ -770 5060
preplace netloc video|TMDS_1 1 0 2 NJ -1370 1340
preplace netloc video|axi_vdma_0_s2mm_introut 1 3 2 NJ -1130 5080
preplace netloc video|ext_reset_in_1 1 0 4 NJ -1380 NJ -1360 NJ -860 4680
preplace netloc video|hdmi_in|s_axi_AXILiteS2_1 1 0 3 NJ -1088 NJ -1088 3660
preplace netloc video|hdmi_in|in_pixelformat_M00_AXIS 1 3 1 4030
preplace netloc video|Net1 1 0 4 980 -1410 1350 -1190 4240 -910 NJ
preplace netloc video|rst_processing_system7_0_100M_peripheral_aresetn 1 0 4 970 -1390 1410 -1390 NJ -1390 4640
preplace netloc processing_system7_0_IIC_0 1 4 1 NJ
preplace netloc video|xlconcat_0_dout 1 5 1 5340
preplace netloc video|axi_interconnect_0_M05_AXI 1 1 3 NJ -1380 NJ -1380 4710
preplace netloc video|hdmi_in|frontend|dvi2rgb_0_RGB 1 0 2 2780 -556 3040
preplace netloc video|Net 1 0 4 990 -1350 1310 -1280 4250 -870 NJ
preplace netloc video|hdmi_in|frontend|axi_gpio_video_ip2intc_irpt 1 2 1 3420
preplace netloc video|hdmi_in|vid_io_in_reset_1 1 0 2 NJ -538 NJ
preplace netloc video|hdmi_in|dvi2rgb_0_aPixelClkLckd 1 2 2 3590 -828 NJ
preplace netloc video|Conn1 1 4 2 N -1040 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 0 5 -20 400 330 -10 690 -10 5480 540 15870
preplace netloc video|Conn2 1 0 1 950
preplace netloc processing_system7_0_FCLK_CLK1 1 1 4 340 570 680 440 5490 560 15880
preplace netloc processing_system7_0_FCLK_CLK2 1 2 3 740 -70 NJ -70 15900
preplace netloc video|aclk_1 1 0 4 960 -1400 1370 -1370 4260 -1370 4660
preplace netloc processing_system7_0_FCLK_CLK3 1 3 2 5510 550 15860
preplace netloc video|hdmi_in|frontend|processing_system7_0_axi_periph_M07_AXI 1 0 2 NJ -546 N
preplace netloc video|hdmi_in|frontend|axi_gpio_video_gpio_io_o 1 2 1 N
preplace netloc video|hdmi_in|aclk_1 1 0 3 1670 -738 2080 -1038 3600
preplace netloc video|axi_interconnect_0_M02_AXI 1 1 3 NJ -1420 NJ -1420 4700
preplace netloc rst_processing_system7_0_fclk0_peripheral_aresetn 1 1 2 310 -1230 680
preplace netloc proc_sys_reset_fclk1_interconnect_aresetn 1 2 1 700
preplace netloc video|hdmi_in|processing_system7_0_axi_periph_M07_AXI 1 0 2 NJ -688 NJ
preplace netloc video|hdmi_in|axi_gpio_video_ip2intc_irpt 1 2 2 3620 -788 NJ
preplace netloc video|hdmi_in|frontend|dvi2rgb_0_aPixelClkLckd 1 1 2 3080 -616 3400
preplace netloc video|hdmi_in|color_convert_out_data_TLAST 1 1 2 2050 -1068 NJ
preplace netloc video|hdmi_in|axi_gpio_video_gpio_io_o 1 2 2 3610 -808 NJ
preplace netloc axi_gpio_video_gpio_io_o 1 3 2 NJ -650 NJ
preplace netloc video|hdmi_in|axis_register_slice_0_M_AXIS 1 2 1 3660
preplace netloc video|hdmi_in|rst_processing_system7_0_100M_peripheral_aresetn 1 0 3 1660 -728 2110 -1008 3580
preplace netloc video|status 1 4 1 N
preplace netloc video|rst_processing_system7_0_100M_interconnect_aresetn 1 0 4 NJ -1430 NJ -1430 NJ -1430 4730
preplace netloc video|hdmi_in_aPixelClkLckd 1 2 2 4220 -890 NJ
preplace netloc video|hdmi_in|frontend|v_tc_1_irq 1 2 1 3410
preplace netloc video|hdmi_in|filter_0_output_r 1 1 3 2130 -988 NJ -848 4010
preplace netloc video|hdmi_in|Conn3 1 0 2 NJ -648 NJ
preplace netloc video|axi_interconnect_0_M09_AXI 1 1 1 1290
preplace netloc video|hdmi_in|v_tc_1_irq 1 2 2 3650 -768 NJ
preplace netloc processing_system7_0_M_AXI_GP0 1 1 4 340 10 NJ 10 NJ 10 15870
preplace netloc video|s_axi_AXILiteS2_1 1 1 1 1430
preplace netloc video|hdmi_in|Conn5 1 0 3 NJ -1098 NJ -1098 3630
preplace netloc rst_processing_system7_0_fclk0_interconnect_aresetn 1 1 2 300 -1250 N
preplace netloc video|underflow 1 4 1 N
preplace netloc video|hdmi_in|frontend|vid_io_in_reset_1 1 0 1 2750
preplace netloc video|hdmi_in|frontend|resetn_1 1 0 2 NJ -536 3070
preplace netloc video|hdmi_in|Conn6 1 0 1 N
preplace netloc video|hdmi_in|color_convert_out_data_TDATA 1 1 2 2060 -1028 NJ
preplace netloc video|hdmi_in|filter_0_input_r_TREADY 1 1 2 2070 -1018 NJ
preplace netloc video|hdmi_in|dvi2rgb_0_PixelClk 1 2 2 3560 -838 NJ
preplace netloc axi_mem_intercon_M00_AXI 1 3 1 5490
preplace netloc video|locked 1 4 1 N
preplace netloc video|RefClk_1 1 0 2 NJ -1420 1300
preplace netloc video_TMDS1 1 3 2 NJ -1040 NJ
preplace netloc video|in_pixelformat_M00_AXIS 1 2 1 4180
preplace netloc video|axi_interconnect_0_M06_AXI 1 1 1 1360
preplace netloc video|ARESETN_1 1 0 1 N
levelinfo -pg 1 -60 140 500 1070 15660 15960 -top -1600 -bot 1310
levelinfo -hier video * 1140 1740 4420 4890 5240 *
levelinfo -hier video|hdmi_in * 1870 2780 3840 *
levelinfo -hier video|hdmi_in|frontend * 2910 3270 *
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


