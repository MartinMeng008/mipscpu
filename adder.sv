`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2020 10:00:16 PM
// Design Name: 
// Module Name: adder
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


module adder #(parameter N=32) (
    input wire [N-1:0] A, B,
    input wire Cin,
    output wire [N-1:0] Sum,
    output wire FlagN, FlagC, FlagV
    );
    
    wire [N:0] carry;
    assign carry[0] = Cin;
    
    assign FlagN = Sum[N-1];
    assign FlagC = carry[N];
    assign FlagV = carry[N] ^ carry[N-1];
    
    //fulladder a[N-1:0] (A, B, carry[N-1:0], Sum, carry[N:1]);
    fulladder a0 (A[0], B[0], carry[0], Sum[0], carry[1]);
    fulladder a1 (A[1], B[1], carry[1], Sum[1], carry[2]);
    fulladder a2 (A[2], B[2], carry[2], Sum[2], carry[3]);
    fulladder a3 (A[3], B[3], carry[3], Sum[3], carry[4]);
    fulladder a4 (A[4], B[4], carry[4], Sum[4], carry[5]);
    fulladder a5 (A[5], B[5], carry[5], Sum[5], carry[6]);
    fulladder a6 (A[6], B[6], carry[6], Sum[6], carry[7]);
    fulladder a7 (A[7], B[7], carry[7], Sum[7], carry[8]);
    fulladder a8 (A[8], B[8], carry[8], Sum[8], carry[9]);
    fulladder a9 (A[9], B[9], carry[9], Sum[9], carry[10]);
    fulladder a10 (A[10], B[10], carry[10], Sum[10], carry[11]);
    fulladder a11 (A[11], B[11], carry[11], Sum[11], carry[12]);
    fulladder a12 (A[12], B[12], carry[12], Sum[12], carry[13]);
    fulladder a13 (A[13], B[13], carry[13], Sum[13], carry[14]);
    fulladder a14 (A[14], B[14], carry[14], Sum[14], carry[15]);
    fulladder a15 (A[15], B[15], carry[15], Sum[15], carry[16]);
    fulladder a16 (A[16], B[16], carry[16], Sum[16], carry[17]);
    fulladder a17 (A[17], B[17], carry[17], Sum[17], carry[18]);
    fulladder a18 (A[18], B[18], carry[18], Sum[18], carry[19]);
    fulladder a19 (A[19], B[19], carry[19], Sum[19], carry[20]);
    fulladder a20 (A[20], B[20], carry[20], Sum[20], carry[21]);
    fulladder a21 (A[21], B[21], carry[21], Sum[21], carry[22]);
    fulladder a22 (A[22], B[22], carry[22], Sum[22], carry[23]);
    fulladder a23 (A[23], B[23], carry[23], Sum[23], carry[24]);
    fulladder a24 (A[24], B[24], carry[24], Sum[24], carry[25]);
    fulladder a25 (A[25], B[25], carry[25], Sum[25], carry[26]);
    fulladder a26 (A[26], B[26], carry[26], Sum[26], carry[27]);
    fulladder a27 (A[27], B[27], carry[27], Sum[27], carry[28]);
    fulladder a28 (A[28], B[28], carry[28], Sum[28], carry[29]);
    fulladder a29 (A[29], B[29], carry[29], Sum[29], carry[30]);
    fulladder a30 (A[30], B[30], carry[30], Sum[30], carry[31]);
    fulladder a31 (A[31], B[31], carry[31], Sum[31], carry[32]);

endmodule
