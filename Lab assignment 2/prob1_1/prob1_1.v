module prob1_1(clock, reset, w, z, present_state,
next_state);

input clock, reset,w;

output reg z;
output reg [1:0] present_state, next_state;

parameter stateA= 2'b00,
stateB= 2'b01,
stateC= 2'b10,
stateD= 2'b11;

always@(posedge clock)
begin
	if(reset==1)
		begin
			present_state = stateA;
			next_state = stateA;
		end
	else
		begin
			present_state = next_state;
			case(present_state)
			
				// stateA
				stateA: if(w == 0)
				
				begin
				next_state = stateA;
				z =	0;
				end
				
				else if(w == 1)
				begin
				next_state = stateB;
				z = 0;
				end
				
				// stateB
				stateB: if(w == 0)
				
				begin
				next_state = stateC;
				z =	0;
				end
				
				else if(w == 1)
				
				begin
				next_state = stateB;
				z = 0;
				end
								
				// stateC
				stateC: if(w == 0)
				
				begin
				next_state = stateA;
				z =	0;
				end
				
				else if(w == 1)
				
				begin
				next_state = stateD;
				z = 0;
				end
				
				
				// stateD
				stateD: if(w == 0)
				
				begin
				next_state = stateC;
				z =	1;
				end
				
				else if(w == 1)
				
				begin
				next_state = stateB;
				z = 0;
				end
				
			endcase
		end
end
endmodule