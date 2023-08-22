
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_128_BK0_KL7_Fanout8_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_128_BK0_KL7_Fanout8 u0 (a,b,cin_r,sum_w,cout_w);
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

module Hybrid_128_BK0_KL7_Fanout8 (a,b,cin,sum,cout);

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

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[32+i]=g[32+i]|p[32+i]&g[i+32-1]; 
              assign  pp_level1[32+i]=p[32+i]&p[i+32-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[40+i]=g[40+i]|p[40+i]&g[i+40-1]; 
              assign  pp_level1[40+i]=p[40+i]&p[i+40-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[48+i]=g[48+i]|p[48+i]&g[i+48-1]; 
              assign  pp_level1[48+i]=p[48+i]&p[i+48-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[56+i]=g[56+i]|p[56+i]&g[i+56-1]; 
              assign  pp_level1[56+i]=p[56+i]&p[i+56-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[64+i]=g[64+i]|p[64+i]&g[i+64-1]; 
              assign  pp_level1[64+i]=p[64+i]&p[i+64-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[72+i]=g[72+i]|p[72+i]&g[i+72-1]; 
              assign  pp_level1[72+i]=p[72+i]&p[i+72-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[80+i]=g[80+i]|p[80+i]&g[i+80-1]; 
              assign  pp_level1[80+i]=p[80+i]&p[i+80-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[88+i]=g[88+i]|p[88+i]&g[i+88-1]; 
              assign  pp_level1[88+i]=p[88+i]&p[i+88-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[96+i]=g[96+i]|p[96+i]&g[i+96-1]; 
              assign  pp_level1[96+i]=p[96+i]&p[i+96-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[104+i]=g[104+i]|p[104+i]&g[i+104-1]; 
              assign  pp_level1[104+i]=p[104+i]&p[i+104-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[112+i]=g[112+i]|p[112+i]&g[i+112-1]; 
              assign  pp_level1[112+i]=p[112+i]&p[i+112-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin
              assign  gnpg_level1[120+i]=g[120+i]|p[120+i]&g[i+120-1]; 
              assign  pp_level1[120+i]=p[120+i]&p[i+120-1];
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
              assign  gnpg_level1[40+i]=g[40+i]; 
              assign  pp_level1[40+i]=p[40+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[48+i]=g[48+i]; 
              assign  pp_level1[48+i]=p[48+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[56+i]=g[56+i]; 
              assign  pp_level1[56+i]=p[56+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[64+i]=g[64+i]; 
              assign  pp_level1[64+i]=p[64+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[72+i]=g[72+i]; 
              assign  pp_level1[72+i]=p[72+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[80+i]=g[80+i]; 
              assign  pp_level1[80+i]=p[80+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[88+i]=g[88+i]; 
              assign  pp_level1[88+i]=p[88+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[96+i]=g[96+i]; 
              assign  pp_level1[96+i]=p[96+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[104+i]=g[104+i]; 
              assign  pp_level1[104+i]=p[104+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[112+i]=g[112+i]; 
              assign  pp_level1[112+i]=p[112+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[120+i]=g[120+i]; 
              assign  pp_level1[120+i]=p[120+i];
            end 
            endgenerate
 wire [127:0] gnpg_level2;
 wire [127:0] pp_level2;  
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
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[32+i]=gnpg_level1[32+i]|pp_level1[32+i]&gnpg_level1[i+32-2]; 
              assign  pp_level2[32+i]=pp_level1[32+i]&pp_level1[i+32-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[40+i]=gnpg_level1[40+i]|pp_level1[40+i]&gnpg_level1[i+40-2]; 
              assign  pp_level2[40+i]=pp_level1[40+i]&pp_level1[i+40-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[48+i]=gnpg_level1[48+i]|pp_level1[48+i]&gnpg_level1[i+48-2]; 
              assign  pp_level2[48+i]=pp_level1[48+i]&pp_level1[i+48-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[56+i]=gnpg_level1[56+i]|pp_level1[56+i]&gnpg_level1[i+56-2]; 
              assign  pp_level2[56+i]=pp_level1[56+i]&pp_level1[i+56-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[64+i]=gnpg_level1[64+i]|pp_level1[64+i]&gnpg_level1[i+64-2]; 
              assign  pp_level2[64+i]=pp_level1[64+i]&pp_level1[i+64-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[72+i]=gnpg_level1[72+i]|pp_level1[72+i]&gnpg_level1[i+72-2]; 
              assign  pp_level2[72+i]=pp_level1[72+i]&pp_level1[i+72-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[80+i]=gnpg_level1[80+i]|pp_level1[80+i]&gnpg_level1[i+80-2]; 
              assign  pp_level2[80+i]=pp_level1[80+i]&pp_level1[i+80-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[88+i]=gnpg_level1[88+i]|pp_level1[88+i]&gnpg_level1[i+88-2]; 
              assign  pp_level2[88+i]=pp_level1[88+i]&pp_level1[i+88-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[96+i]=gnpg_level1[96+i]|pp_level1[96+i]&gnpg_level1[i+96-2]; 
              assign  pp_level2[96+i]=pp_level1[96+i]&pp_level1[i+96-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[104+i]=gnpg_level1[104+i]|pp_level1[104+i]&gnpg_level1[i+104-2]; 
              assign  pp_level2[104+i]=pp_level1[104+i]&pp_level1[i+104-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[112+i]=gnpg_level1[112+i]|pp_level1[112+i]&gnpg_level1[i+112-2]; 
              assign  pp_level2[112+i]=pp_level1[112+i]&pp_level1[i+112-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin
              assign  gnpg_level2[120+i]=gnpg_level1[120+i]|pp_level1[120+i]&gnpg_level1[i+120-2]; 
              assign  pp_level2[120+i]=pp_level1[120+i]&pp_level1[i+120-2];
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
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[32+i]=gnpg_level1[32+i]; 
              assign  pp_level2[32+i]=pp_level1[32+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[40+i]=gnpg_level1[40+i]; 
              assign  pp_level2[40+i]=pp_level1[40+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[48+i]=gnpg_level1[48+i]; 
              assign  pp_level2[48+i]=pp_level1[48+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[56+i]=gnpg_level1[56+i]; 
              assign  pp_level2[56+i]=pp_level1[56+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[64+i]=gnpg_level1[64+i]; 
              assign  pp_level2[64+i]=pp_level1[64+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[72+i]=gnpg_level1[72+i]; 
              assign  pp_level2[72+i]=pp_level1[72+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[80+i]=gnpg_level1[80+i]; 
              assign  pp_level2[80+i]=pp_level1[80+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[88+i]=gnpg_level1[88+i]; 
              assign  pp_level2[88+i]=pp_level1[88+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[96+i]=gnpg_level1[96+i]; 
              assign  pp_level2[96+i]=pp_level1[96+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[104+i]=gnpg_level1[104+i]; 
              assign  pp_level2[104+i]=pp_level1[104+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[112+i]=gnpg_level1[112+i]; 
              assign  pp_level2[112+i]=pp_level1[112+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[120+i]=gnpg_level1[120+i]; 
              assign  pp_level2[120+i]=pp_level1[120+i];
            end 
            endgenerate
 wire [127:0] gnpg_level3;
 wire [127:0] pp_level3;  
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
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[32+i]=gnpg_level2[32+i]|pp_level2[32+i]&gnpg_level2[i+32-4]; 
              assign  pp_level3[32+i]=pp_level2[32+i]&pp_level2[i+32-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[40+i]=gnpg_level2[40+i]|pp_level2[40+i]&gnpg_level2[i+40-4]; 
              assign  pp_level3[40+i]=pp_level2[40+i]&pp_level2[i+40-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[48+i]=gnpg_level2[48+i]|pp_level2[48+i]&gnpg_level2[i+48-4]; 
              assign  pp_level3[48+i]=pp_level2[48+i]&pp_level2[i+48-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[56+i]=gnpg_level2[56+i]|pp_level2[56+i]&gnpg_level2[i+56-4]; 
              assign  pp_level3[56+i]=pp_level2[56+i]&pp_level2[i+56-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[64+i]=gnpg_level2[64+i]|pp_level2[64+i]&gnpg_level2[i+64-4]; 
              assign  pp_level3[64+i]=pp_level2[64+i]&pp_level2[i+64-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[72+i]=gnpg_level2[72+i]|pp_level2[72+i]&gnpg_level2[i+72-4]; 
              assign  pp_level3[72+i]=pp_level2[72+i]&pp_level2[i+72-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[80+i]=gnpg_level2[80+i]|pp_level2[80+i]&gnpg_level2[i+80-4]; 
              assign  pp_level3[80+i]=pp_level2[80+i]&pp_level2[i+80-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[88+i]=gnpg_level2[88+i]|pp_level2[88+i]&gnpg_level2[i+88-4]; 
              assign  pp_level3[88+i]=pp_level2[88+i]&pp_level2[i+88-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[96+i]=gnpg_level2[96+i]|pp_level2[96+i]&gnpg_level2[i+96-4]; 
              assign  pp_level3[96+i]=pp_level2[96+i]&pp_level2[i+96-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[104+i]=gnpg_level2[104+i]|pp_level2[104+i]&gnpg_level2[i+104-4]; 
              assign  pp_level3[104+i]=pp_level2[104+i]&pp_level2[i+104-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[112+i]=gnpg_level2[112+i]|pp_level2[112+i]&gnpg_level2[i+112-4]; 
              assign  pp_level3[112+i]=pp_level2[112+i]&pp_level2[i+112-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin
              assign  gnpg_level3[120+i]=gnpg_level2[120+i]|pp_level2[120+i]&gnpg_level2[i+120-4]; 
              assign  pp_level3[120+i]=pp_level2[120+i]&pp_level2[i+120-4];
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
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[32+i]=gnpg_level2[32+i]; 
              assign  pp_level3[32+i]=pp_level2[32+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[40+i]=gnpg_level2[40+i]; 
              assign  pp_level3[40+i]=pp_level2[40+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[48+i]=gnpg_level2[48+i]; 
              assign  pp_level3[48+i]=pp_level2[48+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[56+i]=gnpg_level2[56+i]; 
              assign  pp_level3[56+i]=pp_level2[56+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[64+i]=gnpg_level2[64+i]; 
              assign  pp_level3[64+i]=pp_level2[64+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[72+i]=gnpg_level2[72+i]; 
              assign  pp_level3[72+i]=pp_level2[72+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[80+i]=gnpg_level2[80+i]; 
              assign  pp_level3[80+i]=pp_level2[80+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[88+i]=gnpg_level2[88+i]; 
              assign  pp_level3[88+i]=pp_level2[88+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[96+i]=gnpg_level2[96+i]; 
              assign  pp_level3[96+i]=pp_level2[96+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[104+i]=gnpg_level2[104+i]; 
              assign  pp_level3[104+i]=pp_level2[104+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[112+i]=gnpg_level2[112+i]; 
              assign  pp_level3[112+i]=pp_level2[112+i];
            end 
            endgenerate
            generate
            for (i = 0;i<4 ;i=i+1 ) begin
              assign  gnpg_level3[120+i]=gnpg_level2[120+i]; 
              assign  pp_level3[120+i]=pp_level2[120+i];
            end 
            endgenerate
 wire [127:0] gnpg_level4;
 wire [127:0] pp_level4;  
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
         
         // Multiple fanout stage
         generate
           for (i = 32;i<8+32 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[32+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[32+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<8+40 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[40+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[40+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<8+48 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[48+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[48+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<8+56 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[56+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[56+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<8+64 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[64+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[64+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<8+72 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[72+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[72+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<8+80 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[80+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[80+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<8+88 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[88+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[88+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<8+96 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[96+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[96+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<8+104 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[104+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[104+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<8+112 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[112+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[112+8-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<8+120 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[120+8-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[120+8-1-8];
           end 
         endgenerate
         
 wire [127:0] gnpg_level5;
 wire [127:0] pp_level5;  
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
         
         // Multiple fanout stage
         generate
           for (i = 32;i<8+32 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[32+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[32+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<8+40 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[40+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[40+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<8+48 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[48+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[48+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<8+56 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[56+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[56+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<8+64 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[64+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[64+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<8+72 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[72+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[72+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<8+80 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[80+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[80+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<8+88 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[88+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[88+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<8+96 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[96+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[96+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<8+104 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[104+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[104+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<8+112 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[112+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[112+8-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<8+120 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[120+8-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[120+8-1-16];
           end 
         endgenerate
         
 wire [127:0] gnpg_level6;
 wire [127:0] pp_level6;  
          // old pass
         generate
          for (i = 0;i<32 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 32;i<8+32 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[32+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[32+8-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<8+40 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[40+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[40+8-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<8+48 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[48+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[48+8-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<8+56 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[56+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[56+8-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<8+64 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[64+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[64+8-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<8+72 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[72+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[72+8-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<8+80 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[80+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[80+8-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<8+88 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[88+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[88+8-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<8+96 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[96+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[96+8-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<8+104 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[104+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[104+8-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<8+112 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[112+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[112+8-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<8+120 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[120+8-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[120+8-1-32];
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
           for (i = 64;i<8+64 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[64+8-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[64+8-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<8+72 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[72+8-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[72+8-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<8+80 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[80+8-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[80+8-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<8+88 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[88+8-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[88+8-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<8+96 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[96+8-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[96+8-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<8+104 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[104+8-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[104+8-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<8+112 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[112+8-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[112+8-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<8+120 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[120+8-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[120+8-1-64];
           end 
         endgenerate
         
   assign cout= g[128]|p[128]&gnpg_level7[127];
   generate
    for (i = 1;i<129 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level7[i-1];    
    end
   endgenerate // 7 is deep enough , no post process
endmodule

