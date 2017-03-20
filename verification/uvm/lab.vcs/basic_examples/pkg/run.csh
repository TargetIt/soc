#!/bin/csh -f

#./simv  +UVM_NO_RELNOTES  -l run.log
./simv  +UVM_NO_RELNOTES  | filter_uvm.pl |& tee run.log
