
/* verilator lint_off UNUSEDSIGNAL
module Hybrid_64_BK0_KL6_Fanout8_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_64_BK0_KL6_Fanout8 u0 (a,b,cin_r,sum_w,cout_w);
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
endmodule */

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

module Hybrid_64_BK0_KL6_Fanout8 (a,b,cin,sum,cout);

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
            for (i = 1;i<8 ;i=i+1 ) begin:genblock10
            //   assign  gnpg_level1[0+i]=g[0+i]|p[0+i]&g[i+0-1]; 
            AO21 a1 (p[0+i],g[i+0-1],g[0+i],gnpg_level1[0+i]);
            //   assign  pp_level1[0+i]=p[0+i]&p[i+0-1];
            AND2_X1 and1 (p[0+i],p[i+0-1],pp_level1[0+i]);
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin:genblock18
            //   assign  gnpg_level1[8+i]=g[8+i]|p[8+i]&g[i+8-1]; 
            AO21 a1 (p[8+i],g[i+8-1],g[8+i],gnpg_level1[8+i]);
            //   assign  pp_level1[8+i]=p[8+i]&p[i+8-1];
            AND2_X1 and1 (p[8+i],p[i+8-1],pp_level1[8+i]);
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin:genblock116
            //   assign  gnpg_level1[16+i]=g[16+i]|p[16+i]&g[i+16-1]; 
            AO21 a1 (p[16+i],g[i+16-1],g[16+i],gnpg_level1[16+i]);
            //   assign  pp_level1[16+i]=p[16+i]&p[i+16-1];
            AND2_X1 and1 (p[16+i],p[i+16-1],pp_level1[16+i]);
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin:genblock124
            //   assign  gnpg_level1[24+i]=g[24+i]|p[24+i]&g[i+24-1]; 
            AO21 a1 (p[24+i],g[i+24-1],g[24+i],gnpg_level1[24+i]);
            //   assign  pp_level1[24+i]=p[24+i]&p[i+24-1];
            AND2_X1 and1 (p[24+i],p[i+24-1],pp_level1[24+i]);
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin:genblock132
            //   assign  gnpg_level1[32+i]=g[32+i]|p[32+i]&g[i+32-1]; 
            AO21 a1 (p[32+i],g[i+32-1],g[32+i],gnpg_level1[32+i]);
            //   assign  pp_level1[32+i]=p[32+i]&p[i+32-1];
            AND2_X1 and1 (p[32+i],p[i+32-1],pp_level1[32+i]);
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin:genblock140
            //   assign  gnpg_level1[40+i]=g[40+i]|p[40+i]&g[i+40-1]; 
            AO21 a1 (p[40+i],g[i+40-1],g[40+i],gnpg_level1[40+i]);
            //   assign  pp_level1[40+i]=p[40+i]&p[i+40-1];
            AND2_X1 and1 (p[40+i],p[i+40-1],pp_level1[40+i]);
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin:genblock148
            //   assign  gnpg_level1[48+i]=g[48+i]|p[48+i]&g[i+48-1]; 
            AO21 a1 (p[48+i],g[i+48-1],g[48+i],gnpg_level1[48+i]);
            //   assign  pp_level1[48+i]=p[48+i]&p[i+48-1];
            AND2_X1 and1 (p[48+i],p[i+48-1],pp_level1[48+i]);
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<8 ;i=i+1 ) begin:genblock156
            //   assign  gnpg_level1[56+i]=g[56+i]|p[56+i]&g[i+56-1]; 
            AO21 a1 (p[56+i],g[i+56-1],g[56+i],gnpg_level1[56+i]);
            //   assign  pp_level1[56+i]=p[56+i]&p[i+56-1];
            AND2_X1 and1 (p[56+i],p[i+56-1],pp_level1[56+i]);
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
 wire [63:0] gnpg_level2;
 wire [63:0] pp_level2;  
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin:gen_kl_block20
   //         assign  gnpg_level2[0+i]=gnpg_level1[0+i]|pp_level1[0+i]&gnpg_level1[i+0-2]; 
            AO21 a2 (pp_level1[0+i],gnpg_level1[i+0-2],gnpg_level1[0+i],gnpg_level2[0+i]);
            //  assign  pp_level2[0+i]=pp_level1[0+i]&pp_level1[i+0-2];
            AND2_X1 and2 (pp_level1[0+i],pp_level1[i+0-2],pp_level2[0+i]);
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin:gen_kl_block28
   //         assign  gnpg_level2[8+i]=gnpg_level1[8+i]|pp_level1[8+i]&gnpg_level1[i+8-2]; 
            AO21 a2 (pp_level1[8+i],gnpg_level1[i+8-2],gnpg_level1[8+i],gnpg_level2[8+i]);
            //  assign  pp_level2[8+i]=pp_level1[8+i]&pp_level1[i+8-2];
            AND2_X1 and2 (pp_level1[8+i],pp_level1[i+8-2],pp_level2[8+i]);
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin:gen_kl_block216
   //         assign  gnpg_level2[16+i]=gnpg_level1[16+i]|pp_level1[16+i]&gnpg_level1[i+16-2]; 
            AO21 a2 (pp_level1[16+i],gnpg_level1[i+16-2],gnpg_level1[16+i],gnpg_level2[16+i]);
            //  assign  pp_level2[16+i]=pp_level1[16+i]&pp_level1[i+16-2];
            AND2_X1 and2 (pp_level1[16+i],pp_level1[i+16-2],pp_level2[16+i]);
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin:gen_kl_block224
   //         assign  gnpg_level2[24+i]=gnpg_level1[24+i]|pp_level1[24+i]&gnpg_level1[i+24-2]; 
            AO21 a2 (pp_level1[24+i],gnpg_level1[i+24-2],gnpg_level1[24+i],gnpg_level2[24+i]);
            //  assign  pp_level2[24+i]=pp_level1[24+i]&pp_level1[i+24-2];
            AND2_X1 and2 (pp_level1[24+i],pp_level1[i+24-2],pp_level2[24+i]);
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin:gen_kl_block232
   //         assign  gnpg_level2[32+i]=gnpg_level1[32+i]|pp_level1[32+i]&gnpg_level1[i+32-2]; 
            AO21 a2 (pp_level1[32+i],gnpg_level1[i+32-2],gnpg_level1[32+i],gnpg_level2[32+i]);
            //  assign  pp_level2[32+i]=pp_level1[32+i]&pp_level1[i+32-2];
            AND2_X1 and2 (pp_level1[32+i],pp_level1[i+32-2],pp_level2[32+i]);
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin:gen_kl_block240
   //         assign  gnpg_level2[40+i]=gnpg_level1[40+i]|pp_level1[40+i]&gnpg_level1[i+40-2]; 
            AO21 a2 (pp_level1[40+i],gnpg_level1[i+40-2],gnpg_level1[40+i],gnpg_level2[40+i]);
            //  assign  pp_level2[40+i]=pp_level1[40+i]&pp_level1[i+40-2];
            AND2_X1 and2 (pp_level1[40+i],pp_level1[i+40-2],pp_level2[40+i]);
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin:gen_kl_block248
   //         assign  gnpg_level2[48+i]=gnpg_level1[48+i]|pp_level1[48+i]&gnpg_level1[i+48-2]; 
            AO21 a2 (pp_level1[48+i],gnpg_level1[i+48-2],gnpg_level1[48+i],gnpg_level2[48+i]);
            //  assign  pp_level2[48+i]=pp_level1[48+i]&pp_level1[i+48-2];
            AND2_X1 and2 (pp_level1[48+i],pp_level1[i+48-2],pp_level2[48+i]);
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<8 ;i=i+1 ) begin:gen_kl_block256
   //         assign  gnpg_level2[56+i]=gnpg_level1[56+i]|pp_level1[56+i]&gnpg_level1[i+56-2]; 
            AO21 a2 (pp_level1[56+i],gnpg_level1[i+56-2],gnpg_level1[56+i],gnpg_level2[56+i]);
            //  assign  pp_level2[56+i]=pp_level1[56+i]&pp_level1[i+56-2];
            AND2_X1 and2 (pp_level1[56+i],pp_level1[i+56-2],pp_level2[56+i]);
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
 wire [63:0] gnpg_level3;
 wire [63:0] pp_level3;  
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin:gen_kl_block30
   //         assign  gnpg_level3[0+i]=gnpg_level2[0+i]|pp_level2[0+i]&gnpg_level2[i+0-4]; 
            AO21 a2 (pp_level2[0+i],gnpg_level2[i+0-4],gnpg_level2[0+i],gnpg_level3[0+i]);
            //  assign  pp_level3[0+i]=pp_level2[0+i]&pp_level2[i+0-4];
            AND2_X1 and2 (pp_level2[0+i],pp_level2[i+0-4],pp_level3[0+i]);
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin:gen_kl_block38
   //         assign  gnpg_level3[8+i]=gnpg_level2[8+i]|pp_level2[8+i]&gnpg_level2[i+8-4]; 
            AO21 a2 (pp_level2[8+i],gnpg_level2[i+8-4],gnpg_level2[8+i],gnpg_level3[8+i]);
            //  assign  pp_level3[8+i]=pp_level2[8+i]&pp_level2[i+8-4];
            AND2_X1 and2 (pp_level2[8+i],pp_level2[i+8-4],pp_level3[8+i]);
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin:gen_kl_block316
   //         assign  gnpg_level3[16+i]=gnpg_level2[16+i]|pp_level2[16+i]&gnpg_level2[i+16-4]; 
            AO21 a2 (pp_level2[16+i],gnpg_level2[i+16-4],gnpg_level2[16+i],gnpg_level3[16+i]);
            //  assign  pp_level3[16+i]=pp_level2[16+i]&pp_level2[i+16-4];
            AND2_X1 and2 (pp_level2[16+i],pp_level2[i+16-4],pp_level3[16+i]);
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin:gen_kl_block324
   //         assign  gnpg_level3[24+i]=gnpg_level2[24+i]|pp_level2[24+i]&gnpg_level2[i+24-4]; 
            AO21 a2 (pp_level2[24+i],gnpg_level2[i+24-4],gnpg_level2[24+i],gnpg_level3[24+i]);
            //  assign  pp_level3[24+i]=pp_level2[24+i]&pp_level2[i+24-4];
            AND2_X1 and2 (pp_level2[24+i],pp_level2[i+24-4],pp_level3[24+i]);
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin:gen_kl_block332
   //         assign  gnpg_level3[32+i]=gnpg_level2[32+i]|pp_level2[32+i]&gnpg_level2[i+32-4]; 
            AO21 a2 (pp_level2[32+i],gnpg_level2[i+32-4],gnpg_level2[32+i],gnpg_level3[32+i]);
            //  assign  pp_level3[32+i]=pp_level2[32+i]&pp_level2[i+32-4];
            AND2_X1 and2 (pp_level2[32+i],pp_level2[i+32-4],pp_level3[32+i]);
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin:gen_kl_block340
   //         assign  gnpg_level3[40+i]=gnpg_level2[40+i]|pp_level2[40+i]&gnpg_level2[i+40-4]; 
            AO21 a2 (pp_level2[40+i],gnpg_level2[i+40-4],gnpg_level2[40+i],gnpg_level3[40+i]);
            //  assign  pp_level3[40+i]=pp_level2[40+i]&pp_level2[i+40-4];
            AND2_X1 and2 (pp_level2[40+i],pp_level2[i+40-4],pp_level3[40+i]);
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin:gen_kl_block348
   //         assign  gnpg_level3[48+i]=gnpg_level2[48+i]|pp_level2[48+i]&gnpg_level2[i+48-4]; 
            AO21 a2 (pp_level2[48+i],gnpg_level2[i+48-4],gnpg_level2[48+i],gnpg_level3[48+i]);
            //  assign  pp_level3[48+i]=pp_level2[48+i]&pp_level2[i+48-4];
            AND2_X1 and2 (pp_level2[48+i],pp_level2[i+48-4],pp_level3[48+i]);
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<8 ;i=i+1 ) begin:gen_kl_block356
   //         assign  gnpg_level3[56+i]=gnpg_level2[56+i]|pp_level2[56+i]&gnpg_level2[i+56-4]; 
            AO21 a2 (pp_level2[56+i],gnpg_level2[i+56-4],gnpg_level2[56+i],gnpg_level3[56+i]);
            //  assign  pp_level3[56+i]=pp_level2[56+i]&pp_level2[i+56-4];
            AND2_X1 and2 (pp_level2[56+i],pp_level2[i+56-4],pp_level3[56+i]);
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
 wire [63:0] gnpg_level4;
 wire [63:0] pp_level4;  
          // old pass
         generate
          for (i = 0;i<8 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 8;i<8+8 ;i=i+1) begin:gen_mul_kl_block48
             // assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[8+8-1-8];
              AO21 a3 (pp_level3[i],gnpg_level3[8+8-1-8],gnpg_level3[i],gnpg_level4[i]);
            //   assign  pp_level4[i]=pp_level3[i]&pp_level3[8+8-1-8];
            AND2_X1 and3 (pp_level3[i],pp_level3[8+8-1-8],pp_level4[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 16;i<8+16 ;i=i+1) begin:gen_mul_kl_block416
             // assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[16+8-1-8];
              AO21 a3 (pp_level3[i],gnpg_level3[16+8-1-8],gnpg_level3[i],gnpg_level4[i]);
            //   assign  pp_level4[i]=pp_level3[i]&pp_level3[16+8-1-8];
            AND2_X1 and3 (pp_level3[i],pp_level3[16+8-1-8],pp_level4[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 24;i<8+24 ;i=i+1) begin:gen_mul_kl_block424
             // assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[24+8-1-8];
              AO21 a3 (pp_level3[i],gnpg_level3[24+8-1-8],gnpg_level3[i],gnpg_level4[i]);
            //   assign  pp_level4[i]=pp_level3[i]&pp_level3[24+8-1-8];
            AND2_X1 and3 (pp_level3[i],pp_level3[24+8-1-8],pp_level4[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 32;i<8+32 ;i=i+1) begin:gen_mul_kl_block432
             // assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[32+8-1-8];
              AO21 a3 (pp_level3[i],gnpg_level3[32+8-1-8],gnpg_level3[i],gnpg_level4[i]);
            //   assign  pp_level4[i]=pp_level3[i]&pp_level3[32+8-1-8];
            AND2_X1 and3 (pp_level3[i],pp_level3[32+8-1-8],pp_level4[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<8+40 ;i=i+1) begin:gen_mul_kl_block440
             // assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[40+8-1-8];
              AO21 a3 (pp_level3[i],gnpg_level3[40+8-1-8],gnpg_level3[i],gnpg_level4[i]);
            //   assign  pp_level4[i]=pp_level3[i]&pp_level3[40+8-1-8];
            AND2_X1 and3 (pp_level3[i],pp_level3[40+8-1-8],pp_level4[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<8+48 ;i=i+1) begin:gen_mul_kl_block448
             // assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[48+8-1-8];
              AO21 a3 (pp_level3[i],gnpg_level3[48+8-1-8],gnpg_level3[i],gnpg_level4[i]);
            //   assign  pp_level4[i]=pp_level3[i]&pp_level3[48+8-1-8];
            AND2_X1 and3 (pp_level3[i],pp_level3[48+8-1-8],pp_level4[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<8+56 ;i=i+1) begin:gen_mul_kl_block456
             // assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[56+8-1-8];
              AO21 a3 (pp_level3[i],gnpg_level3[56+8-1-8],gnpg_level3[i],gnpg_level4[i]);
            //   assign  pp_level4[i]=pp_level3[i]&pp_level3[56+8-1-8];
            AND2_X1 and3 (pp_level3[i],pp_level3[56+8-1-8],pp_level4[i]);
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
           for (i = 16;i<8+16 ;i=i+1) begin:gen_mul_kl_block516
             // assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[16+8-1-16];
              AO21 a3 (pp_level4[i],gnpg_level4[16+8-1-16],gnpg_level4[i],gnpg_level5[i]);
            //   assign  pp_level5[i]=pp_level4[i]&pp_level4[16+8-1-16];
            AND2_X1 and3 (pp_level4[i],pp_level4[16+8-1-16],pp_level5[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 24;i<8+24 ;i=i+1) begin:gen_mul_kl_block524
             // assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[24+8-1-16];
              AO21 a3 (pp_level4[i],gnpg_level4[24+8-1-16],gnpg_level4[i],gnpg_level5[i]);
            //   assign  pp_level5[i]=pp_level4[i]&pp_level4[24+8-1-16];
            AND2_X1 and3 (pp_level4[i],pp_level4[24+8-1-16],pp_level5[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 32;i<8+32 ;i=i+1) begin:gen_mul_kl_block532
             // assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[32+8-1-16];
              AO21 a3 (pp_level4[i],gnpg_level4[32+8-1-16],gnpg_level4[i],gnpg_level5[i]);
            //   assign  pp_level5[i]=pp_level4[i]&pp_level4[32+8-1-16];
            AND2_X1 and3 (pp_level4[i],pp_level4[32+8-1-16],pp_level5[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<8+40 ;i=i+1) begin:gen_mul_kl_block540
             // assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[40+8-1-16];
              AO21 a3 (pp_level4[i],gnpg_level4[40+8-1-16],gnpg_level4[i],gnpg_level5[i]);
            //   assign  pp_level5[i]=pp_level4[i]&pp_level4[40+8-1-16];
            AND2_X1 and3 (pp_level4[i],pp_level4[40+8-1-16],pp_level5[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<8+48 ;i=i+1) begin:gen_mul_kl_block548
             // assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[48+8-1-16];
              AO21 a3 (pp_level4[i],gnpg_level4[48+8-1-16],gnpg_level4[i],gnpg_level5[i]);
            //   assign  pp_level5[i]=pp_level4[i]&pp_level4[48+8-1-16];
            AND2_X1 and3 (pp_level4[i],pp_level4[48+8-1-16],pp_level5[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<8+56 ;i=i+1) begin:gen_mul_kl_block556
             // assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[56+8-1-16];
              AO21 a3 (pp_level4[i],gnpg_level4[56+8-1-16],gnpg_level4[i],gnpg_level5[i]);
            //   assign  pp_level5[i]=pp_level4[i]&pp_level4[56+8-1-16];
            AND2_X1 and3 (pp_level4[i],pp_level4[56+8-1-16],pp_level5[i]);
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
           for (i = 32;i<8+32 ;i=i+1) begin:gen_mul_kl_block632
             // assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[32+8-1-32];
              AO21 a3 (pp_level5[i],gnpg_level5[32+8-1-32],gnpg_level5[i],gnpg_level6[i]);
            //   assign  pp_level6[i]=pp_level5[i]&pp_level5[32+8-1-32];
            AND2_X1 and3 (pp_level5[i],pp_level5[32+8-1-32],pp_level6[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 40;i<8+40 ;i=i+1) begin:gen_mul_kl_block640
             // assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[40+8-1-32];
              AO21 a3 (pp_level5[i],gnpg_level5[40+8-1-32],gnpg_level5[i],gnpg_level6[i]);
            //   assign  pp_level6[i]=pp_level5[i]&pp_level5[40+8-1-32];
            AND2_X1 and3 (pp_level5[i],pp_level5[40+8-1-32],pp_level6[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 48;i<8+48 ;i=i+1) begin:gen_mul_kl_block648
             // assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[48+8-1-32];
              AO21 a3 (pp_level5[i],gnpg_level5[48+8-1-32],gnpg_level5[i],gnpg_level6[i]);
            //   assign  pp_level6[i]=pp_level5[i]&pp_level5[48+8-1-32];
            AND2_X1 and3 (pp_level5[i],pp_level5[48+8-1-32],pp_level6[i]);
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 56;i<8+56 ;i=i+1) begin:gen_mul_kl_block656
             // assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[56+8-1-32];
              AO21 a3 (pp_level5[i],gnpg_level5[56+8-1-32],gnpg_level5[i],gnpg_level6[i]);
            //   assign  pp_level6[i]=pp_level5[i]&pp_level5[56+8-1-32];
            AND2_X1 and3 (pp_level5[i],pp_level5[56+8-1-32],pp_level6[i]);
           end 
         endgenerate
         
   assign cout= g[64]|p[64]&gnpg_level6[63];
   generate
    for (i = 1;i<65 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level6[i-1];    
    end
   endgenerate // 6 is deep enough , no post process
endmodule
module AO21 ( a, b, d, y_bar );
  input a, b, d;
  wire y;
  output   y_bar;

  AOI21_X2 aoi21_1 ( .A1(a), .A2(b), .B(d), .ZN(y) );
  INV_X2 inv_1 ( .I(y), .ZN(y_bar) );
endmodule
