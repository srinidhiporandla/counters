`include "jk_ff.v"
module upcounter(clk,rst,count);
input clk,rst;
output [2:0]count;

and (j2,count[1],count[0]);
and (k2,count[1],count[0]);
buf(j1,count[0]);
buf (k1,count[0]);
buf (j0,1);
buf (k0,1);

jk_ff u2(clk,j2,k2,count[2]);
jk_ff u1(clk,j1,k1,count[1]);
jk_ff u0(clk,j0,k0,count[0]);
endmodule

