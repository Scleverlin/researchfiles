
/* verilator lint_off UNUSEDSIGNAL */


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

module Hybrid_128_BK4_KL3_Fanout4 (a,b,cin,sum,cout);

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
wire [127:0] gnpg_level2;
wire [127:0] pp_level2;
wire [127:0] gnpg_level3;
wire [127:0] pp_level3;
wire [127:0] gnpg_level4;
wire [127:0] pp_level4;
wire [127:0] gnpg_level5;
wire [127:0] pp_level5;
wire [127:0] gnpg_level6;
wire [127:0] pp_level6;
wire [127:0] gnpg_level7;
wire [127:0] pp_level7;
             generate
               for (i = 1;i<128 ;i=i+2 ) begin
                assign gnpg_level1[i]=g[i]|p[i]&g[i-1];  
                assign pp_level1[i]=p[i]&p[i-1];     
               end
            endgenerate
             generate
                for (i = 0;i<128 ;i=i+2) begin
                 assign gnpg_level1[i]=g[i];  
                 assign pp_level1[i]=p[i];     
               end
            endgenerate
             generate
              for (i = 4-1 ;i<128;i=i+4) begin
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
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*16+i]=gnpg_level1[ 4*16+i];
                assign pp_level2[ 4*16+i]=pp_level1[ 4*16+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*17+i]=gnpg_level1[ 4*17+i];
                assign pp_level2[ 4*17+i]=pp_level1[ 4*17+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*18+i]=gnpg_level1[ 4*18+i];
                assign pp_level2[ 4*18+i]=pp_level1[ 4*18+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*19+i]=gnpg_level1[ 4*19+i];
                assign pp_level2[ 4*19+i]=pp_level1[ 4*19+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*20+i]=gnpg_level1[ 4*20+i];
                assign pp_level2[ 4*20+i]=pp_level1[ 4*20+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*21+i]=gnpg_level1[ 4*21+i];
                assign pp_level2[ 4*21+i]=pp_level1[ 4*21+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*22+i]=gnpg_level1[ 4*22+i];
                assign pp_level2[ 4*22+i]=pp_level1[ 4*22+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*23+i]=gnpg_level1[ 4*23+i];
                assign pp_level2[ 4*23+i]=pp_level1[ 4*23+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*24+i]=gnpg_level1[ 4*24+i];
                assign pp_level2[ 4*24+i]=pp_level1[ 4*24+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*25+i]=gnpg_level1[ 4*25+i];
                assign pp_level2[ 4*25+i]=pp_level1[ 4*25+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*26+i]=gnpg_level1[ 4*26+i];
                assign pp_level2[ 4*26+i]=pp_level1[ 4*26+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*27+i]=gnpg_level1[ 4*27+i];
                assign pp_level2[ 4*27+i]=pp_level1[ 4*27+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*28+i]=gnpg_level1[ 4*28+i];
                assign pp_level2[ 4*28+i]=pp_level1[ 4*28+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*29+i]=gnpg_level1[ 4*29+i];
                assign pp_level2[ 4*29+i]=pp_level1[ 4*29+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*30+i]=gnpg_level1[ 4*30+i];
                assign pp_level2[ 4*30+i]=pp_level1[ 4*30+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*31+i]=gnpg_level1[ 4*31+i];
                assign pp_level2[ 4*31+i]=pp_level1[ 4*31+i];
               end
            endgenerate 
             generate
              for (i = 8-1 ;i<128;i=i+8) begin
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
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*8+i]=gnpg_level2[ 8*8+i];
                assign pp_level3[ 8*8+i]=pp_level2[ 8*8+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*9+i]=gnpg_level2[ 8*9+i];
                assign pp_level3[ 8*9+i]=pp_level2[ 8*9+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*10+i]=gnpg_level2[ 8*10+i];
                assign pp_level3[ 8*10+i]=pp_level2[ 8*10+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*11+i]=gnpg_level2[ 8*11+i];
                assign pp_level3[ 8*11+i]=pp_level2[ 8*11+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*12+i]=gnpg_level2[ 8*12+i];
                assign pp_level3[ 8*12+i]=pp_level2[ 8*12+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*13+i]=gnpg_level2[ 8*13+i];
                assign pp_level3[ 8*13+i]=pp_level2[ 8*13+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*14+i]=gnpg_level2[ 8*14+i];
                assign pp_level3[ 8*14+i]=pp_level2[ 8*14+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*15+i]=gnpg_level2[ 8*15+i];
                assign pp_level3[ 8*15+i]=pp_level2[ 8*15+i];
               end
            endgenerate 
             generate
              for (i = 16-1 ;i<128;i=i+16) begin
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
            endgenerate generate
              for (i = 0;i<16-1 ;i=i+1) begin
                assign gnpg_level4[ 16*4+i]=gnpg_level3[ 16*4+i];
                assign pp_level4[ 16*4+i]=pp_level3[ 16*4+i];
               end
            endgenerate generate
              for (i = 0;i<16-1 ;i=i+1) begin
                assign gnpg_level4[ 16*5+i]=gnpg_level3[ 16*5+i];
                assign pp_level4[ 16*5+i]=pp_level3[ 16*5+i];
               end
            endgenerate generate
              for (i = 0;i<16-1 ;i=i+1) begin
                assign gnpg_level4[ 16*6+i]=gnpg_level3[ 16*6+i];
                assign pp_level4[ 16*6+i]=pp_level3[ 16*6+i];
               end
            endgenerate generate
              for (i = 0;i<16-1 ;i=i+1) begin
                assign gnpg_level4[ 16*7+i]=gnpg_level3[ 16*7+i];
                assign pp_level4[ 16*7+i]=pp_level3[ 16*7+i];
               end
            endgenerate 
          // pre process continue last 2
           generate
            for (i = 16;i<16*4 ;i=i+16) begin
              assign  gnpg_level5[15+i]=gnpg_level4[15+i]|pp_level4[15+i]&gnpg_level4[i+15-16]; 
              assign  pp_level5[15+i]=pp_level4[15+i]&pp_level4[i+15-16];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 16;i<16*4 ;i=i+16) begin
              assign  gnpg_level5[79+i]=gnpg_level4[79+i]|pp_level4[79+i]&gnpg_level4[i+79-16]; 
              assign  pp_level5[79+i]=pp_level4[79+i]&pp_level4[i+79-16];
            end
           endgenerate
          
         // strange part
            generate
            for (i = 0;i<16 ;i=i+16 ) begin
              assign  gnpg_level5[79+i]=gnpg_level4[79+i]; 
              assign  pp_level5[79+i]=pp_level4[79+i];
            end 
            endgenerate
          // before start point
            generate
            for (i = 0;i<31 ;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 31+1;i<31+16;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 47+1;i<47+16;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 63+1;i<63+16;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 79+1;i<79+16;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 95+1;i<95+16;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 111+1;i<111+16;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
          // pre process continue last 1
           generate
            for (i = 32;i<16*4 ;i=i+16) begin
              assign  gnpg_level6[15+i]=gnpg_level5[15+i]|pp_level5[15+i]&gnpg_level5[i+15-32]; 
              assign  pp_level6[15+i]=pp_level5[15+i]&pp_level5[i+15-32];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 32;i<16*4 ;i=i+16) begin
              assign  gnpg_level6[79+i]=gnpg_level5[79+i]|pp_level5[79+i]&gnpg_level5[i+79-32]; 
              assign  pp_level6[79+i]=pp_level5[79+i]&pp_level5[i+79-32];
            end
           endgenerate
          
         // strange part
            generate
            for (i = 0;i<32 ;i=i+16 ) begin
              assign  gnpg_level6[79+i]=gnpg_level5[79+i]; 
              assign  pp_level6[79+i]=pp_level5[79+i];
            end 
            endgenerate
          // before start point
            generate
            for (i = 0;i<47 ;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 47+1;i<47+16;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 63+1;i<63+16;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 79+1;i<79+16;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 95+1;i<95+16;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 111+1;i<111+16;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
          // old pass
         generate
          for (i = 0;i<79 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 79;i<16*4+79 ;i=i+16) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[79+16*4-16-16*4];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[79+16*4-16-16*4];
           end 
         endgenerate
         
            generate
            for (i = 79+1;i<79+16;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 95+1;i<95+16;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 111+1;i<111+16;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
    wire [127:0] gnpg_level11;  
    
    wire [62-1:0] gnpg_level10;   
    wire [62-1:0] pp_level10; 
    
    wire [30-1:0] gnpg_level9;   
    wire [30-1:0] pp_level9; 
    
    wire [14-1:0] gnpg_level8;   
    wire [14-1:0] pp_level8; 
    
assign sum[128:1]=p[128:1]^gnpg_level11[128-1:0];
assign cout =g[128]|p[128]&gnpg_level11[128-1];
assign gnpg_level11[0]=gnpg_level7[0];
assign gnpg_level11[1]=gnpg_level7[1];
assign gnpg_level11[2]=gnpg_level7[2]|pp_level7[2]&gnpg_level7[1];
assign gnpg_level11[127]=gnpg_level7[127];
generate 
   for (i = 1;i<(128-2)/2 ;i=i+1 ) begin
      assign gnpg_level11[2*i+1]=gnpg_level10[i-1];
   end
endgenerate
generate 
   for (i = 2;i<128/2 ;i=i+1 ) begin
      assign gnpg_level11[2*i]=gnpg_level7[2*i]|pp_level7[2*i]&gnpg_level10[i-2];
   end
endgenerate


assign gnpg_level10[0]=gnpg_level7[3];
assign gnpg_level10[1]=gnpg_level7[2+3]|pp_level7[2+3]&gnpg_level7[2+3-2];
generate 

   for (i = 3;i<62;i=i+2 ) begin
      assign gnpg_level10[i]=gnpg_level7[2*i+3]|pp_level7[2*i+3]&gnpg_level9[(i-3)/2];
   end
endgenerate
generate 

   for (i = 2;i<62 ;i=i+2 ) begin
      assign gnpg_level10[i]=gnpg_level9[i/2-1];
   end
endgenerate



assign gnpg_level9[0]=gnpg_level7[7];
assign gnpg_level9[1]=gnpg_level7[4+7]|pp_level7[4+7]&gnpg_level7[4+7-4];
generate 

   for (i = 3;i<30;i=i+2 ) begin
      assign gnpg_level9[i]=gnpg_level7[4*i+7]|pp_level7[4*i+7]&gnpg_level8[(i-3)/2];
   end
endgenerate
generate 

   for (i = 2;i<30 ;i=i+2 ) begin
      assign gnpg_level9[i]=gnpg_level8[i/2-1];
   end
endgenerate


//1111
assign gnpg_level8[0]=gnpg_level7[15];
assign gnpg_level8[1]=gnpg_level7[8+15]|pp_level7[8+15]&gnpg_level7[8+15-8];
generate 
//1111
   for (i = 3;i<14;i=i+2 ) begin
      assign gnpg_level8[i]=gnpg_level7[8*i+15]|pp_level7[8*i+15]&gnpg_level7[8*i+15-8];
   end
endgenerate
generate 
//1111
   for (i = 2;i<14 ;i=i+2 ) begin
      assign gnpg_level8[i]=gnpg_level7[8*i+15];
   end
endgenerate

endmodule

