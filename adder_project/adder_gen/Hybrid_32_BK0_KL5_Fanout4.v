
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_32_BK0_KL5_Fanout4_top (a,b,cin,sum,cout,clk,rst);
input [31:0]a;
input [31:0]b;
input cin;
output reg [31:0]sum;
output reg cout;
input clk;
input rst;
wire [31:0] sum_w;
wire cout_w;
reg cin_r;
Hybrid_32_BK0_KL5_Fanout4 u0 (a,b,cin_r,sum_w,cout_w);
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

module pg_gen_bk_kl_32 (a,b,cin,p,g);
input [31:0]a;
input [31:0]b;
input cin;
output [32:0]p;
output [32:0]g;
assign g[0]=cin;
assign p[0]=0;
assign p[32:1]=a^b;
assign g[32:1]=a&b;
endmodule

module Hybrid_32_BK0_KL5_Fanout4 (a,b,cin,sum,cout);

input [32:1]a;
input [32:1]b;
input cin;
output [32:1]sum;
output cout;
wire [32:0]p;
wire [32:0]g;
pg_gen_bk_kl_32 pg_gen_bkkl (a,b,cin,p,g);
genvar i;

 wire [31:0] gnpg_level1;
 wire [31:0] pp_level1;  
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[0+i]=g[0+i]|p[0+i]&g[i+0-1]; 
              assign  pp_level1[0+i]=p[0+i]&p[i+0-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[4+i]=g[4+i]|p[4+i]&g[i+4-1]; 
              assign  pp_level1[4+i]=p[4+i]&p[i+4-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[8+i]=g[8+i]|p[8+i]&g[i+8-1]; 
              assign  pp_level1[8+i]=p[8+i]&p[i+8-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[12+i]=g[12+i]|p[12+i]&g[i+12-1]; 
              assign  pp_level1[12+i]=p[12+i]&p[i+12-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[16+i]=g[16+i]|p[16+i]&g[i+16-1]; 
              assign  pp_level1[16+i]=p[16+i]&p[i+16-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[20+i]=g[20+i]|p[20+i]&g[i+20-1]; 
              assign  pp_level1[20+i]=p[20+i]&p[i+20-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[24+i]=g[24+i]|p[24+i]&g[i+24-1]; 
              assign  pp_level1[24+i]=p[24+i]&p[i+24-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[28+i]=g[28+i]|p[28+i]&g[i+28-1]; 
              assign  pp_level1[28+i]=p[28+i]&p[i+28-1];
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
              assign  gnpg_level1[4+i]=g[4+i]; 
              assign  pp_level1[4+i]=p[4+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[8+i]=g[8+i]; 
              assign  pp_level1[8+i]=p[8+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[12+i]=g[12+i]; 
              assign  pp_level1[12+i]=p[12+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[16+i]=g[16+i]; 
              assign  pp_level1[16+i]=p[16+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[20+i]=g[20+i]; 
              assign  pp_level1[20+i]=p[20+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[24+i]=g[24+i]; 
              assign  pp_level1[24+i]=p[24+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[28+i]=g[28+i]; 
              assign  pp_level1[28+i]=p[28+i];
            end 
            endgenerate
 wire [31:0] gnpg_level2;
 wire [31:0] pp_level2;  
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[0+i]=gnpg_level1[0+i]|pp_level1[0+i]&gnpg_level1[i+0-2]; 
              assign  pp_level2[0+i]=pp_level1[0+i]&pp_level1[i+0-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[4+i]=gnpg_level1[4+i]|pp_level1[4+i]&gnpg_level1[i+4-2]; 
              assign  pp_level2[4+i]=pp_level1[4+i]&pp_level1[i+4-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[8+i]=gnpg_level1[8+i]|pp_level1[8+i]&gnpg_level1[i+8-2]; 
              assign  pp_level2[8+i]=pp_level1[8+i]&pp_level1[i+8-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[12+i]=gnpg_level1[12+i]|pp_level1[12+i]&gnpg_level1[i+12-2]; 
              assign  pp_level2[12+i]=pp_level1[12+i]&pp_level1[i+12-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[16+i]=gnpg_level1[16+i]|pp_level1[16+i]&gnpg_level1[i+16-2]; 
              assign  pp_level2[16+i]=pp_level1[16+i]&pp_level1[i+16-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[20+i]=gnpg_level1[20+i]|pp_level1[20+i]&gnpg_level1[i+20-2]; 
              assign  pp_level2[20+i]=pp_level1[20+i]&pp_level1[i+20-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[24+i]=gnpg_level1[24+i]|pp_level1[24+i]&gnpg_level1[i+24-2]; 
              assign  pp_level2[24+i]=pp_level1[24+i]&pp_level1[i+24-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[28+i]=gnpg_level1[28+i]|pp_level1[28+i]&gnpg_level1[i+28-2]; 
              assign  pp_level2[28+i]=pp_level1[28+i]&pp_level1[i+28-2];
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
              assign  gnpg_level2[4+i]=gnpg_level1[4+i]; 
              assign  pp_level2[4+i]=pp_level1[4+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[8+i]=gnpg_level1[8+i]; 
              assign  pp_level2[8+i]=pp_level1[8+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[12+i]=gnpg_level1[12+i]; 
              assign  pp_level2[12+i]=pp_level1[12+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[16+i]=gnpg_level1[16+i]; 
              assign  pp_level2[16+i]=pp_level1[16+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[20+i]=gnpg_level1[20+i]; 
              assign  pp_level2[20+i]=pp_level1[20+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[24+i]=gnpg_level1[24+i]; 
              assign  pp_level2[24+i]=pp_level1[24+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[28+i]=gnpg_level1[28+i]; 
              assign  pp_level2[28+i]=pp_level1[28+i];
            end 
            endgenerate
 wire [31:0] gnpg_level3;
 wire [31:0] pp_level3;  
          // old pass
         generate
          for (i = 0;i<4 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 4;i<4+4 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[4+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[4+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 8;i<4+8 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[8+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[8+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 12;i<4+12 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[12+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[12+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 16;i<4+16 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[16+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[16+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 20;i<4+20 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[20+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[20+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 24;i<4+24 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[24+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[24+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 28;i<4+28 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[28+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[28+4-1-4];
           end 
         endgenerate
         
 wire [31:0] gnpg_level4;
 wire [31:0] pp_level4;  
          // old pass
         generate
          for (i = 0;i<8 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 8;i<4+8 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[8+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[8+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 12;i<4+12 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[12+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[12+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 16;i<4+16 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[16+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[16+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 20;i<4+20 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[20+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[20+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 24;i<4+24 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[24+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[24+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 28;i<4+28 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[28+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[28+4-1-8];
           end 
         endgenerate
         
 wire [31:0] gnpg_level5;
 wire [31:0] pp_level5;  
          // old pass
         generate
          for (i = 0;i<16 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 16;i<4+16 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[16+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[16+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 20;i<4+20 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[20+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[20+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 24;i<4+24 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[24+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[24+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 28;i<4+28 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[28+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[28+4-1-16];
           end 
         endgenerate
         
   assign cout= g[32]|p[32]&gnpg_level5[31];
   generate
    for (i = 1;i<33 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level5[i-1];    
    end
   endgenerate // 5 is deep enough , no post process
endmodule

