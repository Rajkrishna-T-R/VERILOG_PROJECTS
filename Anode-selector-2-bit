`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rajkrishna T R , Neha Fathima S
// 
// Create Date: 22.07.2025 21:25:06
// Design Name: Anode selecting Logic for seven segment display (This controls only Two of the Displays in the set of four)
// Module Name: Anode_Selector_2_bit
// Project Name:
// Target Devices: 
// Tool Versions: 
// Description: This can be used for selecting anode for the seven segment display 
//              Boolean board (xc7s50csga324-1 or 2) 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:Anode is active low signal
// 
//////////////////////////////////////////////////////////////////////////////////


module Anode_Selector_2_bit
                            (

                            A,
                            
                            B,
                            
                            S
                            
                            );

    input S;
    
    output reg A,B;
   
    always@(*)
    
        begin
        
            case(S)  // According to binary data given this wll activate one of the signal
            
            1'b0: {A,B} = {1'b0,1'b1};   
            
            1'b1: {A,B} = {1'b1,1'b0};
            
            default: {A,B} = 2'bxx;
            
            endcase
            
        end
        
endmodule
