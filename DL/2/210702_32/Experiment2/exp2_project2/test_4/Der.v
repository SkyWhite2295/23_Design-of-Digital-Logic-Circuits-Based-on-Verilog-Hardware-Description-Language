module Der(en,code,adr);
input en;
input[2:0]code;
output[7:0]adr;
reg[7:0]adr;
always@(en,code)
	begin
		case({en,code})
		4'b1000:adr = 8'b11111110;
		4'b1001:adr = 8'b11111101;
		4'b1010:adr = 8'b11111011;
		4'b1011:adr = 8'b11110111;
		4'b1100:adr = 8'b11101111;
		4'b1101:adr = 8'b11011111;
		4'b1110:adr = 8'b10111111;
		4'b1111:adr = 8'b01111111;
		endcase
	end
endmodule