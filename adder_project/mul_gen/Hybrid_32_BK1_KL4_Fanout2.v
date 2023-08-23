
/* verilator lint_off UNUSEDSIGNAL */


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

module Hybrid_32_BK1_KL4_Fanout2 (a,b,cin,sum,cout);

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
wire [31:0] gnpg_level2;
wire [31:0] pp_level2;
wire [31:0] gnpg_level3;
wire [31:0] pp_level3;
wire [31:0] gnpg_level4;
wire [31:0] pp_level4;
wire [31:0] gnpg_level5;
wire [31:0] pp_level5;
             generate
               for (i = 1;i<32 ;i=i+2 ) begin
                assign gnpg_level1[i]=g[i]|p[i]&g[i-1];  
                assign pp_level1[i]=p[i]&p[i-1];     
               end
            endgenerate
             generate
                for (i = 0;i<32 ;i=i+2) begin
                 assign gnpg_level1[i]=g[i];  
                 assign pp_level1[i]=p[i];     
               end
            endgenerate
          // pre process continue last 1
           generate
            for (i = 2;i<2*2 ;i=i+2) begin
              assign  gnpg_level2[1+i]=gnpg_level1[1+i]|pp_level1[1+i]&gnpg_level1[i+1-2]; 
              assign  pp_level2[1+i]=pp_level1[1+i]&pp_level1[i+1-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<2*2 ;i=i+2) begin
              assign  gnpg_level2[5+i]=gnpg_level1[5+i]|pp_level1[5+i]&gnpg_level1[i+5-2]; 
              assign  pp_level2[5+i]=pp_level1[5+i]&pp_level1[i+5-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<2*2 ;i=i+2) begin
              assign  gnpg_level2[9+i]=gnpg_level1[9+i]|pp_level1[9+i]&gnpg_level1[i+9-2]; 
              assign  pp_level2[9+i]=pp_level1[9+i]&pp_level1[i+9-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<2*2 ;i=i+2) begin
              assign  gnpg_level2[13+i]=gnpg_level1[13+i]|pp_level1[13+i]&gnpg_level1[i+13-2]; 
              assign  pp_level2[13+i]=pp_level1[13+i]&pp_level1[i+13-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<2*2 ;i=i+2) begin
              assign  gnpg_level2[17+i]=gnpg_level1[17+i]|pp_level1[17+i]&gnpg_level1[i+17-2]; 
              assign  pp_level2[17+i]=pp_level1[17+i]&pp_level1[i+17-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<2*2 ;i=i+2) begin
              assign  gnpg_level2[21+i]=gnpg_level1[21+i]|pp_level1[21+i]&gnpg_level1[i+21-2]; 
              assign  pp_level2[21+i]=pp_level1[21+i]&pp_level1[i+21-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<2*2 ;i=i+2) begin
              assign  gnpg_level2[25+i]=gnpg_level1[25+i]|pp_level1[25+i]&gnpg_level1[i+25-2]; 
              assign  pp_level2[25+i]=pp_level1[25+i]&pp_level1[i+25-2];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 2;i<2*2 ;i=i+2) begin
              assign  gnpg_level2[29+i]=gnpg_level1[29+i]|pp_level1[29+i]&gnpg_level1[i+29-2]; 
              assign  pp_level2[29+i]=pp_level1[29+i]&pp_level1[i+29-2];
            end
           endgenerate
          
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[5+i]=gnpg_level1[5+i]; 
              assign  pp_level2[5+i]=pp_level1[5+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[9+i]=gnpg_level1[9+i]; 
              assign  pp_level2[9+i]=pp_level1[9+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[13+i]=gnpg_level1[13+i]; 
              assign  pp_level2[13+i]=pp_level1[13+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[17+i]=gnpg_level1[17+i]; 
              assign  pp_level2[17+i]=pp_level1[17+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[21+i]=gnpg_level1[21+i]; 
              assign  pp_level2[21+i]=pp_level1[21+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[25+i]=gnpg_level1[25+i]; 
              assign  pp_level2[25+i]=pp_level1[25+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[29+i]=gnpg_level1[29+i]; 
              assign  pp_level2[29+i]=pp_level1[29+i];
            end 
            endgenerate
          // before start point
            generate
            for (i = 0;i<3 ;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 3+1;i<3+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 5+1;i<5+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 7+1;i<7+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 9+1;i<9+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 11+1;i<11+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 13+1;i<13+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 15+1;i<15+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 17+1;i<17+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 19+1;i<19+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 21+1;i<21+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 23+1;i<23+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 25+1;i<25+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 27+1;i<27+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 29+1;i<29+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // old pass
         generate
          for (i = 0;i<5 ;i=i+1) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 5;i<2*2+5 ;i=i+2) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[5+2*2-2-2*2];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[5+2*2-2-2*2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 9;i<2*2+9 ;i=i+2) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[9+2*2-2-2*2];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[9+2*2-2-2*2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 13;i<2*2+13 ;i=i+2) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[13+2*2-2-2*2];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[13+2*2-2-2*2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 17;i<2*2+17 ;i=i+2) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[17+2*2-2-2*2];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[17+2*2-2-2*2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 21;i<2*2+21 ;i=i+2) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[21+2*2-2-2*2];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[21+2*2-2-2*2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 25;i<2*2+25 ;i=i+2) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[25+2*2-2-2*2];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[25+2*2-2-2*2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 29;i<2*2+29 ;i=i+2) begin
              assign  gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[29+2*2-2-2*2];
              assign  pp_level3[i]=pp_level2[i]&pp_level2[29+2*2-2-2*2];
           end 
         endgenerate
         
            generate
            for (i = 5+1;i<5+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 7+1;i<7+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 9+1;i<9+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 11+1;i<11+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 13+1;i<13+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 15+1;i<15+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 17+1;i<17+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 19+1;i<19+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 21+1;i<21+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 23+1;i<23+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 25+1;i<25+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 27+1;i<27+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
            generate
            for (i = 29+1;i<29+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // old pass
         generate
          for (i = 0;i<9 ;i=i+1) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 9;i<2*2+9 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[9+2*2-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[9+2*2-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 13;i<2*2+13 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[13+2*2-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[13+2*2-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 17;i<2*2+17 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[17+2*2-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[17+2*2-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 21;i<2*2+21 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[21+2*2-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[21+2*2-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 25;i<2*2+25 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[25+2*2-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[25+2*2-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 29;i<2*2+29 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[29+2*2-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[29+2*2-2-2*4];
           end 
         endgenerate
         
            generate
            for (i = 9+1;i<9+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 11+1;i<11+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 13+1;i<13+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 15+1;i<15+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 17+1;i<17+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 19+1;i<19+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 21+1;i<21+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 23+1;i<23+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 25+1;i<25+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 27+1;i<27+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 29+1;i<29+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // old pass
         generate
          for (i = 0;i<17 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 17;i<2*2+17 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[17+2*2-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[17+2*2-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 21;i<2*2+21 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[21+2*2-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[21+2*2-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 25;i<2*2+25 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[25+2*2-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[25+2*2-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 29;i<2*2+29 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[29+2*2-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[29+2*2-2-2*8];
           end 
         endgenerate
         
            generate
            for (i = 17+1;i<17+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 19+1;i<19+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 21+1;i<21+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 23+1;i<23+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 25+1;i<25+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 27+1;i<27+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 29+1;i<29+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
           
wire [31:0] gnpg_level6;
assign gnpg_level6[0]=gnpg_level5[0];
assign gnpg_level6[32-1]=gnpg_level5[32-1];

generate
    for (i = 1 ;i<32/2;i=i+1) begin
      assign gnpg_level6[2*i]=gnpg_level5[2*i]|pp_level5[2*i]&gnpg_level5[2*i-1];
      assign gnpg_level6[2*i-1]=gnpg_level5[2*i-1];
   end
 endgenerate   
assign sum[32:1]=p[32:1]^gnpg_level6[32-1:0];
assign cout =g[32]|p[32]&gnpg_level6[32-1];
   
endmodule

