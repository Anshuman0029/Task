`timescale 1ns/1ns

module fulladd (input [2:0] a,  
                 input [2:0] b,  
                   input c_in, 
                  output reg c_out,  
                output reg [2:0] sum);  
  

  always @ (a or b or c_in) begin  
          {c_out, sum} = a + b + c_in;  

  end  
endmodule  