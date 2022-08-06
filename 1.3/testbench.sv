// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`timescale 1ns / 1ns

module bitwise_tb();

	// Inputs
  reg [2:0] t_x;
  reg [2:0] t_y;

	// Outputs
  wire t_z;

	
	// Instantiate the Unit Under Test (UUT)
	bitwise bw1 (
      .x(t_x), 
      .y(t_y),  
      .z(t_z) 
	);

	initial begin
      
      $dumpfile("bwt.vcd");
      $dumpvars(1,bitwise_tb);
		t_x = 3'b011;
		t_y = 3'b100;	
      	#10
      $display("x=%d, y=%d, z=%d", t_x,t_y, t_z);
	  	t_x = 7;
		t_y = 5;
      	#10
      $display("x=%d, y=%d, z=%d", t_x,t_y, t_z);

      	t_x = 0;
		t_y = 1;
      	#10
      $display("x=%d, y=%d, z=%d", t_x,t_y, t_z);

      	t_x = 3;
		t_y = 3;
      	#10
      $display("x=%d, y=%d, z=%d", t_x,t_y, t_z);


      	$finish;
	end	

endmodule
