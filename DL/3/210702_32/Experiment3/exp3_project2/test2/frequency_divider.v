module frequency_divider(clk_50mhz,rst,clk_5hz);
input clk_50mhz,rst;
output clk_5hz;
reg clk_5hz;
reg[31:0]cntl;
//parameter N = 10000000;
parameter N = 10;
always @(posedge clk_50mhz)
if(!rst)
	begin
		cntl <= 1'b0;
		clk_5hz <= 1'b0;
	end
else
	if(cntl < N/2 -1)
		cntl <= cntl + 1'b1;
	else
		begin
			cntl<=1'b0;
			clk_5hz<= ~clk_5hz;
		end
endmodule