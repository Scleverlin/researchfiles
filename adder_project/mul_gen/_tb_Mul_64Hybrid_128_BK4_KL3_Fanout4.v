
`include "Mul_64_Hybrid_128_BK4_KL3_Fanout4.v"
module adder_tb;

reg [63:0] a, b;
wire [63:0] sum;
wire [127:0] out;
reg [127:0] expect_out;
integer i; // 使用integer替代int
// 实例化加法器
Mul_64_Hybrid_128_BK4_KL3_Fanout4 u0 (a,b,out);

initial begin
    // 随机测试
    i = 0;
    while(i < 1000) begin
        
        a = {$random,$random};
        b = {$random,$random,$random,$random};
        expect_out = a * b ;

        #10;  // 延迟以让加法器处理输入
        if(out != expect_out ) begin
            $display("ERROR: a=%h, b=%h, Expected: out=%h, Actual: out=%h", a, b, expect_out ,  out);
                $finish;
        end
      $display("a=%h, b=%h, Expected: out=%h, Actual: out=%h, Pass", a, b, expect_out ,  out);
        
        i = i + 1; // 更新循环计数器
    end
    
    $finish;
end

endmodule


