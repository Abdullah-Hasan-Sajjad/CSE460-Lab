module exp2(clock, reset, mny, buy, present_state, next_state, chg);
	
	input clock, reset;
	input [1:0]  mny;
	
	output reg buy, present_state, next_state;
	output reg [1:0] chg;
	
	parameter 	stateA= 0, //0tk/final state
				stateB= 1, //10tk state
				
				n = 15,//price of my product
				
				R0= 2'b00, //0tk return
				R5= 2'b01, //5tk return
				R10= 2'b10, //10tk return
				R15= 2'b11; //15tk return
	
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
				stateA: if(mny == 2'b00) // 0 tk
							begin
								next_state = stateA;
								buy =0;
								chg = R0;
							end
						else if(mny == 2'b01) // 10 tk
							begin
								next_state = stateB;
								buy =0;
								chg = R0;
							end
						else if(mny == 2'b10) // 20 tk 
							begin
								next_state = stateA;
								buy =1;
								chg = R5;
							end
							
				stateB: if(mny == 2'b00) // 0 tk
							begin
								next_state = stateA;
								buy =0;
								chg = R10;
							end
						else if(mny == 2'b01) // 10 tk
							begin
								next_state = stateA;
								buy =1;
								chg = R5;
							end
						else if(mny == 2'b10) // 20 tk 
							begin
								next_state = stateA;
								buy =1;
								chg = R15;
							end
				endcase
			end
	end
	endmodule
