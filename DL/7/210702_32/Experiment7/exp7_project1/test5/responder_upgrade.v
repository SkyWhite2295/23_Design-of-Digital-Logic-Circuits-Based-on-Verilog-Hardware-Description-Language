module responder_upgrade(clk,reset,p_1,p_2,p_3,p_4,h,jt,jf,en1,en2,en3,P,p1_score,p2_score,p3_score,p4_score,sound,winner);

input clk,reset,p_1,p_2,p_3,p_4,h,jt,jf;

output en1,en2,en3;
reg en1,en2,en3;

output [2:0]P;
reg [2:0]P;

output [3:0]p1_score,p2_score,p3_score,p4_score;
reg [3:0]p1_score,p2_score,p3_score,p4_score;

output sound;
wire s;
assign s=(p_1&&p_2)&&(p_3&&p_4);
bufif0 b1(sound,clk,s);

output winner;
reg [2:0]winner;

always @(posedge clk or negedge reset) begin
	if (!reset) 
	begin 
		P<=3'b000;
		p1_score<=1'b0;
		p2_score<=1'b0;
		p3_score<=1'b0;
		p4_score<=1'b0;
		en1<=0;
		en2<=0;
		en3<=1;
	end 
	else if ({p_1,p_2,p_3,p_4} != 4'b1111 && en1 == 1) 
	begin 
		case ({p_1,p_2,p_3,p_4})
			4'b0111:P<=1;
			4'b1011:P<=2;
			4'b1101:P<=3;
			4'b1110:P<=4;
		endcase
		en1<=0;
		en2<=1;
	end 
	else if ({jt,jf} != 2'b11 && en2 == 1) 
	begin 
		if(!jt) 
			case(P)
				1:p1_score<=p1_score+1'b1;
				2:p2_score<=p2_score+1'b1;
				3:p3_score<=p3_score+1'b1;
				4:p4_score<=p4_score+1'b1;
			endcase
		else if(!jf) 
			case(P)
				1:if(p1_score) p1_score<=p1_score-1'b1;
				2:if(p2_score) p2_score<=p2_score-1'b1;
				3:if(p3_score) p3_score<=p3_score-1'b1;
				4:if(p4_score) p4_score<=p4_score-1'b1;
			endcase
		en2<=0;
		en3<=1;
	end 
	else if (h == 0 && en3 == 1)
	begin
		P<=3'b000;
		en1<=1;
		en3<=0;
	end
end

always @(posedge clk)
begin 
if (p1_score==4'b1111) winner<=3'b001;
else if (p2_score==4'b1111) winner<=3'b010;
else if (p3_score==4'b1111) winner<=3'b011;
else if (p4_score==4'b1111) winner<=3'b100;
else winner<=3'b000;
end

endmodule