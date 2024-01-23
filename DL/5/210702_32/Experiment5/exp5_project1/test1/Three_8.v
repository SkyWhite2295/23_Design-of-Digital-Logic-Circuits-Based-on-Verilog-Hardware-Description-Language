module Three_8(in,out1,out2,out3,out4,out5,out6,out7,out8);
input [2:0]in;
output out1,out2,out3,out4,out5,out6,out7,out8;
reg out1,out2,out3,out4,out5,out6,out7,out8;
always@(in)
begin
	case(in)
		3'b000:{out1,out2,out3,out4,out5,out6,out7,out8}=8'b01111111;
		3'b001:{out1,out2,out3,out4,out5,out6,out7,out8}=8'b10111111;
		3'b010:{out1,out2,out3,out4,out5,out6,out7,out8}=8'b11011111;
		3'b011:{out1,out2,out3,out4,out5,out6,out7,out8}=8'b11101111;
		3'b100:{out1,out2,out3,out4,out5,out6,out7,out8}=8'b11110111;
		3'b101:{out1,out2,out3,out4,out5,out6,out7,out8}=8'b11111011;
		3'b110:{out1,out2,out3,out4,out5,out6,out7,out8}=8'b11111101;
		3'b111:{out1,out2,out3,out4,out5,out6,out7,out8}=8'b11111110;
	endcase
end
endmodule