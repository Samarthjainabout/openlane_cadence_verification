  set my_toplevel    user_project_wrapper  
  set ::env(IO_SYNC) 0

# Clock network
set clk_input wb_clk_i

  set search_path ".  /apps/eda/synopsys/syn/S-2021.06-SP1/libraries/syn
                     /apps/eda/synopsys/syn/S-2021.06-SPI/minpower/syn
                     /apps/eda/synopsys/syn/S-2021.06-SPI/dw/syn_ver
                     /apps/eda/synopsys/syn/S-2021.06-SPI/dw/sim_ver
                     /home/staff/elesamj/skywater_digital/sk130_digital/temp_gls/t1_sk130_digital/ft_end/libs/
                     /home/staff/elesamj/skywater_digital/sk130_digital/temp_gls/t1_sk130_digital/ft_end/src
                     /home/staff/elesamj/skywater_digital/sk130_digital/temp_gls/t1_sk130_digital/ft_end/syn
                     /home/staff/elesamj/skywater_digital/sk130_digital/temp_gls/t1_sk130_digital/ft_end/scrpt
                     /home/staff/elesamj/skywater_digital/sk130_digital/temp_gls/t1_sk130_digital/ft_end/libs
                  "
  set target_library "scs130ms_tt_1.80v_25C.db"
  set link_library "* dw_foundation.sldb scs130ms_tt_1.80v_25C.db"
  set synthetic_library "dw_foundation.sldb"



 analyze -library WORK -format sverilog { ../src/defines.v ../src/uprj_netlist.v ../src/user_defines.v ../src/user_proj_example.v ../src/user_project_wrapper.v  }


  elaborate  $my_toplevel
  current_design $my_toplevel


  set sverilogout_no_tri true
  set sverilogout_unconnected_prefix "UNCONNECTED"
  set sverilogout_single_bit false
  set edifout_netlist_only true

 create_clock [get_ports $clk_input] -name clk -period 10.0
puts "\[INFO\]: Creating clock {clk} for port $clk_input with period: 10.0 ns"

# Clock non-idealities
set_propagated_clock [all_clocks]
set_clock_uncertainty 0.25 [get_clocks {clk}]
puts "\[INFO\]: Setting clock uncertainty to: 0.25"
set_clock_transition 0.15 [get_clocks {clk}]
puts "\[INFO\]: Setting clock transition to: 0.15"

# Maximum transition time for the design nets
set_max_transition 0.5 [current_design]
puts "\[INFO\]: Setting maximum transition to: 0.5 ns"

# Maximum fanout
set_max_fanout 5 [current_design]
puts "\[INFO\]: Setting maximum fanout to: 5"

# Timing paths delays derate
set_timing_derate -early 0.95
set_timing_derate -late 1.05
puts "\[INFO\]: Setting timing derate to: 5%"

# Reset input delay
set_input_delay [expr 10.0 * 0.5] -clock [get_clocks {clk}] [get_ports {wb_rst_i}]

# Multicycle paths
set_multicycle_path -setup 2 -through [get_ports {wbs_ack_o}]
set_multicycle_path -hold 1  -through [get_ports {wbs_ack_o}]
set_multicycle_path -setup 2 -through [get_ports {wbs_cyc_i}]
set_multicycle_path -hold 1  -through [get_ports {wbs_cyc_i}]
set_multicycle_path -setup 2 -through [get_ports {wbs_stb_i}]
set_multicycle_path -hold 1  -through [get_ports {wbs_stb_i}]


#------------------------------------------#
# Retrieved Constraints
#------------------------------------------#

# Clock source latency
set usr_clk_max_latency 4.57
set usr_clk_min_latency 4.11
set clk_max_latency 5.57
set clk_min_latency 4.65
set_clock_latency -source -max $usr_clk_max_latency [get_clocks {clk}]
set_clock_latency -source -min $usr_clk_min_latency [get_clocks {clk}]
puts "\[INFO\]: Setting clock latency range: $usr_clk_min_latency : $usr_clk_max_latency"
# Clock input Transition
set usr_clk_tran 0.13
set clk_tran 0.61
set_input_transition $usr_clk_tran [get_ports $clk_input]
puts "\[INFO\]: Setting clock transition: $usr_clk_tran"

# Input delays
set_input_delay -max 1.87 -clock [get_clocks {clk}] [get_ports {la_data_in[*]}]
set_input_delay -max 1.89 -clock [get_clocks {clk}] [get_ports {la_oenb[*]}]
set_input_delay -max 3.17 -clock [get_clocks {clk}] [get_ports {wbs_sel_i[*]}]
set_input_delay -max 3.74 -clock [get_clocks {clk}] [get_ports {wbs_we_i}]
set_input_delay -max 3.89 -clock [get_clocks {clk}] [get_ports {wbs_adr_i[*]}]
set_input_delay -max 4.13 -clock [get_clocks {clk}] [get_ports {wbs_stb_i}]
set_input_delay -max 4.61 -clock [get_clocks {clk}] [get_ports {wbs_dat_i[*]}]
set_input_delay -max 4.74 -clock [get_clocks {clk}] [get_ports {wbs_cyc_i}]
set_input_delay -min 0.18 -clock [get_clocks {clk}] [get_ports {la_data_in[*]}]
set_input_delay -min 0.3  -clock [get_clocks {clk}] [get_ports {la_oenb[*]}]
set_input_delay -min 0.79 -clock [get_clocks {clk}] [get_ports {wbs_adr_i[*]}]
set_input_delay -min 1.04 -clock [get_clocks {clk}] [get_ports {wbs_dat_i[*]}]
set_input_delay -min 1.19 -clock [get_clocks {clk}] [get_ports {wbs_sel_i[*]}]
set_input_delay -min 1.65 -clock [get_clocks {clk}] [get_ports {wbs_we_i}]
set_input_delay -min 1.69 -clock [get_clocks {clk}] [get_ports {wbs_cyc_i}]
set_input_delay -min 1.86 -clock [get_clocks {clk}] [get_ports {wbs_stb_i}]
if { $::env(IO_SYNC) } {
	set in_ext_delay 4
	puts "\[INFO\]: Setting input ports external delay to: $in_ext_delay"
	#set_input_delay -max [expr $in_ext_delay + 4.55] -clock [get_clocks {clk}] [get_ports {io_in[*]}]
	set_input_delay -min [expr $in_ext_delay + 1.26] -clock [get_clocks {clk}] [get_ports {io_in[*]}]
}

# Input Transition
set_input_transition -max 0.14  [get_ports {wbs_we_i}]
set_input_transition -max 0.15  [get_ports {wbs_stb_i}]
set_input_transition -max 0.17  [get_ports {wbs_cyc_i}]
set_input_transition -max 0.18  [get_ports {wbs_sel_i[*]}]
set_input_transition -max 0.38  [get_ports {io_in[*]}]
set_input_transition -max 0.84  [get_ports {wbs_dat_i[*]}]
set_input_transition -max 0.86  [get_ports {la_data_in[*]}]
set_input_transition -max 0.92  [get_ports {wbs_adr_i[*]}]
set_input_transition -max 0.97  [get_ports {la_oenb[*]}]
set_input_transition -min 0.05  [get_ports {io_in[*]}]
set_input_transition -min 0.06  [get_ports {la_oenb[*]}]
set_input_transition -min 0.07  [get_ports {la_data_in[*]}]
set_input_transition -min 0.07  [get_ports {wbs_adr_i[*]}]
set_input_transition -min 0.07  [get_ports {wbs_dat_i[*]}]
set_input_transition -min 0.09  [get_ports {wbs_cyc_i}]
set_input_transition -min 0.09  [get_ports {wbs_sel_i[*]}]
set_input_transition -min 0.09  [get_ports {wbs_we_i}]
set_input_transition -min 0.15  [get_ports {wbs_stb_i}]



# Output delays
#set_output_delay -max 0.7  -clock [get_clocks {clk}] [get_ports {user_irq[*]}]
set_output_delay -max 1.0  -clock [get_clocks {clk}] [get_ports {la_data_out[*]}]
set_output_delay -max 3.62 -clock [get_clocks {clk}] [get_ports {wbs_dat_o[*]}]
set_output_delay -max 8.41 -clock [get_clocks {clk}] [get_ports {wbs_ack_o}]
set_output_delay -min 0    -clock [get_clocks {clk}] [get_ports {la_data_out[*]}]
set_output_delay -min 0    -clock [get_clocks {clk}] [get_ports {user_irq[*]}]
set_output_delay -min 1.13 -clock [get_clocks {clk}] [get_ports {wbs_dat_o[*]}]
set_output_delay -min 1.37 -clock [get_clocks {clk}] [get_ports {wbs_ack_o}]



if { $::env(IO_SYNC) } {
	set out_ext_delay 4
	puts "\[INFO\]: Setting output ports external delay to: $out_ext_delay"
	# set_output_delay -max [expr $out_ext_delay + 9.12] -clock [get_clocks {clk}] [get_ports {io_out[*]}]
	# set_output_delay -max [expr $out_ext_delay + 9.32] -clock [get_clocks {clk}] [get_ports {io_oeb[*]}]
	# set_output_delay -min [expr $out_ext_delay + 2.34] -clock [get_clocks {clk}] [get_ports {io_oeb[*]}]
	# set_output_delay -min [expr $out_ext_delay + 3.9]  -clock [get_clocks {clk}] [get_ports {io_out[*]}]
}

# Output loads
set_load 0.19 [all_outputs]

  link
  uniquify
  ungroup -flatten -all
  check_design
  check_timing
  compile_ultra
  check_timing

  report_area

  report_timing
  report_power
  report_cell

  cd netlist
# /home/staff/elesamj/skywater_digital/t1_sk130_digital/temp_gls/t1_sk130_digital/ft_end/syn/netlist

  set filename [format "%s%s"  $my_toplevel ".ddc"]
  write -format ddc -hierarchy -output $my_toplevel

  set filename [format "%s%s"  $my_toplevel ".sdf"]
  write_sdf -version 1.0 $filename

  set filename [format "%s%s"  $my_toplevel ".syn.v"]
  write -format verilog -hierarchy -output $filename

  set filename [format "%s%s"  $my_toplevel ".sdc"]
  write_sdc $filename

  if {[shell_is_in_topographical_mode]} {
      write_milkyway -output $my_toplevel -overwrite
  }

cd ../rpts

#cd  /home/staff/elesamj/skywater_digital/sk130_digital/temp_gls/t1_sk130_digital/ft_end/syn/rpts/
  redirect [format "%s%s" $my_toplevel  _design.repC] { report_design }
  redirect [format "%s%s" $my_toplevel  _area.repC] { report_area }
  redirect -append [format "%s%s" $my_toplevel  _area.repC] { report_reference }
  redirect [format "%s%s" $my_toplevel  _latches.repC] { report_register -level_sensitive }
  redirect [format "%s%s" $my_toplevel  _flops.repC] { report_register -edge }
  redirect [format "%s%s" $my_toplevel  _violators.repC] { report_constraint -all_violators }
  redirect [format "%s%s" $my_toplevel  _power.repC] { report_power }
  redirect [format "%s%s" $my_toplevel  _max_timing.repC] { report_timing -delay max -nworst 3 -max_paths 20 -greater_path 0 -path full -nosplit}
  redirect [format "%s%s" $my_toplevel  _min_timing.repC] { report_timing -delay min -nworst 3 -max_paths 20 -greater_path 0 -path full -nosplit}
  redirect [format "%s%s" $my_toplevel  _out_min_timing.repC] { report_timing -to [all_outputs] -delay min -nworst 3 -max_paths 1000000 -greater_path 0 -path full -nosplit}




