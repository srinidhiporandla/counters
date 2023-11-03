//`include "upcounter_dff.v"
//`include "dff_asyn.v"
//`include "upcounter_srff.v"
//`include "sr_ff.v"
`include "upcounter_jkff.v"

//`include "upcounter.v"
module tb();
reg clk,rst;
wire [2:0]count;
upcounter dut(clk,rst,count);
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	rst=1;
	@(posedge clk);
	rst=0;
	#200;
	$finish;
end
endmodule
