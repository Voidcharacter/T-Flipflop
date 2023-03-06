module T_ff(T,clk,Rst,Q,Qb);
input T,clk,Rst;
output reg Q;
output Qb;
always @(posedge clk)
 begin
  if(Rst==1)
     Q<=0;
  else
   begin
    if(T==1)
      Q<=Qb;
    else
      Q<=Q;
   end
  end
assign Qb = ~Q;
endmodule