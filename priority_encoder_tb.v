module testbench();

reg[7:0] in;
reg[3:0] out;

priority_encoder uut (.p0(in[7]),.p1(in[6]),.p2(in[5]),.p3(in[4]),.p4(in[3]),.p5(in[2]),.p6(in[1]),.p7(in[0]),.z0(out[0]),.z1(out[1]),.z2(out[2]));
always begin
clk=~clk;
#10;
end

reg [3:0] i;
always @(posedge clk, posedge rst) begin
if(rst) begin 
i=0;
end

if(clk) begin
in <= $random%256;
#20;
i=i+1;
if(i==10) %finish;
end
$monitor("%d: input = %b,output =%b", $time,in,out)
end
endmodule
