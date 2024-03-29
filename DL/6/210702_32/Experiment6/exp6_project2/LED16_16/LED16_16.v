module LED16_16(clk_50,reset,r,c);
input clk_50,reset;
output [15:0]r;
output [3:0]c;
wire clk_1k;
f_d(.clk_50mhz(clk_50),.rst(reset),.clk_1khz(clk_1k));
led(.clk(clk_1k),.row(r),.col(c));
endmodule
