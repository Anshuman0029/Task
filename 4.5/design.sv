


 `timescale 1ns/1ns

module half_adder 
(
   input a,
   input b,
   output sum,
   output carry
);
 
 
  assign sum   = a ^ b;  // bitwise xor
  assign carry = a & b;  // bitwise and
 
endmodule // half_adder


module fulladder(s,cout,a,b,cin);
    input a,b,cin;
    output s,cout;
    assign s = a^b^cin;
    assign cout = a&&b || a&&cin || b&&cin;

endmodule

module threebit(output sum0, sum1,sum2, cout, input a0,a1,a2,b0, b1, b2);
  
  wire c1,c2;
  half_adder h(a0,b0,sum0, c1);
  fulladder f(sum1,c2,a1,b1,c1); 
  fulladder f1(sum2,cout,a2,b2,c2);
  

endmodule

