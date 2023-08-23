module adder_tb;

reg [127:0] a, b;
reg cin;
wire [127:0] sum;
wire cout;
reg [127:0] expected_sum;
reg expected_cout;
integer i; // 使用integer替代int

// 实例化加法器
Hybrid_128_BK0_KL7_Fanout64  u1 (
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
        a = {$random,$random,$random,$random};
        b = {$random,$random,$random,$random};
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



/* verilator lint_off UNUSEDSIGNAL */



/* verilator lint_off UNUSEDSIGNAL */


module pg_gen_bk_kl_128 (a,b,cin,p,g);
input [127:0]a;
input [127:0]b;
input cin;
output [128:0]p;
output [128:0]g;
assign g[0]=cin;
assign p[0]=0;
assign p[128:1]=a^b;
assign g[128:1]=a&b;
endmodule

module Hybrid_128_BK0_KL7_Fanout64 (a,b,cin,sum,cout);

input [128:1]a;
input [128:1]b;
input cin;
output [128:1]sum;
output cout;
wire [128:0]p;
wire [128:0]g;
pg_gen_bk_kl_128 pg_gen_bkkl (a,b,cin,p,g);
genvar i;

 wire [127:0] gnpg_level1;
 wire [127:0] pp_level1;  
          // pre process
           generate
            for (i = 1;i<64 ;i=i+1 ) begin
              assign  gnpg_level1[0+i]=g[0+i]|p[0+i]&g[i+0-1]; 
              assign  pp_level1[0+i]=p[0+i]&p[i+0-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<64 ;i=i+1 ) begin
              assign  gnpg_level1[64+i]=g[64+i]|p[64+i]&g[i+64-1]; 
              assign  pp_level1[64+i]=p[64+i]&p[i+64-1];
            end
           endgenerate

          
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[0+i]=g[0+i]; 
              assign  pp_level1[0+i]=p[0+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[64+i]=g[64+i]; 
              assign  pp_level1[64+i]=p[64+i];
            end 
            endgenerate
 wire [127:0] gnpg_level2;
 wire [127:0] pp_level2;  
          // pre process continue last 5
           generate
            for (i = 2;i<64 ;i=i+1 ) begin
              assign  gnpg_level2[0+i]=gnpg_level1[0+i]|pp_level1[0+i]&gnpg_level1[i+0-2]; 
              assign  pp_level2[0+i]=pp_level1[0+i]&pp_level1[i+0-2];
            end
           endgenerate
          
          // pre process continue last 5
           generate
            for (i = 2;i<64 ;i=i+1 ) begin
              assign  gnpg_level2[64+i]=gnpg_level1[64+i]|pp_level1[64+i]&gnpg_level1[i+64-2]; 
              assign  pp_level2[64+i]=pp_level1[64+i]&pp_level1[i+64-2];
            end
           endgenerate
          
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[0+i]=gnpg_level1[0+i]; 
              assign  pp_level2[0+i]=pp_level1[0+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[64+i]=gnpg_level1[64+i]; 
              assign  pp_level2[64+i]=pp_level1[64+i];
            end 
            endgenerate
 wire [127:0] gnpg_level3;
 wire [127:0] pp_level3;  
          // pre process continue last 4
           generate
            for (i = 4;i<64 ;i=i+1 ) begin
              assign  gnpg_level3[0+i]=gnpg_level2[0+i]|pp_level2[0+i]&gnpg_level2[i+0-4]; 
              assign  pp_level3[0+i]=pp_level2[0+i]&pp_level2[i+0-4];
            end
           endgenerate
          
          // pre process continue last 4
           generate
            for (i = 4;i<64 ;i=i+1 ) begin
              assign  gnpg_level3[64+i]=gnpg_level2[64+i]|pp_level2[64+i]&gnpg_level2[i+64-4]; 
              assign  pp_level3[64+i]=pp_level2[64+i]&pp_level2[i+64-4];
            end
           endgenerate
          
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[0+i]=gnpg_level2[0+i]; 
              assign  pp_level3[0+i]=pp_level2[0+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[64+i]=gnpg_level2[64+i]; 
              assign  pp_level3[64+i]=pp_level2[64+i];
            end 
            endgenerate
 wire [127:0] gnpg_level4;
 wire [127:0] pp_level4;  
          // pre process continue last 3
           generate
            for (i = 8;i<64 ;i=i+1 ) begin
              assign  gnpg_level4[0+i]=gnpg_level3[0+i]|pp_level3[0+i]&gnpg_level3[i+0-8]; 
              assign  pp_level4[0+i]=pp_level3[0+i]&pp_level3[i+0-8];
            end
           endgenerate
          
          // pre process continue last 3
           generate
            for (i = 8;i<64 ;i=i+1 ) begin
              assign  gnpg_level4[64+i]=gnpg_level3[64+i]|pp_level3[64+i]&gnpg_level3[i+64-8]; 
              assign  pp_level4[64+i]=pp_level3[64+i]&pp_level3[i+64-8];
            end
           endgenerate
          
            generate
            for (i = 0;i<8 ;i=i+1 ) begin
              assign  gnpg_level4[0+i]=gnpg_level3[0+i]; 
              assign  pp_level4[0+i]=pp_level3[0+i];
            end 
            endgenerate
            generate
            for (i = 0;i<8 ;i=i+1 ) begin
              assign  gnpg_level4[64+i]=gnpg_level3[64+i]; 
              assign  pp_level4[64+i]=pp_level3[64+i];
            end 
            endgenerate
 wire [127:0] gnpg_level5;
 wire [127:0] pp_level5;  
          // pre process continue last 2
           generate
            for (i = 16;i<64 ;i=i+1 ) begin
              assign  gnpg_level5[0+i]=gnpg_level4[0+i]|pp_level4[0+i]&gnpg_level4[i+0-16]; 
              assign  pp_level5[0+i]=pp_level4[0+i]&pp_level4[i+0-16];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 16;i<64 ;i=i+1 ) begin
              assign  gnpg_level5[64+i]=gnpg_level4[64+i]|pp_level4[64+i]&gnpg_level4[i+64-16]; 
              assign  pp_level5[64+i]=pp_level4[64+i]&pp_level4[i+64-16];
            end
           endgenerate
          
            generate
            for (i = 0;i<16 ;i=i+1 ) begin
              assign  gnpg_level5[0+i]=gnpg_level4[0+i]; 
              assign  pp_level5[0+i]=pp_level4[0+i];
            end 
            endgenerate
            generate
            for (i = 0;i<16 ;i=i+1 ) begin
              assign  gnpg_level5[64+i]=gnpg_level4[64+i]; 
              assign  pp_level5[64+i]=pp_level4[64+i];
            end 
            endgenerate
 wire [127:0] gnpg_level6;
 wire [127:0] pp_level6;  
          // pre process continue last 1
           generate
            for (i = 32;i<64 ;i=i+1 ) begin
              assign  gnpg_level6[0+i]=gnpg_level5[0+i]|pp_level5[0+i]&gnpg_level5[i+0-32]; 
              assign  pp_level6[0+i]=pp_level5[0+i]&pp_level5[i+0-32];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 32;i<64 ;i=i+1 ) begin
              assign  gnpg_level6[64+i]=gnpg_level5[64+i]|pp_level5[64+i]&gnpg_level5[i+64-32]; 
              assign  pp_level6[64+i]=pp_level5[64+i]&pp_level5[i+64-32];
            end
           endgenerate
          
            generate
            for (i = 0;i<32 ;i=i+1 ) begin
              assign  gnpg_level6[0+i]=gnpg_level5[0+i]; 
              assign  pp_level6[0+i]=pp_level5[0+i];
            end 
            endgenerate
            generate
            for (i = 0;i<32 ;i=i+1 ) begin
              assign  gnpg_level6[64+i]=gnpg_level5[64+i]; 
              assign  pp_level6[64+i]=pp_level5[64+i];
            end 
            endgenerate
 wire [127:0] gnpg_level7;
 wire [127:0] pp_level7;  
          // old pass
         generate
          for (i = 0;i<64 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 64;i<64+64 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[64+64-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[64+64-1-64];
           end 
         endgenerate
         
   assign cout= g[128]|p[128]&gnpg_level7[127];
   generate
    for (i = 1;i<129 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level7[i-1];    
    end
   endgenerate // 7 is deep enough , no post process
endmodule

