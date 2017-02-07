`define HD45_LS_BFX14_A_R_Z_R 0.1
`define HD45_LS_BFX14_A_F_Z_F 0.1
//`delay_mode_distributed
`delay_mode_zero
module HD45_LS_BFX14_2 (Z, A);

	output Z;
	input A;

	buf   #1 U1 (Z, A) ;



	specify

		(A +=> Z) = (`HD45_LS_BFX14_A_R_Z_R,`HD45_LS_BFX14_A_F_Z_F);


	endspecify

endmodule // HD45_LS_BFX14
`resetall

