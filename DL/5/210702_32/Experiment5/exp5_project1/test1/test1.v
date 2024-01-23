module test1(clk_50mhz,rst,d0,d1,a,b,c,d,e,f,g,ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,h);
input clk_50mhz,rst;
wire h;
assign h = 1'b0;
input [3:0]d0,d1;
wire [3:0]d2,d3,d4,d5,d6,d7;
assign d2=4'b0010;
assign d3=4'b0100;
assign d4=4'b0111;
assign d5=4'b0000;
assign d6=4'b0001;
assign d7=4'b0010;
output a,b,c,d,e,f,g,ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,h;

wire [2:0]sel;
wire [3:0]y;
wire clk;

f_d(.rst(rst),.clk_50mhz(clk_50mhz),.clk_1khz(clk));
counter0_7(.cp(clk),.dout(sel));
Three_8(.in(sel),.out1(ds1),.out2(ds2),.out3(ds3),.out4(ds4),.out5(ds5),.out6(ds6),.out7(ds7),.out8(ds8));
sel_8_1(.sel(sel),.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7),.y(y));
LED(.data(y),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));

endmodule