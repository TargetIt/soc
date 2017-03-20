#!/bin/csh -f

set DIR = "../../../integrated/apb";

if ( -d $DIR ) then
vcs -sverilog -timescale=1ns/1ns -ntb_opts uvm-1.1 +incdir+$DIR blk_run.sv -l comp.log;
else
echo "copy the apb directory from ../../../integrated/apb";
endif