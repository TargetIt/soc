#!/bin/csh -f


syscan -cc gcc -cpp g++ -tli payload.tli \
        -cflags -I $VCS_HOME/etc/systemc/tlm/include/tlm payload.h
syscan -cc gcc -cpp g++ -tlm2 -cflags -DUSER_PAYLOAD -cflags -g target.cpp
syscan -cc gcc -cpp g++ -tlm2 -cflags -DUSER_PAYLOAD -cflags -g initiator.cpp
syscan -cc gcc -cpp g++ -tlm2 -cflags -DUSER_PAYLOAD -cflags -g tli_packunpack_my_payload.cpp
syscan -cc gcc -cpp g++ -tlm2 -cflags -DUSER_PAYLOAD -cflags -g payload_conv.cpp
syscan -cc gcc -cpp g++ -tlm2 -cflags -DUSER_PAYLOAD -cflags -g sc_top.cpp:sc_top     
vcs  -cc gcc -cpp g++ -cpp g++ -cc gcc -timescale=1ns/1ps -l vcs.log -cm_xmldb -sverilog -gen_obj -sysc +incdir+.. +incdir+$VCS_HOME/etc/systemc/tlm/tli -ntb_opts uvm top.v
