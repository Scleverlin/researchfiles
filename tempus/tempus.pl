$top_module = $ARGV[2];
$process    = $ARGV[1];
$fre        = $ARGV[3];
open(DATA, ">${top_module}_${process}_${fre}.tcl") or die "${top_module}-${process}_${fre}.tcl 文件无法打开, $!";

print DATA "
set load_netlist_ignore_undefined_cell true
set timing_library_read_without_power false
" ;

if($process eq 'ASAP7'){
  print DATA "set_design_mode -process 7
read_lib    /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_AO_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_INVBUF_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_OA_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_SEQ_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_SIMPLE_SLVT_TT_ccs_201020.lib
set lef_name_NEW4x \"\"
lappend lef_name_NEW4x \"/home/shi/asap7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef  \"
lappend lef_name_NEW4x \"/home/shi/asap7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_SL_1x_220121a.lef\"
read_lib -lef \$lef_name_NEW4x
read_verilog  /home/shi/adder_pr/asap7/netlist/${top_module}_4x_${fre}.v
set_top_module ${top_module}
read_sdc /home/shi/DC_AUTO/asap7_for_pr/${top_module}_${fre}.sdc
read_spef  /home/shi/starrc/ASAP7/adder_spef/${top_module}_${fre}.spef
#read_sdf /home/shi/tempus/pt.sdf
read_def /home/shi/adder_pr/asap7/def/${top_module}_4x_${fre}.def";
}elsif($process eq 'CNFET7'){
  print DATA "set_design_mode -process 7
read_lib    /home/shi/CNFET_lib/CORE_TypTyp_0p4_25_conditional_ccs_7nm_added_area.lib
set lef_name_NEW4x \"\"
lappend lef_name_NEW4x \"/home/shi/newlef/cnfet7_1x_tech_new_update.lef\"
lappend lef_name_NEW4x \"/home/shi/newlef/CNFET7_Cell_calibrated_2023_4_13.lef\"
read_lib -lef \$lef_name_NEW4x
read_verilog  /home/shi/adder_pr/cnfet7/netlist/${top_module}_4x_${fre}.v
set_top_module ${top_module}
read_sdc /home/shi/DC_AUTO/cnfet7_for_pr/${top_module}_${fre}.sdc
read_spef  /home/shi/starrc/CNFET7/adder_spef/${top_module}_${fre}.spef
#read_sdf /home/shi/tempus/pt.sdf
read_def /home/shi/adder_pr/cnfet7/def/${top_module}_4x_${fre}.def";
}elsif($process eq 'CNFET5'){
   print DATA "set_design_mode -process 5
read_lib    /home/shi/CNFET_lib/CORE_TypTyp_0p4_25_conditional_ccs_5nm_added_area.lib
set lef_name_NEW4x \"\"
lappend lef_name_NEW4x \"/home/shi/newlef/cnfet5_1x.8.15.lef\"
lappend lef_name_NEW4x \"/home/shi/newlef/CNFET_cell.lef\"
read_lib -lef \$lef_name_NEW4x
read_verilog  /home/shi/newtest/cnfet5/${top_module}_4x.v
set_top_module ${top_module}
read_sdc /home/shi/tempus/constraint.sdc
read_spef  /home/shi/starrc/${top_module}_${process}.spef
#read_sdf /home/shi/tempus/pt.sdf
read_def /home/shi/newtest/cnfet5/${top_module}.def";
}else{
  print "no library loaded";
}

print DATA "
set_global report_timing_format {instance arc cell load slew delay incr_delay arrival hpin}
set_global timing_case_analysis_for_icg_propagation true
set_global timing_report_unconstrained_paths true
set_global timing_report_group_based_mode true
set_global timing_cppr_threshold_ps 10
set_global report_precision 5
set_delay_cal_mode -siAware true -siMode signoff -engine aae
set constraint_mode \"default_emulate_constraint_mode\"
set_interactive_constraint_modes  \$constraint_mode

set_analysis_mode -analysisType onChipVariation  -cppr both -sequentialConstProp true -timingSelfLoopsNoSkew  true -aocv false

report_timing -net > /home/shi/tempus/${process}/${top_module}_${fre}.timing
report_power  >  /home/shi/tempus/${process}/${top_module}_${fre}.power
report_net -hier   >  /home/shi/tempus/${process}/${top_module}_${fre}.net
reportRoute > /home/shi/tempus/${process}/${top_module}_${fre}.wirelength
report_power -cap >  /home/shi/tempus/${process}/${top_module}_${fre}.power_cap
exit
 ";

close(DATA);

open(DATA2,">>run.sh") or die "run.sh 文件无法打开, $!";
print DATA2 "tempus -files ./${top_module}_${process}_${fre}.tcl \n";

close(DATA2)
