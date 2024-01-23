module counter0_7(cp,dout);
input cp;
output [2:0]dout;
reg [2:0]dout;
always @(posedge cp)
dout<=dout+1;
endmodule