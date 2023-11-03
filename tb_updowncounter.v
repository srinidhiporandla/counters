`include "up_downcounter.v"
module tb();
reg clk,rst,up_down;
wire [2:0]count;
up_downcounter dut(clk,rst,up_down,count);
initial begin
	clk=0;
	forever #5 clk=~clk;
end
initial begin
	rst=1;
	@(posedge clk);
	rst=0;
	up_down=0;
	#200;
	up_down=1;
	#200;
	$finish;
end
endmodule
