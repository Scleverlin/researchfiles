

`include "Hybrid_16_BK4_SA0.v"

module  Mul_8_Hybrid_16_BK4_SA0_top (a,b,out,clk,rst);
 input [7:0]a;
 input [7:0]b;
output reg [15:0]out;
input clk;
input rst;
wire [15:0] out_w;
Mul_8_Hybrid_16_BK4_SA0  u0 (a,b,out_w);
always @(posedge clk ) begin
    if (rst) begin
        out<=0;
    end
    else begin
     out<= out_w;
    end
end
endmodule

module Mul_8_Hybrid_16_BK4_SA0 (
    a,b,out
);
input [7:0] a;
input [7:0] b;
output  [15:0] out;
// input clk , rst;


wire [15:0] bit_mux [7:0] ;
assign bit_mux[0]=(a[0])?b:0;
assign bit_mux[1]=(a[1])?{b,1'b0}:0;
assign bit_mux[2]=(a[2])?{b,2'b0}:0;
assign bit_mux[3]=(a[3])?{b,3'b0}:0;
assign bit_mux[4]=(a[4])?{b,4'b0}:0;
assign bit_mux[5]=(a[5])?{b,5'b0}:0;
assign bit_mux[6]=(a[6])?{b,6'b0}:0;
assign bit_mux[7]=(a[7])?{b,7'b0}:0;

    wire [15:0] bit_level2_sum[3:0];
    wire cout_2;
    Hybrid_16_BK4_SA0 Hybrid_16_BK4_SA0_2_0 (bit_mux[0],bit_mux[1],1'b0,bit_level2_sum[0],cout_2);
Hybrid_16_BK4_SA0 Hybrid_16_BK4_SA0_2_1 (bit_mux[2],bit_mux[3],1'b0,bit_level2_sum[1],cout_2);
Hybrid_16_BK4_SA0 Hybrid_16_BK4_SA0_2_2 (bit_mux[4],bit_mux[5],1'b0,bit_level2_sum[2],cout_2);
Hybrid_16_BK4_SA0 Hybrid_16_BK4_SA0_2_3 (bit_mux[6],bit_mux[7],1'b0,bit_level2_sum[3],cout_2);

    wire [15:0] bit_level3_sum[1:0];
    wire cout_3;
    Hybrid_16_BK4_SA0 Hybrid_16_BK4_SA0_3_0 (bit_level2_sum[0],bit_level2_sum[1],1'b0,bit_level3_sum[0],cout_3);
Hybrid_16_BK4_SA0 Hybrid_16_BK4_SA0_3_1 (bit_level2_sum[2],bit_level2_sum[3],1'b0,bit_level3_sum[1],cout_3);

wire cout_last;
Hybrid_16_BK4_SA0 Hybrid_16_BK4_SA0_last (bit_level3_sum[0],bit_level3_sum[1],1'b0,out,cout_last);
endmodule
