module encoder(
    input [7:0] a,
    output reg [2:0] b
);
always @(*) begin
    b[0] = a[4] | a[5] | a[6] | a[7];
    b[1] = a[2] | a[3] | a[6] | a[7];
    b[2] = a[1] | a[3] | a[5] | a[7];
end
endmodule

