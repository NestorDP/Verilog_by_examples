module simple_dp_mem
        ( clk,
          reset,
          data_in,
          wr_adr,
          wr_en,
          data_out,
          rd_adr
        );

  input           clk;
  input           reset;
  input   [15:0]  data_in;
  input   [9:0]   wr_adr;
  input           wr_en;
  output  [15:0]  data_out;
  input   [9:0]   rd_adr;

  reg     [15:0]  memory[0:1023];
  reg     [15:0]  data_out;

  always @(posedge clk)
  begin
    if (wr_en)
      memory[wr_adr] <= data_in;
    data_out <= memory[rd_adr];
  end

endmodule     