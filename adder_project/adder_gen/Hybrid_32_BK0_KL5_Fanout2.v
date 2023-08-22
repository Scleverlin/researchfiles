
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_32_BK0_KL5_Fanout2_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_32_BK0_KL5_Fanout2 u0 (a,b,cin_r,sum_w,cout_w);
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

module Hybrid_32_BK0_KL5_Fanout2 (a,b,cin,sum,cout);

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
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[0+i]=g[0+i]|p[0+i]&g[i+0-1]; 
              assign  pp_level1[0+i]=p[0+i]&p[i+0-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[2+i]=g[2+i]|p[2+i]&g[i+2-1]; 
              assign  pp_level1[2+i]=p[2+i]&p[i+2-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[4+i]=g[4+i]|p[4+i]&g[i+4-1]; 
              assign  pp_level1[4+i]=p[4+i]&p[i+4-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[6+i]=g[6+i]|p[6+i]&g[i+6-1]; 
              assign  pp_level1[6+i]=p[6+i]&p[i+6-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[8+i]=g[8+i]|p[8+i]&g[i+8-1]; 
              assign  pp_level1[8+i]=p[8+i]&p[i+8-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[10+i]=g[10+i]|p[10+i]&g[i+10-1]; 
              assign  pp_level1[10+i]=p[10+i]&p[i+10-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[12+i]=g[12+i]|p[12+i]&g[i+12-1]; 
              assign  pp_level1[12+i]=p[12+i]&p[i+12-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[14+i]=g[14+i]|p[14+i]&g[i+14-1]; 
              assign  pp_level1[14+i]=p[14+i]&p[i+14-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[16+i]=g[16+i]|p[16+i]&g[i+16-1]; 
              assign  pp_level1[16+i]=p[16+i]&p[i+16-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[18+i]=g[18+i]|p[18+i]&g[i+18-1]; 
              assign  pp_level1[18+i]=p[18+i]&p[i+18-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[20+i]=g[20+i]|p[20+i]&g[i+20-1]; 
              assign  pp_level1[20+i]=p[20+i]&p[i+20-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[22+i]=g[22+i]|p[22+i]&g[i+22-1]; 
              assign  pp_level1[22+i]=p[22+i]&p[i+22-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[24+i]=g[24+i]|p[24+i]&g[i+24-1]; 
              assign  pp_level1[24+i]=p[24+i]&p[i+24-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[26+i]=g[26+i]|p[26+i]&g[i+26-1]; 
              assign  pp_level1[26+i]=p[26+i]&p[i+26-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[28+i]=g[28+i]|p[28+i]&g[i+28-1]; 
              assign  pp_level1[28+i]=p[28+i]&p[i+28-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[30+i]=g[30+i]|p[30+i]&g[i+30-1]; 
              assign  pp_level1[30+i]=p[30+i]&p[i+30-1];
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
              assign  gnpg_level1[2+i]=g[2+i]; 
              assign  pp_level1[2+i]=p[2+i];
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
              assign  gnpg_level1[6+i]=g[6+i]; 
              assign  pp_level1[6+i]=p[6+i];
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
              assign  gnpg_level1[10+i]=g[10+i]; 
              assign  pp_level1[10+i]=p[10+i];
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
              assign  gnpg_level1[14+i]=g[14+i]; 
              assign  pp_level1[14+i]=p[14+i];
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
              assign  gnpg_level1[18+i]=g[18+i]; 
              assign  pp_level1[18+i]=p[18+i];
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
              assign  gnpg_level1[22+i]=g[22+i]; 
              assign  pp_level1[22+i]=p[22+i];
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
              assign  gnpg_level1[26+i]=g[26+i]; 
              assign  pp_level1[26+i]=p[26+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[28+i]=g[28+i]; 
              assign  pp_level1[28+i]=p[28+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[30+i]=g[30+i]; 
              assign  pp_level1[30+i]=p[30+i];
            end 
            endgenerate
 wire [31:0] gnpg_level2;
 wire [31:0] pp_level2;  
          // old pass
         generate
          for (i = 0;i<2 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 2;i<2+2 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[2+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[2+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 4;i<2+4 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[4+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[4+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 6;i<2+6 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[6+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[6+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 8;i<2+8 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[8+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[8+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 10;i<2+10 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[10+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[10+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 12;i<2+12 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[12+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[12+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 14;i<2+14 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[14+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[14+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 16;i<2+16 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[16+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[16+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 18;i<2+18 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[18+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[18+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 20;i<2+20 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[20+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[20+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 22;i<2+22 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[22+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[22+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 24;i<2+24 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[24+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[24+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 26;i<2+26 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[26+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[26+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 28;i<2+28 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[28+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[28+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 30;i<2+30 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[30+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[30+2-1-2];
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
           for (i = 4;i<2+4 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[4+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[4+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 6;i<2+6 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[6+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[6+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 8;i<2+8 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[8+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[8+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 10;i<2+10 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[10+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[10+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 12;i<2+12 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[12+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[12+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 14;i<2+14 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[14+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[14+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 16;i<2+16 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[16+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[16+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 18;i<2+18 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[18+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[18+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 20;i<2+20 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[20+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[20+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 22;i<2+22 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[22+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[22+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 24;i<2+24 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[24+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[24+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 26;i<2+26 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[26+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[26+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 28;i<2+28 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[28+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[28+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 30;i<2+30 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[30+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[30+2-1-4];
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
           for (i = 8;i<2+8 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[8+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[8+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 10;i<2+10 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[10+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[10+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 12;i<2+12 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[12+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[12+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 14;i<2+14 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[14+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[14+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 16;i<2+16 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[16+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[16+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 18;i<2+18 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[18+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[18+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 20;i<2+20 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[20+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[20+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 22;i<2+22 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[22+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[22+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 24;i<2+24 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[24+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[24+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 26;i<2+26 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[26+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[26+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 28;i<2+28 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[28+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[28+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 30;i<2+30 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[30+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[30+2-1-8];
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
           for (i = 16;i<2+16 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[16+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[16+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 18;i<2+18 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[18+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[18+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 20;i<2+20 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[20+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[20+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 22;i<2+22 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[22+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[22+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 24;i<2+24 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[24+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[24+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 26;i<2+26 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[26+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[26+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 28;i<2+28 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[28+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[28+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 30;i<2+30 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[30+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[30+2-1-16];
           end 
         endgenerate
         
   assign cout= g[32]|p[32]&gnpg_level5[31];
   generate
    for (i = 1;i<33 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level5[i-1];    
    end
   endgenerate // 5 is deep enough , no post process
endmodule

