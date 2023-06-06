SHELL := /bin/bash
FREQUENCY = 8.0

a:	
	perl ./run.pl -w 4 top_4_64_top      $(FREQUENCY)
	perl ./run.pl -w 4 top_8_64_top	   $(FREQUENCY)
	perl ./run.pl -w 4 top_16_64_top	   $(FREQUENCY)
	perl ./run.pl -w 4 RCA_64bit_top	   $(FREQUENCY)
	perl ./run.pl -w 4 top16block_top  $(FREQUENCY)
	perl ./run.pl -w 4 top8block_top	   $(FREQUENCY)
	perl ./run.pl -w 4 top4block_top	   $(FREQUENCY)
	perl ./run.pl -w 4 BK_adder_64_16bit_top	        $(FREQUENCY)
	perl ./run.pl -w 4 BK_64_with_8_block_top         $(FREQUENCY) 
	perl ./run.pl -w 4 KSA_64_bit   $(FREQUENCY)
	perl ./run.pl -w 4 CLA_shi_top                    $(FREQUENCY)
	perl ./run.pl -w 4 CLA_HAN_SHI_top                $(FREQUENCY)
	perl ./run.pl -w 4 CLA_4_bit_old_top              $(FREQUENCY)
	perl ./run.pl -w 4 CLA_8_bit_old_top              $(FREQUENCY)
	perl ./run.pl -w 4 CLA_16_bit_old_top             $(FREQUENCY)
	perl ./run.pl -w 4 CLA_HAN_32bit_block_64bit_top $(FREQUENCY)
	perl ./run.pl -w 4 CLA_HAN_shi_8_top               $(FREQUENCY)

run:
	source ./run_innovus.sh
	source  /home/shi/adder_pr/cnfet7/def/_unit_change.sh
	python3 ./test.py
	
clean:
	rm -f *cmd* *.log* *.run
	rm -f ./run_innovus.sh
	rm -f ./def/*.sh
	rm -f ./*.sdc
	rm -f run.txt
	rm -f *.tcl
	rm -rf ./mp_data*
	rm -f schedu*
