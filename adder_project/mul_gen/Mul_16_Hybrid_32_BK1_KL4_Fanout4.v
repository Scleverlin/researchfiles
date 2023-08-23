

`include "Hybrid_32_BK1_KL4_Fanout4.v"

module  Mul_16_Hybrid_32_BK1_KL4_Fanout4_top (a,b,out,clk,rst);
 input [15:0]a;
 input [15:0]b;
output reg [31:0]out;
input clk;
input rst;
wire [31:0] out_w;
Mul_16_Hybrid_32_BK1_KL4_Fanout4  u0 (a,b,out_w);
always @(posedge clk ) begin
    if (rst) begin
        out<=0;
    end
    else begin
     out<= out_w;
    end
end
endmodule

module Mul_16_Hybrid_32_BK1_KL4_Fanout4 (
    a,b,out
);
input [15:0] a;
input [15:0] b;
output  [31:0] out;
// input clk , rst;


wire [31:0] bit_mux [15:0] ;
assign bit_mux[0]=(a[0])?b:0;
assign bit_mux[1]=(a[1])?{b,1'b0}:0;
assign bit_mux[2]=(a[2])?{b,2'b0}:0;
assign bit_mux[3]=(a[3])?{b,3'b0}:0;
assign bit_mux[4]=(a[4])?{b,4'b0}:0;
assign bit_mux[5]=(a[5])?{b,5'b0}:0;
assign bit_mux[6]=(a[6])?{b,6'b0}:0;
assign bit_mux[7]=(a[7])?{b,7'b0}:0;
assign bit_mux[8]=(a[8])?{b,8'b0}:0;
assign bit_mux[9]=(a[9])?{b,9'b0}:0;
assign bit_mux[10]=(a[10])?{b,10'b0}:0;
assign bit_mux[11]=(a[11])?{b,11'b0}:0;
assign bit_mux[12]=(a[12])?{b,12'b0}:0;
assign bit_mux[13]=(a[13])?{b,13'b0}:0;
assign bit_mux[14]=(a[14])?{b,14'b0}:0;
assign bit_mux[15]=(a[15])?{b,15'b0}:0;

    wire [31:0] bit_level2_sum[7:0];
    wire cout_2;
    Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_2_0 (bit_mux[0],bit_mux[1],1'b0,bit_level2_sum[0],cout_2);
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_2_1 (bit_mux[2],bit_mux[3],1'b0,bit_level2_sum[1],cout_2);
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_2_2 (bit_mux[4],bit_mux[5],1'b0,bit_level2_sum[2],cout_2);
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_2_3 (bit_mux[6],bit_mux[7],1'b0,bit_level2_sum[3],cout_2);
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_2_4 (bit_mux[8],bit_mux[9],1'b0,bit_level2_sum[4],cout_2);
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_2_5 (bit_mux[10],bit_mux[11],1'b0,bit_level2_sum[5],cout_2);
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_2_6 (bit_mux[12],bit_mux[13],1'b0,bit_level2_sum[6],cout_2);
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_2_7 (bit_mux[14],bit_mux[15],1'b0,bit_level2_sum[7],cout_2);

    wire [31:0] bit_level3_sum[3:0];
    wire cout_3;
    Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_3_0 (bit_level2_sum[0],bit_level2_sum[1],1'b0,bit_level3_sum[0],cout_3);
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_3_1 (bit_level2_sum[2],bit_level2_sum[3],1'b0,bit_level3_sum[1],cout_3);
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_3_2 (bit_level2_sum[4],bit_level2_sum[5],1'b0,bit_level3_sum[2],cout_3);
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_3_3 (bit_level2_sum[6],bit_level2_sum[7],1'b0,bit_level3_sum[3],cout_3);

    wire [31:0] bit_level4_sum[1:0];
    wire cout_4;
    Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_4_0 (bit_level3_sum[0],bit_level3_sum[1],1'b0,bit_level4_sum[0],cout_4);
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_4_1 (bit_level3_sum[2],bit_level3_sum[3],1'b0,bit_level4_sum[1],cout_4);

wire cout_last;
Hybrid_32_BK1_KL4_Fanout4 Hybrid_32_BK1_KL4_Fanout4_last (bit_level4_sum[0],bit_level4_sum[1],1'b0,out,cout_last);
endmodule
