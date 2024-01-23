module my_74LS163(
    input A,B,C,D,
    output reg QA,QB,QC,QD, 
    input LDN,
    input ENP,
    input ENT,
    input CLRN,
    output RCO,
    input  CLK
    );
   
    assign RCO=QA&QB&QC&QD;
    always@(posedge CLK)
   begin
    if(~CLRN)
    {QD,QC,QB,QA}<=4'b0000;
    else if(~LDN)
    {QD,QC,QB,QA}<={D,C,B,A};
    else if(ENT&ENP)
    {QD,QC,QB,QA}<={QD,QC,QB,QA}+4'b0001;
    else
    {QD,QC,QB,QA}<={QD,QC,QB,QA}; 
   end
endmodule