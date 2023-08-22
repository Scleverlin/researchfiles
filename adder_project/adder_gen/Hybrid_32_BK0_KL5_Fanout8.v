
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_32_BK0_KL5_Fanout8_top (a,b,cin,sum,cout,clk,rst);
input [63:0]a;
input [63:0]b;
input cin;
output reg [63:0]sum;
output reg cout;
input clk;
input rst;
wire [63:0] sum_w;
wire cout_w;
reg cin_r;
Hybrid_32_BK0_KL5_Fanout8 u0 (a,b,cin_r,sum_w,cout_w);
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

module Hybrid_32_BK0_KL5_Fanout8 (a,b,cin,sum,cout);

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
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[0+i]=g[0+i]|p[0+i]&g[i+0-1]; 
              assign  pp_level1[0+i]=p[0+i]&p[i+0-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[8+i]=g[8+i]|p[8+i]&g[i+8-1]; 
              assign  pp_level1[8+i]=p[8+i]&p[i+8-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[16+i]=g[16+i]|p[16+i]&g[i+16-1]; 
              assign  pp_level1[16+i]=p[16+i]&p[i+16-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[24+i]=g[24+i]|p[24+i]&g[i+24-1]; 
              assign  pp_level1[24+i]=p[24+i]&p[i+24-1];
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
              assign  gnpg_level1[8+i]=g[8+i]; 
              assign  pp_level1[8+i]=p[8+i];
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
              assign  gnpg_level1[24+i]=g[24+i]; 
              assign  pp_level1[24+i]=p[24+i];
            end 
            endgenerate
 wire [31:0] gnpg_level2;
 wire [31:0] pp_level2;  
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[0+i]=gnpg_level1[0+i]|pp_level1[0+i]&gnpg_level1[i+0-2]; 
              assign  pp_level2[0+i]=pp_level1[0+i]&pp_level1[i+0-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[8+i]=gnpg_level1[8+i]|pp_level1[8+i]&gnpg_level1[i+8-2]; 
              assign  pp_level2[8+i]=pp_level1[8+i]&pp_level1[i+8-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[16+i]=gnpg_level1[16+i]|pp_level1[16+i]&gnpg_level1[i+16-2]; 
              assign  pp_level2[16+i]=pp_level1[16+i]&pp_level1[i+16-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[24+i]=gnpg_level1[24+i]|pp_level1[24+i]&gnpg_level1[i+24-2]; 
              assign  pp_level2[24+i]=pp_level1[24+i]&pp_level1[i+24-2];
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
              assign  gnpg_level2[8+i]=gnpg_level1[8+i]; 
              assign  pp_level2[8+i]=pp_level1[8+i];
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
              assign  gnpg_level2[24+i]=gnpg_level1[24+i]; 
              assign  pp_level2[24+i]=pp_level1[24+i];
            end 
            endgenerate
 wire [31:0] gnpg_level3;
 wire [31:0] pp_level3;  
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[0+i]=gnpg_level2[0+i]|pp_level2[0+i]&gnpg_level2[i+0-4]; 
              assign  pp_level3[0+i]=pp_level2[0+i]&pp_level2[i+0-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[8+i]=gnpg_level2[8+i]|pp_level2[8+i]&gnpg_level2[i+8-4]; 
              assign  pp_level3[8+i]=pp_level2[8+i]&pp_level2[i+8-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[16+i]=gnpg_level2[16+i]|pp_level2[16+i]&gnpg_level2[i+16-4]; 
              assign  pp_level3[16+i]=pp_level2[16+i]&pp_level2[i+16-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[24+i]=gnpg_level2[24+i]|pp_level2[24+i]&gnpg_level2[i+24-4]; 
              assign  pp_level3[24+i]=pp_level2[24+i]&pp_level2[i+24-4];
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
              assign  gnpg_level3[8+i]=gnpg_level2[8+i]; 
              assign  pp_level3[8+i]=pp_level2[8+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[16+i]=gnpg_level2[16+i]; 
              assign  pp_level3[16+i]=pp_level2[16+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[24+i]=gnpg_level2[24+i]; 
              assign  pp_level3[24+i]=pp_level2[24+i];
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
           for (i = 8;i<8+8 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[8+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[8+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 16;i<8+16 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[16+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[16+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 24;i<8+24 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[24+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[24+8-1-8];
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
           for (i = 16;i<8+16 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[16+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[16+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 24;i<8+24 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[24+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[24+8-1-16];
           end 
         endgenerate
         
   assign cout= g[32]|p[32]&gnpg_level5[31];
   generate
    for (i = 1;i<33 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level5[i-1];    
    end
   endgenerate // 5 is deep enough , no post process
endmodule

