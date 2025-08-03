`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rajkrishna T R, Neha Fathima S
// 
// Create Date: 22.07.2025 21:54:54
// Design Name: 
// Module Name: MUX_2_driver
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This will be working in synchronism with the counter for selecting the mux lines
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX_2_driver(
                    A,
                    
                    B,
                    
                    S,
                    
                    P,
                    
                    dp
                    
                    );
input [6:0] A,B;

input S;

output [6:0]P;

output dp;


assign P=(S?B:A);

assign dp=1'b1;


endmodule
