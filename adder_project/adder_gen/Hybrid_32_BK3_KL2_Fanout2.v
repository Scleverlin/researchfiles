
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_32_BK3_KL2_Fanout2_top (a,b,cin,sum,cout,clk,rst);
input [31:0]a;
input [31:0]b;
input cin;
output reg [31:0]sum;
output reg cout;
input clk;
input rst;
wire [31:0] sum_w;
wire cout_w;
reg cin_r;
Hybrid_32_BK3_KL2_Fanout2 u0 (a,b,cin_r,sum_w,cout_w);
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

module Hybrid_32_BK3_KL2_Fanout2 (a,b,cin,sum,cout);

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
             generate
              for (i = 4-1 ;i<32;i=i+4) begin
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
            endgenerate 
             generate
              for (i = 8-1 ;i<32;i=i+8) begin
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
            endgenerate 
          // pre process continue last 1
           generate
            for (i = 8;i<8*2 ;i=i+8) begin
              assign  gnpg_level4[7+i]=gnpg_level3[7+i]|pp_level3[7+i]&gnpg_level3[i+7-8]; 
              assign  pp_level4[7+i]=pp_level3[7+i]&pp_level3[i+7-8];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 8;i<8*2 ;i=i+8) begin
              assign  gnpg_level4[23+i]=gnpg_level3[23+i]|pp_level3[23+i]&gnpg_level3[i+23-8]; 
              assign  pp_level4[23+i]=pp_level3[23+i]&pp_level3[i+23-8];
            end
           endgenerate
          
         // strange part
            generate
            for (i = 0;i<8 ;i=i+8 ) begin
              assign  gnpg_level4[23+i]=gnpg_level3[23+i]; 
              assign  pp_level4[23+i]=pp_level3[23+i];
            end 
            endgenerate
          // before start point
            generate
            for (i = 0;i<15 ;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 15+1;i<15+8;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 23+1;i<23+8;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // old pass
         generate
          for (i = 0;i<23 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 23;i<8*2+23 ;i=i+8) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[23+8*2-8-8*2];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[23+8*2-8-8*2];
           end 
         endgenerate
         
            generate
            for (i = 23+1;i<23+8;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
    wire [31:0] gnpg_level8;  
    
    wire [14-1:0] gnpg_level7;   
    wire [14-1:0] pp_level7; 
    
    wire [6-1:0] gnpg_level6;   
    wire [6-1:0] pp_level6; 
    
assign sum[32:1]=p[32:1]^gnpg_level8[32-1:0];
assign cout =g[32]|p[32]&gnpg_level8[32-1];
assign gnpg_level8[0]=gnpg_level5[0];
assign gnpg_level8[1]=gnpg_level5[1];
assign gnpg_level8[2]=gnpg_level5[2]|pp_level5[2]&gnpg_level5[1];
assign gnpg_level8[31]=gnpg_level5[31];
generate 
   for (i = 1;i<(32-2)/2 ;i=i+1 ) begin
      assign gnpg_level8[2*i+1]=gnpg_level7[i-1];
   end
endgenerate
generate 
   for (i = 2;i<32/2 ;i=i+1 ) begin
      assign gnpg_level8[2*i]=gnpg_level5[2*i]|pp_level5[2*i]&gnpg_level7[i-2];
   end
endgenerate


assign gnpg_level7[0]=gnpg_level5[3];
assign gnpg_level7[1]=gnpg_level5[2+3]|pp_level5[2+3]&gnpg_level5[2+3-2];
generate 

   for (i = 3;i<14;i=i+2 ) begin
      assign gnpg_level7[i]=gnpg_level5[2*i+3]|pp_level5[2*i+3]&gnpg_level6[(i-3)/2];
   end
endgenerate
generate 

   for (i = 2;i<14 ;i=i+2 ) begin
      assign gnpg_level7[i]=gnpg_level6[i/2-1];
   end
endgenerate


//1111
assign gnpg_level6[0]=gnpg_level5[7];
assign gnpg_level6[1]=gnpg_level5[4+7]|pp_level5[4+7]&gnpg_level5[4+7-4];
generate 
//1111
   for (i = 3;i<6;i=i+2 ) begin
      assign gnpg_level6[i]=gnpg_level5[4*i+7]|pp_level5[4*i+7]&gnpg_level5[4*i+7-4];
   end
endgenerate
generate 
//1111
   for (i = 2;i<6 ;i=i+2 ) begin
      assign gnpg_level6[i]=gnpg_level5[4*i+7];
   end
endgenerate

endmodule

