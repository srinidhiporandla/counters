module up_downcounter(clk,rst,up_down,count);
input clk,rst,up_down;
output reg [2:0]count;
always@(posedge clk)begin
	if(rst) count=0;
	else begin
		if(up_down) begin

			count=count+1;
		end
		else begin
			count=count-1;
		end
	end
end
endmodule
