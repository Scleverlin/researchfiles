
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_32_BK2_SA3_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_32_BK2_SA3 u0 (a,b,cin_r,sum_w,cout_w);
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

module pg_gen_bk_sa_32 (a,b,cin,p,g);
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

module Hybrid_32_BK2_SA3 (a,b,cin,sum,cout);

input [32:1]a;
input [32:1]b;
input cin;
output [32:1]sum;
output cout;
wire [32:0]p;
wire [32:0]g;
pg_gen_bk_sa_32 pg_gen_bksa (a,b,cin,p,g);
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
             for (i = 7;i<32 ;i=i+8) begin
             assign gnpg_level3[i+0]=gnpg_level2[i+0]|pp_level2[i+0]&gnpg_level2[i-4];  
             assign pp_level3[i+0]=pp_level2[i+0]&pp_level2[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 11;i<32 ;i=i+8) begin
             assign gnpg_level3[i+0]=gnpg_level2[i+0];  
             assign pp_level3[i+0]=pp_level2[i+0];            
         end
       endgenerate
       
         generate
             for (i = 0;i<7 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 7+1;i<7+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 11+1;i<11+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 15+1;i<15+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 19+1;i<19+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 23+1;i<23+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 27+1;i<27+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
        generate
             for (i = 11;i<32 ;i=i+16) begin
             assign gnpg_level4[i+0]=gnpg_level3[i+0]|pp_level3[i+0]&gnpg_level3[i-4];  
             assign pp_level4[i+0]=pp_level3[i+0]&pp_level3[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 19;i<32 ;i=i+16) begin
             assign gnpg_level4[i+0]=gnpg_level3[i+0];  
             assign pp_level4[i+0]=pp_level3[i+0];            
         end
       endgenerate
       
        generate
             for (i = 11;i<32 ;i=i+16) begin
             assign gnpg_level4[i+4]=gnpg_level3[i+4]|pp_level3[i+4]&gnpg_level3[i-4];  
             assign pp_level4[i+4]=pp_level3[i+4]&pp_level3[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 19;i<32 ;i=i+16) begin
             assign gnpg_level4[i+4]=gnpg_level3[i+4];  
             assign pp_level4[i+4]=pp_level3[i+4];            
         end
       endgenerate
       
         generate
             for (i = 0;i<11 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 11+1;i<11+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 15+1;i<15+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 19+1;i<19+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 23+1;i<23+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 27+1;i<27+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
        generate
             for (i = 19;i<32 ;i=i+32) begin
             assign gnpg_level5[i+0]=gnpg_level4[i+0]|pp_level4[i+0]&gnpg_level4[i-4];  
             assign pp_level5[i+0]=pp_level4[i+0]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<32 ;i=i+32) begin
             assign gnpg_level5[i+0]=gnpg_level4[i+0];  
             assign pp_level5[i+0]=pp_level4[i+0];            
         end
       endgenerate
       
        generate
             for (i = 19;i<32 ;i=i+32) begin
             assign gnpg_level5[i+4]=gnpg_level4[i+4]|pp_level4[i+4]&gnpg_level4[i-4];  
             assign pp_level5[i+4]=pp_level4[i+4]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<32 ;i=i+32) begin
             assign gnpg_level5[i+4]=gnpg_level4[i+4];  
             assign pp_level5[i+4]=pp_level4[i+4];            
         end
       endgenerate
       
        generate
             for (i = 19;i<32 ;i=i+32) begin
             assign gnpg_level5[i+8]=gnpg_level4[i+8]|pp_level4[i+8]&gnpg_level4[i-4];  
             assign pp_level5[i+8]=pp_level4[i+8]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<32 ;i=i+32) begin
             assign gnpg_level5[i+8]=gnpg_level4[i+8];  
             assign pp_level5[i+8]=pp_level4[i+8];            
         end
       endgenerate
       
        generate
             for (i = 19;i<32 ;i=i+32) begin
             assign gnpg_level5[i+12]=gnpg_level4[i+12]|pp_level4[i+12]&gnpg_level4[i-4];  
             assign pp_level5[i+12]=pp_level4[i+12]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<32 ;i=i+32) begin
             assign gnpg_level5[i+12]=gnpg_level4[i+12];  
             assign pp_level5[i+12]=pp_level4[i+12];            
         end
       endgenerate
       
         generate
             for (i = 0;i<19 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 19+1;i<19+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 23+1;i<23+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 27+1;i<27+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
    wire [31:0] gnpg_level7;  
    
    wire [14-1:0] gnpg_level6;   
    wire [14-1:0] pp_level6; 
    
assign sum[32:1]=p[32:1]^gnpg_level7[32-1:0];
assign cout =g[32]|p[32]&gnpg_level7[32-1];
assign gnpg_level7[0]=gnpg_level5[0];
assign gnpg_level7[1]=gnpg_level5[1];
assign gnpg_level7[2]=gnpg_level5[2]|pp_level5[2]&gnpg_level5[1];
assign gnpg_level7[31]=gnpg_level5[31];
generate 
   for (i = 1;i<(32-2)/2 ;i=i+1 ) begin
      assign gnpg_level7[2*i+1]=gnpg_level6[i-1];
   end
endgenerate
generate 
   for (i = 2;i<32/2 ;i=i+1 ) begin
      assign gnpg_level7[2*i]=gnpg_level5[2*i]|pp_level5[2*i]&gnpg_level6[i-2];
   end
endgenerate

//1111
assign gnpg_level6[0]=gnpg_level5[3];
assign gnpg_level6[1]=gnpg_level5[2+3]|pp_level5[2+3]&gnpg_level5[2+3-2];
generate 
//1111
   for (i = 3;i<14;i=i+2 ) begin
      assign gnpg_level6[i]=gnpg_level5[2*i+3]|pp_level5[2*i+3]&gnpg_level5[2*i+3-2];
   end
endgenerate
generate 
//1111
   for (i = 2;i<14 ;i=i+2 ) begin
      assign gnpg_level6[i]=gnpg_level5[2*i+3];
   end
endgenerate

endmodule

