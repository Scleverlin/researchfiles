
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_16_BK1_KL3_Fanout2_top (a,b,cin,sum,cout,clk,rst);
input [15:0]a;
input [15:0]b;
input cin;
output reg [15:0]sum;
output reg cout;
input clk;
input rst;
wire [15:0] sum_w;
wire cout_w;
reg cin_r;
Hybrid_16_BK1_KL3_Fanout2 u0 (a,b,cin_r,sum_w,cout_w);
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

module Hybrid_16_BK1_KL3_Fanout2 (a,b,cin,sum,cout);

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
wire [15:0] gnpg_level2;
wire [15:0] pp_level2;
wire [15:0] gnpg_level3;
wire [15:0] pp_level3;
wire [15:0] gnpg_level4;
wire [15:0] pp_level4;
             generate
               for (i = 1;i<16 ;i=i+2 ) begin
                assign gnpg_level1[i]=g[i]|p[i]&g[i-1];  
                assign pp_level1[i]=p[i]&p[i-1];     
               end
            endgenerate
             generate
                for (i = 0;i<16 ;i=i+2) begin
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
           
wire [15:0] gnpg_level5;
assign gnpg_level5[0]=gnpg_level4[0];
assign gnpg_level5[16-1]=gnpg_level4[16-1];

generate
    for (i = 1 ;i<16/2;i=i+1) begin
      assign gnpg_level5[2*i]=gnpg_level4[2*i]|pp_level4[2*i]&gnpg_level4[2*i-1];
      assign gnpg_level5[2*i-1]=gnpg_level4[2*i-1];
   end
 endgenerate   
assign sum[16:1]=p[16:1]^gnpg_level5[16-1:0];
assign cout =g[16]|p[16]&gnpg_level5[16-1];
   
endmodule

