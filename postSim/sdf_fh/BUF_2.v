//`delay_mode_path
module BUF_2 (a, c);
input a ; 
output  c;
wire b;
HD45_LS_BFX14 buf1 (.Z(b), .A(c));
HD45_LS_BFX14_2 buf2 (.Z(c), .A(b));
endmodule 
