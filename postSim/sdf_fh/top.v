`timescale 1ns/1ps
module top;
reg a;
wire b;
wire z;

dut u_dut(.a(a), .c(z));
initial begin
$sdf_annotate("/ux/fhearth/qingpwang/fh.pst.try/debug/sdf_fh/test.sdf",u_dut, , "u_dut_sdf.log");
end
endmodule 
