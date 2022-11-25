lef1x:				
	perl ./nan15.pl  -w 1
	innovus -files /home/shi/newtest/nan15/nan15_exu.tcl		
lef4x:
	perl ./nan15.pl  -w 4
	innovus -files /home/shi/newtest/nan15/nan15_exu.tcl
clean:
	rm -f *cmd* *.log*
	rm -rf .timing_file_*
	rm -r mp_data* 
	