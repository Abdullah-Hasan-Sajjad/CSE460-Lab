module expt1(f,x1,x2,x3); 

input x1,x2,x3; 
output f; 
and (g,x1,x2); 
not (y,x2); 
and (h,y,x3); 
or (f,g,h); 

endmodule 