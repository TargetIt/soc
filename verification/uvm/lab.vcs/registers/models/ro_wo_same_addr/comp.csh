#!/bin/csh -f

set DIR = "../../common";
if ( -d $DIR ) then
ralgen -uvm -t B ro_wo.ralf;
vcs -sverilog -timescale=1ns/1ns -ntb_opts uvm-1.1 +incdir+$DIR tb_run.sv -l comp.log +define+RALGEN;
else
echo "copy the common directory from ../../common";
endif
