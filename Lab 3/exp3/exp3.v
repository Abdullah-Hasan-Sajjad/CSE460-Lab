module  exp3(z,w,clock,reset);

input clock, reset, w;
output reg z;
reg [2:0] y; 
parameter [2:0] A = 0, B = 1, C = 2, D=3, E=4, F=5, G=6, S7=7;

always @(posedge clock, posedge reset)
	if (reset) y<=A;

	else

		case(y)
		A: if (w)
		begin
		z<=0;
		y<=B;
		end
	
		else
		begin
		z<=0;
		y<=A;
		end
	
	
		B: if (w)
		begin
		z<=0;
		y<=C;
		end
		
		else
		begin
		z<=0;
		y<=F;
		end
		
		
		C: if (w)
		begin
		z<=0;
		y<=D;
		end
		
		else
		begin
		z<=0;
		y<=F;
		end
		
		
		D: if (w)
		begin
		z<=1;
		y<=D;
		end
		
		else
		begin
		z<=0;
		y<=F;
		end
		
		
		E: if (w)
		begin
		z<=1;
		y<=E;
		end
		
		else
		begin
		z<=0;
		y<=F;
		end
		
		
		F: if (w)
		begin
		z<=0;
		y<=B;
		end
		
		else
		begin
		z<=0;
		y<=G;
		end
		
		
		G: if (w)
		begin
		z<=1;
		y<=B;
		end
		
		else
		begin
		z<=0;
		y<=A;
		end
		endcase


endmodule
