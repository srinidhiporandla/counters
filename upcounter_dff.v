`include "dff_beh.v"
module upcounter(clk,rst,count);
input clk,rst;
output [2:0]count;

and (n1,~count[2],count[1],count[0]);
and (n2,count[2],~count[1]);
and (n3,count[2],~count[0]);
or (n4,n1,n2,n3);
xor (n5,count[1],count[0]);
not (n6,count[0]);
dff u2(clk,rst,n4,count[2]);
dff u1(clk,rst,n5,count[1]);
dff u0(clk,rst,n6,count[0]);
endmodule
