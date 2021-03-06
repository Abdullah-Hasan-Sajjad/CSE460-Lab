module	exp_01	(x1,x2,x3,f);

input	x1,x2,x3;
output	f;

/*

// Structural Representation

and(a,x1,x2);
not(b,x2);
and(c,b,x3);
or(f,a,c);

*/

// Behavioral Representation
assign f=(x1 & x2) | (~x2 & x3);

endmodule