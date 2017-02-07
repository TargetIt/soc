//`delay_mode_path
module dut (a, c);
input a ; 
output  c;
wire b;
BUF_1 buf1 (.c(b), .a(a));
BUF_2 buf2 (.c(c), .a(b));
endmodule 
