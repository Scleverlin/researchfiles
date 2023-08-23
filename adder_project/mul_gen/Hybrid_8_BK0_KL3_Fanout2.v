
/* verilator lint_off UNUSEDSIGNAL */


module pg_gen_bk_kl_8 (a,b,cin,p,g);
input [7:0]a;
input [7:0]b;
input cin;
output [8:0]p;
output [8:0]g;
assign g[0]=cin;
assign p[0]=0;
assign p[8:1]=a^b;
assign g[8:1]=a&b;
endmodule

module Hybrid_8_BK0_KL3_Fanout2 (a,b,cin,sum,cout);

input [8:1]a;
input [8:1]b;
input cin;
output [8:1]sum;
output cout;
wire [8:0]p;
wire [8:0]g;
pg_gen_bk_kl_8 pg_gen_bkkl (a,b,cin,p,g);
genvar i;

 wire [7:0] gnpg_level1;
 wire [7:0] pp_level1;  
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
 wire [7:0] gnpg_level2;
 wire [7:0] pp_level2;  
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
         
 wire [7:0] gnpg_level3;
 wire [7:0] pp_level3;  
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
         
   assign cout= g[8]|p[8]&gnpg_level3[7];
   generate
    for (i = 1;i<9 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level3[i-1];    
    end
   endgenerate // 3 is deep enough , no post process
endmodule

