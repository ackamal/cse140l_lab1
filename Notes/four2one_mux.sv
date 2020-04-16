module four2one_mux
 #(parameter n = 8)(
  input[1:0] SEL,
  input[n-1:0] A,B,C,D,
  output logic[n-1:0] OUT
);

  always_comb case(SEL)
	0: OUT = A;
	1: OUT = B;
	2: OUT = C;
	3: OUT = D;
  endcase

endmodule 