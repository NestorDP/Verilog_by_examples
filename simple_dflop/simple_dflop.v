module simple_dflop ( 
	input [1:0] KEY,
	input [9:0] SW,
	output reg [9:0] LEDR
);
	
	always @ (posedge KEY[0])
	begin
		LEDR[0] <= SW[0];
	end
	
endmodule
	