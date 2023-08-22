
`include "./Hybrid_64_BK4_KL2_Fanout2.v"

module Mul_32_Hybrid_64_BK4_KL2_Fanout2 (
    a,b,out
);
input [31:0] a;
input [31:0] b;
output  [63:0] out;
// input clk , rst;


wire [63:0] bit_mux [31:0] ;

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


wire [63:0] bit_level2_mux[15:0];
wire cout;
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_0 (bit_mux[0],bit_mux[1],1'b0,bit_level2_mux[0],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_1 (bit_mux[2],bit_mux[3],1'b0,bit_level2_mux[1],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_2 (bit_mux[4],bit_mux[5],1'b0,bit_level2_mux[2],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_3 (bit_mux[6],bit_mux[7],1'b0,bit_level2_mux[3],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_4 (bit_mux[8],bit_mux[9],1'b0,bit_level2_mux[4],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_5 (bit_mux[10],bit_mux[11],1'b0,bit_level2_mux[5],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_6 (bit_mux[12],bit_mux[13],1'b0,bit_level2_mux[6],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_7 (bit_mux[14],bit_mux[15],1'b0,bit_level2_mux[7],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_8 (bit_mux[16],bit_mux[17],1'b0,bit_level2_mux[8],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_9 (bit_mux[18],bit_mux[19],1'b0,bit_level2_mux[9],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_10 (bit_mux[20],bit_mux[21],1'b0,bit_level2_mux[10],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_11 (bit_mux[22],bit_mux[23],1'b0,bit_level2_mux[11],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_12 (bit_mux[24],bit_mux[25],1'b0,bit_level2_mux[12],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_13 (bit_mux[26],bit_mux[27],1'b0,bit_level2_mux[13],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_14 (bit_mux[28],bit_mux[29],1'b0,bit_level2_mux[14],cout);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_15 (bit_mux[30],bit_mux[31],1'b0,bit_level2_mux[15],cout);

wire [63:0] bit_level3_mux[7:0];
wire cout1;
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_16 (bit_level2_mux[0],bit_level2_mux[1],1'b0,bit_level3_mux[0],cout1);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_17 (bit_level2_mux[2],bit_level2_mux[3],1'b0,bit_level3_mux[1],cout1);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_18 (bit_level2_mux[4],bit_level2_mux[5],1'b0,bit_level3_mux[2],cout1);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_19 (bit_level2_mux[6],bit_level2_mux[7],1'b0,bit_level3_mux[3],cout1);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_20 (bit_level2_mux[8],bit_level2_mux[9],1'b0,bit_level3_mux[4],cout1);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_21 (bit_level2_mux[10],bit_level2_mux[11],1'b0,bit_level3_mux[5],cout1);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_22 (bit_level2_mux[12],bit_level2_mux[13],1'b0,bit_level3_mux[6],cout1);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_23 (bit_level2_mux[14],bit_level2_mux[15],1'b0,bit_level3_mux[7],cout1);

wire [63:0] bit_level4_mux[3:0];
wire cout2;
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_24 (bit_level3_mux[0],bit_level3_mux[1],1'b0,bit_level4_mux[0],cout2);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_25 (bit_level3_mux[2],bit_level3_mux[3],1'b0,bit_level4_mux[1],cout2);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_26 (bit_level3_mux[4],bit_level3_mux[5],1'b0,bit_level4_mux[2],cout2);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_27 (bit_level3_mux[6],bit_level3_mux[7],1'b0,bit_level4_mux[3],cout2);

wire [63:0] bit_level5_mux[1:0];
wire cout3;

Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_28 (bit_level4_mux[0],bit_level4_mux[1],1'b0,bit_level5_mux[0],cout3);
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_29 (bit_level4_mux[2],bit_level4_mux[3],1'b0,bit_level5_mux[1],cout3);

// output
Hybrid_64_BK4_KL2_Fanout2 Hybrid_64_BK4_KL2_Fanout2_30 (bit_level5_mux[0],bit_level5_mux[1],1'b0,out,cout3);


endmodule

