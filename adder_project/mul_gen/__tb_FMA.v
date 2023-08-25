`include "__FMA.sv"
module FMA_tb;
reg [31:0] a, b,c;
reg [63:0] out;
reg [63:0]expect_out;
integer i; // 使用integer替代int
// 实例化加法器
FMA_32 u0 (a,b,c,out);

// initial begin
//    $dumpfile("dump.vcd"); 
//    $dumpvars;
// end

initial begin
    // 随机测试
    i = 0;
    while(i < 1000) begin
        
        a=$random;
        b=$random;
        c=$random;
        expect_out = a * b +c;
        #10;  // 延迟以让加法器处理输入
        if(out != expect_out ) begin
            $display("ERROR: a=%b, b=%b, Expected: out=%b, Actual: out=%b", a, b, expect_out ,  out);
                $finish;
        end
      $display("a=%h, b=%h, c=%h, Expected: out=%h, Actual: out=%h, Pass", a, b, c, expect_out , out);
        
        i = i + 1; // 更新循环计数器
    end
    
    $finish;
end

endmodule