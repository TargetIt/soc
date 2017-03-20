#!/bin/csh -f

set DIR = "../../common";  

if ( -d $DIR ) then
ralgen -uvm -t B shared.ralf;
vcs -sverilog -timescale=1ns/1ns +incdir+$DIR -ntb_opts uvm-1.1 blk_run.sv -l comp.log +define+RALGEN;
else 
echo "copy the common directory from ../../common";
endif
