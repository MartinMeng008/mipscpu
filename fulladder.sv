`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2020 06:20:34 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input wire A,
    input wire B,
    input wire Cin,
    output wire Sum,
    output wire Cout
    );
    
    // assign Sum = Cin ^ A ^ B;
    // assign Cout = (A & B) + (Cin & (A ^ B));
    
    wire t1, t2, t3;
    xor x1(t1, A, B);
    xor x2(Sum, Cin, t1);
    and a1(t2, t1, Cin);
    and a2(t3, A, B);
    or o1(Cout, t2, t3);
    
endmodule
