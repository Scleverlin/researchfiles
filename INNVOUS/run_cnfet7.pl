
$top_module = $ARGV[2];
$lefnumber =  $ARGV[1];
$fre       = $ARGV[3];

open(DATA, ">${top_module}_${lefnumber}x_${fre}.tcl") or die "${top_module}-${lefnumber}x_${fre}.tcl 文件无法打开, $!";

print DATA "set_global _enable_mmmc_by_default_flow      \$CTE::mmmc_default 
suppressMessage ENCEXT-2799 
getVersion 
getMultiCpuUsage -localCpu 
getMultiCpuUsage -remoteHost 
getMultiCpuUsage -cpuPerRemoteHost 
setMultiCpuUsage -localcpu 2 
set allowMultiplePortPinWithoutMustjoin 1 
setMultiCpuUsage -localCpu 16 
setDesignMode -process 28
set ::db::AllowSoftMatching 1  
set ::db::AllowNewLefPorts 1 
set_flowkit_db flow_edit_end_steps {} 
set_flowkit_db flow_edit_start_steps {}  
set_flowkit_db flow_footer_tcl {} 
set_flowkit_db flow_header_tcl {} 
set_flowkit_db flow_metadata {} 
set_flowkit_db flow_setup_config {HUDDLE {!!map {}}} 
set_flowkit_db flow_step_begin_tcl {} 
set_flowkit_db flow_step_check_tcl {} 
set_flowkit_db flow_step_end_tcl {} 
set_flowkit_db flow_step_order {}  
set_flowkit_db flow_summary_tcl {} 
set_flowkit_db flow_template_feature_definition {} 
set_flowkit_db flow_template_type {} 
set_flowkit_db flow_template_version {} 
set_flowkit_db flow_user_templates {} 
set_flowkit_db flow_branch {} 
set_flowkit_db flow_caller_data {} 
set_flowkit_db flow_current {}  
set_flowkit_db flow_hier_path {} 
set_flowkit_db flow_db_directory dbs 
set_flowkit_db flow_exit_when_done false 
set_flowkit_db flow_history {}  
set_flowkit_db flow_log_directory logs 
set_flowkit_db flow_mail_on_error false 
set_flowkit_db flow_mail_to {} 
set_flowkit_db flow_metrics_file {}  
set_flowkit_db flow_metrics_snapshot_parent_uuid {}  
set_flowkit_db flow_metrics_snapshot_uuid 032b578c-8bc8-4e61-8245-03e6cf785506 
set_flowkit_db flow_overwrite_db false 
set_flowkit_db flow_report_directory reports 
set_flowkit_db flow_run_tag {} 
set_flowkit_db flow_schedule {} 
set_flowkit_db flow_script {} 
set_flowkit_db flow_starting_db {} 
set_flowkit_db flow_status_file {} 
set_flowkit_db flow_step_canonical_current {} 
set_flowkit_db flow_step_current {} 
set_flowkit_db flow_step_last {} 
set_flowkit_db flow_step_last_msg {} 
set_flowkit_db flow_step_last_status not_run 
set_flowkit_db flow_step_next {} 
set_flowkit_db flow_working_directory .  
set init_verilog /home/shi/DC_AUTO/cnfet7_for_pr/${top_module}_${fre}.v
set init_design_netlisttype Verilog 
set init_design_settop 1 
set init_top_cell $top_module \n" ;



open(DATA2, ">${top_module}_mmode_${fre}.tcl") or die "${top_module}_mmode_${fre}.tcl 文件无法打开, $!";

print DATA2 "create_library_set -name default_library_set -timing /home/shi/CNFET_lib/CORE_TypTyp_0p4_25_conditional_ccs_7nm_added_area.lib
create_rc_corner -name _default_rc_corner_ -T 25.0
update_rc_corner -name _default_rc_corner_ -qx_tech_file /home/shi/qrc/cnfet7_4x_9.7/qrcTechFile
create_delay_corner -name _default_delay_corner_ -library_set default_library_set -opcond typical  -opcond_library CORE_TypTyp_0p4_25 -rc_corner _default_rc_corner_
create_constraint_mode -name _default_constraint_mode_ -sdc_files {/home/shi/DC_AUTO/cnfet7_for_pr/${top_module}_${fre}.sdc }
create_analysis_view -name _default_view_  -constraint_mode _default_constraint_mode_ -delay_corner _default_delay_corner_
set_analysis_view -setup _default_view_  -hold _default_view_
 ";

close(DATA2);

print DATA "set init_mmmc_file ./${top_module}_mmode_${fre}.tcl
set lef_1x \"/home/shi/newlef/cnfet7_1x_tech_new_update.lef /home/shi/newlef/CNFET_cell.lef\"
set lef_4x \"/home/shi/newlef/cnfet7_4x_tech_new_update.lef /home/shi/newlef/CNFET_4x_cell_2023_4_13.lef\" \n ";


if ($ARGV[1]== '1'){
  print DATA "set init_lef_file \$lef_1x";
}elsif ($ARGV[1]== '4'){
  print DATA "set init_lef_file \$lef_4x";
}else{
  print "no lef input";
}

print DATA "
set fp_core_cntl aspect
set fp_aspect_ratio 1.0000
set extract_shrink_factor 1.0
set init_assign_buffer 0
set init_cpf_file {}
init_design


setMultiCpuUsage -localCpu 16 -cpuPerRemoteHost 16 -remoteHost 1 -keepLicense true
if {\$init_lef_file==\$lef_1x} \\
{ \\
    setDesignMode -process 7 \\
} else {setDesignMode -process 28}

set clk_per    [expr 1000.0 / 0.5 ] 
set tran_time [expr 0.05*\$clk_per]
set skew_time [expr 0.005*\$clk_per]
 setRouteMode -earlyGlobalMinRouteLayer 4
 setRouteMode -earlyGlobalMaxRouteLayer 10
#set_ccopt_property target_skew 5ps
#set_ccopt_property target_max_trans ${tran_time}ps
setMaxRouteLayer 9

setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 0 -moduleAwareSpare 0  -maxRouteLayer 9 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
place_design

setRouteMode -earlyGlobalMinRouteLayer 4 -earlyGlobalMaxRouteLayer 10 -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
earlyGlobalRoute


setNanoRouteMode -quiet -routeTopRoutingLayer 10
setNanoRouteMode -quiet -routeBottomRoutingLayer 3
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -drouteFixAntenna true
setNanoRouteMode -quiet -routeInsertAntennaDiode true
setNanoRouteMode -quiet -routeInsertDiodeForClockNets true
setNanoRouteMode -quiet -routeTdrEffort 10

routeDesign -globalDetail 

create_route_type -name ccopt_route_group -bottom_preferred_layer 4 -top_preferred_layer 9 -preferred_routing_layer_effort high
create_ccopt_clock_tree -name clk -source clk -no_skew_group
set_ccopt_property update_io_latency true
ccopt_design

setRouteMode -earlyGlobalMinRouteLayer 4 -earlyGlobalMaxRouteLayer 10 -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
earlyGlobalRoute

setNanoRouteMode -quiet -routeTopRoutingLayer 10
setNanoRouteMode -quiet -routeBottomRoutingLayer 3
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -drouteFixAntenna true
setNanoRouteMode -quiet -routeInsertAntennaDiode true
setNanoRouteMode -quiet -routeInsertDiodeForClockNets true
setNanoRouteMode -quiet -routeTdrEffort 10

routeDesign -globalDetail 


setAnalysisMode -analysisType onChipVariation
optDesign -postRoute
 \n" ;


open(DATA3, ">report_${top_module}_${lefnumber}x_${fre}.tcl") or die "report_${top_module}_${lefnumber}x_${fre}.tcl 文件无法打开, $!";

print DATA3 "
set_interactive_constraint_modes [all_constraint_modes -active]
set_propagated_clock [all_clocks]
report_timing -net
report_power
saveNetlist ./netlist/${top_module}_${lefnumber}x_${fre}.v 
defOut -allLayers -floorplan -netlist -routing -scanChain -usedVia ./def/${top_module}_${lefnumber}x_${fre}.def
exit" ;

close(DATA3);

print DATA "source report_${top_module}_${lefnumber}x_${fre}.tcl";

close(DATA);

open (DATA4, ">>/home/shi/adder_pr/cnfet7/def/_unit_change.sh") or die "_unit_change.sh文件无法打开, $!";

print DATA4 "
python3  /home/shi/adder_pr/cnfet7/def/_unit_.py    /home/shi/adder_pr/cnfet7/def/${top_module}_${lefnumber}x_${fre}.def 
";
close (DATA4);

open (DATA5, ">>./run_innovus.sh ") or die "/run_innovus.sh 文件无法打开, $!";
print DATA5 "
innovus -files ./${top_module}_${lefnumber}x_${fre}.tcl
";
close (DATA5);
