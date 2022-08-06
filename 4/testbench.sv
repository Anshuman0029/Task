  `timescale 1ns/1ns


 

module fulladd_tb;  
    // 1. Declare testbench variables  
  reg [2:0] a;  
  reg [2:0] b;  
   reg c_in;  
  wire [2:0] sum;
  reg c_out;
    
  
    // 2. Instantiate the design and connect to testbench variables  
   fulladd  fa0 ( .a (a),  
                  .b (b),  
                  .c_in (c_in),  
                  .c_out (c_out),  
                  .sum (sum));  
  
   initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1,fulladd_tb);
      a=1;
      b=0;
      c_in =0;
      #10
     $display("a = %d, b = %d, sum = %d, cout = %d",a,b,sum,c_out);
      a=3;
      b=7;
      c_in =0;
      #10
     $display("a = %d, b = %d, sum = %d, cout = %d",a,b,sum,c_out);
      a=5;
      b=1;
      c_in =0;
      #10
     $display("a = %d, b = %d, sum = %d, cout = %d",a,b,sum,c_out);
      $finish;
   end
  
 
endmodule 
