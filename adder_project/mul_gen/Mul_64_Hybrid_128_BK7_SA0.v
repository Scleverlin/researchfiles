

`include "Hybrid_128_BK7_SA0.v"

module  Mul_64_Hybrid_128_BK7_SA0_top (a,b,out,clk,rst);
 input [63:0]a;
 input [63:0]b;
output reg [127:0]out;
input clk;
input rst;
wire [127:0] out_w;
Mul_64_Hybrid_128_BK7_SA0  u0 (a,b,out_w);
always @(posedge clk ) begin
    if (rst) begin
        out<=0;
    end
    else begin
     out<= out_w;
    end
end
endmodule

module Mul_64_Hybrid_128_BK7_SA0 (
    a,b,out
);
input [63:0] a;
input [63:0] b;
output  [127:0] out;
// input clk , rst;


wire [127:0] bit_mux [63:0] ;
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
assign bit_mux[16]=(a[16])?{b,16'b0}:0;
assign bit_mux[17]=(a[17])?{b,17'b0}:0;
assign bit_mux[18]=(a[18])?{b,18'b0}:0;
assign bit_mux[19]=(a[19])?{b,19'b0}:0;
assign bit_mux[20]=(a[20])?{b,20'b0}:0;
assign bit_mux[21]=(a[21])?{b,21'b0}:0;
assign bit_mux[22]=(a[22])?{b,22'b0}:0;
assign bit_mux[23]=(a[23])?{b,23'b0}:0;
assign bit_mux[24]=(a[24])?{b,24'b0}:0;
assign bit_mux[25]=(a[25])?{b,25'b0}:0;
assign bit_mux[26]=(a[26])?{b,26'b0}:0;
assign bit_mux[27]=(a[27])?{b,27'b0}:0;
assign bit_mux[28]=(a[28])?{b,28'b0}:0;
assign bit_mux[29]=(a[29])?{b,29'b0}:0;
assign bit_mux[30]=(a[30])?{b,30'b0}:0;
assign bit_mux[31]=(a[31])?{b,31'b0}:0;
assign bit_mux[32]=(a[32])?{b,32'b0}:0;
assign bit_mux[33]=(a[33])?{b,33'b0}:0;
assign bit_mux[34]=(a[34])?{b,34'b0}:0;
assign bit_mux[35]=(a[35])?{b,35'b0}:0;
assign bit_mux[36]=(a[36])?{b,36'b0}:0;
assign bit_mux[37]=(a[37])?{b,37'b0}:0;
assign bit_mux[38]=(a[38])?{b,38'b0}:0;
assign bit_mux[39]=(a[39])?{b,39'b0}:0;
assign bit_mux[40]=(a[40])?{b,40'b0}:0;
assign bit_mux[41]=(a[41])?{b,41'b0}:0;
assign bit_mux[42]=(a[42])?{b,42'b0}:0;
assign bit_mux[43]=(a[43])?{b,43'b0}:0;
assign bit_mux[44]=(a[44])?{b,44'b0}:0;
assign bit_mux[45]=(a[45])?{b,45'b0}:0;
assign bit_mux[46]=(a[46])?{b,46'b0}:0;
assign bit_mux[47]=(a[47])?{b,47'b0}:0;
assign bit_mux[48]=(a[48])?{b,48'b0}:0;
assign bit_mux[49]=(a[49])?{b,49'b0}:0;
assign bit_mux[50]=(a[50])?{b,50'b0}:0;
assign bit_mux[51]=(a[51])?{b,51'b0}:0;
assign bit_mux[52]=(a[52])?{b,52'b0}:0;
assign bit_mux[53]=(a[53])?{b,53'b0}:0;
assign bit_mux[54]=(a[54])?{b,54'b0}:0;
assign bit_mux[55]=(a[55])?{b,55'b0}:0;
assign bit_mux[56]=(a[56])?{b,56'b0}:0;
assign bit_mux[57]=(a[57])?{b,57'b0}:0;
assign bit_mux[58]=(a[58])?{b,58'b0}:0;
assign bit_mux[59]=(a[59])?{b,59'b0}:0;
assign bit_mux[60]=(a[60])?{b,60'b0}:0;
assign bit_mux[61]=(a[61])?{b,61'b0}:0;
assign bit_mux[62]=(a[62])?{b,62'b0}:0;
assign bit_mux[63]=(a[63])?{b,63'b0}:0;

    wire [127:0] bit_level2_sum[31:0];
    wire cout_2;
    Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_0 (bit_mux[0],bit_mux[1],1'b0,bit_level2_sum[0],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_1 (bit_mux[2],bit_mux[3],1'b0,bit_level2_sum[1],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_2 (bit_mux[4],bit_mux[5],1'b0,bit_level2_sum[2],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_3 (bit_mux[6],bit_mux[7],1'b0,bit_level2_sum[3],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_4 (bit_mux[8],bit_mux[9],1'b0,bit_level2_sum[4],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_5 (bit_mux[10],bit_mux[11],1'b0,bit_level2_sum[5],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_6 (bit_mux[12],bit_mux[13],1'b0,bit_level2_sum[6],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_7 (bit_mux[14],bit_mux[15],1'b0,bit_level2_sum[7],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_8 (bit_mux[16],bit_mux[17],1'b0,bit_level2_sum[8],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_9 (bit_mux[18],bit_mux[19],1'b0,bit_level2_sum[9],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_10 (bit_mux[20],bit_mux[21],1'b0,bit_level2_sum[10],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_11 (bit_mux[22],bit_mux[23],1'b0,bit_level2_sum[11],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_12 (bit_mux[24],bit_mux[25],1'b0,bit_level2_sum[12],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_13 (bit_mux[26],bit_mux[27],1'b0,bit_level2_sum[13],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_14 (bit_mux[28],bit_mux[29],1'b0,bit_level2_sum[14],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_15 (bit_mux[30],bit_mux[31],1'b0,bit_level2_sum[15],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_16 (bit_mux[32],bit_mux[33],1'b0,bit_level2_sum[16],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_17 (bit_mux[34],bit_mux[35],1'b0,bit_level2_sum[17],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_18 (bit_mux[36],bit_mux[37],1'b0,bit_level2_sum[18],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_19 (bit_mux[38],bit_mux[39],1'b0,bit_level2_sum[19],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_20 (bit_mux[40],bit_mux[41],1'b0,bit_level2_sum[20],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_21 (bit_mux[42],bit_mux[43],1'b0,bit_level2_sum[21],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_22 (bit_mux[44],bit_mux[45],1'b0,bit_level2_sum[22],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_23 (bit_mux[46],bit_mux[47],1'b0,bit_level2_sum[23],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_24 (bit_mux[48],bit_mux[49],1'b0,bit_level2_sum[24],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_25 (bit_mux[50],bit_mux[51],1'b0,bit_level2_sum[25],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_26 (bit_mux[52],bit_mux[53],1'b0,bit_level2_sum[26],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_27 (bit_mux[54],bit_mux[55],1'b0,bit_level2_sum[27],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_28 (bit_mux[56],bit_mux[57],1'b0,bit_level2_sum[28],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_29 (bit_mux[58],bit_mux[59],1'b0,bit_level2_sum[29],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_30 (bit_mux[60],bit_mux[61],1'b0,bit_level2_sum[30],cout_2);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_2_31 (bit_mux[62],bit_mux[63],1'b0,bit_level2_sum[31],cout_2);

    wire [127:0] bit_level3_sum[15:0];
    wire cout_3;
    Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_0 (bit_level2_sum[0],bit_level2_sum[1],1'b0,bit_level3_sum[0],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_1 (bit_level2_sum[2],bit_level2_sum[3],1'b0,bit_level3_sum[1],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_2 (bit_level2_sum[4],bit_level2_sum[5],1'b0,bit_level3_sum[2],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_3 (bit_level2_sum[6],bit_level2_sum[7],1'b0,bit_level3_sum[3],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_4 (bit_level2_sum[8],bit_level2_sum[9],1'b0,bit_level3_sum[4],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_5 (bit_level2_sum[10],bit_level2_sum[11],1'b0,bit_level3_sum[5],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_6 (bit_level2_sum[12],bit_level2_sum[13],1'b0,bit_level3_sum[6],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_7 (bit_level2_sum[14],bit_level2_sum[15],1'b0,bit_level3_sum[7],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_8 (bit_level2_sum[16],bit_level2_sum[17],1'b0,bit_level3_sum[8],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_9 (bit_level2_sum[18],bit_level2_sum[19],1'b0,bit_level3_sum[9],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_10 (bit_level2_sum[20],bit_level2_sum[21],1'b0,bit_level3_sum[10],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_11 (bit_level2_sum[22],bit_level2_sum[23],1'b0,bit_level3_sum[11],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_12 (bit_level2_sum[24],bit_level2_sum[25],1'b0,bit_level3_sum[12],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_13 (bit_level2_sum[26],bit_level2_sum[27],1'b0,bit_level3_sum[13],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_14 (bit_level2_sum[28],bit_level2_sum[29],1'b0,bit_level3_sum[14],cout_3);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_3_15 (bit_level2_sum[30],bit_level2_sum[31],1'b0,bit_level3_sum[15],cout_3);

    wire [127:0] bit_level4_sum[7:0];
    wire cout_4;
    Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_4_0 (bit_level3_sum[0],bit_level3_sum[1],1'b0,bit_level4_sum[0],cout_4);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_4_1 (bit_level3_sum[2],bit_level3_sum[3],1'b0,bit_level4_sum[1],cout_4);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_4_2 (bit_level3_sum[4],bit_level3_sum[5],1'b0,bit_level4_sum[2],cout_4);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_4_3 (bit_level3_sum[6],bit_level3_sum[7],1'b0,bit_level4_sum[3],cout_4);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_4_4 (bit_level3_sum[8],bit_level3_sum[9],1'b0,bit_level4_sum[4],cout_4);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_4_5 (bit_level3_sum[10],bit_level3_sum[11],1'b0,bit_level4_sum[5],cout_4);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_4_6 (bit_level3_sum[12],bit_level3_sum[13],1'b0,bit_level4_sum[6],cout_4);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_4_7 (bit_level3_sum[14],bit_level3_sum[15],1'b0,bit_level4_sum[7],cout_4);

    wire [127:0] bit_level5_sum[3:0];
    wire cout_5;
    Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_5_0 (bit_level4_sum[0],bit_level4_sum[1],1'b0,bit_level5_sum[0],cout_5);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_5_1 (bit_level4_sum[2],bit_level4_sum[3],1'b0,bit_level5_sum[1],cout_5);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_5_2 (bit_level4_sum[4],bit_level4_sum[5],1'b0,bit_level5_sum[2],cout_5);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_5_3 (bit_level4_sum[6],bit_level4_sum[7],1'b0,bit_level5_sum[3],cout_5);

    wire [127:0] bit_level6_sum[1:0];
    wire cout_6;
    Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_6_0 (bit_level5_sum[0],bit_level5_sum[1],1'b0,bit_level6_sum[0],cout_6);
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_6_1 (bit_level5_sum[2],bit_level5_sum[3],1'b0,bit_level6_sum[1],cout_6);

wire cout_last;
Hybrid_128_BK7_SA0 Hybrid_128_BK7_SA0_last (bit_level6_sum[0],bit_level6_sum[1],1'b0,out,cout_last);
endmodule
