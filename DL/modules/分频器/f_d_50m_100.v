module f_d_50m_100(clk_50mhz,rst,clk_100hz);
input clk_50mhz,rst;
output clk_100hz;
reg clk_100hz;
reg[31:0]cntl;
parameter N = 500000;
always @(posedge clk_50mhz)
if(!rst)
	begin
		cntl <= 1'b0;
		clk_100hz <= 1'b0;
	end
else
	if(cntl < N/2 -1)
		cntl <= cntl + 1'b1;
	else
		begin
			cntl<=1'b0;
			clk_100hz<= ~clk_100hz;
		end
endmodule