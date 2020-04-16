module muxN(
  input wire[1:0] sel,
  input wire a,b,c,
  output logic d);

  always_comb begin
    if(sel==2'b11) d = a;
	else if (sel==2'b10) d = b;
	else if (sel==2'b01) d = c;
    else d = 1'b0;
  end
endmodule 



    if(sel==2'b11) d = a;
    if(sel==5) d = a;
	if(sel==2'd3) d= a;
	if(sel==3'b0) 000

always_comb begin 
  d = 0;
  case(sel)
    2'b11: d = a;
    2'b10: d = b;
    2'b01: d = c;
//  default: d = 0;
  endcase
end