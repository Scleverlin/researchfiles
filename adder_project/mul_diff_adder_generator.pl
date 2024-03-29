$name =  $ARGV[1];

open(DATA, ">/home/shi/research/adder_project/mul_gen/Mul_32_${name}.v") or die "Mul_32_${name}.v 文件无法打开, $!";
open(DATA2, ">/home/shi/research/adder_project/mul_veri/tb_Mul_32_${name}.cpp") or die "tb_Mul_32_${name}.cpp 文件无法打开, $!";
open(DATA3, ">>/home/shi/research/adder_project/mul_veri/_source_mul.txt") or die "_source_mul.txt 文件无法打开, $!";
print DATA3 "verilator -I/home/shi/research/adder_project/mul_gen/ -Wall -j 0 -Wno-DECLFILENAME --cc /home/shi/research/adder_project/mul_gen/Mul_32_${name}.v --exe --build /home/shi/research/adder_project/mul_veri/tb_Mul_32_${name}.cpp\n";
open(DATA4, ">>/home/shi/research/adder_project/mul_veri/_run_mul.txt") or die "_run_mul.txt 文件无法打开, $!";
print DATA4 "./obj_dir/VMul_32_${name}\n";

print DATA "
/* verilator lint_off EOFNEWLINE */
/* verilator lint_off INCABSPATH */
/* verilator lint_off INCABSPATH */
/* verilator lint_off WIDTHEXPAND */
/* verilator lint_off INCABSPATH */
`include \"${name}.v\"
/* verilator lint_on INCABSPATH */

module  Mul_32_${name}_top (a,b,out,clk,rst);
input [31:0]a;
input [31:0]b;
output reg [63:0]out;
input clk;
input rst;
wire [63:0] out_w;


Mul_32_${name}  u0 (a,b,out_w);
always @(posedge clk ) begin
    if (rst) begin
        out<=0;
    end
    else begin
     out<= out_w;
    end
end
endmodule

module Mul_32_${name} (
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
${name} ${name}_0 (bit_mux[0],bit_mux[1],1'b0,bit_level2_mux[0],cout);
${name} ${name}_1 (bit_mux[2],bit_mux[3],1'b0,bit_level2_mux[1],cout);
${name} ${name}_2 (bit_mux[4],bit_mux[5],1'b0,bit_level2_mux[2],cout);
${name} ${name}_3 (bit_mux[6],bit_mux[7],1'b0,bit_level2_mux[3],cout);
${name} ${name}_4 (bit_mux[8],bit_mux[9],1'b0,bit_level2_mux[4],cout);
${name} ${name}_5 (bit_mux[10],bit_mux[11],1'b0,bit_level2_mux[5],cout);
${name} ${name}_6 (bit_mux[12],bit_mux[13],1'b0,bit_level2_mux[6],cout);
${name} ${name}_7 (bit_mux[14],bit_mux[15],1'b0,bit_level2_mux[7],cout);
${name} ${name}_8 (bit_mux[16],bit_mux[17],1'b0,bit_level2_mux[8],cout);
${name} ${name}_9 (bit_mux[18],bit_mux[19],1'b0,bit_level2_mux[9],cout);
${name} ${name}_10 (bit_mux[20],bit_mux[21],1'b0,bit_level2_mux[10],cout);
${name} ${name}_11 (bit_mux[22],bit_mux[23],1'b0,bit_level2_mux[11],cout);
${name} ${name}_12 (bit_mux[24],bit_mux[25],1'b0,bit_level2_mux[12],cout);
${name} ${name}_13 (bit_mux[26],bit_mux[27],1'b0,bit_level2_mux[13],cout);
${name} ${name}_14 (bit_mux[28],bit_mux[29],1'b0,bit_level2_mux[14],cout);
${name} ${name}_15 (bit_mux[30],bit_mux[31],1'b0,bit_level2_mux[15],cout);

wire [63:0] bit_level3_mux[7:0];
wire cout1;
${name} ${name}_16 (bit_level2_mux[0],bit_level2_mux[1],1'b0,bit_level3_mux[0],cout1);
${name} ${name}_17 (bit_level2_mux[2],bit_level2_mux[3],1'b0,bit_level3_mux[1],cout1);
${name} ${name}_18 (bit_level2_mux[4],bit_level2_mux[5],1'b0,bit_level3_mux[2],cout1);
${name} ${name}_19 (bit_level2_mux[6],bit_level2_mux[7],1'b0,bit_level3_mux[3],cout1);
${name} ${name}_20 (bit_level2_mux[8],bit_level2_mux[9],1'b0,bit_level3_mux[4],cout1);
${name} ${name}_21 (bit_level2_mux[10],bit_level2_mux[11],1'b0,bit_level3_mux[5],cout1);
${name} ${name}_22 (bit_level2_mux[12],bit_level2_mux[13],1'b0,bit_level3_mux[6],cout1);
${name} ${name}_23 (bit_level2_mux[14],bit_level2_mux[15],1'b0,bit_level3_mux[7],cout1);

wire [63:0] bit_level4_mux[3:0];
wire cout2;
${name} ${name}_24 (bit_level3_mux[0],bit_level3_mux[1],1'b0,bit_level4_mux[0],cout2);
${name} ${name}_25 (bit_level3_mux[2],bit_level3_mux[3],1'b0,bit_level4_mux[1],cout2);
${name} ${name}_26 (bit_level3_mux[4],bit_level3_mux[5],1'b0,bit_level4_mux[2],cout2);
${name} ${name}_27 (bit_level3_mux[6],bit_level3_mux[7],1'b0,bit_level4_mux[3],cout2);

wire [63:0] bit_level5_mux[1:0];
wire cout3;

${name} ${name}_28 (bit_level4_mux[0],bit_level4_mux[1],1'b0,bit_level5_mux[0],cout3);
${name} ${name}_29 (bit_level4_mux[2],bit_level4_mux[3],1'b0,bit_level5_mux[1],cout3);

// output
${name} ${name}_30 (bit_level5_mux[0],bit_level5_mux[1],1'b0,out,cout3);


endmodule

";

print DATA2 "
#include \"VMul_32_${name}.h\"
#include \"verilated.h\"
#include <iostream>
#include <cstdlib>

int main(int argc, char** argv, char** env) {
    Verilated::commandArgs(argc, argv);

    VMul_32_${name}* top = new VMul_32_${name};
    for(int i = 0; i < 100000; i++) {
        top->a = rand();
        top->b = rand();
        top->eval();
        uint64_t expected = static_cast<uint64_t>(top->a) * static_cast<uint64_t>(top->b);
        if (top->out != expected) {
            std::cerr << \"Mismatch: \" << top->out << \" != \" << expected << \"\\n\";
            exit(EXIT_FAILURE);
        }
        printf(\"%d * %d = %d, Pass \\n\", top->a, top->b, top->out);
    }

    top->final();
    delete top;
    return 0;
}

";
print "Mul_32_${name}_top\n";