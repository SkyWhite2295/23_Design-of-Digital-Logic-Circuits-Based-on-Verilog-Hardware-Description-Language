module f_d_50m_10(clk_50mhz,rst,clk_10hz);
input clk_50mhz,rst;
output clk_10hz;
reg clk_10hz;
reg[31:0]cntl;
parameter N = 5000000;
always @(posedge clk_50mhz)
if(!rst)
	begin
		cntl <= 1'b0;
		clk_10hz <= 1'b0;
	end
else
	if(cntl < N/2 -1)
		cntl <= cntl + 1'b1;
	else
		begin
			cntl<=1'b0;
			clk_10hz<= ~clk_10hz;
		end
endmodule