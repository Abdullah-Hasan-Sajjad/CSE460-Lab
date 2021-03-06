module exp1(S,Cout, A, B, Cin); 

    input Cin; 
    input [7:0]A,[7:0]B;
    
    output [7:0]S;
    output Cout; 
    wire Cout0, Cout1, Cout2, Cout3, Cout4, Cout5, Cout6; 
    
    // A = 8?b10110101
    // B = 8?b10100111
    
    fulladd stage0 (S[0], Cout0, A[0], B[0], Cin); 
    fulladd stage1 (S[1], Cout1, A[1], B[1], Cout0); 
    fulladd stage2 (S[2], Cout2, A[2], B[2], Cout1);
    fulladd stage3 (S[3], Cout3, A[3], B[3], Cout2);
    fulladd stage4 (S[4], Cout4, A[4], B[4], Cout3);
    fulladd stage5 (S[5], Cout5, A[5], B[5], Cout4);
    fulladd stage6 (S[6], Cout6, A[6], B[6], Cout5);
    fulladd stage7 (S[7], Cout,  A[7], B[7], Cout6); 
    
endmodule


module fulladd(sum, carryout, x, y, carryin); 
// This module implements a 1-bit full adder 
   input x, y, carryin; 
   output sum, carryout;
 
   assign sum = x ^ y ^ carryin; 
   assign carryout = (x & y) | (carryin & (x ^ y)); 
endmodule
