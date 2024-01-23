module test2(in_a,in_b,in_c,in_d,LDN,ENP,ENT,CLRN,a,b,c,d,e,f,g,sel,rst,clk,clk_10hz,clk_100hz,clk_1khz);
input in_a,in_b,in_c,in_d,LDN,ENP,ENT,CLRN,rst,clk;
output a,b,c,d,e,f,g,sel,clk_10hz,clk_100hz,clk_1khz;
wire CLK;
f_d(.rst(rst),.clk_50mhz(clk),.clk_1hz(CLK),.clk_10hz(clk_10hz),.clk_100hz(clk_100hz),.clk_1khz(clk_1khz));
counter_led(.in_a(in_a),.in_b(in_b),.in_c(in_c),.in_d(in_d),.LDN(LDN),.ENP(ENP),.ENT(ENT),.CLRN(CLRN),.CLK(CLK),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.sel(sel));
endmodule