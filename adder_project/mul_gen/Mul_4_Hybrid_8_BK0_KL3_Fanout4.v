

`include "Hybrid_8_BK0_KL3_Fanout4.v"

module  Mul_4_Hybrid_8_BK0_KL3_Fanout4_top (a,b,out,clk,rst);
 input [3:0]a;
 input [3:0]b;
output reg [7:0]out;
input clk;
input rst;
wire [7:0] out_w;
Mul_4_Hybrid_8_BK0_KL3_Fanout4  u0 (a,b,out_w);
always @(posedge clk ) begin
    if (rst) begin
        out<=0;
    end
    else begin
     out<= out_w;
    end
end
endmodule

module Mul_4_Hybrid_8_BK0_KL3_Fanout4 (
    a,b,out
);
input [3:0] a;
input [3:0] b;
output  [7:0] out;
// input clk , rst;


wire [7:0] bit_mux [3:0] ;
assign bit_mux[0]=(a[0])?b:0;
assign bit_mux[1]=(a[1])?{b,1'b0}:0;
assign bit_mux[2]=(a[2])?{b,2'b0}:0;
assign bit_mux[3]=(a[3])?{b,3'b0}:0;

    wire [7:0] bit_level2_sum[1:0];
    wire cout_2;
    Hybrid_8_BK0_KL3_Fanout4 Hybrid_8_BK0_KL3_Fanout4_2_0 (bit_mux[0],bit_mux[1],1'b0,bit_level2_sum[0],cout_2);
Hybrid_8_BK0_KL3_Fanout4 Hybrid_8_BK0_KL3_Fanout4_2_1 (bit_mux[2],bit_mux[3],1'b0,bit_level2_sum[1],cout_2);

wire cout_last;
Hybrid_8_BK0_KL3_Fanout4 Hybrid_8_BK0_KL3_Fanout4_last (bit_level2_sum[0],bit_level2_sum[1],1'b0,out,cout_last);
endmodule
