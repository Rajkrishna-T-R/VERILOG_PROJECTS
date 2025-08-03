`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rajkrishna T R, Neha Fathima S
// 
// Create Date: 22.07.2025 21:16:53
// Design Name: 
// Module Name: mod_3_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Counter which can count till  a certain number (here 0-2) in synchronism with clock signal
//              It has a set time mode which will hold the count 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mod_3_counter(

                   count,
                   
                   clkmain,
                   
                   set_time,
                   
                   clear
                   
                   );

input clkmain;    // Main clock working with carry from mod10 counter

input set_time;   // for time setting

input clear;      // for clearing count

output reg [1:0]count; // count 2 bit 



always@(posedge clkmain  or posedge clear)
 
 begin
    if(clear==1'b1)     // major condition
      
      begin 
      
        count<=2'd0;
        
       
      
      end
        
      
      else if(set_time>1'b0) // time setting mode
       
        begin
            
           if(count>=2'd2)   // counting for setting time
           
               begin
            
                count<=2'd0;
                
               
               
               end
            
           else 
            
                begin
                    
                    count<=count+1'b1;  //counting for setting time
                    
                    
                end
            
        end   
        
         else if (count>=2'd2)          // Maximum count needed condition
            
            begin
                     
                count<=2'd0;
                
               
        
            end
        
        else                             // Normal operation 
            
            begin
                
                count<=count+1'b1;
                
                
                
                
            end
    end
  
endmodule

