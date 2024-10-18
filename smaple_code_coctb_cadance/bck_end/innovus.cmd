#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Oct 18 14:37:56 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v15.21-s080_1 (64bit) 01/22/2016 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 15.21-s080_1 NR160121-1146/15_21-UB (database version 2.30, 308.6.1) {superthreading v1.26}
#@(#)CDS: AAE 15.21-s020 (64bit) 01/22/2016 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 15.21-s043_1 () Jan 22 2016 03:15:17 ( )
#@(#)CDS: SYNTECH 15.21-s017_1 () Jan 13 2016 20:03:20 ( )
#@(#)CDS: CPE v15.21-s086
#@(#)CDS: IQRC/TQRC 15.1.3-s219 (64bit) Sat Nov 14 01:05:27 PST 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set _timing_save_restore_compression_mode hybrid
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set gpsPrivate::dpgNewAddBufsDBUpdate 1
set gpsPrivate::lsgEnableNewDbApiInRestruct 1
set init_gnd_net vgnd
set init_lef_file {/apps/PDK/skywater/S130/pdk/V2.1.305/TECH/s130.tlef
/apps/PDK/skywater/S130/stdcell/hd_hv_ms/V2.1.200/scs130ms/lef/scs130ms.lef}
set init_mmmc_file initial.tcl
set init_pwr_net vpwr
set init_top_cell user_project_wrapper
set init_verilog ../frt_end/syn/netlist/user_project_wrapper.syn.v
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1.000000
set pegDetailResScaleFactor 1.000000
set report_inactive_arcs_format {from to when arc_type sense reason}
set timing_library_load_pin_cap_indices {}
set timing_library_write_library_to_directory {}
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set init_gnd_net vgnd
set init_lef_file {/apps/PDK/skywater/S130/pdk/V2.1.305/TECH/s130.tlef
/apps/PDK/skywater/S130/stdcell/hd_hv_ms/V2.1.200/scs130ms/lef/scs130ms.lef}
set init_mmmc_file /home/staff/elesamj/skywater_digital/sk130_digital/bk_end/scrpt/mmmc-2023.tcl
set init_pwr_net vpwr
set init_top_cell tdc_top_wpr
set init_verilog /home/staff/elesamj/skywater_digital/sk130_digital/ft_end/syn/netlist/tdc_top_wr.syn.v
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
set report_inactive_arcs_format {from to when arc_type sense reason}
suppressMessage -silent GLOBAL-100
unsuppressMessage -silent GLOBAL-100
suppressMessage -silent GLOBAL-100
unsuppressMessage -silent GLOBAL-100
set timing_enable_default_delay_arc 1
setViaGenMode -optimize_cross_via true
setViaGenMode -ignore_viarule_enclosure false
setMaxRouteLayer 4
setDesignMode -process 130
setIoFlowFlag 0
floorPlan -site unit -s 800 800 10 10 10 10
uiSetTool select
getIoFlowFlag
fit
addEndCap -preCap scs130ms_decap_4 -postCap scs130ms_decap_4 -prefix ENDCAP
addWellTap -cell scs130ms_tapvpwrvgnd_1 -cellInterval 20 -fixedGap -prefix WELLTAP
addWellTap -cell scs130ms_tapvpwrvgnd_1 -cellInterval 10 -fixedGap -prefix WELLTAP -area 0 0 20 860 -siteOffset 5
clearGlobalNets
globalNetConnect vpwr -type pgpin -pin vpwr -instanceBasename * -hierarchicalInstance {}
globalNetConnect vgnd -type pgpin -pin vgnd -instanceBasename * -hierarchicalInstance {}
globalNetConnect vpwr -type pgpin -pin vpb -instanceBasename * -hierarchicalInstance {}
globalNetConnect vgnd -type pgpin -pin vnb -instanceBasename * -hierarchicalInstance {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer rdl -stacked_via_bottom_layer li -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vpwr vgnd} -type core_rings -follow core -layer {top li bottom li left met1 right met1} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer rdl -stacked_via_bottom_layer li -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vpwr vgnd} -type core_rings -follow core -layer {top li bottom li left met1 right met1} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer rdl -stacked_via_bottom_layer li -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {vgnd vpwr} -layer met2 -direction vertical -width 1.8 -spacing 1.8 -set_to_set_distance 100 -start_from left -start_offset 100 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit rdl -padcore_ring_bottom_layer_limit li -block_ring_top_layer_limit rdl -block_ring_bottom_layer_limit li -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer rdl -stacked_via_bottom_layer li -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {vgnd vpwr} -layer met3 -direction horizontal -width 1.8 -spacing 1.8 -set_to_set_distance 100 -start_from bottom -start_offset 100 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit rdl -padcore_ring_bottom_layer_limit li -block_ring_top_layer_limit rdl -block_ring_bottom_layer_limit li -use_wire_group 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { padring ring stripe blockring blockpin noshape blockwire corewire followpin iowire noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { li(1) rdl(7) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { li(1) rdl(7) } -nets { vpwr vgnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { li(1) rdl(7) }
setSrouteMode -viaConnectToShape { padring ring stripe blockring blockpin noshape blockwire corewire followpin iowire noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { li(1) rdl(7) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { li(1) rdl(7) } -nets { vpwr vgnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { li(1) rdl(7) }
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType start -spacing 5 -start 0.0 0.0 -pin {{analog_io[0]} {analog_io[1]} {analog_io[2]} {analog_io[3]} {analog_io[4]} {analog_io[5]} {analog_io[6]} {analog_io[7]} {analog_io[8]} {analog_io[9]} {analog_io[10]} {analog_io[11]} {analog_io[12]} {analog_io[13]} {analog_io[14]} {analog_io[15]} {analog_io[16]} {analog_io[17]} {analog_io[18]} {analog_io[19]} {analog_io[20]} {analog_io[21]} {analog_io[22]} {analog_io[23]} {analog_io[24]} {analog_io[25]} {analog_io[26]} {analog_io[27]} {analog_io[28]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.17 -pinDepth 0.17 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType start -spacing 5.1 -start 0.17 819.74 -pin {{analog_io[0]} {analog_io[1]} {analog_io[2]} {analog_io[3]} {analog_io[4]} {analog_io[5]} {analog_io[6]} {analog_io[7]} {analog_io[8]} {analog_io[9]} {analog_io[10]} {analog_io[11]} {analog_io[12]} {analog_io[13]} {analog_io[14]} {analog_io[15]} {analog_io[16]} {analog_io[17]} {analog_io[18]} {analog_io[19]} {analog_io[20]} {analog_io[21]} {analog_io[22]} {analog_io[23]} {analog_io[24]} {analog_io[25]} {analog_io[26]} {analog_io[27]} {analog_io[28]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.17 -pinDepth 0.17 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 2 -spreadType start -spacing 4.42 -start 0.17 819.74 -pin {{analog_io[0]} {analog_io[1]} {analog_io[2]} {analog_io[3]} {analog_io[4]} {analog_io[5]} {analog_io[6]} {analog_io[7]} {analog_io[8]} {analog_io[9]} {analog_io[10]} {analog_io[11]} {analog_io[12]} {analog_io[13]} {analog_io[14]} {analog_io[15]} {analog_io[16]} {analog_io[17]} {analog_io[18]} {analog_io[19]} {analog_io[20]} {analog_io[21]} {analog_io[22]} {analog_io[23]} {analog_io[24]} {analog_io[25]} {analog_io[26]} {analog_io[27]} {analog_io[28]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.17 -pinDepth 0.17 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 2 -spreadType start -spacing 4.42 -start 0.17 819.74 -pin {{analog_io[0]} {analog_io[1]} {analog_io[2]} {analog_io[3]} {analog_io[4]} {analog_io[5]} {analog_io[6]} {analog_io[7]} {analog_io[8]} {analog_io[9]} {analog_io[10]} {analog_io[11]} {analog_io[12]} {analog_io[13]} {analog_io[14]} {analog_io[15]} {analog_io[16]} {analog_io[17]} {analog_io[18]} {analog_io[19]} {analog_io[20]} {analog_io[21]} {analog_io[22]} {analog_io[23]} {analog_io[24]} {analog_io[25]} {analog_io[26]} {analog_io[27]} {analog_io[28]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.17 -pinDepth 0.17 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 2 -spreadType start -spacing 4.42 -start 0.17 819.74 -pin {{analog_io[0]} {analog_io[1]} {analog_io[2]} {analog_io[3]} {analog_io[4]} {analog_io[5]} {analog_io[6]} {analog_io[7]} {analog_io[8]} {analog_io[9]} {analog_io[10]} {analog_io[11]} {analog_io[12]} {analog_io[13]} {analog_io[14]} {analog_io[15]} {analog_io[16]} {analog_io[17]} {analog_io[18]} {analog_io[19]} {analog_io[20]} {analog_io[21]} {analog_io[22]} {analog_io[23]} {analog_io[24]} {analog_io[25]} {analog_io[26]} {analog_io[27]} {analog_io[28]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.17 -pinDepth 0.17 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 2 -spreadType start -spacing 5 -start 0.17 819.74 -pin {{analog_io[0]} {analog_io[1]} {analog_io[2]} {analog_io[3]} {analog_io[4]} {analog_io[5]} {analog_io[6]} {analog_io[7]} {analog_io[8]} {analog_io[9]} {analog_io[10]} {analog_io[11]} {analog_io[12]} {analog_io[13]} {analog_io[14]} {analog_io[15]} {analog_io[16]} {analog_io[17]} {analog_io[18]} {analog_io[19]} {analog_io[20]} {analog_io[21]} {analog_io[22]} {analog_io[23]} {analog_io[24]} {analog_io[25]} {analog_io[26]} {analog_io[27]} {analog_io[28]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.17 -pinDepth 0.17 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 2 -spreadType start -spacing 5.1 -start 0.17 819.74 -pin {{analog_io[0]} {analog_io[1]} {analog_io[2]} {analog_io[3]} {analog_io[4]} {analog_io[5]} {analog_io[6]} {analog_io[7]} {analog_io[8]} {analog_io[9]} {analog_io[10]} {analog_io[11]} {analog_io[12]} {analog_io[13]} {analog_io[14]} {analog_io[15]} {analog_io[16]} {analog_io[17]} {analog_io[18]} {analog_io[19]} {analog_io[20]} {analog_io[21]} {analog_io[22]} {analog_io[23]} {analog_io[24]} {analog_io[25]} {analog_io[26]} {analog_io[27]} {analog_io[28]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.17 -pinDepth 0.17 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType start -spacing 5.1 -start 0.17 819.74 -pin {{analog_io[0]} {analog_io[1]} {analog_io[2]} {analog_io[3]} {analog_io[4]} {analog_io[5]} {analog_io[6]} {analog_io[7]} {analog_io[8]} {analog_io[9]} {analog_io[10]} {analog_io[11]} {analog_io[12]} {analog_io[13]} {analog_io[14]} {analog_io[15]} {analog_io[16]} {analog_io[17]} {analog_io[18]} {analog_io[19]} {analog_io[20]} {analog_io[21]} {analog_io[22]} {analog_io[23]} {analog_io[24]} {analog_io[25]} {analog_io[26]} {analog_io[27]} {analog_io[28]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType center -spacing 4.42 -pin {{io_in[0]} {io_in[1]} {io_in[2]} {io_in[3]} {io_in[4]} {io_in[5]} {io_in[6]} {io_in[7]} {io_in[8]} {io_in[9]} {io_in[10]} {io_in[11]} {io_in[12]} {io_in[13]} {io_in[14]} {io_in[15]} {io_in[16]} {io_in[17]} {io_in[18]} {io_in[19]} {io_in[20]} {io_in[21]} {io_in[22]} {io_in[23]} {io_in[24]} {io_in[25]} {io_in[26]} {io_in[27]} {io_in[28]} {io_in[29]} {io_in[30]} {io_in[31]} {io_in[32]} {io_in[33]} {io_in[34]} {io_in[35]} {io_in[36]} {io_in[37]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType center -spacing 4.08 -pin {{io_oeb[0]} {io_oeb[1]} {io_oeb[2]} {io_oeb[3]} {io_oeb[4]} {io_oeb[5]} {io_oeb[6]} {io_oeb[7]} {io_oeb[8]} {io_oeb[9]} {io_oeb[10]} {io_oeb[11]} {io_oeb[12]} {io_oeb[13]} {io_oeb[14]} {io_oeb[15]} {io_oeb[16]} {io_oeb[17]} {io_oeb[18]} {io_oeb[19]} {io_oeb[20]} {io_oeb[21]} {io_oeb[22]} {io_oeb[23]} {io_oeb[24]} {io_oeb[25]} {io_oeb[26]} {io_oeb[27]} {io_oeb[28]} {io_oeb[29]} {io_oeb[30]} {io_oeb[31]} {io_oeb[32]} {io_oeb[33]} {io_oeb[34]} {io_oeb[35]} {io_oeb[36]} {io_oeb[37]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 3 -spreadType center -spacing 4.08 -pin {{io_out[0]} {io_out[1]} {io_out[2]} {io_out[3]} {io_out[4]} {io_out[5]} {io_out[6]} {io_out[7]} {io_out[8]} {io_out[9]} {io_out[10]} {io_out[11]} {io_out[12]} {io_out[13]} {io_out[14]} {io_out[15]} {io_out[16]} {io_out[17]} {io_out[18]} {io_out[19]} {io_out[20]} {io_out[21]} {io_out[22]} {io_out[23]} {io_out[24]} {io_out[25]} {io_out[26]} {io_out[27]} {io_out[28]} {io_out[29]} {io_out[30]} {io_out[31]} {io_out[32]} {io_out[33]} {io_out[34]} {io_out[35]} {io_out[36]} {io_out[37]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 3 -spreadType start -spacing 3.74 -start 0.0 0.0 -pin {{la_data_in[0]} {la_data_in[1]} {la_data_in[2]} {la_data_in[3]} {la_data_in[4]} {la_data_in[5]} {la_data_in[6]} {la_data_in[7]} {la_data_in[8]} {la_data_in[9]} {la_data_in[10]} {la_data_in[11]} {la_data_in[12]} {la_data_in[13]} {la_data_in[14]} {la_data_in[15]} {la_data_in[16]} {la_data_in[17]} {la_data_in[18]} {la_data_in[19]} {la_data_in[20]} {la_data_in[21]} {la_data_in[22]} {la_data_in[23]} {la_data_in[24]} {la_data_in[25]} {la_data_in[26]} {la_data_in[27]} {la_data_in[28]} {la_data_in[29]} {la_data_in[30]} {la_data_in[31]} {la_data_in[32]} {la_data_in[33]} {la_data_in[34]} {la_data_in[35]} {la_data_in[36]} {la_data_in[37]} {la_data_in[38]} {la_data_in[39]} {la_data_in[40]} {la_data_in[41]} {la_data_in[42]} {la_data_in[43]} {la_data_in[44]} {la_data_in[45]} {la_data_in[46]} {la_data_in[47]} {la_data_in[48]} {la_data_in[49]} {la_data_in[50]} {la_data_in[51]} {la_data_in[52]} {la_data_in[53]} {la_data_in[54]} {la_data_in[55]} {la_data_in[56]} {la_data_in[57]} {la_data_in[58]} {la_data_in[59]} {la_data_in[60]} {la_data_in[61]} {la_data_in[62]} {la_data_in[63]} {la_data_in[64]} {la_data_in[65]} {la_data_in[66]} {la_data_in[67]} {la_data_in[68]} {la_data_in[69]} {la_data_in[70]} {la_data_in[71]} {la_data_in[72]} {la_data_in[73]} {la_data_in[74]} {la_data_in[75]} {la_data_in[76]} {la_data_in[77]} {la_data_in[78]} {la_data_in[79]} {la_data_in[80]} {la_data_in[81]} {la_data_in[82]} {la_data_in[83]} {la_data_in[84]} {la_data_in[85]} {la_data_in[86]} {la_data_in[87]} {la_data_in[88]} {la_data_in[89]} {la_data_in[90]} {la_data_in[91]} {la_data_in[92]} {la_data_in[93]} {la_data_in[94]} {la_data_in[95]} {la_data_in[96]} {la_data_in[97]} {la_data_in[98]} {la_data_in[99]} {la_data_in[100]} {la_data_in[101]} {la_data_in[102]} {la_data_in[103]} {la_data_in[104]} {la_data_in[105]} {la_data_in[106]} {la_data_in[107]} {la_data_in[108]} {la_data_in[109]} {la_data_in[110]} {la_data_in[111]} {la_data_in[112]} {la_data_in[113]} {la_data_in[114]} {la_data_in[115]} {la_data_in[116]} {la_data_in[117]} {la_data_in[118]} {la_data_in[119]} {la_data_in[120]} {la_data_in[121]} {la_data_in[122]} {la_data_in[123]} {la_data_in[124]} {la_data_in[125]} {la_data_in[126]} {la_data_in[127]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 1 -spreadType start -spacing 1 -start 0.0 0.0 -pin {{la_data_in[0]} {la_data_in[1]} {la_data_in[2]} {la_data_in[3]} {la_data_in[4]} {la_data_in[5]} {la_data_in[6]} {la_data_in[7]} {la_data_in[8]} {la_data_in[9]} {la_data_in[10]} {la_data_in[11]} {la_data_in[12]} {la_data_in[13]} {la_data_in[14]} {la_data_in[15]} {la_data_in[16]} {la_data_in[17]} {la_data_in[18]} {la_data_in[19]} {la_data_in[20]} {la_data_in[21]} {la_data_in[22]} {la_data_in[23]} {la_data_in[24]} {la_data_in[25]} {la_data_in[26]} {la_data_in[27]} {la_data_in[28]} {la_data_in[29]} {la_data_in[30]} {la_data_in[31]} {la_data_in[32]} {la_data_in[33]} {la_data_in[34]} {la_data_in[35]} {la_data_in[36]} {la_data_in[37]} {la_data_in[38]} {la_data_in[39]} {la_data_in[40]} {la_data_in[41]} {la_data_in[42]} {la_data_in[43]} {la_data_in[44]} {la_data_in[45]} {la_data_in[46]} {la_data_in[47]} {la_data_in[48]} {la_data_in[49]} {la_data_in[50]} {la_data_in[51]} {la_data_in[52]} {la_data_in[53]} {la_data_in[54]} {la_data_in[55]} {la_data_in[56]} {la_data_in[57]} {la_data_in[58]} {la_data_in[59]} {la_data_in[60]} {la_data_in[61]} {la_data_in[62]} {la_data_in[63]} {la_data_in[64]} {la_data_in[65]} {la_data_in[66]} {la_data_in[67]} {la_data_in[68]} {la_data_in[69]} {la_data_in[70]} {la_data_in[71]} {la_data_in[72]} {la_data_in[73]} {la_data_in[74]} {la_data_in[75]} {la_data_in[76]} {la_data_in[77]} {la_data_in[78]} {la_data_in[79]} {la_data_in[80]} {la_data_in[81]} {la_data_in[82]} {la_data_in[83]} {la_data_in[84]} {la_data_in[85]} {la_data_in[86]} {la_data_in[87]} {la_data_in[88]} {la_data_in[89]} {la_data_in[90]} {la_data_in[91]} {la_data_in[92]} {la_data_in[93]} {la_data_in[94]} {la_data_in[95]} {la_data_in[96]} {la_data_in[97]} {la_data_in[98]} {la_data_in[99]} {la_data_in[100]} {la_data_in[101]} {la_data_in[102]} {la_data_in[103]} {la_data_in[104]} {la_data_in[105]} {la_data_in[106]} {la_data_in[107]} {la_data_in[108]} {la_data_in[109]} {la_data_in[110]} {la_data_in[111]} {la_data_in[112]} {la_data_in[113]} {la_data_in[114]} {la_data_in[115]} {la_data_in[116]} {la_data_in[117]} {la_data_in[118]} {la_data_in[119]} {la_data_in[120]} {la_data_in[121]} {la_data_in[122]} {la_data_in[123]} {la_data_in[124]} {la_data_in[125]} {la_data_in[126]} {la_data_in[127]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 1 -spreadType start -spacing 1 -start 0.0 0.0 -pin {{la_data_out[0]} {la_data_out[1]} {la_data_out[2]} {la_data_out[3]} {la_data_out[4]} {la_data_out[5]} {la_data_out[6]} {la_data_out[7]} {la_data_out[8]} {la_data_out[9]} {la_data_out[10]} {la_data_out[11]} {la_data_out[12]} {la_data_out[13]} {la_data_out[14]} {la_data_out[15]} {la_data_out[16]} {la_data_out[17]} {la_data_out[18]} {la_data_out[19]} {la_data_out[20]} {la_data_out[21]} {la_data_out[22]} {la_data_out[23]} {la_data_out[24]} {la_data_out[25]} {la_data_out[26]} {la_data_out[27]} {la_data_out[28]} {la_data_out[29]} {la_data_out[30]} {la_data_out[31]} {la_data_out[32]} {la_data_out[33]} {la_data_out[34]} {la_data_out[35]} {la_data_out[36]} {la_data_out[37]} {la_data_out[38]} {la_data_out[39]} {la_data_out[40]} {la_data_out[41]} {la_data_out[42]} {la_data_out[43]} {la_data_out[44]} {la_data_out[45]} {la_data_out[46]} {la_data_out[47]} {la_data_out[48]} {la_data_out[49]} {la_data_out[50]} {la_data_out[51]} {la_data_out[52]} {la_data_out[53]} {la_data_out[54]} {la_data_out[55]} {la_data_out[56]} {la_data_out[57]} {la_data_out[58]} {la_data_out[59]} {la_data_out[60]} {la_data_out[61]} {la_data_out[62]} {la_data_out[63]} {la_data_out[64]} {la_data_out[65]} {la_data_out[66]} {la_data_out[67]} {la_data_out[68]} {la_data_out[69]} {la_data_out[70]} {la_data_out[71]} {la_data_out[72]} {la_data_out[73]} {la_data_out[74]} {la_data_out[75]} {la_data_out[76]} {la_data_out[77]} {la_data_out[78]} {la_data_out[79]} {la_data_out[80]} {la_data_out[81]} {la_data_out[82]} {la_data_out[83]} {la_data_out[84]} {la_data_out[85]} {la_data_out[86]} {la_data_out[87]} {la_data_out[88]} {la_data_out[89]} {la_data_out[90]} {la_data_out[91]} {la_data_out[92]} {la_data_out[93]} {la_data_out[94]} {la_data_out[95]} {la_data_out[96]} {la_data_out[97]} {la_data_out[98]} {la_data_out[99]} {la_data_out[100]} {la_data_out[101]} {la_data_out[102]} {la_data_out[103]} {la_data_out[104]} {la_data_out[105]} {la_data_out[106]} {la_data_out[107]} {la_data_out[108]} {la_data_out[109]} {la_data_out[110]} {la_data_out[111]} {la_data_out[112]} {la_data_out[113]} {la_data_out[114]} {la_data_out[115]} {la_data_out[116]} {la_data_out[117]} {la_data_out[118]} {la_data_out[119]} {la_data_out[120]} {la_data_out[121]} {la_data_out[122]} {la_data_out[123]} {la_data_out[124]} {la_data_out[125]} {la_data_out[126]} {la_data_out[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.17 -pinDepth 0.17 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType start -spacing 1.02 -start 819.74 819.57 -pin {{la_data_out[0]} {la_data_out[1]} {la_data_out[2]} {la_data_out[3]} {la_data_out[4]} {la_data_out[5]} {la_data_out[6]} {la_data_out[7]} {la_data_out[8]} {la_data_out[9]} {la_data_out[10]} {la_data_out[11]} {la_data_out[12]} {la_data_out[13]} {la_data_out[14]} {la_data_out[15]} {la_data_out[16]} {la_data_out[17]} {la_data_out[18]} {la_data_out[19]} {la_data_out[20]} {la_data_out[21]} {la_data_out[22]} {la_data_out[23]} {la_data_out[24]} {la_data_out[25]} {la_data_out[26]} {la_data_out[27]} {la_data_out[28]} {la_data_out[29]} {la_data_out[30]} {la_data_out[31]} {la_data_out[32]} {la_data_out[33]} {la_data_out[34]} {la_data_out[35]} {la_data_out[36]} {la_data_out[37]} {la_data_out[38]} {la_data_out[39]} {la_data_out[40]} {la_data_out[41]} {la_data_out[42]} {la_data_out[43]} {la_data_out[44]} {la_data_out[45]} {la_data_out[46]} {la_data_out[47]} {la_data_out[48]} {la_data_out[49]} {la_data_out[50]} {la_data_out[51]} {la_data_out[52]} {la_data_out[53]} {la_data_out[54]} {la_data_out[55]} {la_data_out[56]} {la_data_out[57]} {la_data_out[58]} {la_data_out[59]} {la_data_out[60]} {la_data_out[61]} {la_data_out[62]} {la_data_out[63]} {la_data_out[64]} {la_data_out[65]} {la_data_out[66]} {la_data_out[67]} {la_data_out[68]} {la_data_out[69]} {la_data_out[70]} {la_data_out[71]} {la_data_out[72]} {la_data_out[73]} {la_data_out[74]} {la_data_out[75]} {la_data_out[76]} {la_data_out[77]} {la_data_out[78]} {la_data_out[79]} {la_data_out[80]} {la_data_out[81]} {la_data_out[82]} {la_data_out[83]} {la_data_out[84]} {la_data_out[85]} {la_data_out[86]} {la_data_out[87]} {la_data_out[88]} {la_data_out[89]} {la_data_out[90]} {la_data_out[91]} {la_data_out[92]} {la_data_out[93]} {la_data_out[94]} {la_data_out[95]} {la_data_out[96]} {la_data_out[97]} {la_data_out[98]} {la_data_out[99]} {la_data_out[100]} {la_data_out[101]} {la_data_out[102]} {la_data_out[103]} {la_data_out[104]} {la_data_out[105]} {la_data_out[106]} {la_data_out[107]} {la_data_out[108]} {la_data_out[109]} {la_data_out[110]} {la_data_out[111]} {la_data_out[112]} {la_data_out[113]} {la_data_out[114]} {la_data_out[115]} {la_data_out[116]} {la_data_out[117]} {la_data_out[118]} {la_data_out[119]} {la_data_out[120]} {la_data_out[121]} {la_data_out[122]} {la_data_out[123]} {la_data_out[124]} {la_data_out[125]} {la_data_out[126]} {la_data_out[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.17 -pinDepth 0.17 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType start -spacing 1.02 -start 0.0 0.17 -pin {{la_data_in[0]} {la_data_in[1]} {la_data_in[2]} {la_data_in[3]} {la_data_in[4]} {la_data_in[5]} {la_data_in[6]} {la_data_in[7]} {la_data_in[8]} {la_data_in[9]} {la_data_in[10]} {la_data_in[11]} {la_data_in[12]} {la_data_in[13]} {la_data_in[14]} {la_data_in[15]} {la_data_in[16]} {la_data_in[17]} {la_data_in[18]} {la_data_in[19]} {la_data_in[20]} {la_data_in[21]} {la_data_in[22]} {la_data_in[23]} {la_data_in[24]} {la_data_in[25]} {la_data_in[26]} {la_data_in[27]} {la_data_in[28]} {la_data_in[29]} {la_data_in[30]} {la_data_in[31]} {la_data_in[32]} {la_data_in[33]} {la_data_in[34]} {la_data_in[35]} {la_data_in[36]} {la_data_in[37]} {la_data_in[38]} {la_data_in[39]} {la_data_in[40]} {la_data_in[41]} {la_data_in[42]} {la_data_in[43]} {la_data_in[44]} {la_data_in[45]} {la_data_in[46]} {la_data_in[47]} {la_data_in[48]} {la_data_in[49]} {la_data_in[50]} {la_data_in[51]} {la_data_in[52]} {la_data_in[53]} {la_data_in[54]} {la_data_in[55]} {la_data_in[56]} {la_data_in[57]} {la_data_in[58]} {la_data_in[59]} {la_data_in[60]} {la_data_in[61]} {la_data_in[62]} {la_data_in[63]} {la_data_in[64]} {la_data_in[65]} {la_data_in[66]} {la_data_in[67]} {la_data_in[68]} {la_data_in[69]} {la_data_in[70]} {la_data_in[71]} {la_data_in[72]} {la_data_in[73]} {la_data_in[74]} {la_data_in[75]} {la_data_in[76]} {la_data_in[77]} {la_data_in[78]} {la_data_in[79]} {la_data_in[80]} {la_data_in[81]} {la_data_in[82]} {la_data_in[83]} {la_data_in[84]} {la_data_in[85]} {la_data_in[86]} {la_data_in[87]} {la_data_in[88]} {la_data_in[89]} {la_data_in[90]} {la_data_in[91]} {la_data_in[92]} {la_data_in[93]} {la_data_in[94]} {la_data_in[95]} {la_data_in[96]} {la_data_in[97]} {la_data_in[98]} {la_data_in[99]} {la_data_in[100]} {la_data_in[101]} {la_data_in[102]} {la_data_in[103]} {la_data_in[104]} {la_data_in[105]} {la_data_in[106]} {la_data_in[107]} {la_data_in[108]} {la_data_in[109]} {la_data_in[110]} {la_data_in[111]} {la_data_in[112]} {la_data_in[113]} {la_data_in[114]} {la_data_in[115]} {la_data_in[116]} {la_data_in[117]} {la_data_in[118]} {la_data_in[119]} {la_data_in[120]} {la_data_in[121]} {la_data_in[122]} {la_data_in[123]} {la_data_in[124]} {la_data_in[125]} {la_data_in[126]} {la_data_in[127]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType center -spacing -1.02 -pin {{la_oenb[0]} {la_oenb[1]} {la_oenb[2]} {la_oenb[3]} {la_oenb[4]} {la_oenb[5]} {la_oenb[6]} {la_oenb[7]} {la_oenb[8]} {la_oenb[9]} {la_oenb[10]} {la_oenb[11]} {la_oenb[12]} {la_oenb[13]} {la_oenb[14]} {la_oenb[15]} {la_oenb[16]} {la_oenb[17]} {la_oenb[18]} {la_oenb[19]} {la_oenb[20]} {la_oenb[21]} {la_oenb[22]} {la_oenb[23]} {la_oenb[24]} {la_oenb[25]} {la_oenb[26]} {la_oenb[27]} {la_oenb[28]} {la_oenb[29]} {la_oenb[30]} {la_oenb[31]} {la_oenb[32]} {la_oenb[33]} {la_oenb[34]} {la_oenb[35]} {la_oenb[36]} {la_oenb[37]} {la_oenb[38]} {la_oenb[39]} {la_oenb[40]} {la_oenb[41]} {la_oenb[42]} {la_oenb[43]} {la_oenb[44]} {la_oenb[45]} {la_oenb[46]} {la_oenb[47]} {la_oenb[48]} {la_oenb[49]} {la_oenb[50]} {la_oenb[51]} {la_oenb[52]} {la_oenb[53]} {la_oenb[54]} {la_oenb[55]} {la_oenb[56]} {la_oenb[57]} {la_oenb[58]} {la_oenb[59]} {la_oenb[60]} {la_oenb[61]} {la_oenb[62]} {la_oenb[63]} {la_oenb[64]} {la_oenb[65]} {la_oenb[66]} {la_oenb[67]} {la_oenb[68]} {la_oenb[69]} {la_oenb[70]} {la_oenb[71]} {la_oenb[72]} {la_oenb[73]} {la_oenb[74]} {la_oenb[75]} {la_oenb[76]} {la_oenb[77]} {la_oenb[78]} {la_oenb[79]} {la_oenb[80]} {la_oenb[81]} {la_oenb[82]} {la_oenb[83]} {la_oenb[84]} {la_oenb[85]} {la_oenb[86]} {la_oenb[87]} {la_oenb[88]} {la_oenb[89]} {la_oenb[90]} {la_oenb[91]} {la_oenb[92]} {la_oenb[93]} {la_oenb[94]} {la_oenb[95]} {la_oenb[96]} {la_oenb[97]} {la_oenb[98]} {la_oenb[99]} {la_oenb[100]} {la_oenb[101]} {la_oenb[102]} {la_oenb[103]} {la_oenb[104]} {la_oenb[105]} {la_oenb[106]} {la_oenb[107]} {la_oenb[108]} {la_oenb[109]} {la_oenb[110]} {la_oenb[111]} {la_oenb[112]} {la_oenb[113]} {la_oenb[114]} {la_oenb[115]} {la_oenb[116]} {la_oenb[117]} {la_oenb[118]} {la_oenb[119]} {la_oenb[120]} {la_oenb[121]} {la_oenb[122]} {la_oenb[123]} {la_oenb[124]} {la_oenb[125]} {la_oenb[126]} {la_oenb[127]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -side Left -layer 3 -spreadType side -pin {{la_oenb[0]} {la_oenb[1]} {la_oenb[2]} {la_oenb[3]} {la_oenb[4]} {la_oenb[5]} {la_oenb[6]} {la_oenb[7]} {la_oenb[8]} {la_oenb[9]} {la_oenb[10]} {la_oenb[11]} {la_oenb[12]} {la_oenb[13]} {la_oenb[14]} {la_oenb[15]} {la_oenb[16]} {la_oenb[17]} {la_oenb[18]} {la_oenb[19]} {la_oenb[20]} {la_oenb[21]} {la_oenb[22]} {la_oenb[23]} {la_oenb[24]} {la_oenb[25]} {la_oenb[26]} {la_oenb[27]} {la_oenb[28]} {la_oenb[29]} {la_oenb[30]} {la_oenb[31]} {la_oenb[32]} {la_oenb[33]} {la_oenb[34]} {la_oenb[35]} {la_oenb[36]} {la_oenb[37]} {la_oenb[38]} {la_oenb[39]} {la_oenb[40]} {la_oenb[41]} {la_oenb[42]} {la_oenb[43]} {la_oenb[44]} {la_oenb[45]} {la_oenb[46]} {la_oenb[47]} {la_oenb[48]} {la_oenb[49]} {la_oenb[50]} {la_oenb[51]} {la_oenb[52]} {la_oenb[53]} {la_oenb[54]} {la_oenb[55]} {la_oenb[56]} {la_oenb[57]} {la_oenb[58]} {la_oenb[59]} {la_oenb[60]} {la_oenb[61]} {la_oenb[62]} {la_oenb[63]} {la_oenb[64]} {la_oenb[65]} {la_oenb[66]} {la_oenb[67]} {la_oenb[68]} {la_oenb[69]} {la_oenb[70]} {la_oenb[71]} {la_oenb[72]} {la_oenb[73]} {la_oenb[74]} {la_oenb[75]} {la_oenb[76]} {la_oenb[77]} {la_oenb[78]} {la_oenb[79]} {la_oenb[80]} {la_oenb[81]} {la_oenb[82]} {la_oenb[83]} {la_oenb[84]} {la_oenb[85]} {la_oenb[86]} {la_oenb[87]} {la_oenb[88]} {la_oenb[89]} {la_oenb[90]} {la_oenb[91]} {la_oenb[92]} {la_oenb[93]} {la_oenb[94]} {la_oenb[95]} {la_oenb[96]} {la_oenb[97]} {la_oenb[98]} {la_oenb[99]} {la_oenb[100]} {la_oenb[101]} {la_oenb[102]} {la_oenb[103]} {la_oenb[104]} {la_oenb[105]} {la_oenb[106]} {la_oenb[107]} {la_oenb[108]} {la_oenb[109]} {la_oenb[110]} {la_oenb[111]} {la_oenb[112]} {la_oenb[113]} {la_oenb[114]} {la_oenb[115]} {la_oenb[116]} {la_oenb[117]} {la_oenb[118]} {la_oenb[119]} {la_oenb[120]} {la_oenb[121]} {la_oenb[122]} {la_oenb[123]} {la_oenb[124]} {la_oenb[125]} {la_oenb[126]} {la_oenb[127]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType start -spacing 34 -start 0.0 0.0 -pin user_clock2
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType start -spacing 40 -start 0.0 0.0 -pin {{user_irq[0]} {user_irq[1]} {user_irq[2]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 3 -spreadType start -spacing 10 -start 0.0 0.0 -pin vccd1
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType start -spacing 100 -start 0.0 0.0 -pin vccd1
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType start -spacing 110 -start 0.0 0.0 -pin vccd2
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType start -spacing 120 -start 0.0 0.0 -pin vdda1
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType start -spacing 130 -start 0.0 0.0 -pin vdda2
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType start -spacing 140 -start 0.0 0.0 -pin vssa1
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType start -spacing 150 -start 0.0 0.0 -pin vssa2
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType start -spacing 160 -start 0.0 0.0 -pin vssd1
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType start -spacing 170 -start 0.0 0.0 -pin vssd2
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType start -spacing 200 -start 0.0 0.0 -pin wb_clk_i
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType start -spacing 205 -start 0.0 0.0 -pin wb_rst_i
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType start -spacing 210 -start 0.0 0.0 -pin wbs_ack_o
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType start -spacing 215 -start 0.0 0.0 -pin {{wbs_adr_i[0]} {wbs_adr_i[1]} {wbs_adr_i[2]} {wbs_adr_i[3]} {wbs_adr_i[4]} {wbs_adr_i[5]} {wbs_adr_i[6]} {wbs_adr_i[7]} {wbs_adr_i[8]} {wbs_adr_i[9]} {wbs_adr_i[10]} {wbs_adr_i[11]} {wbs_adr_i[12]} {wbs_adr_i[13]} {wbs_adr_i[14]} {wbs_adr_i[15]} {wbs_adr_i[16]} {wbs_adr_i[17]} {wbs_adr_i[18]} {wbs_adr_i[19]} {wbs_adr_i[20]} {wbs_adr_i[21]} {wbs_adr_i[22]} {wbs_adr_i[23]} {wbs_adr_i[24]} {wbs_adr_i[25]} {wbs_adr_i[26]} {wbs_adr_i[27]} {wbs_adr_i[28]} {wbs_adr_i[29]} {wbs_adr_i[30]} {wbs_adr_i[31]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -side Right -layer 3 -spreadType side -pin {{wbs_adr_i[0]} {wbs_adr_i[1]} {wbs_adr_i[2]} {wbs_adr_i[3]} {wbs_adr_i[4]} {wbs_adr_i[5]} {wbs_adr_i[6]} {wbs_adr_i[7]} {wbs_adr_i[8]} {wbs_adr_i[9]} {wbs_adr_i[10]} {wbs_adr_i[11]} {wbs_adr_i[12]} {wbs_adr_i[13]} {wbs_adr_i[14]} {wbs_adr_i[15]} {wbs_adr_i[16]} {wbs_adr_i[17]} {wbs_adr_i[18]} {wbs_adr_i[19]} {wbs_adr_i[20]} {wbs_adr_i[21]} {wbs_adr_i[22]} {wbs_adr_i[23]} {wbs_adr_i[24]} {wbs_adr_i[25]} {wbs_adr_i[26]} {wbs_adr_i[27]} {wbs_adr_i[28]} {wbs_adr_i[29]} {wbs_adr_i[30]} {wbs_adr_i[31]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType start -spacing 230 -offsetStart 50 -pin wbs_cyc_i
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell user_project_wrapper -pin wbs_cyc_i -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType center -spacing 50 -pin wbs_cyc_i
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -side Right -layer 3 -spreadType side -pin {{wbs_dat_i[0]} {wbs_dat_i[1]} {wbs_dat_i[2]} {wbs_dat_i[3]} {wbs_dat_i[4]} {wbs_dat_i[5]} {wbs_dat_i[6]} {wbs_dat_i[7]} {wbs_dat_i[8]} {wbs_dat_i[9]} {wbs_dat_i[10]} {wbs_dat_i[11]} {wbs_dat_i[12]} {wbs_dat_i[13]} {wbs_dat_i[14]} {wbs_dat_i[15]} {wbs_dat_i[16]} {wbs_dat_i[17]} {wbs_dat_i[18]} {wbs_dat_i[19]} {wbs_dat_i[20]} {wbs_dat_i[21]} {wbs_dat_i[22]} {wbs_dat_i[23]} {wbs_dat_i[24]} {wbs_dat_i[25]} {wbs_dat_i[26]} {wbs_dat_i[27]} {wbs_dat_i[28]} {wbs_dat_i[29]} {wbs_dat_i[30]} {wbs_dat_i[31]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -side Right -layer 3 -spreadType side -pin {{wbs_dat_o[0]} {wbs_dat_o[1]} {wbs_dat_o[2]} {wbs_dat_o[3]} {wbs_dat_o[4]} {wbs_dat_o[5]} {wbs_dat_o[6]} {wbs_dat_o[7]} {wbs_dat_o[8]} {wbs_dat_o[9]} {wbs_dat_o[10]} {wbs_dat_o[11]} {wbs_dat_o[12]} {wbs_dat_o[13]} {wbs_dat_o[14]} {wbs_dat_o[15]} {wbs_dat_o[16]} {wbs_dat_o[17]} {wbs_dat_o[18]} {wbs_dat_o[19]} {wbs_dat_o[20]} {wbs_dat_o[21]} {wbs_dat_o[22]} {wbs_dat_o[23]} {wbs_dat_o[24]} {wbs_dat_o[25]} {wbs_dat_o[26]} {wbs_dat_o[27]} {wbs_dat_o[28]} {wbs_dat_o[29]} {wbs_dat_o[30]} {wbs_dat_o[31]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -side Right -layer 3 -spreadType side -pin {{wbs_sel_i[0]} {wbs_sel_i[1]} {wbs_sel_i[2]} {wbs_sel_i[3]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType center -spacing 300 -pin wbs_stb_i
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType center -spacing 0.34 -pin wbs_we_i
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.17 -pinDepth 0.17 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType center -spacing 4.42 -pin {{analog_io[0]} {analog_io[1]} {analog_io[2]} {analog_io[3]} {analog_io[4]} {analog_io[5]} {analog_io[6]} {analog_io[7]} {analog_io[8]} {analog_io[9]} {analog_io[10]} {analog_io[11]} {analog_io[12]} {analog_io[13]} {analog_io[14]} {analog_io[15]} {analog_io[16]} {analog_io[17]} {analog_io[18]} {analog_io[19]} {analog_io[20]} {analog_io[21]} {analog_io[22]} {analog_io[23]} {analog_io[24]} {analog_io[25]} {analog_io[26]} {analog_io[27]} {analog_io[28]}}
setPinAssignMode -pinEditInBatch false
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {scs130ms_dlymetal6s6s_1 scs130ms_dlymetal6s4s_1 scs130ms_dlymetal6s2s_1 scs130ms_dlygate4sd3_1 scs130ms_dlygate4sd2_1 scs130ms_dlygate4sd1_1 scs130ms_clkbuf_8 scs130ms_clkbuf_4 scs130ms_clkbuf_2 scs130ms_clkbuf_16 scs130ms_clkbuf_1 scs130ms_bufbuf_8 scs130ms_bufbuf_16 scs130ms_buf_8 scs130ms_buf_4 scs130ms_buf_2 scs130ms_buf_16 scs130ms_buf_1 scs130ms_inv_8 scs130ms_inv_4 scs130ms_inv_2 scs130ms_inv_16 scs130ms_inv_1 scs130ms_clkinv_8 scs130ms_clkinv_4 scs130ms_clkinv_2 scs130ms_clkinv_16 scs130ms_clkinv_1 scs130ms_clkdlyinv5sd3_1 scs130ms_clkdlyinv5sd2_1 scs130ms_clkdlyinv5sd1_1 scs130ms_clkdlyinv3sd3_1 scs130ms_clkdlyinv3sd2_1 scs130ms_clkdlyinv3sd1_1 scs130ms_bufinv_8 scs130ms_bufinv_16} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort medium -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 0 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
place_opt_design
ccopt_design
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {scs130ms_dlymetal6s6s_1 scs130ms_dlymetal6s4s_1 scs130ms_dlymetal6s2s_1 scs130ms_dlygate4sd3_1 scs130ms_dlygate4sd2_1 scs130ms_dlygate4sd1_1 scs130ms_clkbuf_8 scs130ms_clkbuf_4 scs130ms_clkbuf_2 scs130ms_clkbuf_16 scs130ms_clkbuf_1 scs130ms_bufbuf_8 scs130ms_bufbuf_16 scs130ms_buf_8 scs130ms_buf_4 scs130ms_buf_2 scs130ms_buf_16 scs130ms_buf_1 scs130ms_inv_8 scs130ms_inv_4 scs130ms_inv_2 scs130ms_inv_16 scs130ms_inv_1 scs130ms_clkinv_8 scs130ms_clkinv_4 scs130ms_clkinv_2 scs130ms_clkinv_16 scs130ms_clkinv_1 scs130ms_clkdlyinv5sd3_1 scs130ms_clkdlyinv5sd2_1 scs130ms_clkdlyinv5sd1_1 scs130ms_clkdlyinv3sd3_1 scs130ms_clkdlyinv3sd2_1 scs130ms_clkdlyinv3sd1_1 scs130ms_bufinv_8 scs130ms_bufinv_16} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort medium -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 0 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
place_opt_design
ccopt_design
addFiller -cell scs130ms_fill_1 scs130ms_fill_8 scs130ms_fill_4 scs130ms_fill_2 -prefix FILLER -fitGap
selectWire 156.7600 258.7600 228.4600 259.0600 4 FE_OFN221_la_data_in_118
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
selectWire 9.8600 42.9150 1209.3800 43.4050 2 vpwr
fit
deselectAll
selectWire 9.8600 359.2650 1209.3800 359.7550 2 vgnd
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getFillerMode -quiet
streamOut out/tdc_dg.gds -mapFile sky130_lef_pin.map -libName DesignLib -stripes 1 -units 1000 -mode ALL
verify_connectivity
saveNetlist -excludeLeafCell -phys -includePowerGround -excludeCellInst {scs130ms_tapvpwrvgnd_1 scs130ms_fill_2  scs130ms_fill_4  scs130ms_fill_8  scs130ms_fill_1 } out/pd_net.v
addFiller -cell scs130ms_fill_1 scs130ms_fill_8 scs130ms_fill_4 scs130ms_fill_2 -prefix FILLER -fitGap
selectWire 156.7600 258.7600 228.4600 259.0600 4 FE_OFN221_la_data_in_118
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
selectWire 9.8600 42.9150 1209.3800 43.4050 2 vpwr
fit
deselectAll
selectWire 9.8600 359.2650 1209.3800 359.7550 2 vgnd
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getFillerMode -quiet
streamOut out/tdc_dg.gds -mapFile sky130_lef_pin.map -libName DesignLib -stripes 1 -units 1000 -mode ALL
verify_connectivity
saveNetlist -excludeLeafCell -phys -includePowerGround -excludeCellInst {scs130ms_tapvpwrvgnd_1 scs130ms_fill_2  scs130ms_fill_4  scs130ms_fill_8  scs130ms_fill_1 } out/pd_net.v
streamOut out/out -mapFile streamOut.map -libName DesignLib -units 1000 -mode ALL
streamOut out/out -mapFile streamOut.map -libName DesignLib -units 1000 -mode ALL
selectInst FILLER_impl0_47235
deselectAll
streamOut out/gdsfile.gds -mapFile streamOut.map -libName DesignLib -units 1000 -mode ALL
streamOut out/gdsfile.gds -mapFile streamOut.map -libName DesignLib -units 1000 -mode ALL
streamOut out/tdc_dg.gds -mapFile sky130_lef_pin.map -libName DesignLib -stripes 1 -units 1000 -mode ALL
verify_connectivity
saveNetlist -excludeLeafCell -phys -includePowerGround -excludeCellInst {scs130ms_tapvpwrvgnd_1 scs130ms_fill_2  scs130ms_fill_4  scs130ms_fill_8  scs130ms_fill_1 } out/pd_net.v
