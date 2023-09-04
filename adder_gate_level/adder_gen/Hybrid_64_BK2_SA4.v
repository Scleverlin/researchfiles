
/* verilator lint_off UNUSEDSIGNAL*/
module Hybrid_64_BK2_SA4_top (a,b,cin,sum,cout,clk,rst);
input [63:0]a;
input [63:0]b;
input cin;
output reg [63:0]sum;
output reg cout;
input clk;
input rst;
wire [63:0] sum_w;
wire cout_w;
reg cin_r;
Hybrid_64_BK2_SA4 u0 (a,b,cin_r,sum_w,cout_w);
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

module pg_gen_bk_sa_64 (a,b,cin,p,g);
input [63:0]a;
input [63:0]b;
input cin;
output [64:0]p;
output [64:0]g;
assign g[0]=cin;
assign p[0]=0;
assign p[64:1]=a^b;
assign g[64:1]=a&b;
endmodule

module Hybrid_64_BK2_SA4 (a,b,cin,sum,cout);

input [64:1]a;
input [64:1]b;
input cin;
output [64:1]sum;
output cout;
wire [64:0]p;
wire [64:0]g;
pg_gen_bk_sa_64 pg_gen_bksa (a,b,cin,p,g);
genvar i;

wire [63:0] gnpg_level1;
wire [63:0] pp_level1;
wire [63:0] gnpg_level2;
wire [63:0] pp_level2;
wire [63:0] gnpg_level3;
wire [63:0] pp_level3;
wire [63:0] gnpg_level4;
wire [63:0] pp_level4;
wire [63:0] gnpg_level5;
wire [63:0] pp_level5;
wire [63:0] gnpg_level6;
wire [63:0] pp_level6;
             generate
               for (i = 1;i<64 ;i=i+2 ) begin:gen_block_sa11
                // assign gnpg_level1[i]=g[i]|p[i]&g[i-1];  
                  AO21 a3 (p[i],g[i-1],g[i],gnpg_level1[i]);
                assign pp_level1[i]=p[i]&p[i-1];     
               end
            endgenerate
             generate
                for (i = 0;i<64 ;i=i+2) begin
                 assign gnpg_level1[i]=g[i];  
                 assign pp_level1[i]=p[i];     
               end
            endgenerate
             generate
              for (i = 4-1 ;i<64;i=i+4) begin:gen_block_sa22
                //assign gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[i-2];  
                  AO21 a4 (pp_level1[i],gnpg_level1[i-2],gnpg_level1[i],gnpg_level2[i]);
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
            endgenerate 
        generate
             for (i = 7;i<64 ;i=i+8) begin:gen_block_sa310
            // assign gnpg_level3[i+0]=gnpg_level2[i+0]|pp_level2[i+0]&gnpg_level2[i-4];  
            AO21 a5 (pp_level2[i+0],gnpg_level2[i-4],gnpg_level2[i+0],gnpg_level3[i+0]);
             assign pp_level3[i+0]=pp_level2[i+0]&pp_level2[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 11;i<64 ;i=i+8) begin
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
         //k
         generate
             for (i = 31+1;i<31+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 35+1;i<35+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 39+1;i<39+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 43+1;i<43+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 47+1;i<47+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 51+1;i<51+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 55+1;i<55+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 59+1;i<59+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
        generate
             for (i = 11;i<64 ;i=i+16) begin:gen_block_sa320
            // assign gnpg_level4[i+0]=gnpg_level3[i+0]|pp_level3[i+0]&gnpg_level3[i-4];  
            AO21 a5 (pp_level3[i+0],gnpg_level3[i-4],gnpg_level3[i+0],gnpg_level4[i+0]);
             assign pp_level4[i+0]=pp_level3[i+0]&pp_level3[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 19;i<64 ;i=i+16) begin
             assign gnpg_level4[i+0]=gnpg_level3[i+0];  
             assign pp_level4[i+0]=pp_level3[i+0];            
         end
       endgenerate
       
        generate
             for (i = 11;i<64 ;i=i+16) begin:gen_block_sa324
            // assign gnpg_level4[i+4]=gnpg_level3[i+4]|pp_level3[i+4]&gnpg_level3[i-4];  
            AO21 a5 (pp_level3[i+4],gnpg_level3[i-4],gnpg_level3[i+4],gnpg_level4[i+4]);
             assign pp_level4[i+4]=pp_level3[i+4]&pp_level3[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 19;i<64 ;i=i+16) begin
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
         //k
         generate
             for (i = 31+1;i<31+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 35+1;i<35+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 39+1;i<39+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 43+1;i<43+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 47+1;i<47+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 51+1;i<51+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 55+1;i<55+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 59+1;i<59+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
        generate
             for (i = 19;i<64 ;i=i+32) begin:gen_block_sa330
            // assign gnpg_level5[i+0]=gnpg_level4[i+0]|pp_level4[i+0]&gnpg_level4[i-4];  
            AO21 a5 (pp_level4[i+0],gnpg_level4[i-4],gnpg_level4[i+0],gnpg_level5[i+0]);
             assign pp_level5[i+0]=pp_level4[i+0]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<64 ;i=i+32) begin
             assign gnpg_level5[i+0]=gnpg_level4[i+0];  
             assign pp_level5[i+0]=pp_level4[i+0];            
         end
       endgenerate
       
        generate
             for (i = 19;i<64 ;i=i+32) begin:gen_block_sa334
            // assign gnpg_level5[i+4]=gnpg_level4[i+4]|pp_level4[i+4]&gnpg_level4[i-4];  
            AO21 a5 (pp_level4[i+4],gnpg_level4[i-4],gnpg_level4[i+4],gnpg_level5[i+4]);
             assign pp_level5[i+4]=pp_level4[i+4]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<64 ;i=i+32) begin
             assign gnpg_level5[i+4]=gnpg_level4[i+4];  
             assign pp_level5[i+4]=pp_level4[i+4];            
         end
       endgenerate
       
        generate
             for (i = 19;i<64 ;i=i+32) begin:gen_block_sa338
            // assign gnpg_level5[i+8]=gnpg_level4[i+8]|pp_level4[i+8]&gnpg_level4[i-4];  
            AO21 a5 (pp_level4[i+8],gnpg_level4[i-4],gnpg_level4[i+8],gnpg_level5[i+8]);
             assign pp_level5[i+8]=pp_level4[i+8]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<64 ;i=i+32) begin
             assign gnpg_level5[i+8]=gnpg_level4[i+8];  
             assign pp_level5[i+8]=pp_level4[i+8];            
         end
       endgenerate
       
        generate
             for (i = 19;i<64 ;i=i+32) begin:gen_block_sa3312
            // assign gnpg_level5[i+12]=gnpg_level4[i+12]|pp_level4[i+12]&gnpg_level4[i-4];  
            AO21 a5 (pp_level4[i+12],gnpg_level4[i-4],gnpg_level4[i+12],gnpg_level5[i+12]);
             assign pp_level5[i+12]=pp_level4[i+12]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<64 ;i=i+32) begin
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
         //k
         generate
             for (i = 31+1;i<31+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 35+1;i<35+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 39+1;i<39+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 43+1;i<43+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 47+1;i<47+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 51+1;i<51+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 55+1;i<55+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 59+1;i<59+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
        generate
             for (i = 35;i<64 ;i=i+64) begin:gen_block_sa340
            // assign gnpg_level6[i+0]=gnpg_level5[i+0]|pp_level5[i+0]&gnpg_level5[i-4];  
            AO21 a5 (pp_level5[i+0],gnpg_level5[i-4],gnpg_level5[i+0],gnpg_level6[i+0]);
             assign pp_level6[i+0]=pp_level5[i+0]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<64 ;i=i+64) begin
             assign gnpg_level6[i+0]=gnpg_level5[i+0];  
             assign pp_level6[i+0]=pp_level5[i+0];            
         end
       endgenerate
       
        generate
             for (i = 35;i<64 ;i=i+64) begin:gen_block_sa344
            // assign gnpg_level6[i+4]=gnpg_level5[i+4]|pp_level5[i+4]&gnpg_level5[i-4];  
            AO21 a5 (pp_level5[i+4],gnpg_level5[i-4],gnpg_level5[i+4],gnpg_level6[i+4]);
             assign pp_level6[i+4]=pp_level5[i+4]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<64 ;i=i+64) begin
             assign gnpg_level6[i+4]=gnpg_level5[i+4];  
             assign pp_level6[i+4]=pp_level5[i+4];            
         end
       endgenerate
       
        generate
             for (i = 35;i<64 ;i=i+64) begin:gen_block_sa348
            // assign gnpg_level6[i+8]=gnpg_level5[i+8]|pp_level5[i+8]&gnpg_level5[i-4];  
            AO21 a5 (pp_level5[i+8],gnpg_level5[i-4],gnpg_level5[i+8],gnpg_level6[i+8]);
             assign pp_level6[i+8]=pp_level5[i+8]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<64 ;i=i+64) begin
             assign gnpg_level6[i+8]=gnpg_level5[i+8];  
             assign pp_level6[i+8]=pp_level5[i+8];            
         end
       endgenerate
       
        generate
             for (i = 35;i<64 ;i=i+64) begin:gen_block_sa3412
            // assign gnpg_level6[i+12]=gnpg_level5[i+12]|pp_level5[i+12]&gnpg_level5[i-4];  
            AO21 a5 (pp_level5[i+12],gnpg_level5[i-4],gnpg_level5[i+12],gnpg_level6[i+12]);
             assign pp_level6[i+12]=pp_level5[i+12]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<64 ;i=i+64) begin
             assign gnpg_level6[i+12]=gnpg_level5[i+12];  
             assign pp_level6[i+12]=pp_level5[i+12];            
         end
       endgenerate
       
        generate
             for (i = 35;i<64 ;i=i+64) begin:gen_block_sa3416
            // assign gnpg_level6[i+16]=gnpg_level5[i+16]|pp_level5[i+16]&gnpg_level5[i-4];  
            AO21 a5 (pp_level5[i+16],gnpg_level5[i-4],gnpg_level5[i+16],gnpg_level6[i+16]);
             assign pp_level6[i+16]=pp_level5[i+16]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<64 ;i=i+64) begin
             assign gnpg_level6[i+16]=gnpg_level5[i+16];  
             assign pp_level6[i+16]=pp_level5[i+16];            
         end
       endgenerate
       
        generate
             for (i = 35;i<64 ;i=i+64) begin:gen_block_sa3420
            // assign gnpg_level6[i+20]=gnpg_level5[i+20]|pp_level5[i+20]&gnpg_level5[i-4];  
            AO21 a5 (pp_level5[i+20],gnpg_level5[i-4],gnpg_level5[i+20],gnpg_level6[i+20]);
             assign pp_level6[i+20]=pp_level5[i+20]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<64 ;i=i+64) begin
             assign gnpg_level6[i+20]=gnpg_level5[i+20];  
             assign pp_level6[i+20]=pp_level5[i+20];            
         end
       endgenerate
       
        generate
             for (i = 35;i<64 ;i=i+64) begin:gen_block_sa3424
            // assign gnpg_level6[i+24]=gnpg_level5[i+24]|pp_level5[i+24]&gnpg_level5[i-4];  
            AO21 a5 (pp_level5[i+24],gnpg_level5[i-4],gnpg_level5[i+24],gnpg_level6[i+24]);
             assign pp_level6[i+24]=pp_level5[i+24]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<64 ;i=i+64) begin
             assign gnpg_level6[i+24]=gnpg_level5[i+24];  
             assign pp_level6[i+24]=pp_level5[i+24];            
         end
       endgenerate
       
        generate
             for (i = 35;i<64 ;i=i+64) begin:gen_block_sa3428
            // assign gnpg_level6[i+28]=gnpg_level5[i+28]|pp_level5[i+28]&gnpg_level5[i-4];  
            AO21 a5 (pp_level5[i+28],gnpg_level5[i-4],gnpg_level5[i+28],gnpg_level6[i+28]);
             assign pp_level6[i+28]=pp_level5[i+28]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<64 ;i=i+64) begin
             assign gnpg_level6[i+28]=gnpg_level5[i+28];  
             assign pp_level6[i+28]=pp_level5[i+28];            
         end
       endgenerate
       
         generate
             for (i = 0;i<35 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 35+1;i<35+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 39+1;i<39+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 43+1;i<43+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 47+1;i<47+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 51+1;i<51+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 55+1;i<55+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 59+1;i<59+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
    wire [63:0] gnpg_level8;  
    
    wire [30-1:0] gnpg_level7;   
    wire [30-1:0] pp_level7; 
    
assign sum[64:1]=p[64:1]^gnpg_level8[64-1:0];
assign cout =g[64]|p[64]&gnpg_level8[64-1];
assign gnpg_level8[0]=gnpg_level6[0];
assign gnpg_level8[1]=gnpg_level6[1];
// assign gnpg_level8[2]=gnpg_level6[2]|pp_level6[2]&gnpg_level6[1];
AO21 a9 (pp_level6[2],gnpg_level6[1],gnpg_level6[2],gnpg_level8[2]);
assign gnpg_level8[63]=gnpg_level6[63];
generate 
   for (i = 1;i<(64-2)/2 ;i=i+1 ) begin
      assign gnpg_level8[2*i+1]=gnpg_level7[i-1];
   end
endgenerate
generate 
   for (i = 2;i<64/2 ;i=i+1 ) begin:gen_post_2
      //assign gnpg_level8[2*i]=gnpg_level6[2*i]|pp_level6[2*i]&gnpg_level7[i-2];
      AO21 a10 (pp_level6[2*i],gnpg_level7[i-2],gnpg_level6[2*i],gnpg_level8[2*i]);
   end
endgenerate

//1111
assign gnpg_level7[0]=gnpg_level6[3];
// assign gnpg_level7[1]=gnpg_level6[2+3]|pp_level6[2+3]&gnpg_level6[2+3-2];
AO21 a13_1 (pp_level6[2+3],gnpg_level6[2+3-2],gnpg_level6[2+3],gnpg_level7[1]);
generate 
//1111
   for (i = 3;i<30;i=i+2 ) begin:gen_post_41
     // assign gnpg_level7[i]=gnpg_level6[2*i+3]|pp_level6[2*i+3]&gnpg_level6[2*i+3-2];
     AO21 a141 (pp_level6[2*i+3],gnpg_level6[2*i+3-2],gnpg_level6[2*i+3],gnpg_level7[i]);
   end
endgenerate
generate 
//1111
   for (i = 2;i<30 ;i=i+2 ) begin
      assign gnpg_level7[i]=gnpg_level6[2*i+3];
   end
endgenerate

endmodule
module AO21 ( a, b, d, y );
  input a, b, d;
  output y;
  wire   y_bar;

  AOI21_X2 aoi21_1 ( .A1(a), .A2(b), .B(d), .ZN(y) );
  INV_X2 inv_1 ( .I(y), .ZN(y_bar) );
endmodule
