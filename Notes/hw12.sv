module hw12;
  logic a, b, C_i;
  wire  C_o, s;

  ha ha1(.A(a), .B(b), .C_i, .C_o(C_o), .S(s)); 

  initial begin
//	      a = 0; b = 0;
/*	#10ns a = 1;
	#10ns b = 1;
	#10ns a = 0;
*/	#10ns //$stop;

    
	 for(int i = 0; i<8; i++) begin
	   a = i[2]; b = i[1]; C_i = i[0];
//	   {a,b,C_i} = i;
	   #10ns $display("%b+%b+%b = %b%b",a,b,C_i,C_o,s);  
       if({C_o,s} == a+b+C_i) $display("happy");
	   else $display("__it happens");
	 end
     #10ns $stop; // $finish; 

  end

endmodule



module ha(
  input A, B, C_i,
  output logic C_o, S
  );

  always_comb 
    S = A^B^C_i;
  always_comb 
    C_o = A&B|B&C_i|A&C_i;

endmodule