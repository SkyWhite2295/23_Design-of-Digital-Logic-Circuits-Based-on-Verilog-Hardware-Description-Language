module counter0_7(cp,dout);
input cp;
output [2:0]dout;
reg [2:0]dout;
always @(posedge cp)
begin
	if(dout==3'b111)
		dout<=3'b000;
	else
		dout<=dout+1;
end
endmodule