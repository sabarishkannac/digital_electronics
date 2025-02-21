`timescale 1ns/1ns
`include "bcd_execess3.v"

module bcd_excess3_uut;
    reg [3:0] bcd;            // ? Define `bcd` as reg (testbench drives inputs)
    wire [3:0] exe;           // ? Output must be wire

    // Instantiate the BCD_to_Excess3 module
    BCD_to_Excess3 uut (
        .a(bcd[3]), .b(bcd[2]), .c(bcd[1]), .d(bcd[0]),
        .w(exe[3]), .x(exe[2]), .y(exe[1]), .z(exe[0])
    );

    // Testbench procedure
    initial begin
        $monitor("BCD = %b | Excess-3 = %b", bcd, exe);
        
        // Apply all valid BCD values (0000 to 1001)
        bcd = 4'b0000; #10;
        bcd = 4'b0001; #10;
        bcd = 4'b0010; #10;
        bcd = 4'b0011; #10;
        bcd = 4'b0100; #10;
        bcd = 4'b0101; #10;
        bcd = 4'b0110; #10;
        bcd = 4'b0111; #10;
        bcd = 4'b1000; #10;
        bcd = 4'b1001; #10;
        
        $stop;
    end
endmodule

