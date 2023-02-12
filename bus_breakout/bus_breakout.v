module bus_breakout
				(
					// Inputs
					SW,
					// Outputs
					LEDR
				);
	
	// Port definitions
	input  [7:0] SW;
	output [5:0] LEDR;
	
	// ---------------- Design implementaton ----------
	
	assign LEDR[5:0] = { SW[3:2],
							  (SW[7] & SW[1]),
							  (SW[6] & SW[0]),
							  SW[5:4]
							  };

endmodule