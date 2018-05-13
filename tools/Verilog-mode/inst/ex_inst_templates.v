module ex_inst (o,i)
   input i;
   output [31:0] o;
/* fanout AUTO_TEMPLATE (
        .o  (o[@"(% (+ 1 @) 4)"]));
*/

/*fanout fanout*/
   fanout fanout0 (/*AUTOINST*/
		   // Outputs
		   .o			(o[1]),			 // Templated
		   // Inputs
		   .i			(i));
   fanout fanout1 (/*AUTOINST*/
		   // Outputs
		   .o			(o[2]),			 // Templated
		   // Inputs
		   .i			(i));
   fanout fanout2 (/*AUTOINST*/
		   // Outputs
		   .o			(o[3]),			 // Templated
		   // Inputs
		   .i			(i));
   fanout fanout3 (/*AUTOINST*/
		   // Outputs
		   .o			(o[0]),			 // Templated
		   // Inputs
		   .i			(i));
endmodule
