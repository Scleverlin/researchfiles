
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

module Hybrid_32_BK0_KL5_Fanout16 (a,b,cin,sum,cout);

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
          // pre process
           generate
            for (i = 1;i<16 ;i=i+1 ) begin
              assign  gnpg_level1[0+i]=g[0+i]|p[0+i]&g[i+0-1]; 
              assign  pp_level1[0+i]=p[0+i]&p[i+0-1];
            end
           endgenerate

          
          // pre process
           generate
            for (i = 1;i<16 ;i=i+1 ) begin
              assign  gnpg_level1[16+i]=g[16+i]|p[16+i]&g[i+16-1]; 
              assign  pp_level1[16+i]=p[16+i]&p[i+16-1];
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
              assign  gnpg_level1[16+i]=g[16+i]; 
              assign  pp_level1[16+i]=p[16+i];
            end 
            endgenerate
 wire [31:0] gnpg_level2;
 wire [31:0] pp_level2;  
          // pre process continue last 3
           generate
            for (i = 2;i<16 ;i=i+1 ) begin
              assign  gnpg_level2[0+i]=gnpg_level1[0+i]|pp_level1[0+i]&gnpg_level1[i+0-2]; 
              assign  pp_level2[0+i]=pp_level1[0+i]&pp_level1[i+0-2];
            end
           endgenerate
          
          // pre process continue last 3
           generate
            for (i = 2;i<16 ;i=i+1 ) begin
              assign  gnpg_level2[16+i]=gnpg_level1[16+i]|pp_level1[16+i]&gnpg_level1[i+16-2]; 
              assign  pp_level2[16+i]=pp_level1[16+i]&pp_level1[i+16-2];
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
              assign  gnpg_level2[16+i]=gnpg_level1[16+i]; 
              assign  pp_level2[16+i]=pp_level1[16+i];
            end 
            endgenerate
 wire [31:0] gnpg_level3;
 wire [31:0] pp_level3;  
          // pre process continue last 2
           generate
            for (i = 4;i<16 ;i=i+1 ) begin
              assign  gnpg_level3[0+i]=gnpg_level2[0+i]|pp_level2[0+i]&gnpg_level2[i+0-4]; 
              assign  pp_level3[0+i]=pp_level2[0+i]&pp_level2[i+0-4];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 4;i<16 ;i=i+1 ) begin
              assign  gnpg_level3[16+i]=gnpg_level2[16+i]|pp_level2[16+i]&gnpg_level2[i+16-4]; 
              assign  pp_level3[16+i]=pp_level2[16+i]&pp_level2[i+16-4];
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
              assign  gnpg_level3[16+i]=gnpg_level2[16+i]; 
              assign  pp_level3[16+i]=pp_level2[16+i];
            end 
            endgenerate
 wire [31:0] gnpg_level4;
 wire [31:0] pp_level4;  
          // pre process continue last 1
           generate
            for (i = 8;i<16 ;i=i+1 ) begin
              assign  gnpg_level4[0+i]=gnpg_level3[0+i]|pp_level3[0+i]&gnpg_level3[i+0-8]; 
              assign  pp_level4[0+i]=pp_level3[0+i]&pp_level3[i+0-8];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 8;i<16 ;i=i+1 ) begin
              assign  gnpg_level4[16+i]=gnpg_level3[16+i]|pp_level3[16+i]&gnpg_level3[i+16-8]; 
              assign  pp_level4[16+i]=pp_level3[16+i]&pp_level3[i+16-8];
            end
           endgenerate
          
            generate
            for (i = 0;i<8 ;i=i+1 ) begin
              assign  gnpg_level4[0+i]=gnpg_level3[0+i]; 
              assign  pp_level4[0+i]=pp_level3[0+i];
            end 
            endgenerate
            generate
            for (i = 0;i<8 ;i=i+1 ) begin
              assign  gnpg_level4[16+i]=gnpg_level3[16+i]; 
              assign  pp_level4[16+i]=pp_level3[16+i];
            end 
            endgenerate
 wire [31:0] gnpg_level5;
 wire [31:0] pp_level5;  
          // old pass
         generate
          for (i = 0;i<16 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 16;i<16+16 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[16+16-1-16];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[16+16-1-16];
           end 
         endgenerate
         
   assign cout= g[32]|p[32]&gnpg_level5[31];
   generate
    for (i = 1;i<33 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level5[i-1];    
    end
   endgenerate // 5 is deep enough , no post process
endmodule

