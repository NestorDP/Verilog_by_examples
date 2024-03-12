`timescale 1ns / 1ps

module simple_in_n_out_tb();

// Declare inputs as regs and outputs as wires
reg in_1;
reg in_2;
reg in_3;

wire out_1;
wire out_2;

// Initialize all variables
initial begin        
    //$display ("time\t clk reset enable counter");	
    //$monitor ("%g\t %b   %b     %b      %b", 
    #25
    in_1 = 0;
    in_2 = 0;
    in_3 = 0;
    #500
    $display("%b, %b", out_1, out_2);
    #500
    in_1 = 0;
    in_2 = 0;
    in_3 = 1;
    #500
    $display("%b, %b", out_1, out_2);
    #500
    in_1 = 0;
    in_2 = 1;
    in_3 = 0;
    #500
    $display("%b, %b", out_1, out_2);
    #500 
    in_1 = 0;
    in_2 = 1;
    in_3 = 1;
    #500
    $display("%b, %b", out_1, out_2);
    #500 $finish;      // Terminate simulation
end


// Connect DUT to test bench
simple_in_n_out U1(
    .in_1(in_1),
    .in_2(in_2),
    .in_3(in_3),
    .out_1(out_1),
    .out_2(out_2)
);

endmodule