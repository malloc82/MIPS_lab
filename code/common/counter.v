module counter
  #(parameter SIZE=8)
   (input clk, reset,
    input [SIZE-1:0]      init,
    output reg [SIZE-1:0] count);

   always@(posedge clk or reset)
     if (reset)
       count <= init;
     else
       count <= count + 1;

endmodule // counter

