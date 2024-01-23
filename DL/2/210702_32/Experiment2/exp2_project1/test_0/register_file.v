module register_file
#( parameter N = 4,W = 3
)
(
input clk,
input cs,
input w_r,
input[W-1:0] addr,
input[N-1:0] w_data,
output [N-1:0] r_data
);
reg[N-1:0]array_reg[2**W - 1:0];
assign r_data = (!cs&&!w_r)?array_reg[addr]:4'hz;
always @(posedge clk)
if(!cs&&w_r)
	array_reg[addr] <= w_data;
endmodule
