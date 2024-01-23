module f_d_fwl(clk,rst,n_rst,clk_10hz,clk_100hz,clk_1khz,o);
input clk,rst,n_rst;
output clk_10hz,clk_100hz,clk_1khz;
output [15:0]o;
reg [15:0]o;
wire CLK;
f_d(.rst(rst),.clk_50mhz(clk),.clk_1hz(CLK),.clk_10hz(clk_10hz),.clk_100hz(clk_100hz),.clk_1khz(clk_1khz));
FlowingWaterLight(.n_reset(n_rst),.clk(CLK),.out(o));
endmodule