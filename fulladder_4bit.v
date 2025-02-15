module halfadder(a, b, s, c);
    input a, b;
    output s, c;
    assign s = a ^ b; 
    assign c = a & b; 
endmodule

module fulladder(a1, b1, c1, s, c);
    input a1, b1, c1;
    output s, c;
    wire a2, b2, w1;
    halfadder ha1(a1, b1, a2, b2); 
    halfadder ha2(a2, c1, s, w1);  
    assign c = w1 | b2; 
endmodule




module rippleadder(a,b,cin,s,c);

input [3:0] a,b;
input cin;
output [3:0] s;
output c;
wire c1,c2,c3;

fulladder(a[0],b[0],cin,s[0],c1);
fulladder(a[1],b[1],c1,s[1],c2);
fulladder(a[2],b[2],c2,s[2],c3);
fulladder(a[3],b[3],c3,s[3],c);

endmodule


