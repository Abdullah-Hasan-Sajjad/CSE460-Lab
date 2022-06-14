module problem2(w,y);
  
input [3:0]w; 
output reg[1:0]y; 
  
always @(w)  
	casex (w)
	
	// priority 0>1>3>2  
	 
		4'bxxx1: y=0;   
		4'bxx10: y=1;   
		4'b1x00: y=3;   
		4'b0100: y=2; 
		 
	endcase 
endmodule