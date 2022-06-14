module	exp1(w,z,presentState,nextState,clock,reset);

input	w,clock,reset;

output	reg	[7:0]presentState,nextState;
output	reg	z;

parameter	s0=0,
			s1=1,
			s2=2,
			s3=3,
			s4=4,
			s5=5,
			s6=6,
			s7=7;

always@(posedge	clock)
	begin
		if(reset==1)
			begin
				presentState=s0;
				nextState=s0;
			end
		else
			begin
			
			presentState=nextState;
			
			case(presentState)
			
			s0:
				if(w==0)
				begin
				nextState=s0;
				end
				else
				begin
				nextState=s1;
				end
				
			s1:
				if(w==0)
				begin
				nextState=s5;
				end
				else
				begin
				nextState=s2;
				end
				
			s2:
				if(w==0)
				begin
				nextState=s5;
				end
				else
				begin
				nextState=s3;
				end
				
			s3:
				if(w==0)
				begin
				nextState=s5;
				end
				else
				begin
				nextState=s4;
				end
				
			s4:
				if(w==0)
				begin
				nextState=s5;
				end
				else
				begin
				nextState=s4;
				end
				
			s5:
				if(w==0)
				begin
				nextState=s6;
				end
				else
				begin
				nextState=s1;
				end
				
			s6:
				if(w==0)
				begin
				nextState=s0;
				end
				else
				begin
				nextState=s7;
				end
				
			s7:
				if(w==0)
				begin
				nextState=s5;
				end
				else
				begin
				nextState=s2;
				end
				
			endcase
			
			end
	end
endmodule