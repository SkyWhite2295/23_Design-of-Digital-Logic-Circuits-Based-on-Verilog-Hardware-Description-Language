module Dff_p(clk,d,q,n_q);
input clk,d;
output q,n_q;
reg q,n_q;
always @ (posedge clk)
begin
	q <= d;
	n_q <= ~d;
end
endmodule