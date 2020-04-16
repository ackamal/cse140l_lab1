module reg3(
  input [2:0] data_in,
  output logic[2:0] data_out,
  input clk,
        enable,
		reset);

  always_ff @(posedge clk)
	if(reset)
	  data_out <= 3'b0;
    else if (enable)
	  data_out <= data_in;
	else					// optional
	  data_out <= data_out; // needed?

endmodule