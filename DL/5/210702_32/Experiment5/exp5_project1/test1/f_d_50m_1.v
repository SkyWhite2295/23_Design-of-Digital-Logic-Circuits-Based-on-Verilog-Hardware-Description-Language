module f_d_50m_1(clk_50mhz,rst,clk_1hz);
input clk_50mhz,rst;
output clk_1hz;
reg clk_1hz;
reg[31:0]cntl;
parameter N = 50000000;
always @(posedge clk_50mhz)
if(!rst)
	begin
		cntl <= 1'b0;
		clk_1hz <= 1'b0;
	end
else
	if(cntl < N/2 -1)
		cntl <= cntl + 1'b1;
	else
		begin
			cntl<=1'b0;
			clk_1hz<= ~clk_1hz;
		end
endmodule