$top_module = $ARGV[2];
$process    = $ARGV[1];
$fre        = $ARGV[3];
open(DATA, ">genus_${top_module}_${process}_${fre}.tcl") or die "genus_${top_module}-${process}_${fre}.tcl 文件无法打开, $!";

print DATA "
set_attribute max_cpus_per_server 16 /
" ;

if($process eq 'ASAP7'){
  print DATA "
set_attribute lib_search_path  {/home/shi/asap7/asap7sc7p5t_28/LIB/CCS}
set asap7   \"/home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_AO_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_INVBUF_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_OA_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_SEQ_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_SIMPLE_SLVT_TT_ccs_201020.lib\"
set_attribute library  [list  /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_AO_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_INVBUF_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_OA_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_SEQ_SLVT_TT_ccs_201020.lib /home/shi/asap7/asap7sc7p5t_27/LIB/CCS/asap7sc7p5t_SIMPLE_SLVT_TT_ccs_201020.lib]
set_attribute lef_library \"/home/shi/asap7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef /home/shi/asap7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_SL_1x_220121a.lef\"
read_hdl  /home/shi/adder_pr/asap7/netlist/${top_module}_4x_${fre}.v
elaborate ${top_module}
read_def /home/shi/adder_pr/asap7/def/${top_module}_4x_${fre}.def";
}elsif($process eq 'CNFET7'){
  print DATA "set_design_mode -process 7
set_attribute lib_search_path {/home/shi/CNFET_lib/} ;# Search path for library files
set_attribute library [list CORE_TypTyp_0p4_25_conditional_ccs_7nm_added_area.lib] 
set_attribute lef_library \"/home/shi/newlef/cnfet7_1x_tech_new_update.lef /home/shi/newlef/CNFET7_Cell_calibrated_2023_4_13.lef\"
read_hdl  /home/shi/adder_pr/cnfet7/netlist/${top_module}_4x_${fre}.v
elaborate ${top_module}
read_def  /home/shi/adder_pr/cnfet7/def/${top_module}_4x_${fre}.def";
}elsif($process eq 'CNFET5'){
#####
}else{
  print "no library loaded";
}

print DATA "
report_area > /home/shi/tempus/${process}/${top_module}_${fre}.area
exit
 ";

close(DATA);

open(DATA2,">>run_area.sh") or die "run_area.sh 文件无法打开, $!";
print DATA2 "genus -legacy_ui -f ./genus_${top_module}_${process}_${fre}.tcl \n";

close(DATA2)
