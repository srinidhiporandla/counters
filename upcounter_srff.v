`include "sr_ff.v"
module upcounter(clk,rst,count);
input clk,rst;
output [2:0]count;
and (s2,~count[2],count[1],count[0]);
and (r2,count[2],count[1],count[0]);
and (s1,~count[1],count[0]);
and (r1,count[1],count[0]);
and (s0,~count[0]);
and (r0,count[0]);

sr_ff u2(clk,rst,s2,r2,count[2]);
sr_ff u1(clk,rst,s1,r1,count[1]);
sr_ff u0(clk,rst,s0,r0,count[0]);
endmodule
