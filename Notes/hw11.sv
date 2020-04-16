module hw11;
  logic a, b;
  wire  C_o, s;

  ha ha1(.A(a), .B(b), .C_o(C_o), .S(s)); 

  initial begin
//	      a = 0; b = 0;
/*	#10ns a = 1;
	#10ns b = 1;
	#10ns a = 0;
*/	#10ns //$stop;

    
	 for(int i = 0; i<4; i++) begin
	   a = i[1]; b = i[0];
	   #10ns $display("%b+%b = %b%b",a,b,C_o,s);  
	 end
     #10ns $stop; // $finish; 

  end

endmodule



module ha(
  input A, B,
  output logic C_o, S
  );

  always_comb 
    S = A^B;
  always_comb 
    C_o = A&B;

endmodule