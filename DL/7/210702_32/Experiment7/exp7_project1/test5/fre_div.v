module fre_div(clk_50mhz,rst,clk_1hz,clk_10hz,clk_100hz,clk_1khz); 
input clk_50mhz,rst;
output clk_1hz,clk_10hz,clk_100hz,clk_1khz;
reg clk_1hz,clk_10hz,clk_100hz,clk_1khz; 
reg [31:0] cnt1,cnt10,cnt100,cnt1k;
parameter N_1=50000000; 		//仿真时需要注释掉本行语句 
//parameter N_1=50; 				//仿真通过后需要将本行注释掉，并取消上一行注释。 
parameter N_10=5000000; 		//仿真时需要注释掉本行语句 
//parameter N_10=50; 				//仿真通过后需要将本行注释掉，并取消上一行注释。
parameter N_100=500000; 		//仿真时需要注释掉本行语句 
//parameter N_100=50; 				//仿真通过后需要将本行注释掉，并取消上一行注释。
parameter N_1k=50000; 		//仿真时需要注释掉本行语句 
//parameter N_1k=50; 				//仿真通过后需要将本行注释掉，并取消上一行注释。

always @(posedge clk_50mhz) 
if(! rst)
	begin
		cnt1 <= 1'b0; 
		clk_1hz <= 1'b0; 
		clk_10hz <= 1'b0;
		clk_100hz <= 1'b0;
		clk_1khz <= 1'b0;
	end 
else
	if(cnt1==N_1/2-1)
		begin
			cnt1k <=1'b0;
			clk_1khz<=~clk_1khz;
			cnt100 <=1'b0;
			clk_100hz<=~clk_100hz;
			cnt10 <=1'b0;
			clk_10hz<=~clk_10hz;
			cnt1 <=1'b0;
			clk_1hz<=~clk_1hz;
		end
	else if(cnt10==N_10/2-1)
		begin
			cnt1k <=1'b0;
			clk_1khz<=~clk_1khz;
			cnt100 <=1'b0;
			clk_100hz<=~clk_100hz;
			cnt10 <=1'b0;
			clk_10hz<=~clk_10hz;
			cnt1 <=cnt1+1'b1;
		end
	else if(cnt100==N_100/2-1)
		begin
			cnt100 <=1'b0;
			clk_100hz<=~clk_100hz;
			cnt1k <=1'b0;
			clk_1khz<=~clk_1khz;
			cnt1 <=cnt1+1'b1; 
			cnt10 <=cnt10+1'b1;
		end
	else if(cnt1k==N_1k/2-1)
		begin
			cnt1k <=1'b0;
			clk_1khz<=~clk_1khz;
			cnt10 <=cnt10+1'b1;
			cnt100 <=cnt100+1'b1; 
			cnt1 <=cnt1+1'b1;
		end
	else
		begin
			cnt1 <=cnt1+1'b1;
			cnt10 <=cnt10+1'b1;
			cnt100 <=cnt100+1'b1; 
			cnt1k <=cnt1k+1'b1; 
		end
	
endmodule