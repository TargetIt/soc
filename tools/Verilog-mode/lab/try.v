module dut(/*AUTOARG*/);

/*AUTOINPUT*/
/*AUTOOUTPUT*/
/*AUTOWIRE*/

/*iinv AUTO_TEMPLATE "inv0"(
.z(z[0]),
.a(a[0]),
);
*/
iinv iinv0(/*AUTOINST*/);

/*iinv AUTO_TEMPLATE "inv1"(
.\(.*\)(\1[1]),
);
*/
iinv iinv1(/*AUTOINST*/);

/*
iinv AUTO_TEMPLATE "iinv\(.*\)" (
.z(z[@]),
.a(a[@]),
);
*/
iinv iinv2(/*AUTOINST*/);
iinv iinv3(/*AUTOINST*/);

/*
iinv AUTO_TEMPLATE (
.a(a_s),
);
*/
// emacs will not recognize z_s as an output
iinv special_iinv(
	.z(z_s),
	/*AUTOINST*/
);
endmodule
