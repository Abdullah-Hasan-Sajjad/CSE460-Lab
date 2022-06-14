module	mux41(S,w,z);

input	[3:0]w;
input	[1:0]S;

output	reg	z;

always@(w,S)
	begin
	
	case(S)
	0:z=w[0];
	1:z=w[1];
	2:z=w[2];
	3:z=w[3];
	default	z=1'bx;
	endcase

	end

endmodule