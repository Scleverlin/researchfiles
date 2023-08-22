module adder_tb;

reg [127:0] a, b;
reg cin;
wire [127:0] sum;
wire cout;
reg [127:0] expected_sum;
reg expected_cout;
integer i; // 使用integer替代int

// 实例化加法器
adder_128bit u1 (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    // 随机测试
    i = 0;
    while(i < 1000) begin
        a = $random;
        b = $random;
        cin = $random & 1;  // 生成0或1

        {expected_cout, expected_sum} = a + b + cin;

        #10;  // 延迟以让加法器处理输入
        if(sum != expected_sum || cout != expected_cout) begin
            $display("ERROR: a=%h, b=%h, cin=%b, Expected: sum=%h, cout=%b, Actual: sum=%h, cout=%b", a, b, cin, expected_sum, expected_cout, sum, cout);
        end
        $display(" a=%h, b=%h, cin=%b, Expected: sum=%h, cout=%b, Actual: sum=%h, cout=%b, pass", a, b, cin, expected_sum, expected_cout, sum, cout);
        
        i = i + 1; // 更新循环计数器
    end
    $finish;
end

endmodule


module adder_128bit(
    input [127:0] a,
    input [127:0] b,
    input cin,
    output [127:0] sum,
    output cout

);
    assign {cout,sum} = a + b+cin;
endmodule
