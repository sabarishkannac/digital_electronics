`timescale 1ns/1ns
`include "encoder.v"

module encoder_tb;

reg [7:0] a;        // Corrected bit ordering
wire [2:0] b;       // Output should be wire, not reg

encoder uut(.a(a), .b(b));

initial begin
    $monitor("Time = %0t, a = %b, b = %b", $time, a, b);
    
    a = 8'b00000001; #10; // Expect b = 000
    a = 8'b00000010; #10; // Expect b = 001
    a = 8'b00000100; #10; // Expect b = 010
    a = 8'b00001000; #10; // Expect b = 011
    a = 8'b00010000; #10; // Expect b = 100
    a = 8'b00100000; #10; // Expect b = 101
    a = 8'b01000000; #10; // Expect b = 110
    a = 8'b10000000; #10; // Expect b = 111
    a = 8'b10101010; #10; // Check behavior with multiple bits high
    a = 8'b00000000; #10; // Edge case: No active bit
    
    $finish;  // Missing semicolon fixed
end

endmodule  // Removed extra semicolon
