module	priorityEncoder1(w,z);

input	[3:0]w;
output	reg[1:0]z;

always@(w)
	begin
	//3>2>1>0
	casex(w)
		4'b1xxx:z=3;
		4'b11xx:z=2;
		4'b111x:z=1;
		4'b1111:z=0;
		default:z=2'bxx;
	endcase
	
	end
endmodule