exu_lef1x:				
	perl ./nan15.pl -w 1 exu
	innovus -files /home/shi/newtest/nan15/nan15_exu_1x.tcl		
exu_lef4x:
	perl ./nan15.pl  -w 4 exu
	innovus -files /home/shi/newtest/nan15/nan15_exu_4x.tcl
clean:
	rm -f *cmd* *.log*
	rm -rf .timing_file_*
	rm -f *.tcl
	rm -r mp_data* 
	
	