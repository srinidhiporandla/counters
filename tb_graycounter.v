`include "gray_counter.v"
//`include "gray_counter_dff.v"
module tb();
reg clk,rst;
wire [2:0]count;
gray_counter dut(clk,rst,count);
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
