

`include "test.v"

/* module  Mul_32_test_top (a,b,out,clk,rst);
 input [31:0]a;
 input [31:0]b;
output reg [63:0]out;
input clk;
input rst;
wire [63:0] out_w;
Mul_32_test  u0 (a,b,out_w);
always @(posedge clk ) begin
    if (rst) begin
        out<=0;
    end
    else begin
     out<= out_w;
    end
end
endmodule*/

module Mul_32_test (
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

    wire [63:0] bit_level2_sum[15:0];
    wire cout_2;
    test test_2_0 (bit_mux[0],bit_mux[1],1'b0,bit_level2_sum[0],cout_2);
test test_2_1 (bit_mux[2],bit_mux[3],1'b0,bit_level2_sum[1],cout_2);
test test_2_2 (bit_mux[4],bit_mux[5],1'b0,bit_level2_sum[2],cout_2);
test test_2_3 (bit_mux[6],bit_mux[7],1'b0,bit_level2_sum[3],cout_2);
test test_2_4 (bit_mux[8],bit_mux[9],1'b0,bit_level2_sum[4],cout_2);
test test_2_5 (bit_mux[10],bit_mux[11],1'b0,bit_level2_sum[5],cout_2);
test test_2_6 (bit_mux[12],bit_mux[13],1'b0,bit_level2_sum[6],cout_2);
test test_2_7 (bit_mux[14],bit_mux[15],1'b0,bit_level2_sum[7],cout_2);
test test_2_8 (bit_mux[16],bit_mux[17],1'b0,bit_level2_sum[8],cout_2);
test test_2_9 (bit_mux[18],bit_mux[19],1'b0,bit_level2_sum[9],cout_2);
test test_2_10 (bit_mux[20],bit_mux[21],1'b0,bit_level2_sum[10],cout_2);
test test_2_11 (bit_mux[22],bit_mux[23],1'b0,bit_level2_sum[11],cout_2);
test test_2_12 (bit_mux[24],bit_mux[25],1'b0,bit_level2_sum[12],cout_2);
test test_2_13 (bit_mux[26],bit_mux[27],1'b0,bit_level2_sum[13],cout_2);
test test_2_14 (bit_mux[28],bit_mux[29],1'b0,bit_level2_sum[14],cout_2);
test test_2_15 (bit_mux[30],bit_mux[31],1'b0,bit_level2_sum[15],cout_2);

    wire [63:0] bit_level3_sum[7:0];
    wire cout_3;
    test test_3_0 (bit_level2_sum[0],bit_level2_sum[1],1'b0,bit_level3_sum[0],cout_3);
test test_3_1 (bit_level2_sum[2],bit_level2_sum[3],1'b0,bit_level3_sum[1],cout_3);
test test_3_2 (bit_level2_sum[4],bit_level2_sum[5],1'b0,bit_level3_sum[2],cout_3);
test test_3_3 (bit_level2_sum[6],bit_level2_sum[7],1'b0,bit_level3_sum[3],cout_3);
test test_3_4 (bit_level2_sum[8],bit_level2_sum[9],1'b0,bit_level3_sum[4],cout_3);
test test_3_5 (bit_level2_sum[10],bit_level2_sum[11],1'b0,bit_level3_sum[5],cout_3);
test test_3_6 (bit_level2_sum[12],bit_level2_sum[13],1'b0,bit_level3_sum[6],cout_3);
test test_3_7 (bit_level2_sum[14],bit_level2_sum[15],1'b0,bit_level3_sum[7],cout_3);

    wire [63:0] bit_level4_sum[3:0];
    wire cout_4;
    test test_4_0 (bit_level3_sum[0],bit_level3_sum[1],1'b0,bit_level4_sum[0],cout_4);
test test_4_1 (bit_level3_sum[2],bit_level3_sum[3],1'b0,bit_level4_sum[1],cout_4);
test test_4_2 (bit_level3_sum[4],bit_level3_sum[5],1'b0,bit_level4_sum[2],cout_4);
test test_4_3 (bit_level3_sum[6],bit_level3_sum[7],1'b0,bit_level4_sum[3],cout_4);

    wire [63:0] bit_level5_sum[1:0];
    wire cout_5;
    test test_5_0 (bit_level4_sum[0],bit_level4_sum[1],1'b0,bit_level5_sum[0],cout_5);
test test_5_1 (bit_level4_sum[2],bit_level4_sum[3],1'b0,bit_level5_sum[1],cout_5);

wire cout_last;
test test_last (bit_level5_mux[0],bit_level5_mux[1],1'b0,out,cout_last);
endmodule
