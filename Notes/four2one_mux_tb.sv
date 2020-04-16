module four2one_mux_tb();
  parameter N=4;
  logic[N-1:0] A=5,B=6,C=7,D=0;
  wire [N-1:0] rslt;
  logic[1:0] SEL=0;
  four2one_mux #(.n(N))
  m1(
  .SEL(SEL),
  .A,.B,.C,.D,
  .OUT(rslt));
  initial begin
    #10ns $display(
      "SEL=%d A=%d B=%d C=%d D=%d rslt=%d",SEL,A,B,C,D,rslt); 
	for(int i=0;i<6;i++) begin
      SEL++;
	  #10ns $display(
      "SEL=%d A=%d B=%d C=%d D=%d rslt=%d",SEL,A,B,C,D,rslt); 
	end  
  end


endmodule 
