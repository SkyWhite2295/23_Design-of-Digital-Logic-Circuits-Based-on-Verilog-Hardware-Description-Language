module counter_led(in_a,in_b,in_c,in_d,LDN,ENP,ENT,CLRN,a,b,c,d,e,f,g,sel,CLK);
input in_a,in_b,in_c,in_d,LDN,ENP,ENT,CLRN,CLK;
output a,b,c,d,e,f,g,sel;
wire [3:0]Q;
wire QD,QC,QB,QA;
assign Q={QD,QC,QB,QA};
wire [3:0]data;
my_74LS163(.A(in_a),.B(in_b),.C(in_c),.D(in_d),.LDN(LDN),.ENP(ENP),.ENT(ENT),.CLRN(CLRN),.CLK(CLK),.QD(QD),.QC(QC),.QB(QB),.QA(QA));
LED(.data(Q),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.sel(sel));
endmodule