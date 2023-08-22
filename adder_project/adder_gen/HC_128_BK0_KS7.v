
/* verilator lint_off UNUSEDSIGNAL */
module HC_128_BK0_KS7_top (a,b,cin,sum,cout,clk,rst);
input [127:0]a;
input [127:0]b;
input cin;
output reg [127:0]sum;
output reg cout;
input clk;
input rst;
wire [127:0] sum_w;
wire cout_w;
reg cin_r;
HC_128_BK0_KS7 u0 (a,b,cin_r,sum_w,cout_w);
always @(posedge clk ) begin
    if (rst) begin
        sum<=0;
        cout<=0;
    end
    else begin
        sum<=sum_w;
        cout<=cout_w; 
        cin_r <= cin;
    end
end
endmodule 

module P_G_gen_hc_128 (a,b,cin,p,g);
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

module HC_128_BK0_KS7 (a,b,cin,sum,cout);

input [128:1]a;
input [128:1]b;
input cin;
output [128:1]sum;
output cout;
wire [128:0]p;
wire [128:0]g;
P_G_gen_hc_128 pg_gen_hc (a,b,cin,p,g);
genvar i;

wire [127:0] gnpg_level1;
wire [127:0] pp_level1;
assign gnpg_level1[0]=g[0];
assign pp_level1[0]=p[0];
        generate
            for (i = 1;i<128 ;i=i+1 ) begin
             assign gnpg_level1[i]=g[i]|p[i]&g[i-1];  
             assign pp_level1[i]=p[i]&p[i-1];            
            end
        endgenerate
wire [127:0] gnpg_level2;
wire [127:0] pp_level2;
       generate
         for (i = 2;i<128 ;i=i+1 ) begin
           assign gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[i-2];  
           assign pp_level2[i]=pp_level1[i]&pp_level1[i-2];            
         end
       endgenerate
       generate 
         for (i=0;i<2;i=i+1) begin
            assign gnpg_level2[i]=gnpg_level1[i];
            assign pp_level2[i]=pp_level1[i];
         end
       endgenerate  
         
wire [127:0] gnpg_level3;
wire [127:0] pp_level3;
       generate
         for (i = 4;i<128 ;i=i+1 ) begin
           assign gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[i-4];  
           assign pp_level3[i]=pp_level2[i]&pp_level2[i-4];            
         end
       endgenerate
       generate 
         for (i=0;i<4;i=i+1) begin
            assign gnpg_level3[i]=gnpg_level2[i];
            assign pp_level3[i]=pp_level2[i];
         end
       endgenerate  
         
wire [127:0] gnpg_level4;
wire [127:0] pp_level4;
       generate
         for (i = 8;i<128 ;i=i+1 ) begin
           assign gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[i-8];  
           assign pp_level4[i]=pp_level3[i]&pp_level3[i-8];            
         end
       endgenerate
       generate 
         for (i=0;i<8;i=i+1) begin
            assign gnpg_level4[i]=gnpg_level3[i];
            assign pp_level4[i]=pp_level3[i];
         end
       endgenerate  
         
wire [127:0] gnpg_level5;
wire [127:0] pp_level5;
       generate
         for (i = 16;i<128 ;i=i+1 ) begin
           assign gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[i-16];  
           assign pp_level5[i]=pp_level4[i]&pp_level4[i-16];            
         end
       endgenerate
       generate 
         for (i=0;i<16;i=i+1) begin
            assign gnpg_level5[i]=gnpg_level4[i];
            assign pp_level5[i]=pp_level4[i];
         end
       endgenerate  
         
wire [127:0] gnpg_level6;
wire [127:0] pp_level6;
       generate
         for (i = 32;i<128 ;i=i+1 ) begin
           assign gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[i-32];  
           assign pp_level6[i]=pp_level5[i]&pp_level5[i-32];            
         end
       endgenerate
       generate 
         for (i=0;i<32;i=i+1) begin
            assign gnpg_level6[i]=gnpg_level5[i];
            assign pp_level6[i]=pp_level5[i];
         end
       endgenerate  
         
wire [127:0] gnpg_level7;
wire [127:0] pp_level7;
       generate
         for (i = 64;i<128 ;i=i+1 ) begin
           assign gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[i-64];  
           assign pp_level7[i]=pp_level6[i]&pp_level6[i-64];            
         end
       endgenerate
       generate 
         for (i=0;i<64;i=i+1) begin
            assign gnpg_level7[i]=gnpg_level6[i];
            assign pp_level7[i]=pp_level6[i];
         end
       endgenerate  
         
assign cout= g[128]|p[128]&gnpg_level7[127];
generate
   for (i = 1;i<129 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level7[i-1];    
   end
endgenerate
 // ks adder, no post process
endmodule

