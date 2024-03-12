module simple_in_n_out
				(
					//  Inputs
					in_1,
					in_2,
					in_3,
					//  Outputs
					out_1,
					out_2
				);
	
	// Port definitions
	input	in_1;
	input	in_2;
	input	in_3;
	
	output 	out_1;
	output	out_2;
	
	// ------------- Design implementation --------
	
	assign out_1 = in_1 & in_2 & in_3;
	assign out_2 = in_1 | in_2 | in_3;
	
 
 endmodule