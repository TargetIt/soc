//`delay_mode_path
module dut (a, c);
input a ; 
output  c;
wire b;
HD45_LS_BFX14 buf1 (.Z(b), .A(a));
HD45_LS_BFX14_2 buf2 (.Z(c), .A(b));
endmodule 
