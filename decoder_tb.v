
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2025 02:07:24 PM
// Design Name: 
// Module Name: decoder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module decoder_tb;

reg [2:0] in;
wire [7:0] out;
integer k;

decoder uut(.x(in), .y(out));

initial 
begin
in=0;
$monitor("%0t\t%b\t%b", $time, in, out);
    for (k=0;k<8;k=k+1)
    begin
    in=k;
    #10;
    end
end

endmodule
