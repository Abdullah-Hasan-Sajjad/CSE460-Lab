module exp2(clock, reset, cash_in, purchase, present_state, next_state, cash_return);
	input clock, reset;
	input cash_in;
	output reg purchase, present_state, next_state;
	output reg [1:0] cash_return;
	parameter 	state0= 0, 
				state1= 1,
				n = 15,
				R0= 2'b00,
				R5= 2'b01, 
				R10= 2'b10;
				
	
	always@(posedge clock)
	begin
			if(reset==1)
			begin 
				present_state = state0;
				next_state = state0;
			end
			else
			begin
				present_state = next_state;
				
				case(present_state)
				state0: if(cash_in == 0)
							begin
								next_state = state0;
								purchase =0;
								cash_return = R0;
							end
						else if(cash_in == 1) // 10 tk
							begin
								next_state = state1;
								purchase = 0;
								cash_return = R0;
							end
						
				state1: if(cash_in == 0)
							begin
								next_state = state0;
								purchase =0;
								cash_return = R10;
							end
						else if(cash_in == 1)
							begin
								next_state=state0;
								purchase = 1;
								cash_return = R5;
							end	
							
				endcase
			end
	end
	endmodule