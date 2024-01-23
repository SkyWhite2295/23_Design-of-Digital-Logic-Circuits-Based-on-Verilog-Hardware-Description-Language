module test2(clk,rst,a,b,c,d,e,f,g,swc,swr,ds);
input clk,rst;
input [3:0]swc;
output a,b,c,d,e,f,g;
output [3:0] swr;
output ds;
wire clk_1khz;
wire [3:0]key;
f_d(.clk_50mhz(clk),.clk_1khz(clk_1khz),.rst(rst));
keyboard4_4(.swc(swc),.swr(swr),.clk(clk_1khz),.key(key));
LED(.data(key),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
assign ds=0;
endmodule