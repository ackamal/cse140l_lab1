Boolean:

+   .    '

Verilog:

|	&	 ~  !

English:

or  and	 not

			   _
			   A   = !A  = ~A
							   A[3:0] = 4'b1000;	0000
							  ~A[3:0] = 4'b0111; 
							  !A[3:0] = 1'b0; 		1'b1



				 d = a*b + a*c = a*(b+c)  
				 e = (a+b) * (a+c) = a+(b*c)    NONONONO






Associative law:  (A+B)+C ?= A+(B+C)

				   (A+-A)+C	?= A+(-A+C)		floating point   |A|>>|C|
					   C   	      0


		 a&!b | a&c | b&c = 

           a=0:  	b&c
		   a=1:  !b | c | b&c	   !b | c

            !a&b&c | a&!b | a&c | a&b&c



c=a+b;   // one-bit variables; modulo-2 arithmetic

a=1=b  --> c = [1]0 aritmetic    1 Boolean

a|b Verilog =    a+b boolean

