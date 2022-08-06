// Code your design here

`timescale 1ns / 1ns
module bitwise(x,y,z);
  input [1:0] x,y;
  output reg z;
  
  
   always @(x or y) begin
     if ((x[0] == y[0]) && (x[1] == y[1])) begin  
         assign z = 1;
     end else begin 
         assign z = 0;
     end
     
     
  end
  
endmodule