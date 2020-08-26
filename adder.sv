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
    wire carry0;
    wire carry1;
    wire carry2;
    wire carry3;
    wire carry4;
    wire carry5;
    wire carry6;
    wire carry7;
    wire carry8;
    wire carry9;
    wire carry10;
    wire carry11;
    wire carry12;
    wire carry13;
    wire carry14;
    wire carry15;
    wire carry16;
    wire carry17;
    wire carry18;
    wire carry19;
    wire carry20;
    wire carry21;
    wire carry22;
    wire carry23;
    wire carry24;
    wire carry25;
    wire carry26;
    wire carry27;
    wire carry28;
    wire carry29;
    wire carry30;
    wire carry31;
    wire carry32;
    
    // assign carry[0] = Cin;
    assign carry0 = Cin;
    
    assign FlagN = Sum[N-1];
    assign FlagC = carry[N];
    assign FlagV = carry[N] ^ carry[N-1];
    
    //fulladder a[N-1:0] (A, B, carry[N-1:0], Sum, carry[N:1]);
    fulladder a0 (A[0], B[0], carry0, Sum[0], carry1);
    fulladder a1 (A[1], B[1], carry1, Sum[1], carry2);
    fulladder a2 (A[2], B[2], carry2, Sum[2], carry3);
    fulladder a3 (A[3], B[3], carry3, Sum[3], carry4);
    fulladder a4 (A[4], B[4], carry4, Sum[4], carry5);
    fulladder a5 (A[5], B[5], carry5, Sum[5], carry6);
    fulladder a6 (A[6], B[6], carry6, Sum[6], carry7);
    fulladder a7 (A[7], B[7], carry7, Sum[7], carry8);
    fulladder a8 (A[8], B[8], carry8, Sum[8], carry9);
    fulladder a9 (A[9], B[9], carry9, Sum[9], carry10);
    fulladder a10 (A[10], B[10], carry10, Sum[10], carry11);
    fulladder a11 (A[11], B[11], carry11, Sum[11], carry12);
    fulladder a12 (A[12], B[12], carry12, Sum[12], carry13);
    fulladder a13 (A[13], B[13], carry13, Sum[13], carry14);
    fulladder a14 (A[14], B[14], carry14, Sum[14], carry15);
    fulladder a15 (A[15], B[15], carry15, Sum[15], carry16);
    fulladder a16 (A[16], B[16], carry16, Sum[16], carry17);
    fulladder a17 (A[17], B[17], carry17, Sum[17], carry18);
    fulladder a18 (A[18], B[18], carry18, Sum[18], carry19);
    fulladder a19 (A[19], B[19], carry19, Sum[19], carry20);
    fulladder a20 (A[20], B[20], carry20, Sum[20], carry21);
    fulladder a21 (A[21], B[21], carry21, Sum[21], carry22);
    fulladder a22 (A[22], B[22], carry22, Sum[22], carry23);
    fulladder a23 (A[23], B[23], carry23, Sum[23], carry24);
    fulladder a24 (A[24], B[24], carry24, Sum[24], carry25);
    fulladder a25 (A[25], B[25], carry25, Sum[25], carry26);
    fulladder a26 (A[26], B[26], carry26, Sum[26], carry27);
    fulladder a27 (A[27], B[27], carry27, Sum[27], carry28);
    fulladder a28 (A[28], B[28], carry28, Sum[28], carry29);
    fulladder a29 (A[29], B[29], carry29, Sum[29], carry30);
    fulladder a30 (A[30], B[30], carry30, Sum[30], carry31);
    fulladder a31 (A[31], B[31], carry31, Sum[31], carry32);
    
    assign carry[0:32] = {carry0, carry1, carry2, carry3, carry4, carry5, carry6, carry7, carry8, carry9, carry10, carry11, carry12, carry13, carry14, carry15, carry16, carry17, carry18, carry19, carry20, carry21, carry22, carry23, carry24, carry25, carry26, carry27, carry28, carry29, carry30, carry31, carry32};

endmodule
