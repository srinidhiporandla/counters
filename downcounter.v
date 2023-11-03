module downcounter(clk,rst,count);
input clk,rst;
output reg [2:0]count;
always@(posedge clk)begin
	if(rst) begin
		count=0;
	end
	else begin
		count=count-1;
	end
end
endmodule
