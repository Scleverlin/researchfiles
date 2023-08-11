module P_G_gen_hc_64 (a,b,cin,p,g);
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

module HC_64_BK6_KS0 (a,b,cin,sum,cout);

input [64:1]a;
input [64:1]b;
input cin;
output [64:1]sum;
output cout;
wire [64:0]p;
wire [64:0]g;
P_G_gen_hc_64 pg_gen_hc (a,b,cin,p,g);
genvar i;

wire [63:0] gnpg_level1;
wire [63:0] pp_level1;
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
             generate
               for (i = 1;i<64 ;i=i+2 ) begin
                assign gnpg_level1[i]=g[i]|p[i]&g[i-1];  
                assign pp_level1[i]=p[i]&p[i-1];     
               end
            endgenerate
             generate
                for (i = 0;i<64 ;i=i+2) begin
                 assign gnpg_level1[i]=g[i];  
                 assign pp_level1[i]=p[i];     
               end
            endgenerate
             generate
              for (i = 4-1 ;i<64;i=i+4) begin
                assign gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[i-2];  
                assign pp_level2[i]=pp_level1[i]&pp_level1[i-2];            
              end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*0+i]=gnpg_level1[ 4*0+i];
                assign pp_level2[ 4*0+i]=pp_level1[ 4*0+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*1+i]=gnpg_level1[ 4*1+i];
                assign pp_level2[ 4*1+i]=pp_level1[ 4*1+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*2+i]=gnpg_level1[ 4*2+i];
                assign pp_level2[ 4*2+i]=pp_level1[ 4*2+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*3+i]=gnpg_level1[ 4*3+i];
                assign pp_level2[ 4*3+i]=pp_level1[ 4*3+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*4+i]=gnpg_level1[ 4*4+i];
                assign pp_level2[ 4*4+i]=pp_level1[ 4*4+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*5+i]=gnpg_level1[ 4*5+i];
                assign pp_level2[ 4*5+i]=pp_level1[ 4*5+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*6+i]=gnpg_level1[ 4*6+i];
                assign pp_level2[ 4*6+i]=pp_level1[ 4*6+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*7+i]=gnpg_level1[ 4*7+i];
                assign pp_level2[ 4*7+i]=pp_level1[ 4*7+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*8+i]=gnpg_level1[ 4*8+i];
                assign pp_level2[ 4*8+i]=pp_level1[ 4*8+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*9+i]=gnpg_level1[ 4*9+i];
                assign pp_level2[ 4*9+i]=pp_level1[ 4*9+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*10+i]=gnpg_level1[ 4*10+i];
                assign pp_level2[ 4*10+i]=pp_level1[ 4*10+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*11+i]=gnpg_level1[ 4*11+i];
                assign pp_level2[ 4*11+i]=pp_level1[ 4*11+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*12+i]=gnpg_level1[ 4*12+i];
                assign pp_level2[ 4*12+i]=pp_level1[ 4*12+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*13+i]=gnpg_level1[ 4*13+i];
                assign pp_level2[ 4*13+i]=pp_level1[ 4*13+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*14+i]=gnpg_level1[ 4*14+i];
                assign pp_level2[ 4*14+i]=pp_level1[ 4*14+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*15+i]=gnpg_level1[ 4*15+i];
                assign pp_level2[ 4*15+i]=pp_level1[ 4*15+i];
               end
            endgenerate 
             generate
              for (i = 8-1 ;i<64;i=i+8) begin
                assign gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[i-4];  
                assign pp_level3[i]=pp_level2[i]&pp_level2[i-4];            
              end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*0+i]=gnpg_level2[ 8*0+i];
                assign pp_level3[ 8*0+i]=pp_level2[ 8*0+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*1+i]=gnpg_level2[ 8*1+i];
                assign pp_level3[ 8*1+i]=pp_level2[ 8*1+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*2+i]=gnpg_level2[ 8*2+i];
                assign pp_level3[ 8*2+i]=pp_level2[ 8*2+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*3+i]=gnpg_level2[ 8*3+i];
                assign pp_level3[ 8*3+i]=pp_level2[ 8*3+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*4+i]=gnpg_level2[ 8*4+i];
                assign pp_level3[ 8*4+i]=pp_level2[ 8*4+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*5+i]=gnpg_level2[ 8*5+i];
                assign pp_level3[ 8*5+i]=pp_level2[ 8*5+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*6+i]=gnpg_level2[ 8*6+i];
                assign pp_level3[ 8*6+i]=pp_level2[ 8*6+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*7+i]=gnpg_level2[ 8*7+i];
                assign pp_level3[ 8*7+i]=pp_level2[ 8*7+i];
               end
            endgenerate 
             generate
              for (i = 16-1 ;i<64;i=i+16) begin
                assign gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[i-8];  
                assign pp_level4[i]=pp_level3[i]&pp_level3[i-8];            
              end
            endgenerate generate
              for (i = 0;i<16-1 ;i=i+1) begin
                assign gnpg_level4[ 16*0+i]=gnpg_level3[ 16*0+i];
                assign pp_level4[ 16*0+i]=pp_level3[ 16*0+i];
               end
            endgenerate generate
              for (i = 0;i<16-1 ;i=i+1) begin
                assign gnpg_level4[ 16*1+i]=gnpg_level3[ 16*1+i];
                assign pp_level4[ 16*1+i]=pp_level3[ 16*1+i];
               end
            endgenerate generate
              for (i = 0;i<16-1 ;i=i+1) begin
                assign gnpg_level4[ 16*2+i]=gnpg_level3[ 16*2+i];
                assign pp_level4[ 16*2+i]=pp_level3[ 16*2+i];
               end
            endgenerate generate
              for (i = 0;i<16-1 ;i=i+1) begin
                assign gnpg_level4[ 16*3+i]=gnpg_level3[ 16*3+i];
                assign pp_level4[ 16*3+i]=pp_level3[ 16*3+i];
               end
            endgenerate 
             generate
              for (i = 32-1 ;i<64;i=i+32) begin
                assign gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[i-16];  
                assign pp_level5[i]=pp_level4[i]&pp_level4[i-16];            
              end
            endgenerate generate
              for (i = 0;i<32-1 ;i=i+1) begin
                assign gnpg_level5[ 32*0+i]=gnpg_level4[ 32*0+i];
                assign pp_level5[ 32*0+i]=pp_level4[ 32*0+i];
               end
            endgenerate generate
              for (i = 0;i<32-1 ;i=i+1) begin
                assign gnpg_level5[ 32*1+i]=gnpg_level4[ 32*1+i];
                assign pp_level5[ 32*1+i]=pp_level4[ 32*1+i];
               end
            endgenerate 
             generate
              for (i = 64-1 ;i<64;i=i+64) begin
                assign gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[i-32];  
                assign pp_level6[i]=pp_level5[i]&pp_level5[i-32];            
              end
            endgenerate generate
              for (i = 0;i<64-1 ;i=i+1) begin
                assign gnpg_level6[ 64*0+i]=gnpg_level5[ 64*0+i];
                assign pp_level6[ 64*0+i]=pp_level5[ 64*0+i];
               end
            endgenerate 
endmodule

