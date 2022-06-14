module	full_adder_1(A,B,Cin,Cout,S);

input	[4:0]A,B;
input	Cin;

output	[4:0]S;
output	Cout;

wire	Cout0,Cout1,Cout2,Cout3;

adder	adder0(A[0],B[0],Cin,Cout0,S[0]);
adder	adder1(A[1],B[1],Cout0,Cout1,S[1]);
adder	adder2(A[2],B[2],Cout1,Cout2,S[2]);
adder	adder3(A[3],B[3],Cout2,Cout3,S[3]);
adder	adder4(A[4],B[4],Cout3,Cout,S[4]);

endmodule



// function for 1 bit adder
module	adder(A,B,Cin,Cout,S);

input	A,B,Cin;
output	Cout,S;

assign	S=A ^ B ^ Cin;
assign	Cout=(A & B) | (Cin & (A ^ B));

endmodule