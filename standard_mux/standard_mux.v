module standard_mux
				(
					// Inputs
					SW,
					// Outputs
					LEDR,
				);

	// Port definitions
	
	input [9:0] SW;
	
	output [3:0] LEDR;
	
	//------------------------- Design implementation -----------
	
	assign LEDR = SW[0] ? SW[9:6] : SW[5:2];
	
endmodule