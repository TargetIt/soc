module dut(/*AUTOARG*/
   // Outputs
   y,
   // Inputs
   b, a
   );

/*AUTOINPUT*/
// Beginning of automatic inputs (from unused autoinst inputs)
input [3:0]		a;			// To aand of aand.v, ...
input [1:0]		b;			// To aand of aand.v, ...
// End of automatics
/*AUTOOUTPUT*/
// Beginning of automatic outputs (from unused autoinst outputs)
output [3:0]		y;			// From bbuf0 of bbuf.v, ...
// End of automatics
/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire [1:0]		z;			// From aand of aand.v, ...
// End of automatics

/* aand AUTO_TEMPLATE (
.z (z[0]),
.a (a[0]),
.b (b[0]),
);
*/
aand aand(/*AUTOINST*/
	  // Outputs
	  .z				(z[0]),			 // Templated
	  // Inputs
	  .a				(a[0]),			 // Templated
	  .b				(b[0]));			 // Templated

/* 
oor AUTO_TEMPLATE(
.\(.*\) (\1[1]),
);
*/
oor oor(/*AUTOINST*/
	// Outputs
	.z				(z[1]),			 // Templated
	// Inputs
	.a				(a[1]),			 // Templated
	.b				(b[1]));			 // Templated

/*
bbuf AUTO_TEMPLATE(
.a(z[@]),
.z(y[@]),
);
*/
bbuf bbuf0(/*AUTOINST*/
	   // Outputs
	   .z				(y[0]),			 // Templated
	   // Inputs
	   .a				(z[0]));			 // Templated
bbuf bbuf1(/*AUTOINST*/
	   // Outputs
	   .z				(y[1]),			 // Templated
	   // Inputs
	   .a				(z[1]));			 // Templated
/*
iinv AUTO_TEMPLATE (
.z(y[@"(+ 2 @)"]),
.a(a[@"(+ 2 @)"]),
);
*/
iinv iinv0(/*AUTOINST*/
	   // Outputs
	   .z				(y[2]),			 // Templated
	   // Inputs
	   .a				(a[2]));			 // Templated
iinv iinv1(/*AUTOINST*/
	   // Outputs
	   .z				(y[3]),			 // Templated
	   // Inputs
	   .a				(a[3]));			 // Templated

endmodule
