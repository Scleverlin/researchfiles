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

module Hybrid_64_BK0_KL6 (a,b,cin,sum,cout);

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

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[32+i]=g[32+i]|p[32+i]&g[i+32-1]; 
              assign  pp_level1[32+i]=p[32+i]&p[i+32-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[34+i]=g[34+i]|p[34+i]&g[i+34-1]; 
              assign  pp_level1[34+i]=p[34+i]&p[i+34-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[36+i]=g[36+i]|p[36+i]&g[i+36-1]; 
              assign  pp_level1[36+i]=p[36+i]&p[i+36-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[38+i]=g[38+i]|p[38+i]&g[i+38-1]; 
              assign  pp_level1[38+i]=p[38+i]&p[i+38-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[40+i]=g[40+i]|p[40+i]&g[i+40-1]; 
              assign  pp_level1[40+i]=p[40+i]&p[i+40-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[42+i]=g[42+i]|p[42+i]&g[i+42-1]; 
              assign  pp_level1[42+i]=p[42+i]&p[i+42-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[44+i]=g[44+i]|p[44+i]&g[i+44-1]; 
              assign  pp_level1[44+i]=p[44+i]&p[i+44-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[46+i]=g[46+i]|p[46+i]&g[i+46-1]; 
              assign  pp_level1[46+i]=p[46+i]&p[i+46-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[48+i]=g[48+i]|p[48+i]&g[i+48-1]; 
              assign  pp_level1[48+i]=p[48+i]&p[i+48-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[50+i]=g[50+i]|p[50+i]&g[i+50-1]; 
              assign  pp_level1[50+i]=p[50+i]&p[i+50-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[52+i]=g[52+i]|p[52+i]&g[i+52-1]; 
              assign  pp_level1[52+i]=p[52+i]&p[i+52-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[54+i]=g[54+i]|p[54+i]&g[i+54-1]; 
              assign  pp_level1[54+i]=p[54+i]&p[i+54-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[56+i]=g[56+i]|p[56+i]&g[i+56-1]; 
              assign  pp_level1[56+i]=p[56+i]&p[i+56-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[58+i]=g[58+i]|p[58+i]&g[i+58-1]; 
              assign  pp_level1[58+i]=p[58+i]&p[i+58-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[60+i]=g[60+i]|p[60+i]&g[i+60-1]; 
              assign  pp_level1[60+i]=p[60+i]&p[i+60-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[62+i]=g[62+i]|p[62+i]&g[i+62-1]; 
              assign  pp_level1[62+i]=p[62+i]&p[i+62-1];
            end
           endgenerate

          
            generate
            for (i = 0;i<64 ;i=i+2 ) begin
              assign  gnpg_level1[i]=g[i]; 
              assign  pp_level1[i]=p[i];
            end 
            endgenerate
 wire [63:0] gnpg_level2;
 wire [63:0] pp_level2;  
 wire [63:0] gnpg_level3;
 wire [63:0] pp_level3;  
 wire [63:0] gnpg_level4;
 wire [63:0] pp_level4;  
 wire [63:0] gnpg_level5;
 wire [63:0] pp_level5;  
 wire [63:0] gnpg_level6;
 wire [63:0] pp_level6;  
   assign cout= g[64]|p[64]&gnpg_level6[63];
   generate
    for (i = 1;i<65 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level6[i-1];    
    end
   endgenerate // 6 is deep enough , no post process
endmodule

