`include "dff_beh.v"
module gray_counter(clk,rst,count);
input clk,rst;
output [2:0]count;
and (n1,count[1],~count[0]);
and (n2,count[2],count[0]);
or (d2,n1,n2);
and (n3,count[1],~count[0]);
and (n4,count[0],~count[2]);
or (d1,n3,n4);
xnor (d0,count[2],count[1]);
dff u2(clk,rst,d2,count[2]);
dff u1(clk,rst,d1,count[1]);
dff u0(clk,rst,d0,count[0]);
endmodule
