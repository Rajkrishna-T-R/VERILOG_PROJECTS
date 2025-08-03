`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rajkrishna T R, Neha Fathima S
// 
// Create Date: 22.07.2025 21:14:23
// Design Name: 
// Module Name: mod_6_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Counter which can count till  a certain number (here 0-5) in synchronism with clock signal
//              It has a set time mode which will hold the count 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mod_6_counter
                   (


                    count,
                    
                    clkmain,
                    
                    set_time,
                    
                    carry,
                    
                    clear
                    
                    );
input clkmain;    // Main clock working with carry from mod6 counter

input set_time;   // for time setting

input clear;      // for clearing count

output reg [2:0]count; // count 3 bit 

output reg carry;      // carry for subsequent digit

always@(posedge clkmain  or posedge clear)

 begin
 
    if(clear==1'b1)     // major condition

      begin 

        count<=3'd0;

        carry<=1'b0;

      end

      else if(set_time>1'b0) // time setting mode

        begin

           if(count>=3'd5)   // counting for setting time

               begin

                count<=3'd0;

                carry<=1'b0;  // Only one block either seconds or minutes or hour is                       
                              // setting at a time so no need for carry propagation to next block

               end

           else 

                begin

                    count<=count+1'b1;  //counting for setting time

                    carry<=1'b0;

                end

        end   

         else if (count>=3'd5)          // Maximum normal count needed condition

            begin

                count<=3'd0;

                carry<=1'b1;            // carry propagation normal

            end

        else                             // Normal operation 

            begin

                count<=count+1'b1;

                carry<=1'b0;

            end
    end

endmodule
