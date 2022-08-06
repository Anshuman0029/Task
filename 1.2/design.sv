// Code your design here
`timescale 1ns / 1ns
module bitwise(x,y,z);
   input [2:0] x,y;
   output [2:0] z;
  
   assign z = x | y;
  
endmodule