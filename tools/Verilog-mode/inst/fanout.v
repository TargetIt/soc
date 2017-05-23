module fanout (o,i)
   input i;
   output [31:0] o;
   wire [31:0] o = {32{i}};
endmodule
