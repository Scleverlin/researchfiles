$name =  $ARGV[1];
$bitofadder  =  $ARGV[2];

$bitsofMul=$bitofadder/2;
$bitsofinput=$bitsofMul-1;
$bitsofout=$bitofadder-1;
$depth= int(log($bitsofMul)/log(2));
$logofbit= int(log($bitofadder)/log(2));

open(DATA, ">/home/shi/research/adder_project/mul_gen/Mul_${bitsofMul}_${name}.v") or die "Mul_${bitsofMul}${name}.v 文件无法打开, $!";
open(DATA2, ">/home/shi/research/adder_project/mul_gen/_tb_Mul_${bitsofMul}${name}.v") or die "tb_Mul_${bitsofMul}${name}.v 文件无法打开, $!";
# open(DATA3, ">>/home/shi/research/adder_project/mul_veri/_source_mul.txt") or die "_source_mul.txt 文件无法打开, $!";
open (DATA3, ">>/home/shi/research/adder_project/mul_gen/_mul_mod_name.txt") ;
print DATA3 "Mul_${bitsofMul}_${name}_top \n";
open (DATA4, ">>/home/shi/research/adder_project/mul_gen/_mul_PATH.txt") ;
print DATA4 "/home/shi/research/adder_project/mul_gen/Mul_${bitsofMul}_${name}.v \n";
print DATA "

`include \"${name}.v\"

module  Mul_${bitsofMul}_${name}_top (a,b,out,clk,rst);
 input [${bitsofinput}:0]a;
 input [${bitsofinput}:0]b;
output reg [${bitsofout}:0]out;
input clk;
input rst;
wire [${bitsofout}:0] out_w;
Mul_${bitsofMul}_${name}  u0 (a,b,out_w);
always @(posedge clk ) begin
    if (rst) begin
        out<=0;
    end
    else begin
     out<= out_w;
    end
end
endmodule

module Mul_${bitsofMul}_${name} (
    a,b,out
);
input [${bitsofinput}:0] a;
input [${bitsofinput}:0] b;
output  [${bitsofout}:0] out;
// input clk , rst;


wire [${bitsofout}:0] bit_mux [${bitsofinput}:0] ;
assign bit_mux[0]=(a[0])?b:0;
";
for ($i=1;$i<=$bitsofinput;$i++){
    print DATA "assign bit_mux[$i]=(a[$i])?{b,${i}'b0}:0;\n";
}

$j=$depth-1;

for ($k=2;$k<=$depth;$k++){
    $sumbit=2**$j-1;
    $last_level=$k-1;
    print DATA "
    wire [${bitsofout}:0] bit_level${k}_sum[${sumbit}:0];
    wire cout_${k};
    ";
    for ($i=0;$i<=$sumbit;$i++){
        $a=$i*2;
        $b=$i*2+1;
        if ($k==2){
        print DATA "${name} ${name}_${k}_${i} (bit_mux[$a],bit_mux[$b],1'b0,bit_level${k}_sum[$i],cout_${k});\n";}
        # elsif ($k==$depth)
        # { 
        # print DATA "${name} ${name}_${k}_${i} (bit_level${last_level}_sum[$a],bit_level${last_level}_sum[$b],1'b0,out,cout_${k});\n";
        # }
        else {
        print DATA "${name} ${name}_${k}_${i} (bit_level${last_level}_sum[$a],bit_level${last_level}_sum[$b],1'b0,bit_level${k}_sum[$i],cout_${k});\n";
        }
    }
    $j=$j-1;
}

print DATA "
wire cout_last;
${name} ${name}_last (bit_level${depth}_sum[0],bit_level${depth}_sum[1],1'b0,out,cout_last);
endmodule
";

print DATA2"
`include \"Mul_${bitsofMul}_${name}.v\"
module adder_tb;

reg [${bitsofinput}:0] a, b;
wire [${bitsofinput}:0] sum;
wire [${bitsofout}:0] out;
reg [${bitsofout}:0] expect_out;
integer i; // 使用integer替代int
// 实例化加法器
Mul_${bitsofMul}_${name} u0 (a,b,out);

initial begin
    // 随机测试
    i = 0;
    while(i < 1000) begin
        ";
        if ($logofbit==7)
        { print DATA2"
        a = {\$random,\$random};
        b = {\$random,\$random,\$random,\$random};";}
        else {
        print DATA2"
        a=\$random;
        b=\$random;
        ";
        }
print DATA2"
        expect_out = a * b ;

        #10;  // 延迟以让加法器处理输入
        if(out != expect_out ) begin
            \$display(\"ERROR: a=\%h, b=\%h, Expected: out=\%h, Actual: out=\%h\", a, b, expect_out ,  out);
                \$finish;
        end
      \$display(\"a=\%h, b=\%h, Expected: out=\%h, Actual: out=\%h, Pass\", a, b, expect_out ,  out);
        
        i = i + 1; // 更新循环计数器
    end
    
    \$finish;
end

endmodule


"