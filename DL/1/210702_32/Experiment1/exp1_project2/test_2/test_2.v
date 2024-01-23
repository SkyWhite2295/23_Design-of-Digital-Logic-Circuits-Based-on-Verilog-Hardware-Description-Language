module test_2(sel,d0,d1,y);
input [2:0] sel;
input[3:0] d0,d1;
output [3:0] y;
reg [3:0]y;
always @(sel,d0,d1)
begin
case (sel)
3'b000:y=d0;
3'b001:y=d1;
3'b010:y=4'b0010;
3'b011:y=4'b0100;
3'b100:y=4'b0111;
3'b101:y=4'b0000;
3'b110:y=4'b0001;
3'b111:y=4'b0010;
endcase
end
endmodule
