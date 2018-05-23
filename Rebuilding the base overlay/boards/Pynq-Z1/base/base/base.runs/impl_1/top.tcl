proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.cache/wt [current_project]
  set_property parent.project_path C:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.xpr [current_project]
  set_property ip_repo_paths {
  c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.cache/ip
  C:/Pynq2/PYNQ-master/boards/ip
  C:/Users/Pieter/Multiplexer_Input_IP
  C:/Users/Pieter/Multiplexer_Output
  C:/Users/Pieter/HLS_Filter
  C:/Users/Pieter/GRAY2RGB
  C:/Users/Pieter/RGB2GRAY
  C:/Users/Pieter/Hls_Sobel_AllDirections
  C:/Users/Pieter/Adder_example
} [current_project]
  set_property ip_output_repo c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.cache/ip [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.runs/synth_1/top.dcp
  read_xdc -prop_thru_buffers -ref system_proc_sys_reset_fclk1_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_proc_sys_reset_fclk1_0/system_proc_sys_reset_fclk1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_proc_sys_reset_fclk1_0/system_proc_sys_reset_fclk1_0_board.xdc]
  read_xdc -ref system_proc_sys_reset_fclk1_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_proc_sys_reset_fclk1_0/system_proc_sys_reset_fclk1_0.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_proc_sys_reset_fclk1_0/system_proc_sys_reset_fclk1_0.xdc]
  read_xdc -ref system_processing_system7_0_0 -cells inst c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref system_rst_processing_system7_0_fclk0_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_fclk0_0/system_rst_processing_system7_0_fclk0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_fclk0_0/system_rst_processing_system7_0_fclk0_0_board.xdc]
  read_xdc -ref system_rst_processing_system7_0_fclk0_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_fclk0_0/system_rst_processing_system7_0_fclk0_0.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_fclk0_0/system_rst_processing_system7_0_fclk0_0.xdc]
  read_xdc -ref system_system_interrupts_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_system_interrupts_0/system_system_interrupts_0.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_system_interrupts_0/system_system_interrupts_0.xdc]
  read_xdc -ref system_axi_vdma_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_axi_vdma_0/system_axi_vdma_0.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_axi_vdma_0/system_axi_vdma_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_gpio_hdmiin_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_axi_gpio_hdmiin_0/system_axi_gpio_hdmiin_0_board.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_axi_gpio_hdmiin_0/system_axi_gpio_hdmiin_0_board.xdc]
  read_xdc -ref system_axi_gpio_hdmiin_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_axi_gpio_hdmiin_0/system_axi_gpio_hdmiin_0.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_axi_gpio_hdmiin_0/system_axi_gpio_hdmiin_0.xdc]
  read_xdc -ref system_dvi2rgb_0_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_dvi2rgb_0_0/src/dvi2rgb.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_dvi2rgb_0_0/src/dvi2rgb.xdc]
  read_xdc -prop_thru_buffers -ref system_hdmi_out_hpd_video_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_hdmi_out_hpd_video_0/system_hdmi_out_hpd_video_0_board.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_hdmi_out_hpd_video_0/system_hdmi_out_hpd_video_0_board.xdc]
  read_xdc -ref system_hdmi_out_hpd_video_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_hdmi_out_hpd_video_0/system_hdmi_out_hpd_video_0.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_hdmi_out_hpd_video_0/system_hdmi_out_hpd_video_0.xdc]
  read_xdc -prop_thru_buffers -ref system_proc_sys_reset_pixelclk_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_proc_sys_reset_pixelclk_0/system_proc_sys_reset_pixelclk_0_board.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_proc_sys_reset_pixelclk_0/system_proc_sys_reset_pixelclk_0_board.xdc]
  read_xdc -ref system_proc_sys_reset_pixelclk_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_proc_sys_reset_pixelclk_0/system_proc_sys_reset_pixelclk_0.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_proc_sys_reset_pixelclk_0/system_proc_sys_reset_pixelclk_0.xdc]
  read_xdc -ref system_rgb2dvi_0_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_rgb2dvi_0_0/src/rgb2dvi.xdc
  set_property processing_order EARLY [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_rgb2dvi_0_0/src/rgb2dvi.xdc]
  read_xdc C:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/vivado/constraints/top.xdc
  read_xdc -ref system_system_interrupts_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_system_interrupts_0/system_system_interrupts_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_system_interrupts_0/system_system_interrupts_0_clocks.xdc]
  read_xdc -ref system_axi_vdma_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_axi_vdma_0/system_axi_vdma_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_axi_vdma_0/system_axi_vdma_0_clocks.xdc]
  read_xdc -ref system_v_vid_in_axi4s_0_0 -cells inst c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_v_vid_in_axi4s_0_0/system_v_vid_in_axi4s_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_v_vid_in_axi4s_0_0/system_v_vid_in_axi4s_0_0_clocks.xdc]
  read_xdc -ref system_vtc_in_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_vtc_in_0/system_vtc_in_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_vtc_in_0/system_vtc_in_0_clocks.xdc]
  read_xdc -ref system_rgb2dvi_0_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_rgb2dvi_0_0/src/rgb2dvi_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_rgb2dvi_0_0/src/rgb2dvi_clocks.xdc]
  read_xdc -ref system_v_axi4s_vid_out_0_0 -cells inst c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0_clocks.xdc]
  read_xdc -ref system_vtc_out_0 -cells U0 c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_vtc_out_0/system_vtc_out_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_vtc_out_0/system_vtc_out_0_clocks.xdc]
  read_xdc -ref system_auto_cc_0 -cells inst c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_cc_0/system_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_cc_0/system_auto_cc_0_clocks.xdc]
  read_xdc -ref system_auto_cc_1 -cells inst c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_cc_1/system_auto_cc_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_cc_1/system_auto_cc_1_clocks.xdc]
  read_xdc -ref system_auto_cc_2 -cells inst c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_cc_2/system_auto_cc_2_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_cc_2/system_auto_cc_2_clocks.xdc]
  read_xdc -ref system_auto_cc_3 -cells inst c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_cc_3/system_auto_cc_3_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_cc_3/system_auto_cc_3_clocks.xdc]
  read_xdc -ref system_auto_cc_4 -cells inst c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_cc_4/system_auto_cc_4_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_cc_4/system_auto_cc_4_clocks.xdc]
  read_xdc -ref system_auto_us_0 -cells inst c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0_clocks.xdc]
  read_xdc -ref system_auto_us_1 -cells inst c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_us_1/system_auto_us_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Pynq2/PYNQ-master/boards/Pynq-Z1/base/base/base.srcs/sources_1/bd/system/ip/system_auto_us_1/system_auto_us_1_clocks.xdc]
  link_design -top top -part xc7z020clg400-1
  write_hwdef -file top.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force top_opt.dcp
  report_drc -file top_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force top_placed.dcp
  report_io -file top_io_placed.rpt
  report_utilization -file top_utilization_placed.rpt -pb top_utilization_placed.pb
  report_control_sets -verbose -file top_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force top_routed.dcp
  report_drc -file top_drc_routed.rpt -pb top_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file top_timing_summary_routed.rpt -rpx top_timing_summary_routed.rpx
  report_power -file top_power_routed.rpt -pb top_power_summary_routed.pb -rpx top_power_routed.rpx
  report_route_status -file top_route_status.rpt -pb top_route_status.pb
  report_clock_utilization -file top_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force top.mmi }
  write_bitstream -force top.bit 
  catch { write_sysdef -hwdef top.hwdef -bitfile top.bit -meminfo top.mmi -file top.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

