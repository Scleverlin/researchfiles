
module Hybrid_64_BK0_KL6_Fanout16_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_64_BK0_KL6_Fanout16 u0 (a,b,cin_r,sum_w,cout_w);
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

module pg_gen_bk_kl_64 (a,b,cin,p,g);
input [63:0]a;
input [63:0]b;
input cin;
output [64:0]p;
output [64:0]g;
assign g[0]=cin;
assign p[0]=0;
assign p[64:1]=a^b;
assign g[64:1]=a&b;
endmodule

module Hybrid_64_BK0_KL6_Fanout16 (a,b,cin,sum,cout);

input [64:1]a;
input [64:1]b;
input cin;
output [64:1]sum;
output cout;
wire [64:0]p;
wire [64:0]g;
pg_gen_bk_kl_64 pg_gen_bkkl (a,b,cin,p,g);
genvar i;

 wire [63:0] gnpg_level1;
 wire [63:0] pp_level1;  
          // pre process
           generate
            for (i = 1;i<16 ;i=i+1 ) begin
              assign  gnpg_level1[0+i]=g[0+i]|p[0+i]&g[i+0-1]; 
              assign  pp_level1[0+i]=p[0+i]&p[i+0-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<16 ;i=i+1 ) begin
              assign  gnpg_level1[16+i]=g[16+i]|p[16+i]&g[i+16-1]; 
              assign  pp_level1[16+i]=p[16+i]&p[i+16-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<16 ;i=i+1 ) begin
              assign  gnpg_level1[32+i]=g[32+i]|p[32+i]&g[i+32-1]; 
              assign  pp_level1[32+i]=p[32+i]&p[i+32-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<16 ;i=i+1 ) begin
              assign  gnpg_level1[48+i]=g[48+i]|p[48+i]&g[i+48-1]; 
              assign  pp_level1[48+i]=p[48+i]&p[i+48-1];
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
              assign  gnpg_level1[16+i]=g[16+i]; 
              assign  pp_level1[16+i]=p[16+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[32+i]=g[32+i]; 
              assign  pp_level1[32+i]=p[32+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[48+i]=g[48+i]; 
              assign  pp_level1[48+i]=p[48+i];
            end 
            endgenerate
 wire [63:0] gnpg_level2;
 wire [63:0] pp_level2;  
          // pre process continue last 3
           generate
            for (i = 2;i<16 ;i=i+1 ) begin
              assign  gnpg_level2[0+i]=gnpg_level1[0+i]|pp_level1[0+i]&gnpg_level1[i+0-2]; 
              assign  pp_level2[0+i]=pp_level1[0+i]&pp_level1[i+0-2];
            end
           endgenerate
          
          // pre process continue last 3
           generate
            for (i = 2;i<16 ;i=i+1 ) begin
              assign  gnpg_level2[16+i]=gnpg_level1[16+i]|pp_level1[16+i]&gnpg_level1[i+16-2]; 
              assign  pp_level2[16+i]=pp_level1[16+i]&pp_level1[i+16-2];
            end
           endgenerate
          
          // pre process continue last 3
           generate
            for (i = 2;i<16 ;i=i+1 ) begin
              assign  gnpg_level2[32+i]=gnpg_level1[32+i]|pp_level1[32+i]&gnpg_level1[i+32-2]; 
              assign  pp_level2[32+i]=pp_level1[32+i]&pp_level1[i+32-2];
            end
           endgenerate
          
          // pre process continue last 3
           generate
            for (i = 2;i<16 ;i=i+1 ) begin
              assign  gnpg_level2[48+i]=gnpg_level1[48+i]|pp_level1[48+i]&gnpg_level1[i+48-2]; 
              assign  pp_level2[48+i]=pp_level1[48+i]&pp_level1[i+48-2];
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
              assign  gnpg_level2[16+i]=gnpg_level1[16+i]; 
              assign  pp_level2[16+i]=pp_level1[16+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[32+i]=gnpg_level1[32+i]; 
              assign  pp_level2[32+i]=pp_level1[32+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[48+i]=gnpg_level1[48+i]; 
              assign  pp_level2[48+i]=pp_level1[48+i];
            end 
            endgenerate
 wire [63:0] gnpg_level3;
 wire [63:0] pp_level3;  
          // pre process continue last 2
           generate
            for (i = 4;i<16 ;i=i+1 ) begin
              assign  gnpg_level3[0+i]=gnpg_level2[0+i]|pp_level2[0+i]&gnpg_level2[i+0-4]; 
              assign  pp_level3[0+i]=pp_level2[0+i]&pp_level2[i+0-4];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 4;i<16 ;i=i+1 ) begin
              assign  gnpg_level3[16+i]=gnpg_level2[16+i]|pp_level2[16+i]&gnpg_level2[i+16-4]; 
              assign  pp_level3[16+i]=pp_level2[16+i]&pp_level2[i+16-4];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 4;i<16 ;i=i+1 ) begin
              assign  gnpg_level3[32+i]=gnpg_level2[32+i]|pp_level2[32+i]&gnpg_level2[i+32-4]; 
              assign  pp_level3[32+i]=pp_level2[32+i]&pp_level2[i+32-4];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 4;i<16 ;i=i+1 ) begin
              assign  gnpg_level3[48+i]=gnpg_level2[48+i]|pp_level2[48+i]&gnpg_level2[i+48-4]; 
              assign  pp_level3[48+i]=pp_level2[48+i]&pp_level2[i+48-4];
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
              assign  gnpg_level3[16+i]=gnpg_level2[16+i]; 
              assign  pp_level3[16+i]=pp_level2[16+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[32+i]=gnpg_level2[32+i]; 
              assign  pp_level3[32+i]=pp_level2[32+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[48+i]=gnpg_level2[48+i]; 
              assign  pp_level3[48+i]=pp_level2[48+i];
            end 
            endgenerate
 wire [63:0] gnpg_level4;
 wire [63:0] pp_level4;  
          // pre process continue last 1
           generate
            for (i = 8;i<16 ;i=i+1 ) begin
              assign  gnpg_level4[0+i]=gnpg_level3[0+i]|pp_level3[0+i]&gnpg_level3[i+0-8]; 
              assign  pp_level4[0+i]=pp_level3[0+i]&pp_level3[i+0-8];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 8;i<16 ;i=i+1 ) begin
              assign  gnpg_level4[16+i]=gnpg_level3[16+i]|pp_level3[16+i]&gnpg_level3[i+16-8]; 
              assign  pp_level4[16+i]=pp_level3[16+i]&pp_level3[i+16-8];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 8;i<16 ;i=i+1 ) begin
              assign  gnpg_level4[32+i]=gnpg_level3[32+i]|pp_level3[32+i]&gnpg_level3[i+32-8]; 
              assign  pp_level4[32+i]=pp_level3[32+i]&pp_level3[i+32-8];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 8;i<16 ;i=i+1 ) begin
              assign  gnpg_level4[48+i]=gnpg_level3[48+i]|pp_level3[48+i]&gnpg_level3[i+48-8]; 
              assign  pp_level4[48+i]=pp_level3[48+i]&pp_level3[i+48-8];
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
              assign  gnpg_level4[16+i]=gnpg_level3[16+i]; 
              assign  pp_level4[16+i]=pp_level3[16+i];
            end 
            endgenerate
            generate
            for (i = 0;i<8 ;i=i+1 ) begin
              assign  gnpg_level4[32+i]=gnpg_level3[32+i]; 
              assign  pp_level4[32+i]=pp_level3[32+i];
            end 
            endgenerate
            generate
            for (i = 0;i<8 ;i=i+1 ) begin
              assign  gnpg_level4[48+i]=gnpg_level3[48+i]; 
              assign  pp_level4[48+i]=pp_level3[48+i];
            end 
            endgenerate
 wire [63:0] gnpg_level5;
 wire [63:0] pp_level5;  
          // old pass
         generate
          for (i = 0;i<16 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 16;i<16+16 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[16-1];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[16-1];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 32;i<16+32 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[32-1];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[32-1];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<16+48 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[48-1];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[48-1];
           end 
         endgenerate
         
 wire [63:0] gnpg_level6;
 wire [63:0] pp_level6;  
          // old pass
         generate
          for (i = 0;i<32 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 32;i<16+32 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[32-1];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[32-1];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<16+48 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[48-1];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[48-1];
           end 
         endgenerate
         
   assign cout= g[64]|p[64]&gnpg_level6[63];
   generate
    for (i = 1;i<65 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level6[i-1];    
    end
   endgenerate // 6 is deep enough , no post process
endmodule

