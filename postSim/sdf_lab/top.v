`timescale 1ns/1ps
module top;
reg a;
wire z;

dut u_dut (.a(a), .c(z));

initial begin
//$sdf_annotate("/ux/fhearth/qingpwang/fh.pst.try/debug/sdf/test.sdf",u_dut, , "u_dut_sdf.log");
$sdf_annotate("/ux/fhearth/qingpwang/fh.pst.try/debug/sdf/test.sdf",u_dut, , "u_dut_sdf.log");
end
endmodule 
