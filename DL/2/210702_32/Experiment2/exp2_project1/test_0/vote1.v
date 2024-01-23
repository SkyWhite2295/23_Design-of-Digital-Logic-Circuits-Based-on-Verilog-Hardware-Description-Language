module vote1(n_T,n_M,X,Y);
	input n_T,n_M;
	input [3:0] X;
	output[6:0] Y;
	reg[6:0] Y;
		always @(n_T or n_M or X)
			if(!n_T)Y = 7'b111_1111;
		else if(!n_M)Y = 7'b000_0000;
			else case(X)
			4'b0000:Y=7'b111_1110;
			4'b0001:Y=7'b011_0000;
			4'b0011:Y=7'b110_1101;
			4'b0010:Y=7'b111_1001;
			4'b0110:Y=7'b011_0011;
			4'b0111:Y=7'b101_1011;
			4'b0101:Y=7'b101_1111;
			4'b0100:Y=7'b111_0000;
			4'b1100:Y=7'b111_1111;
			4'b1000:Y=7'b111_1011;
			default:Y=7'b000_0000;
			endcase
endmodule