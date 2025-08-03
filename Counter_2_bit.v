`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rajkrishna T R, Neha Fathima S
// 
// Create Date: 22.07.2025 21:44:51
// Design Name: 
// Module Name: Counter_2_bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This is a regular 2 bit counter used to count with 
//              active high clock and reset (clr) pin
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Counter_2_bit

                 (


                 clk1,                
                
                 clr,
                 
                 C0,
                 
                 C1
                 
                 
                 );
                 
    input clk1;
    
    input clr;
    
    reg [1:0]count;
    
    output  C0,C1;
    
    
   
    

    always @(posedge clk1 or posedge clr) 
    
        begin
        
            if (clr==1'b1) 
            
                begin
                
                    count <= 0;
                    
                           
                end 
                
            else if (count==2'b11) 
            
                begin
                
                    count <= 0;
                  
                                                      
                    
                end 
                
            else 
            
                begin
                
                    count <= count + 1;
                    
                    
                    
                end
                
        end

assign {C1,C0}=count;


endmodule

