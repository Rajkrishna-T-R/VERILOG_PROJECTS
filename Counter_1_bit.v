`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rajkrishna T R, Neha Fathima S
// 
// Create Date: 22.07.2025 21:43:27
// Design Name: 
// Module Name: Counter_1_bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This is a regular 1 bit counter used to count with 
//              active high clock and reset (clr) pin
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Counter_1_bit(


                 clk1,
                 
                 count,
                 
                 clr
                 
                );
                 
    input clk1;
    
    input clr;
    
    output reg count;
    
  
    

    always @(posedge clk1 or posedge clr) 
    
        begin
        
            if (clr==1'b1) 
            
                begin
                
                    count <= 0;
                    
                 
                end 
                
            else if (count==1'b1) 
            
                begin
                
                    count <= 0;
                                   
                    
                end 
                
            else 
            
                begin
                
                    count <= count + 1;
                    
                end
                
        end

endmodule



