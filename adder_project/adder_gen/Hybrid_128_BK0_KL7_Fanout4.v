
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_128_BK0_KL7_Fanout4_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_128_BK0_KL7_Fanout4 u0 (a,b,cin_r,sum_w,cout_w);
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

module Hybrid_128_BK0_KL7_Fanout4 (a,b,cin,sum,cout);

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

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[32+i]=g[32+i]|p[32+i]&g[i+32-1]; 
              assign  pp_level1[32+i]=p[32+i]&p[i+32-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[36+i]=g[36+i]|p[36+i]&g[i+36-1]; 
              assign  pp_level1[36+i]=p[36+i]&p[i+36-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[40+i]=g[40+i]|p[40+i]&g[i+40-1]; 
              assign  pp_level1[40+i]=p[40+i]&p[i+40-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[44+i]=g[44+i]|p[44+i]&g[i+44-1]; 
              assign  pp_level1[44+i]=p[44+i]&p[i+44-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[48+i]=g[48+i]|p[48+i]&g[i+48-1]; 
              assign  pp_level1[48+i]=p[48+i]&p[i+48-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[52+i]=g[52+i]|p[52+i]&g[i+52-1]; 
              assign  pp_level1[52+i]=p[52+i]&p[i+52-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[56+i]=g[56+i]|p[56+i]&g[i+56-1]; 
              assign  pp_level1[56+i]=p[56+i]&p[i+56-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[60+i]=g[60+i]|p[60+i]&g[i+60-1]; 
              assign  pp_level1[60+i]=p[60+i]&p[i+60-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[64+i]=g[64+i]|p[64+i]&g[i+64-1]; 
              assign  pp_level1[64+i]=p[64+i]&p[i+64-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[68+i]=g[68+i]|p[68+i]&g[i+68-1]; 
              assign  pp_level1[68+i]=p[68+i]&p[i+68-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[72+i]=g[72+i]|p[72+i]&g[i+72-1]; 
              assign  pp_level1[72+i]=p[72+i]&p[i+72-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[76+i]=g[76+i]|p[76+i]&g[i+76-1]; 
              assign  pp_level1[76+i]=p[76+i]&p[i+76-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[80+i]=g[80+i]|p[80+i]&g[i+80-1]; 
              assign  pp_level1[80+i]=p[80+i]&p[i+80-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[84+i]=g[84+i]|p[84+i]&g[i+84-1]; 
              assign  pp_level1[84+i]=p[84+i]&p[i+84-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[88+i]=g[88+i]|p[88+i]&g[i+88-1]; 
              assign  pp_level1[88+i]=p[88+i]&p[i+88-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[92+i]=g[92+i]|p[92+i]&g[i+92-1]; 
              assign  pp_level1[92+i]=p[92+i]&p[i+92-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[96+i]=g[96+i]|p[96+i]&g[i+96-1]; 
              assign  pp_level1[96+i]=p[96+i]&p[i+96-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[100+i]=g[100+i]|p[100+i]&g[i+100-1]; 
              assign  pp_level1[100+i]=p[100+i]&p[i+100-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[104+i]=g[104+i]|p[104+i]&g[i+104-1]; 
              assign  pp_level1[104+i]=p[104+i]&p[i+104-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[108+i]=g[108+i]|p[108+i]&g[i+108-1]; 
              assign  pp_level1[108+i]=p[108+i]&p[i+108-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[112+i]=g[112+i]|p[112+i]&g[i+112-1]; 
              assign  pp_level1[112+i]=p[112+i]&p[i+112-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[116+i]=g[116+i]|p[116+i]&g[i+116-1]; 
              assign  pp_level1[116+i]=p[116+i]&p[i+116-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[120+i]=g[120+i]|p[120+i]&g[i+120-1]; 
              assign  pp_level1[120+i]=p[120+i]&p[i+120-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<4 ;i=i+1 ) begin
              assign  gnpg_level1[124+i]=g[124+i]|p[124+i]&g[i+124-1]; 
              assign  pp_level1[124+i]=p[124+i]&p[i+124-1];
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
              assign  gnpg_level1[36+i]=g[36+i]; 
              assign  pp_level1[36+i]=p[36+i];
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
              assign  gnpg_level1[44+i]=g[44+i]; 
              assign  pp_level1[44+i]=p[44+i];
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
              assign  gnpg_level1[52+i]=g[52+i]; 
              assign  pp_level1[52+i]=p[52+i];
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
              assign  gnpg_level1[60+i]=g[60+i]; 
              assign  pp_level1[60+i]=p[60+i];
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
              assign  gnpg_level1[68+i]=g[68+i]; 
              assign  pp_level1[68+i]=p[68+i];
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
              assign  gnpg_level1[76+i]=g[76+i]; 
              assign  pp_level1[76+i]=p[76+i];
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
              assign  gnpg_level1[84+i]=g[84+i]; 
              assign  pp_level1[84+i]=p[84+i];
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
              assign  gnpg_level1[92+i]=g[92+i]; 
              assign  pp_level1[92+i]=p[92+i];
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
              assign  gnpg_level1[100+i]=g[100+i]; 
              assign  pp_level1[100+i]=p[100+i];
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
              assign  gnpg_level1[108+i]=g[108+i]; 
              assign  pp_level1[108+i]=p[108+i];
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
              assign  gnpg_level1[116+i]=g[116+i]; 
              assign  pp_level1[116+i]=p[116+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[120+i]=g[120+i]; 
              assign  pp_level1[120+i]=p[120+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[124+i]=g[124+i]; 
              assign  pp_level1[124+i]=p[124+i];
            end 
            endgenerate
 wire [127:0] gnpg_level2;
 wire [127:0] pp_level2;  
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
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[32+i]=gnpg_level1[32+i]|pp_level1[32+i]&gnpg_level1[i+32-2]; 
              assign  pp_level2[32+i]=pp_level1[32+i]&pp_level1[i+32-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[36+i]=gnpg_level1[36+i]|pp_level1[36+i]&gnpg_level1[i+36-2]; 
              assign  pp_level2[36+i]=pp_level1[36+i]&pp_level1[i+36-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[40+i]=gnpg_level1[40+i]|pp_level1[40+i]&gnpg_level1[i+40-2]; 
              assign  pp_level2[40+i]=pp_level1[40+i]&pp_level1[i+40-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[44+i]=gnpg_level1[44+i]|pp_level1[44+i]&gnpg_level1[i+44-2]; 
              assign  pp_level2[44+i]=pp_level1[44+i]&pp_level1[i+44-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[48+i]=gnpg_level1[48+i]|pp_level1[48+i]&gnpg_level1[i+48-2]; 
              assign  pp_level2[48+i]=pp_level1[48+i]&pp_level1[i+48-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[52+i]=gnpg_level1[52+i]|pp_level1[52+i]&gnpg_level1[i+52-2]; 
              assign  pp_level2[52+i]=pp_level1[52+i]&pp_level1[i+52-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[56+i]=gnpg_level1[56+i]|pp_level1[56+i]&gnpg_level1[i+56-2]; 
              assign  pp_level2[56+i]=pp_level1[56+i]&pp_level1[i+56-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[60+i]=gnpg_level1[60+i]|pp_level1[60+i]&gnpg_level1[i+60-2]; 
              assign  pp_level2[60+i]=pp_level1[60+i]&pp_level1[i+60-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[64+i]=gnpg_level1[64+i]|pp_level1[64+i]&gnpg_level1[i+64-2]; 
              assign  pp_level2[64+i]=pp_level1[64+i]&pp_level1[i+64-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[68+i]=gnpg_level1[68+i]|pp_level1[68+i]&gnpg_level1[i+68-2]; 
              assign  pp_level2[68+i]=pp_level1[68+i]&pp_level1[i+68-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[72+i]=gnpg_level1[72+i]|pp_level1[72+i]&gnpg_level1[i+72-2]; 
              assign  pp_level2[72+i]=pp_level1[72+i]&pp_level1[i+72-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[76+i]=gnpg_level1[76+i]|pp_level1[76+i]&gnpg_level1[i+76-2]; 
              assign  pp_level2[76+i]=pp_level1[76+i]&pp_level1[i+76-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[80+i]=gnpg_level1[80+i]|pp_level1[80+i]&gnpg_level1[i+80-2]; 
              assign  pp_level2[80+i]=pp_level1[80+i]&pp_level1[i+80-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[84+i]=gnpg_level1[84+i]|pp_level1[84+i]&gnpg_level1[i+84-2]; 
              assign  pp_level2[84+i]=pp_level1[84+i]&pp_level1[i+84-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[88+i]=gnpg_level1[88+i]|pp_level1[88+i]&gnpg_level1[i+88-2]; 
              assign  pp_level2[88+i]=pp_level1[88+i]&pp_level1[i+88-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[92+i]=gnpg_level1[92+i]|pp_level1[92+i]&gnpg_level1[i+92-2]; 
              assign  pp_level2[92+i]=pp_level1[92+i]&pp_level1[i+92-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[96+i]=gnpg_level1[96+i]|pp_level1[96+i]&gnpg_level1[i+96-2]; 
              assign  pp_level2[96+i]=pp_level1[96+i]&pp_level1[i+96-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[100+i]=gnpg_level1[100+i]|pp_level1[100+i]&gnpg_level1[i+100-2]; 
              assign  pp_level2[100+i]=pp_level1[100+i]&pp_level1[i+100-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[104+i]=gnpg_level1[104+i]|pp_level1[104+i]&gnpg_level1[i+104-2]; 
              assign  pp_level2[104+i]=pp_level1[104+i]&pp_level1[i+104-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[108+i]=gnpg_level1[108+i]|pp_level1[108+i]&gnpg_level1[i+108-2]; 
              assign  pp_level2[108+i]=pp_level1[108+i]&pp_level1[i+108-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[112+i]=gnpg_level1[112+i]|pp_level1[112+i]&gnpg_level1[i+112-2]; 
              assign  pp_level2[112+i]=pp_level1[112+i]&pp_level1[i+112-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[116+i]=gnpg_level1[116+i]|pp_level1[116+i]&gnpg_level1[i+116-2]; 
              assign  pp_level2[116+i]=pp_level1[116+i]&pp_level1[i+116-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[120+i]=gnpg_level1[120+i]|pp_level1[120+i]&gnpg_level1[i+120-2]; 
              assign  pp_level2[120+i]=pp_level1[120+i]&pp_level1[i+120-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<4 ;i=i+1 ) begin
              assign  gnpg_level2[124+i]=gnpg_level1[124+i]|pp_level1[124+i]&gnpg_level1[i+124-2]; 
              assign  pp_level2[124+i]=pp_level1[124+i]&pp_level1[i+124-2];
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
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[32+i]=gnpg_level1[32+i]; 
              assign  pp_level2[32+i]=pp_level1[32+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[36+i]=gnpg_level1[36+i]; 
              assign  pp_level2[36+i]=pp_level1[36+i];
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
              assign  gnpg_level2[44+i]=gnpg_level1[44+i]; 
              assign  pp_level2[44+i]=pp_level1[44+i];
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
              assign  gnpg_level2[52+i]=gnpg_level1[52+i]; 
              assign  pp_level2[52+i]=pp_level1[52+i];
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
              assign  gnpg_level2[60+i]=gnpg_level1[60+i]; 
              assign  pp_level2[60+i]=pp_level1[60+i];
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
              assign  gnpg_level2[68+i]=gnpg_level1[68+i]; 
              assign  pp_level2[68+i]=pp_level1[68+i];
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
              assign  gnpg_level2[76+i]=gnpg_level1[76+i]; 
              assign  pp_level2[76+i]=pp_level1[76+i];
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
              assign  gnpg_level2[84+i]=gnpg_level1[84+i]; 
              assign  pp_level2[84+i]=pp_level1[84+i];
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
              assign  gnpg_level2[92+i]=gnpg_level1[92+i]; 
              assign  pp_level2[92+i]=pp_level1[92+i];
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
              assign  gnpg_level2[100+i]=gnpg_level1[100+i]; 
              assign  pp_level2[100+i]=pp_level1[100+i];
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
              assign  gnpg_level2[108+i]=gnpg_level1[108+i]; 
              assign  pp_level2[108+i]=pp_level1[108+i];
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
              assign  gnpg_level2[116+i]=gnpg_level1[116+i]; 
              assign  pp_level2[116+i]=pp_level1[116+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[120+i]=gnpg_level1[120+i]; 
              assign  pp_level2[120+i]=pp_level1[120+i];
            end 
            endgenerate
            generate
            for (i = 0;i<2 ;i=i+1 ) begin
              assign  gnpg_level2[124+i]=gnpg_level1[124+i]; 
              assign  pp_level2[124+i]=pp_level1[124+i];
            end 
            endgenerate
 wire [127:0] gnpg_level3;
 wire [127:0] pp_level3;  
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
         
         // Multiple fanout stage
         generate
           for (i = 32;i<4+32 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[32+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[32+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 36;i<4+36 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[36+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[36+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<4+40 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[40+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[40+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 44;i<4+44 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[44+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[44+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<4+48 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[48+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[48+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 52;i<4+52 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[52+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[52+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<4+56 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[56+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[56+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 60;i<4+60 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[60+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[60+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<4+64 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[64+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[64+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 68;i<4+68 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[68+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[68+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<4+72 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[72+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[72+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 76;i<4+76 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[76+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[76+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<4+80 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[80+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[80+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 84;i<4+84 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[84+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[84+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<4+88 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[88+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[88+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 92;i<4+92 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[92+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[92+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<4+96 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[96+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[96+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 100;i<4+100 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[100+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[100+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<4+104 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[104+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[104+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 108;i<4+108 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[108+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[108+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<4+112 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[112+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[112+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 116;i<4+116 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[116+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[116+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<4+120 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[120+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[120+4-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 124;i<4+124 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[124+4-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[124+4-1-4];
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
         
         // Multiple fanout stage
         generate
           for (i = 32;i<4+32 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[32+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[32+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 36;i<4+36 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[36+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[36+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<4+40 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[40+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[40+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 44;i<4+44 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[44+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[44+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<4+48 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[48+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[48+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 52;i<4+52 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[52+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[52+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<4+56 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[56+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[56+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 60;i<4+60 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[60+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[60+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<4+64 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[64+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[64+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 68;i<4+68 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[68+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[68+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<4+72 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[72+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[72+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 76;i<4+76 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[76+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[76+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<4+80 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[80+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[80+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 84;i<4+84 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[84+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[84+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<4+88 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[88+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[88+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 92;i<4+92 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[92+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[92+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<4+96 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[96+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[96+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 100;i<4+100 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[100+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[100+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<4+104 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[104+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[104+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 108;i<4+108 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[108+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[108+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<4+112 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[112+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[112+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 116;i<4+116 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[116+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[116+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<4+120 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[120+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[120+4-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 124;i<4+124 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[124+4-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[124+4-1-8];
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
         
         // Multiple fanout stage
         generate
           for (i = 32;i<4+32 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[32+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[32+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 36;i<4+36 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[36+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[36+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<4+40 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[40+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[40+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 44;i<4+44 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[44+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[44+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<4+48 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[48+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[48+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 52;i<4+52 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[52+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[52+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<4+56 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[56+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[56+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 60;i<4+60 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[60+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[60+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<4+64 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[64+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[64+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 68;i<4+68 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[68+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[68+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<4+72 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[72+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[72+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 76;i<4+76 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[76+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[76+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<4+80 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[80+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[80+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 84;i<4+84 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[84+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[84+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<4+88 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[88+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[88+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 92;i<4+92 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[92+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[92+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<4+96 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[96+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[96+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 100;i<4+100 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[100+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[100+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<4+104 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[104+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[104+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 108;i<4+108 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[108+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[108+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<4+112 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[112+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[112+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 116;i<4+116 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[116+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[116+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<4+120 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[120+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[120+4-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 124;i<4+124 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[124+4-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[124+4-1-16];
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
           for (i = 32;i<4+32 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[32+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[32+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 36;i<4+36 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[36+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[36+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<4+40 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[40+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[40+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 44;i<4+44 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[44+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[44+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<4+48 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[48+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[48+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 52;i<4+52 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[52+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[52+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<4+56 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[56+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[56+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 60;i<4+60 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[60+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[60+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<4+64 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[64+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[64+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 68;i<4+68 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[68+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[68+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<4+72 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[72+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[72+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 76;i<4+76 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[76+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[76+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<4+80 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[80+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[80+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 84;i<4+84 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[84+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[84+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<4+88 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[88+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[88+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 92;i<4+92 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[92+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[92+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<4+96 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[96+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[96+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 100;i<4+100 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[100+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[100+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<4+104 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[104+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[104+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 108;i<4+108 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[108+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[108+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<4+112 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[112+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[112+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 116;i<4+116 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[116+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[116+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<4+120 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[120+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[120+4-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 124;i<4+124 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[124+4-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[124+4-1-32];
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
           for (i = 64;i<4+64 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[64+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[64+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 68;i<4+68 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[68+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[68+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<4+72 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[72+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[72+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 76;i<4+76 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[76+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[76+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<4+80 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[80+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[80+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 84;i<4+84 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[84+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[84+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<4+88 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[88+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[88+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 92;i<4+92 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[92+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[92+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<4+96 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[96+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[96+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 100;i<4+100 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[100+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[100+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<4+104 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[104+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[104+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 108;i<4+108 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[108+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[108+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<4+112 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[112+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[112+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 116;i<4+116 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[116+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[116+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<4+120 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[120+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[120+4-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 124;i<4+124 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[124+4-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[124+4-1-64];
           end 
         endgenerate
         
   assign cout= g[128]|p[128]&gnpg_level7[127];
   generate
    for (i = 1;i<129 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level7[i-1];    
    end
   endgenerate // 7 is deep enough , no post process
endmodule

