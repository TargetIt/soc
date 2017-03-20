#!/bin/csh -f


ralgen -l sv  -uvm  -t  host_regmodel  host.ralf

vcs -sverilog -ntb_opts uvm-1.1 -debug_access+all  -timescale="1ns/100ps" ./rtl/router_test_top.sv ./rtl/ral/router.sv ./rtl/router_io.sv ./rtl/ral/host_io.sv +incdir+./env +incdir+./tests +incdir+./sequence ./sequence/packet_seq_lib_pkg.sv ./tests/test.sv -l comp.log
 


