module counterUpDown
(
 input clk,
 input rst,

 input enable,
 input direction,

 output reg [6:0] out
);

always@(posedge clk)
begin
 if(rst)
   out<= 0;
 else
   begin
     if(enable)
   	begin
	  if(direction)
	     out <= out + 1;
	  else
           if(!direction)
	     out<=out -1;
	end
   end
     
end


endmodule
