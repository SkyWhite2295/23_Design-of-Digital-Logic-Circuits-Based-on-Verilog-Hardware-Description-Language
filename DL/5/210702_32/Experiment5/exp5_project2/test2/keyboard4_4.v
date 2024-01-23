module keyboard4_4(swc,swr,clk,key);
input [3:0]swc;
input clk;
output [3:0] swr,key;
reg [3:0] swr,key;
always @(posedge clk)
begin
	case(swr)
	4'b0111:swr<=4'b1011;
	4'b1011:swr<=4'b1101;
	4'b1101:swr<=4'b1110;
	4'b1110:swr<=4'b0111;
	default:swr<=4'b0111;
	endcase
	end
always @(posedge clk)
begin
if(swc!=4'b1111)
		case({swc,swr})
			8'b1110_1110:key<=4'b1111;
			8'b1101_1110:key<=4'b1110;
			8'b1011_1110:key<=4'b1101;
			8'b0111_1110:key<=4'b1100;
			8'b1110_1101:key<=4'b1011;
			8'b1101_1101:key<=4'b1010;
			8'b1011_1101:key<=4'b1001;
			8'b0111_1101:key<=4'b1000;
			8'b1110_1011:key<=4'b0111;
			8'b1101_1011:key<=4'b0110;
			8'b1011_1011:key<=4'b0101;
			8'b0111_1011:key<=4'b0100;
			8'b1110_0111:key<=4'b0011;
			8'b1101_0111:key<=4'b0010;
			8'b1011_0111:key<=4'b0001;
			8'b0111_0111:key<=4'b0000;
			default:key<=4'b0000;
		endcase
end
endmodule