`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rajkrishna T R , Neha Fathima S
// 
// Create Date: 22.07.2025 21:38:44
// Design Name: Anode selecting Logic for seven segment display (This controls all four of the Displays in the set of four)
// Module Name: Anode_Selector_4_bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:This can be used for selecting anode for the seven segment display 
//              Boolean board (xc7s50csga324-1 or 2) 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:Anode is active low signal
// 
//////////////////////////////////////////////////////////////////////////////////


module Anode_Selector_4_bit(

 
                            A,
                            
                            B,
                            
                            C,
                            
                            D,
                            
                            S0,
                            
                            S1
                            
                            );
    input S0,S1;
    
    output reg A,B,C,D;
    
    
    // This is a modified demux like behaving circuit
    
    always@(*)  
    
    begin
        case({S0,S1})   // According to binary data given this wll activate one of the signal
        
        2'b00: {A,B,C,D} = {1'b0,1'b1,1'b1,1'b1};
        
        2'b01: {A,B,C,D} = {1'b1,1'b0,1'b1,1'b1};
        
        2'b10: {A,B,C,D} = {1'b1,1'b1,1'b0,1'b1};
        
        2'b11: {A,B,C,D} = {1'b1,1'b1,1'b1,1'b0};
        
        default: {A,B,C,D} = 4'bxxxx;
        
        endcase
        
    end
    
endmodule