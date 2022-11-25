open(DATA, ">nan15_exu.tcl") or die "nan15_exu.tcl 文件无法打开, $!";

print DATA "set_global _enable_mmmc_by_default_flow      \$CTE::mmmc_default 
suppressMessage ENCEXT-2799 
getVersion 
getMultiCpuUsage -localCpu 
getMultiCpuUsage -remoteHost 
getMultiCpuUsage -cpuPerRemoteHost 
setMultiCpuUsage -localcpu 2 
set allowMultiplePortPinWithoutMustjoin 1 
setMultiCpuUsage -localCpu 16 
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
set init_verilog /home/shi/op_from_black/nan15_exu.vSyn 
set init_design_netlisttype Verilog 
set init_design_settop 1 
set init_top_cell exu \n" ;



open(DATA2, ">nan15_exu_mmode.tcl") or die "nan15_exu_mmode.tcl 文件无法打开, $!";

print DATA2 "create_library_set -name default_library_set -timing /home/shi/Tmp/NanGate_15nm_OCL_v0.1_2014_06_Apache.A/front_end/timing_power_noise/CCS/NanGate_15nm_OCL_typical_conditional_ccs.lib
create_rc_corner -name _default_rc_corner_ -T 25.0
create_delay_corner -name _default_delay_corner_ -library_set default_library_set -opcond typical  -opcond_library NanGate_15nm_OCL -rc_corner _default_rc_corner_

create_constraint_mode -name _default_constraint_mode_ -sdc_files {/home/shi/op_from_black/nan15_exu.sdc}

create_analysis_view -name _default_view_  -constraint_mode _default_constraint_mode_ -delay_corner _default_delay_corner_
 
 
set_analysis_view -setup _default_view_  -hold _default_view_
 ";

close(DATA2);

print DATA "set init_mmmc_file ./nan15_exu_mmode.tcl
set lef_1x \"/home/shi/newlef/NanGate_15nm_OCL.tech.lef /home/shi/newlef/NanGate_15nm_OCL.macro.lef\"
set lef_4x \"/home/shi/newlef/NanGate_15nm_OCL.tech_4x.lef /home/shi/Tmp/NanGate_15nm_OCL_v0.1_2014_06_Apache.A/back_end/lef/ocl15_4x_macro.lef\" \n ";


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
um::read_metric -id current /home/shi/cadence/GENUS_ocl15/genus2invs__28214exu/genus2invs.metrics.json

set_global timing_apply_default_primary_input_assertion false
set_global timing_clock_phase_propagation both
setAnalysisMode -asyncChecks async
setExtractRCMode -layerIndependent 1
setPlaceMode -reorderScan false
setPlaceMode -place_global_ignore_scan true
setExtractRCMode -engine preRoute
set edi_pe::pegConsiderMacroLayersUnblocked 1
set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1
set dbgLefDefOutVersion 5.8
setPlaceMode -placeIoPins true
# setPlaceMode -viaInPin true
setPlaceMode -clkGateAware true
setPlaceMode -reorderScan false
setPlaceMode -ignoreScan false
setPlaceMode -checkPinLayerForAccess {1 2}
setPlaceMode -checkRoute true
 setPlaceMode -maxRouteLayer 8
setOptMode -allEndPoints true
setPlanDesignMode -fixPlacedMacros true
planDesign
getVersion
assignIoPins
fixAllIos
setOptMode -usefulSkewPreCTS true -usefulSkew true
getDesignMode -flowEffort
setDesignMode -flowEffort standard
place_opt_design -phys_syn 

setMultiCpuUsage -localCpu 16 -cpuPerRemoteHost 16 -remoteHost 1 -keepLicense true
if {\$init_lef_file==\$lef_1x} \\
{ \\
    setDesignMode -process 60 \\
} else {setDesignMode -process 15}

setNanoRouteMode -quiet -routeTdrEffort 5
setNanoRouteMode -routeTopRoutingLayer 8 -routeBottomRoutingLayer 3
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -routeWithViaInPin  false 

setNanoRouteMode -quiet -drouteFixAntenna true
setNanoRouteMode -quiet -routeInsertAntennaDiode true
setNanoRouteMode -quiet -routeInsertDiodeForClockNets true


routeDesign

setAnalysisMode -analysisType onChipVariation

optDesign -postRoute \n" ;

close(DATA)
