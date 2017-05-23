module ex_inst (o,i)
   input i;
   output [31:0] o;
   fanout fanout (/*AUTOINST*/
		  // Outputs
		  .o			(o[31:0]),
		  // Inputs
		  .i			(i));
endmodule
