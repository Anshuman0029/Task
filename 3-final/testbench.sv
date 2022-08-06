// Code your testbench here
// or browse Examples

`timescale 1ns / 1ns


module bitwise_tb();
 
	// Inputs
  reg [1:0] t_x;
  reg [1:0] t_y;

	// Outputs
  reg  t_z;
  task compare(input reg[1:0]t_x,t_y, reg t_z);
     
     $display("x=%d, y=%d", t_x,t_y);
      begin
           if(t_z) begin
            $display("Both numbers are equal");
          end else begin 
            $display("Numbers are not equal");
          end
      end
  endtask
	// Instantiate the Unit Under Test (UUT)
	bitwise bw1 (
      .x(t_x), 
      .y(t_y),  
      .z(t_z) 
	);

	initial begin
      
      $dumpfile("bwt.vcd");
      $dumpvars(1,bitwise_tb);
		t_x = 2'b11;
		t_y = 2'b10;	
      	#10
      compare(t_x,t_y,t_z);

	t_x = 3;
	t_y = 1;
      	#10
      compare(t_x,t_y,t_z);


      	t_x = 2;
	t_y = 1;
      	#10
      compare(t_x,t_y,t_z);
  

      	t_x = 3;
	t_y = 3;
      	#10
      compare(t_x,t_y,t_z);
     
 
      
      	t_x = 1;
	t_y = 1;
      	#10
      compare(t_x,t_y,t_z);
    

      	$finish;
	end	
    
     

endmodule
