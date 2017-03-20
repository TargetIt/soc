#!/bin/csh -f

set DIR = "../common";
set APB = "../../../../integrated/apb";
if ( -d $DIR && -d $APB ) then 
vcs -sverilog -timescale=1ns/1ns -ntb_opts uvm-1.1 +incdir+$DIR \
		+incdir+$APB -debug_access+all  \
		$DIR/test.sv -l comp.log;
else
echo "copy the apb, common directory from ../../../../integrated/apb ../common respectively";
endif

