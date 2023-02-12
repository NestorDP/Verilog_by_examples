module dflop_n_reset (
	input [1:0] KEY,
	input [9:0] SW,
	output reg [9:0] LEDR
);
	
	always @ ( posedge !KEY[0] or posedge !KEY[1] )
	begin
		if ( !KEY[1])
			LEDR[0] <= 1'b0;
		else
			LEDR[0] <= SW[0];
	end
	
endmodule
			
	
	