`timescale 1ns/1ns

module threebittb();
   reg [2:0] a = 3'd0;
   reg [2:0] b = 3'd0;
   reg [2:0]sum;
   wire cout;
   threebit thrbit(sum[0], sum[1], sum[2], cout, a[0], a[1], a[2],b[0],b[1], b[2]);
  
  task out(input reg[2:0]a,b,reg [2:0]sum, reg cout);
     
    $display("x=%d, y=%d, sum = %d cout = %d", a ,b, sum, cout);
      begin
        if(cout) begin
          $display("The sum is not correct");
           $finish;
      end
      end
  endtask
   initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1,threebittb);
     

      a=6;
      b=1;
      #10
     out(a,b,sum,cout);
      a=2;
      b=3;
      #10
      out(a,b,sum,cout);
      a=5;
      b=4;
      #10
      out(a,b,sum,cout);
      a=6;
      b=4;
      #10
      out(a,b,sum,cout);
      $finish;
   end
endmodule