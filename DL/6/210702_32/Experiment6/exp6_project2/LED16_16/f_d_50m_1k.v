module f_d_50m_1k(clk_50mhz,rst,clk_1khz);
input clk_50mhz,rst;
output clk_1khz;
reg clk_1khz;
reg[31:0]cntl;
parameter N = 50000;
always @(posedge clk_50mhz)
if(!rst)
	begin
		cntl <= 1'b0;
		clk_1khz <= 1'b0;
	end
else
	if(cntl < N/2 -1)
		cntl <= cntl + 1'b1;
	else
		begin
			cntl<=1'b0;
			clk_1khz<= ~clk_1khz;
		end
endmodule