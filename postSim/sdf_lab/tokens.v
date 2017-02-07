/* System Functions:
	$vcs_get_object_id
	$vcs_get_object_type

*/
/* System Tasks:
	$vcdplusfile
	$vcdplusfileswitch
	$vcdplusoff
	$vcdpluson
	$vcdplustraceoff
	$vcdplustraceon
	$vcdplusdumpportsoff
	$vcdplusdumpportson
	$vcdplusdumphier
	$vcdplusdumpportswithmdaoff
	$vcdplusdumpportswithmdaon
	$vcdplusmemoff
	$vcdplusmemon
	$vcdplusmemorydump
	$vcdplusclose
	$vcdplusflush
	$vcdplusautoflushoff
	$vcdplusautoflushon
	$vcdplusdeltacycleoff
	$vcdplusdeltacycleon
	$vcdplusevent
	$vcdplusglitchoff
	$vcdplusglitchon
	$vcdplusfilter
	$vcdpluspowerstateoff
	$vcdpluspowerstateon
	$vcdpluspowerenableoff
	$vcdpluspowerenableon
	$vcdplusmsglog
	$vcdplusmsglogon
	$vcdplusmsglogoff
	$sdf_annotate

*/

`portcoerce
`inline
/* Source file "top.v", line 2 */
`timescale 1 ns / 1 ps
module top;

	reg			a;
	wire			z;

	dut u_dut(
		.a				(a), 
		.c				(z));

	initial begin
	  $sdf_annotate("/ux/fhearth/qingpwang/fh.pst.try/debug/sdf/test.sdf", 
		  u_dut, , "u_dut_sdf.log");
	end
endmodule

/* Source file "dut.v", line 2 */
`timescale 1 ns / 1 ps
module dut(a, c);

	input			a;
	output			c;

	wire			b;

	HD45_LS_BFX14 buf1(
		.Z				(b), 
		.A				(a));
	HD45_LS_BFX14_2 buf2(
		.Z				(c), 
		.A				(b));
endmodule

/* Source file "HD45_LS_BFX14_2.v", line 3 */
`timescale 1 ns / 1 ps
module HD45_LS_BFX14_2(Z, A);

	output			Z;
	input			A;

	specify
	endspecify

	buf #(1)  U1(Z, A);
endmodule

`delay_mode_distributed
`portcoerce
`inline
/* Source file "HD45_LS_BFX14.v", line 4 */
`timescale 1 ns / 1 ps
module HD45_LS_BFX14(Z, A);

	output			Z;
	input			A;

	specify
	endspecify

	buf #(1)  U1(Z, A);
endmodule

// END: VCS tokens
// ===================
//  DESIGN STATISTICS 
// ===================
//
// No. of design lines (note: includes comments and blank lines)                   62
//
//                                                                             Static<!>  Elaborated<@>
//                                                                             ------     ----------
// No. of module instances:                                                         4              4
// No. of module+udp port connects:                                                 6              6
// No. of scalar nets:                                                              8              8
// No. of scalar regs/logics:                                                       1              1
// No. of initial blocks:                                                           1              1
// No. of hierarchical references:                                                  1              1
// No. of gates:                                                                    2              2
// No. of specify blocks<#>:                                                        2              2
// No. of system task calls (verilog($)+built-in class):                            1              1
//
// No. of top level modules/programs/packages/interfaces:                           1
//        modules:                                                                  4
//            top 50 modules                                                   number of instances
//              HD45_LS_BFX14                                                             1 (HD45_LS_BFX14.v:4)
//              HD45_LS_BFX14_2                                                           1 (HD45_LS_BFX14_2.v:3)
//              dut                                                                       1 (dut.v:2)
// No. of module+udp ports:                                                         6
// No. of system tasks:                                                             1
// No. of user tasks:                                                              31
// No. of user functions:                                                           2
//
// Footnotes:
// ---------
// <!> No. of unique instances of a construct as it appears in the source.
// <@> No. of instances of a construct when the design is elaborated.
// <#> Multiple specify blocks in the SAME module are combined and counted
//     as ONE block.
