module exp1(y,w,Return,purchase);

    input y,w;
    
    output [1:0]Return;
    output purchase;
    
    assign purchase=y&w;
    
    assign Return[0]=y;
    assign Return[1]=y&w;
    
endmodule