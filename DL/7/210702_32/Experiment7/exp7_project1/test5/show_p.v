module show_p(P,P_led);
input [2:0]P;
output [3:0]P_led;
reg [3:0]P_led;

always @ (P)
	case(P)
		3'b001:P_led=4'b0111;
		3'b010:P_led=4'b1011;
		3'b011:P_led=4'b1101;
		3'b100:P_led=4'b1110;
		default:P_led=4'b1111;
	endcase
endmodule