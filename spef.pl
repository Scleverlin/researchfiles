$top_module = $ARGV[2];
$process    = $ARGV[1];

open(DATA, ">${top_module}_${process}.cmd") or die "${top_module}-${process}.cmd 文件无法打开, $!";

print DATA "

* TechReport
BLOCK: $top_module 
HIERARCHICAL_SEPARATOR: /
BUS_BIT: [] \n" ;

if     ($process == 'ASAP7'){
  print DATA "LEF_FILE: /home/shi/asap7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef  /home/shi/asap7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_SL_1x_220121a.lef
TOP_DEF_FILE: /home/shi/newtest/asap7_slvt/$top_module.def
ENHANCED_CCP_FLOW: YES
TCAD_GRD_FILE: /home/shi/nxtgrd/asap7/asap7.nxtgrd
MAPPING_FILE: /home/shi/nxtgrd/asap7/asap7.map";
}elsif ($process == 'CNFET7'){
  print DATA "LEF_FILE: /home/shi/newlef/cnfet7_1x_8.9.lef  /home/shi/newlef/CNFET_cell.lef
TOP_DEF_FILE: /home/shi/newtest/cnfet7/$top_module.def
ENHANCED_CCP_FLOW: YES
TCAD_GRD_FILE: /home/shi/nxtgrd/cnfet7_asap7/9.7/CNFET7_asap7_base.nxtgrd
MAPPING_FILE: /home/shi/nxtgrd/map.file";
}elsif($process == 'CNFET5'){
  print DATA "LEF_FILE: /home/shi/newlef/cnfet5_1x.8.15.lef  /home/shi/newlef/CNFET_cell.lef
TOP_DEF_FILE: /home/shi/newtest/cnfet5/$top_module.def
ENHANCED_CCP_FLOW: YES
TCAD_GRD_FILE: /home/shi/nxtgrd/cnfet5/9.7/CNFET5_asap7_base.nxtgrd
MAPPING_FILE: /home/shi/nxtgrd/map.file";
}else{
  print "no process definition";
}

print DATA "
EXTRACTION: RC
COUPLE_TO_GROUND: NO
OPERATING_TEMPERATURE: 25
XTRACTOR: xTractor
STAR_DIRECTORY: /home/shi/starrc/${process}/opensparct2/${top_module}
NUM_CORES: 16
XTOR_GPD: YES
NETLIST_FILE: ${top_module}_${process}.spef
NETLIST_FORMAT: SPEF ";

close(DATA);

open(DATA2,">>run.txt") or die "run.txt 文件无法打开, $!";
print DATA2 "StarXtract  ./${top_module}_${process}.cmd \n";

close(DATA2)