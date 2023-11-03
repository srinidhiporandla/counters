module gray_counter(clk,rst,count);
input clk,rst;
output reg [2:0]count;
reg [2:0] bin_count;
always@(posedge clk) begin
	if(rst)begin
		bin_count=0;
	end	
	else begin
		bin_count=bin_count+1;
		count[2]=bin_count[2];
		count[1]=bin_count[2]^bin_count[1];
		count[0]=bin_count[1]^bin_count[0];
	end
end

endmodule
