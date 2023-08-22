
/* verilator lint_off UNUSEDSIGNAL */
module HC_16_BK3_KS1_top (a,b,cin,sum,cout,clk,rst);
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
HC_16_BK3_KS1 u0 (a,b,cin_r,sum_w,cout_w);
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

module P_G_gen_hc_16 (a,b,cin,p,g);
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

module HC_16_BK3_KS1 (a,b,cin,sum,cout);

input [16:1]a;
input [16:1]b;
input cin;
output [16:1]sum;
output cout;
wire [16:0]p;
wire [16:0]g;
P_G_gen_hc_16 pg_gen_hc (a,b,cin,p,g);
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
             generate
              for (i = 4-1 ;i<16;i=i+4) begin
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
            endgenerate 
             generate
              for (i = 8-1 ;i<16;i=i+8) begin
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
            endgenerate 
            //KS 
            generate
              for (i = 0;i<(16-15) ;i=i+8) begin
                assign gnpg_level4[15+i]=gnpg_level3[15+i]|pp_level3[15+i]&gnpg_level3[15+i-1*8];
                assign pp_level4[15+i]=pp_level3[15+i]&pp_level3[15+i-1*8];
               end
            endgenerate
            generate
              for (i = 0;i<15;i=i+1) begin
                assign gnpg_level4[i]=gnpg_level3[i];
                assign pp_level4[i]=pp_level3[i];
               end
            endgenerate
            
    wire [15:0] gnpg_level7;  
    
    wire [6-1:0] gnpg_level6;   
    wire [6-1:0] pp_level6; 
    
    wire [2-1:0] gnpg_level5;   
    wire [2-1:0] pp_level5; 
    
assign sum[16:1]=p[16:1]^gnpg_level7[16-1:0];
assign cout =g[16]|p[16]&gnpg_level7[16-1];
assign gnpg_level7[0]=gnpg_level4[0];
assign gnpg_level7[1]=gnpg_level4[1];
assign gnpg_level7[2]=gnpg_level4[2]|pp_level4[2]&gnpg_level4[1];
assign gnpg_level7[15]=gnpg_level4[15];
generate 
   for (i = 1;i<(16-2)/2 ;i=i+1 ) begin
      assign gnpg_level7[2*i+1]=gnpg_level6[i-1];
   end
endgenerate
generate 
   for (i = 2;i<16/2 ;i=i+1 ) begin
      assign gnpg_level7[2*i]=gnpg_level4[2*i]|pp_level4[2*i]&gnpg_level6[i-2];
   end
endgenerate


assign gnpg_level6[0]=gnpg_level4[3];
assign gnpg_level6[1]=gnpg_level4[2+3]|pp_level4[2+3]&gnpg_level4[2+3-2];
generate 

   for (i = 3;i<6;i=i+2 ) begin
      assign gnpg_level6[i]=gnpg_level4[2*i+3]|pp_level4[2*i+3]&gnpg_level5[(i-3)/2];
   end
endgenerate
generate 

   for (i = 2;i<6 ;i=i+2 ) begin
      assign gnpg_level6[i]=gnpg_level5[i/2-1];
   end
endgenerate


//1111
assign gnpg_level5[0]=gnpg_level4[7];
assign gnpg_level5[1]=gnpg_level4[4+7]|pp_level4[4+7]&gnpg_level4[4+7-4];
generate 
//1111
   for (i = 3;i<2;i=i+2 ) begin
      assign gnpg_level5[i]=gnpg_level4[4*i+7]|pp_level4[4*i+7]&gnpg_level4[4*i+7-4];
   end
endgenerate
generate 
//1111
   for (i = 2;i<2 ;i=i+2 ) begin
      assign gnpg_level5[i]=gnpg_level4[4*i+7];
   end
endgenerate

endmodule

