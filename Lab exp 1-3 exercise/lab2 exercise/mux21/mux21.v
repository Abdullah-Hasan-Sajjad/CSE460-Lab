module	mux21(w,s,f);

input [1:0]w;
input s;

output reg f;

always@(w	or	s)

	begin
	
		if(s==0)
		begin
			f=w[0];
		end
		else
		begin
			f=w[1];
		end
	
	end

endmodule