module exp2(z,w,clock,reset);

input clock, reset, w;
output reg z;
reg y;
parameter S0=1'b0, S1=1'b1;

always @(posedge clock, posedge reset)
	if (reset) y<=S0;

	else

		case(y)
		S0: if (w)
		begin
		z<=0;
		y<=S1;
		end
	
		else
		begin
		z<=0;
		y<=S0;
		end
	
	
		S1: if (w)
		begin
		z<=1;
		y<=S1;
		end
		
		else
		begin
		z<=0;
		y<=S0;
		end
		endcase


endmodule