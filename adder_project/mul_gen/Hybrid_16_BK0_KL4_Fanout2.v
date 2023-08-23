
/* verilator lint_off UNUSEDSIGNAL */


module pg_gen_bk_kl_16 (a,b,cin,p,g);
input [15:0]a;
input [15:0]b;
input cin;
output [16:0]p;
output [16:0]g;
assign g[0]=cin;
assign p[0]=0;
assign p[16:1]=a^b;
assign g[16:1]=a&b;
endmodule

module Hybrid_16_BK0_KL4_Fanout2 (a,b,cin,sum,cout);

input [16:1]a;
input [16:1]b;
input cin;
output [16:1]sum;
output cout;
wire [16:0]p;
wire [16:0]g;
pg_gen_bk_kl_16 pg_gen_bkkl (a,b,cin,p,g);
genvar i;

 wire [15:0] gnpg_level1;
 wire [15:0] pp_level1;  
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
 wire [15:0] gnpg_level2;
 wire [15:0] pp_level2;  
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
         
 wire [15:0] gnpg_level3;
 wire [15:0] pp_level3;  
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
         
 wire [15:0] gnpg_level4;
 wire [15:0] pp_level4;  
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
         
   assign cout= g[16]|p[16]&gnpg_level4[15];
   generate
    for (i = 1;i<17 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level4[i-1];    
    end
   endgenerate // 4 is deep enough , no post process
endmodule

