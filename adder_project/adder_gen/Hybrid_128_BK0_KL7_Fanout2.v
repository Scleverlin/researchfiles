
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_128_BK0_KL7_Fanout2_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_128_BK0_KL7_Fanout2 u0 (a,b,cin_r,sum_w,cout_w);
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

module Hybrid_128_BK0_KL7_Fanout2 (a,b,cin,sum,cout);

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

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[64+i]=g[64+i]|p[64+i]&g[i+64-1]; 
              assign  pp_level1[64+i]=p[64+i]&p[i+64-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[66+i]=g[66+i]|p[66+i]&g[i+66-1]; 
              assign  pp_level1[66+i]=p[66+i]&p[i+66-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[68+i]=g[68+i]|p[68+i]&g[i+68-1]; 
              assign  pp_level1[68+i]=p[68+i]&p[i+68-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[70+i]=g[70+i]|p[70+i]&g[i+70-1]; 
              assign  pp_level1[70+i]=p[70+i]&p[i+70-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[72+i]=g[72+i]|p[72+i]&g[i+72-1]; 
              assign  pp_level1[72+i]=p[72+i]&p[i+72-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[74+i]=g[74+i]|p[74+i]&g[i+74-1]; 
              assign  pp_level1[74+i]=p[74+i]&p[i+74-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[76+i]=g[76+i]|p[76+i]&g[i+76-1]; 
              assign  pp_level1[76+i]=p[76+i]&p[i+76-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[78+i]=g[78+i]|p[78+i]&g[i+78-1]; 
              assign  pp_level1[78+i]=p[78+i]&p[i+78-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[80+i]=g[80+i]|p[80+i]&g[i+80-1]; 
              assign  pp_level1[80+i]=p[80+i]&p[i+80-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[82+i]=g[82+i]|p[82+i]&g[i+82-1]; 
              assign  pp_level1[82+i]=p[82+i]&p[i+82-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[84+i]=g[84+i]|p[84+i]&g[i+84-1]; 
              assign  pp_level1[84+i]=p[84+i]&p[i+84-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[86+i]=g[86+i]|p[86+i]&g[i+86-1]; 
              assign  pp_level1[86+i]=p[86+i]&p[i+86-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[88+i]=g[88+i]|p[88+i]&g[i+88-1]; 
              assign  pp_level1[88+i]=p[88+i]&p[i+88-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[90+i]=g[90+i]|p[90+i]&g[i+90-1]; 
              assign  pp_level1[90+i]=p[90+i]&p[i+90-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[92+i]=g[92+i]|p[92+i]&g[i+92-1]; 
              assign  pp_level1[92+i]=p[92+i]&p[i+92-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[94+i]=g[94+i]|p[94+i]&g[i+94-1]; 
              assign  pp_level1[94+i]=p[94+i]&p[i+94-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[96+i]=g[96+i]|p[96+i]&g[i+96-1]; 
              assign  pp_level1[96+i]=p[96+i]&p[i+96-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[98+i]=g[98+i]|p[98+i]&g[i+98-1]; 
              assign  pp_level1[98+i]=p[98+i]&p[i+98-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[100+i]=g[100+i]|p[100+i]&g[i+100-1]; 
              assign  pp_level1[100+i]=p[100+i]&p[i+100-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[102+i]=g[102+i]|p[102+i]&g[i+102-1]; 
              assign  pp_level1[102+i]=p[102+i]&p[i+102-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[104+i]=g[104+i]|p[104+i]&g[i+104-1]; 
              assign  pp_level1[104+i]=p[104+i]&p[i+104-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[106+i]=g[106+i]|p[106+i]&g[i+106-1]; 
              assign  pp_level1[106+i]=p[106+i]&p[i+106-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[108+i]=g[108+i]|p[108+i]&g[i+108-1]; 
              assign  pp_level1[108+i]=p[108+i]&p[i+108-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[110+i]=g[110+i]|p[110+i]&g[i+110-1]; 
              assign  pp_level1[110+i]=p[110+i]&p[i+110-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[112+i]=g[112+i]|p[112+i]&g[i+112-1]; 
              assign  pp_level1[112+i]=p[112+i]&p[i+112-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[114+i]=g[114+i]|p[114+i]&g[i+114-1]; 
              assign  pp_level1[114+i]=p[114+i]&p[i+114-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[116+i]=g[116+i]|p[116+i]&g[i+116-1]; 
              assign  pp_level1[116+i]=p[116+i]&p[i+116-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[118+i]=g[118+i]|p[118+i]&g[i+118-1]; 
              assign  pp_level1[118+i]=p[118+i]&p[i+118-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[120+i]=g[120+i]|p[120+i]&g[i+120-1]; 
              assign  pp_level1[120+i]=p[120+i]&p[i+120-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[122+i]=g[122+i]|p[122+i]&g[i+122-1]; 
              assign  pp_level1[122+i]=p[122+i]&p[i+122-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[124+i]=g[124+i]|p[124+i]&g[i+124-1]; 
              assign  pp_level1[124+i]=p[124+i]&p[i+124-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<2 ;i=i+1 ) begin
              assign  gnpg_level1[126+i]=g[126+i]|p[126+i]&g[i+126-1]; 
              assign  pp_level1[126+i]=p[126+i]&p[i+126-1];
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
              assign  gnpg_level1[34+i]=g[34+i]; 
              assign  pp_level1[34+i]=p[34+i];
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
              assign  gnpg_level1[38+i]=g[38+i]; 
              assign  pp_level1[38+i]=p[38+i];
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
              assign  gnpg_level1[42+i]=g[42+i]; 
              assign  pp_level1[42+i]=p[42+i];
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
              assign  gnpg_level1[46+i]=g[46+i]; 
              assign  pp_level1[46+i]=p[46+i];
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
              assign  gnpg_level1[50+i]=g[50+i]; 
              assign  pp_level1[50+i]=p[50+i];
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
              assign  gnpg_level1[54+i]=g[54+i]; 
              assign  pp_level1[54+i]=p[54+i];
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
              assign  gnpg_level1[58+i]=g[58+i]; 
              assign  pp_level1[58+i]=p[58+i];
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
              assign  gnpg_level1[62+i]=g[62+i]; 
              assign  pp_level1[62+i]=p[62+i];
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
              assign  gnpg_level1[66+i]=g[66+i]; 
              assign  pp_level1[66+i]=p[66+i];
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
              assign  gnpg_level1[70+i]=g[70+i]; 
              assign  pp_level1[70+i]=p[70+i];
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
              assign  gnpg_level1[74+i]=g[74+i]; 
              assign  pp_level1[74+i]=p[74+i];
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
              assign  gnpg_level1[78+i]=g[78+i]; 
              assign  pp_level1[78+i]=p[78+i];
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
              assign  gnpg_level1[82+i]=g[82+i]; 
              assign  pp_level1[82+i]=p[82+i];
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
              assign  gnpg_level1[86+i]=g[86+i]; 
              assign  pp_level1[86+i]=p[86+i];
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
              assign  gnpg_level1[90+i]=g[90+i]; 
              assign  pp_level1[90+i]=p[90+i];
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
              assign  gnpg_level1[94+i]=g[94+i]; 
              assign  pp_level1[94+i]=p[94+i];
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
              assign  gnpg_level1[98+i]=g[98+i]; 
              assign  pp_level1[98+i]=p[98+i];
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
              assign  gnpg_level1[102+i]=g[102+i]; 
              assign  pp_level1[102+i]=p[102+i];
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
              assign  gnpg_level1[106+i]=g[106+i]; 
              assign  pp_level1[106+i]=p[106+i];
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
              assign  gnpg_level1[110+i]=g[110+i]; 
              assign  pp_level1[110+i]=p[110+i];
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
              assign  gnpg_level1[114+i]=g[114+i]; 
              assign  pp_level1[114+i]=p[114+i];
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
              assign  gnpg_level1[118+i]=g[118+i]; 
              assign  pp_level1[118+i]=p[118+i];
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
              assign  gnpg_level1[122+i]=g[122+i]; 
              assign  pp_level1[122+i]=p[122+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[124+i]=g[124+i]; 
              assign  pp_level1[124+i]=p[124+i];
            end 
            endgenerate
          // old pass
            generate
            for (i = 0;i<1  ;i=i+1 ) begin
              assign  gnpg_level1[126+i]=g[126+i]; 
              assign  pp_level1[126+i]=p[126+i];
            end 
            endgenerate
 wire [127:0] gnpg_level2;
 wire [127:0] pp_level2;  
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
         
         // Multiple fanout stage
         generate
           for (i = 32;i<2+32 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[32+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[32+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 34;i<2+34 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[34+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[34+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 36;i<2+36 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[36+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[36+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 38;i<2+38 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[38+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[38+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<2+40 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[40+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[40+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 42;i<2+42 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[42+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[42+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 44;i<2+44 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[44+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[44+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 46;i<2+46 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[46+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[46+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<2+48 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[48+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[48+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 50;i<2+50 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[50+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[50+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 52;i<2+52 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[52+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[52+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 54;i<2+54 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[54+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[54+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<2+56 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[56+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[56+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 58;i<2+58 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[58+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[58+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 60;i<2+60 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[60+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[60+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 62;i<2+62 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[62+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[62+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<2+64 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[64+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[64+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 66;i<2+66 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[66+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[66+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 68;i<2+68 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[68+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[68+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 70;i<2+70 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[70+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[70+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<2+72 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[72+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[72+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 74;i<2+74 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[74+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[74+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 76;i<2+76 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[76+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[76+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 78;i<2+78 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[78+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[78+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<2+80 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[80+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[80+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 82;i<2+82 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[82+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[82+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 84;i<2+84 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[84+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[84+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 86;i<2+86 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[86+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[86+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<2+88 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[88+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[88+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 90;i<2+90 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[90+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[90+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 92;i<2+92 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[92+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[92+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 94;i<2+94 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[94+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[94+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<2+96 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[96+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[96+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 98;i<2+98 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[98+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[98+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 100;i<2+100 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[100+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[100+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 102;i<2+102 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[102+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[102+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<2+104 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[104+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[104+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 106;i<2+106 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[106+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[106+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 108;i<2+108 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[108+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[108+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 110;i<2+110 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[110+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[110+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<2+112 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[112+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[112+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 114;i<2+114 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[114+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[114+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 116;i<2+116 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[116+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[116+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 118;i<2+118 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[118+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[118+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<2+120 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[120+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[120+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 122;i<2+122 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[122+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[122+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 124;i<2+124 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[124+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[124+2-1-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 126;i<2+126 ;i=i+1) begin
              assign  gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[126+2-1-2];
              assign  pp_level2[i]=pp_level1[i]&pp_level1[126+2-1-2];
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
         
         // Multiple fanout stage
         generate
           for (i = 32;i<2+32 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[32+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[32+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 34;i<2+34 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[34+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[34+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 36;i<2+36 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[36+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[36+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 38;i<2+38 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[38+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[38+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<2+40 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[40+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[40+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 42;i<2+42 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[42+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[42+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 44;i<2+44 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[44+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[44+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 46;i<2+46 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[46+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[46+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<2+48 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[48+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[48+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 50;i<2+50 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[50+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[50+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 52;i<2+52 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[52+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[52+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 54;i<2+54 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[54+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[54+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<2+56 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[56+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[56+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 58;i<2+58 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[58+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[58+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 60;i<2+60 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[60+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[60+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 62;i<2+62 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[62+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[62+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<2+64 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[64+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[64+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 66;i<2+66 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[66+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[66+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 68;i<2+68 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[68+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[68+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 70;i<2+70 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[70+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[70+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<2+72 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[72+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[72+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 74;i<2+74 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[74+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[74+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 76;i<2+76 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[76+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[76+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 78;i<2+78 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[78+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[78+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<2+80 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[80+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[80+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 82;i<2+82 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[82+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[82+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 84;i<2+84 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[84+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[84+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 86;i<2+86 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[86+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[86+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<2+88 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[88+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[88+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 90;i<2+90 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[90+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[90+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 92;i<2+92 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[92+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[92+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 94;i<2+94 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[94+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[94+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<2+96 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[96+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[96+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 98;i<2+98 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[98+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[98+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 100;i<2+100 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[100+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[100+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 102;i<2+102 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[102+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[102+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<2+104 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[104+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[104+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 106;i<2+106 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[106+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[106+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 108;i<2+108 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[108+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[108+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 110;i<2+110 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[110+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[110+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<2+112 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[112+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[112+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 114;i<2+114 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[114+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[114+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 116;i<2+116 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[116+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[116+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 118;i<2+118 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[118+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[118+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<2+120 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[120+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[120+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 122;i<2+122 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[122+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[122+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 124;i<2+124 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[124+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[124+2-1-4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 126;i<2+126 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[126+2-1-4];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[126+2-1-4];
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
         
         // Multiple fanout stage
         generate
           for (i = 32;i<2+32 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[32+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[32+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 34;i<2+34 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[34+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[34+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 36;i<2+36 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[36+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[36+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 38;i<2+38 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[38+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[38+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<2+40 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[40+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[40+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 42;i<2+42 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[42+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[42+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 44;i<2+44 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[44+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[44+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 46;i<2+46 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[46+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[46+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<2+48 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[48+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[48+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 50;i<2+50 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[50+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[50+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 52;i<2+52 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[52+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[52+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 54;i<2+54 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[54+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[54+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<2+56 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[56+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[56+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 58;i<2+58 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[58+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[58+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 60;i<2+60 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[60+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[60+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 62;i<2+62 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[62+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[62+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<2+64 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[64+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[64+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 66;i<2+66 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[66+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[66+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 68;i<2+68 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[68+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[68+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 70;i<2+70 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[70+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[70+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<2+72 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[72+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[72+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 74;i<2+74 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[74+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[74+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 76;i<2+76 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[76+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[76+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 78;i<2+78 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[78+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[78+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<2+80 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[80+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[80+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 82;i<2+82 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[82+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[82+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 84;i<2+84 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[84+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[84+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 86;i<2+86 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[86+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[86+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<2+88 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[88+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[88+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 90;i<2+90 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[90+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[90+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 92;i<2+92 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[92+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[92+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 94;i<2+94 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[94+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[94+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<2+96 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[96+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[96+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 98;i<2+98 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[98+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[98+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 100;i<2+100 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[100+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[100+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 102;i<2+102 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[102+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[102+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<2+104 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[104+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[104+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 106;i<2+106 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[106+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[106+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 108;i<2+108 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[108+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[108+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 110;i<2+110 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[110+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[110+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<2+112 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[112+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[112+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 114;i<2+114 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[114+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[114+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 116;i<2+116 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[116+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[116+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 118;i<2+118 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[118+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[118+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<2+120 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[120+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[120+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 122;i<2+122 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[122+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[122+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 124;i<2+124 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[124+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[124+2-1-8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 126;i<2+126 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[126+2-1-8];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[126+2-1-8];
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
         
         // Multiple fanout stage
         generate
           for (i = 32;i<2+32 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[32+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[32+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 34;i<2+34 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[34+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[34+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 36;i<2+36 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[36+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[36+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 38;i<2+38 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[38+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[38+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<2+40 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[40+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[40+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 42;i<2+42 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[42+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[42+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 44;i<2+44 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[44+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[44+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 46;i<2+46 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[46+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[46+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<2+48 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[48+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[48+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 50;i<2+50 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[50+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[50+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 52;i<2+52 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[52+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[52+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 54;i<2+54 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[54+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[54+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<2+56 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[56+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[56+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 58;i<2+58 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[58+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[58+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 60;i<2+60 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[60+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[60+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 62;i<2+62 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[62+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[62+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<2+64 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[64+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[64+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 66;i<2+66 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[66+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[66+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 68;i<2+68 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[68+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[68+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 70;i<2+70 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[70+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[70+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<2+72 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[72+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[72+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 74;i<2+74 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[74+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[74+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 76;i<2+76 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[76+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[76+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 78;i<2+78 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[78+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[78+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<2+80 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[80+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[80+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 82;i<2+82 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[82+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[82+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 84;i<2+84 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[84+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[84+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 86;i<2+86 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[86+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[86+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<2+88 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[88+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[88+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 90;i<2+90 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[90+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[90+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 92;i<2+92 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[92+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[92+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 94;i<2+94 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[94+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[94+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<2+96 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[96+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[96+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 98;i<2+98 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[98+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[98+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 100;i<2+100 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[100+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[100+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 102;i<2+102 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[102+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[102+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<2+104 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[104+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[104+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 106;i<2+106 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[106+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[106+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 108;i<2+108 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[108+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[108+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 110;i<2+110 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[110+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[110+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<2+112 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[112+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[112+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 114;i<2+114 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[114+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[114+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 116;i<2+116 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[116+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[116+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 118;i<2+118 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[118+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[118+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<2+120 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[120+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[120+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 122;i<2+122 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[122+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[122+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 124;i<2+124 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[124+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[124+2-1-16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 126;i<2+126 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[126+2-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[126+2-1-16];
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
           for (i = 32;i<2+32 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[32+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[32+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 34;i<2+34 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[34+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[34+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 36;i<2+36 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[36+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[36+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 38;i<2+38 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[38+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[38+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<2+40 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[40+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[40+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 42;i<2+42 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[42+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[42+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 44;i<2+44 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[44+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[44+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 46;i<2+46 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[46+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[46+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<2+48 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[48+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[48+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 50;i<2+50 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[50+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[50+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 52;i<2+52 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[52+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[52+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 54;i<2+54 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[54+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[54+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<2+56 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[56+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[56+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 58;i<2+58 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[58+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[58+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 60;i<2+60 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[60+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[60+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 62;i<2+62 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[62+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[62+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 64;i<2+64 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[64+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[64+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 66;i<2+66 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[66+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[66+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 68;i<2+68 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[68+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[68+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 70;i<2+70 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[70+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[70+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<2+72 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[72+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[72+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 74;i<2+74 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[74+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[74+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 76;i<2+76 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[76+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[76+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 78;i<2+78 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[78+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[78+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<2+80 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[80+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[80+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 82;i<2+82 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[82+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[82+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 84;i<2+84 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[84+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[84+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 86;i<2+86 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[86+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[86+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<2+88 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[88+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[88+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 90;i<2+90 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[90+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[90+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 92;i<2+92 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[92+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[92+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 94;i<2+94 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[94+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[94+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<2+96 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[96+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[96+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 98;i<2+98 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[98+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[98+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 100;i<2+100 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[100+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[100+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 102;i<2+102 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[102+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[102+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<2+104 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[104+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[104+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 106;i<2+106 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[106+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[106+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 108;i<2+108 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[108+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[108+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 110;i<2+110 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[110+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[110+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<2+112 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[112+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[112+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 114;i<2+114 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[114+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[114+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 116;i<2+116 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[116+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[116+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 118;i<2+118 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[118+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[118+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<2+120 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[120+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[120+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 122;i<2+122 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[122+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[122+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 124;i<2+124 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[124+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[124+2-1-32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 126;i<2+126 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[126+2-1-32];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[126+2-1-32];
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
           for (i = 64;i<2+64 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[64+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[64+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 66;i<2+66 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[66+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[66+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 68;i<2+68 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[68+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[68+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 70;i<2+70 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[70+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[70+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 72;i<2+72 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[72+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[72+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 74;i<2+74 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[74+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[74+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 76;i<2+76 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[76+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[76+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 78;i<2+78 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[78+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[78+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 80;i<2+80 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[80+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[80+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 82;i<2+82 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[82+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[82+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 84;i<2+84 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[84+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[84+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 86;i<2+86 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[86+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[86+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 88;i<2+88 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[88+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[88+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 90;i<2+90 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[90+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[90+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 92;i<2+92 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[92+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[92+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 94;i<2+94 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[94+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[94+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 96;i<2+96 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[96+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[96+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 98;i<2+98 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[98+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[98+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 100;i<2+100 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[100+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[100+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 102;i<2+102 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[102+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[102+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 104;i<2+104 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[104+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[104+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 106;i<2+106 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[106+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[106+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 108;i<2+108 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[108+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[108+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 110;i<2+110 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[110+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[110+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 112;i<2+112 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[112+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[112+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 114;i<2+114 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[114+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[114+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 116;i<2+116 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[116+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[116+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 118;i<2+118 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[118+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[118+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 120;i<2+120 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[120+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[120+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 122;i<2+122 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[122+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[122+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 124;i<2+124 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[124+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[124+2-1-64];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 126;i<2+126 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[126+2-1-64];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[126+2-1-64];
           end 
         endgenerate
         
   assign cout= g[128]|p[128]&gnpg_level7[127];
   generate
    for (i = 1;i<129 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level7[i-1];    
    end
   endgenerate // 7 is deep enough , no post process
endmodule

