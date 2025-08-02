`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Neha Fathima S, Rajkrishna T R
// 
// Create Date: 22.07.2025 21:53:46
// Design Name: 
// Module Name: MUX_4_driver
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


module MUX_4_driver(


                   result,
                   
                   dp,
                   
                   A,
                   
                   B,
                   
                   C,
                   
                   D,
                   
                   S0,
                   
                   S1
                   
                   );
    input [6:0] A,B,C,D;
    
    input S0,S1;
    
    output wire dp;
    
    output reg [6:0]result;
    
    always@(*)
    
        begin
        
            case({S1,S0})
            
            2'b00:result=A;
            
            2'b01:result=B;
            
            2'b10:result=C;
            
            2'b11:result=D;
            
            default:result=7'bx;
            
            endcase
            
        end
        
        assign dp=1'b1;
        
endmodule
