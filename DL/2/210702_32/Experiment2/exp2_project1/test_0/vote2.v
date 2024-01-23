module vote2(A,B,C,Y);
input A,B,C;
output Y;
assign 
Y = (~A&~B&~C)|(A&~B&C)|(A&B&~C)|(A&B&C);
endmodule