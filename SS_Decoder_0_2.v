`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rajkrishna T R, Neha Fathima S
// 
// Create Date: 22.07.2025 21:34:00
// Design Name: 
// Module Name: SS_Decoder_0_2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Decodes  0,1,2 for showing in seven segment display
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SS_Decoder_0_2(


                     input [1:0]bin,
                     
                     output reg[6:0]a_to_g
                     
                    
                     );



always@(bin)

    begin // a,b,c,d,e,f,g from 6 to 0  a is MSB and light glows when input is 1
    
      case (bin)
      
            4'd0: a_to_g = 7'b0000001;
            
            4'd1: a_to_g = 7'b1001111;
            
            4'd2: a_to_g = 7'b0010010;
            
            default:a_to_g=7'b0000000;
               
      endcase
      
     end
     
endmodule  

    
           


