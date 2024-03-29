
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

module Hybrid_8_BK1_KL2_Fanout2 (a,b,cin,sum,cout);

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
wire [7:0] gnpg_level2;
wire [7:0] pp_level2;
wire [7:0] gnpg_level3;
wire [7:0] pp_level3;
             generate
               for (i = 1;i<8 ;i=i+2 ) begin
                assign gnpg_level1[i]=g[i]|p[i]&g[i-1];  
                assign pp_level1[i]=p[i]&p[i-1];     
               end
            endgenerate
             generate
                for (i = 0;i<8 ;i=i+2) begin
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
          
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[5+i]=gnpg_level1[5+i]; 
              assign  pp_level2[5+i]=pp_level1[5+i];
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
         
            generate
            for (i = 5+1;i<5+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
           
wire [7:0] gnpg_level4;
assign gnpg_level4[0]=gnpg_level3[0];
assign gnpg_level4[8-1]=gnpg_level3[8-1];

generate
    for (i = 1 ;i<8/2;i=i+1) begin
      assign gnpg_level4[2*i]=gnpg_level3[2*i]|pp_level3[2*i]&gnpg_level3[2*i-1];
      assign gnpg_level4[2*i-1]=gnpg_level3[2*i-1];
   end
 endgenerate   
assign sum[8:1]=p[8:1]^gnpg_level4[8-1:0];
assign cout =g[8]|p[8]&gnpg_level4[8-1];
   
endmodule

