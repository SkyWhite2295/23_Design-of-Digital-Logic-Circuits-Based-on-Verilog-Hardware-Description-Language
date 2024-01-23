module d_latch(q,nq,en,d);
output q,nq;
input en,d;
wire wnr,wns,wq,wnq,nd;
nor nd1(wq,wns,wnq),nd2(wnq,wnr,wq);
and ad1(wns,nd,en),ad2(wnr,en,d);
nor nr1(nd,d);
assign q = wq;
assign nq = wnq;
endmodule