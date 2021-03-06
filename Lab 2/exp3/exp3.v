module	exp3(RS,D,clk,Q);

input	[3:0]D;
input	RS,clk;
output	reg[3:0]Q;

always	@(posedge	clk)
	begin
		Q=D;
		
		if(RS)
		
			begin
			//RIGHT SHIFT
			Q[0]<=D[1];
			Q[1]<=D[2];
			Q[2]<=D[3];
			Q[3]<=0;
		
			end
		
		else
		
			begin
			//Left SHIFT
			Q[3]<=D[2];
			Q[2]<=D[1];
			Q[1]<=D[0];
			Q[0]<=0;
			end
	end
	
endmodule