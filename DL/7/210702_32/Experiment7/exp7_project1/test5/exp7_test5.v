module exp7_test5(clk,rst_div,rst,p_1,p_2,p_3,p_4,host,jt,jf,en1,en2,en3,P_LED,ds,a,b,c,d,e,f,g,h,sound,row,col);
input clk,rst_div;
input rst,p_1,p_2,p_3,p_4,host,jt,jf;
output en1,en2,en3;
output [3:0]P_LED;
output [7:0]ds;
output a,b,c,d,e,f,g;
output h;
output sound;
output [15:0] row;               
output [3:0] col;  
wire [2:0]w;
wire cl;
wire [2:0] r1;
wire [3:0] s1,s2,s3,s4;
wire [2:0] c2;
wire [3:0] d0,d1,d2,d3,d4,d5,d6,d7;
wire [3:0] s5;
fre_div(.clk_50mhz(clk),.rst(rst_div),.clk_1khz(c1));
responder_upgrade(.clk(c1),.reset(rst),.p_1(p_1),.p_2(p_2),.p_3(p_3),.p_4(p_4),.h(host),.jt(jt),.jf(jf),.en1(en1),.en2(en2),.en3(en3),.P(r1),.p1_score(s1),.p2_score(s2),.p3_score(s3),.p4_score(s4),.sound(sound),.winner(w));
counter0_7(.cp(c1),.dout(c2));
show_p(.P(r1),.P_led(P_LED));
show_score(.p1_s(s1),.p2_s(s2),.p3_s(s3),.p4_s(s4),.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7),.h(h));
sel_8_1(.sel(c2),.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7),.y(s5));
decoder(.in(c2),.out(ds));
LED_7(.data(s5),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));

led(.clk(c1),.row(row),.col(col),.w(w));

endmodule