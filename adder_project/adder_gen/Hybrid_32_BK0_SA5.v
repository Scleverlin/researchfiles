
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_32_BK0_SA5_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_32_BK0_SA5 u0 (a,b,cin_r,sum_w,cout_w);
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

module Hybrid_32_BK0_SA5 (a,b,cin,sum,cout);

input [32:1]a;
input [32:1]b;
input cin;
output [32:1]sum;
output cout;
wire [32:0]p;
wire [32:0]g;
pg_gen_bk_sa_32 pg_gen_bksa (a,b,cin,p,g);
genvar i;
//22
 wire [31:0] gnpg_level1;
 wire [31:0] pp_level1;
 //assign gnpg_level1[0]=g[0];
 //assign pp_level1[0]=p[0];
        generate
            for (i = 1;i<32 ;i=i+2 ) begin
             assign gnpg_level1[i]=g[i]|p[i]&g[i-1];  
             assign pp_level1[i]=p[i]&p[i-1];            
            end
        endgenerate
        generate
            for (i = 0;i<32 ;i=i+2 ) begin
             assign gnpg_level1[i]=g[i];  
             assign pp_level1[i]=p[i];            
            end
        endgenerate        
        
       // others
 wire [31:0] gnpg_level2;
 wire [31:0] pp_level2;  
         
           //11111
         generate
             for (i = 2;i<32 ;i=i+4) begin
             assign gnpg_level2[i+0]=gnpg_level1[i+0]|pp_level1[i+0]&gnpg_level1[i-1];  
             assign pp_level2[i+0]=pp_level1[i+0]&pp_level1[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 2;i<32 ;i=i+4) begin
             assign gnpg_level2[i+1]=gnpg_level1[i+1]|pp_level1[i+1]&gnpg_level1[i-1];  
             assign pp_level2[i+1]=pp_level1[i+1]&pp_level1[i-1];            
         end
       endgenerate
        generate
         for (i = 0*4;i<2+0*4 ;i=i+1) begin
           assign gnpg_level2[i]=gnpg_level1[i];  
           assign pp_level2[i]=pp_level1[i];            
         end
       endgenerate
         
        generate
         for (i = 1*4;i<2+1*4 ;i=i+1) begin
           assign gnpg_level2[i]=gnpg_level1[i];  
           assign pp_level2[i]=pp_level1[i];            
         end
       endgenerate
         
        generate
         for (i = 2*4;i<2+2*4 ;i=i+1) begin
           assign gnpg_level2[i]=gnpg_level1[i];  
           assign pp_level2[i]=pp_level1[i];            
         end
       endgenerate
         
        generate
         for (i = 3*4;i<2+3*4 ;i=i+1) begin
           assign gnpg_level2[i]=gnpg_level1[i];  
           assign pp_level2[i]=pp_level1[i];            
         end
       endgenerate
         
        generate
         for (i = 4*4;i<2+4*4 ;i=i+1) begin
           assign gnpg_level2[i]=gnpg_level1[i];  
           assign pp_level2[i]=pp_level1[i];            
         end
       endgenerate
         
        generate
         for (i = 5*4;i<2+5*4 ;i=i+1) begin
           assign gnpg_level2[i]=gnpg_level1[i];  
           assign pp_level2[i]=pp_level1[i];            
         end
       endgenerate
         
        generate
         for (i = 6*4;i<2+6*4 ;i=i+1) begin
           assign gnpg_level2[i]=gnpg_level1[i];  
           assign pp_level2[i]=pp_level1[i];            
         end
       endgenerate
         
        generate
         for (i = 7*4;i<2+7*4 ;i=i+1) begin
           assign gnpg_level2[i]=gnpg_level1[i];  
           assign pp_level2[i]=pp_level1[i];            
         end
       endgenerate
         
       // others
 wire [31:0] gnpg_level3;
 wire [31:0] pp_level3;  
         
           //11111
         generate
             for (i = 4;i<32 ;i=i+8) begin
             assign gnpg_level3[i+0]=gnpg_level2[i+0]|pp_level2[i+0]&gnpg_level2[i-1];  
             assign pp_level3[i+0]=pp_level2[i+0]&pp_level2[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 4;i<32 ;i=i+8) begin
             assign gnpg_level3[i+1]=gnpg_level2[i+1]|pp_level2[i+1]&gnpg_level2[i-1];  
             assign pp_level3[i+1]=pp_level2[i+1]&pp_level2[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 4;i<32 ;i=i+8) begin
             assign gnpg_level3[i+2]=gnpg_level2[i+2]|pp_level2[i+2]&gnpg_level2[i-1];  
             assign pp_level3[i+2]=pp_level2[i+2]&pp_level2[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 4;i<32 ;i=i+8) begin
             assign gnpg_level3[i+3]=gnpg_level2[i+3]|pp_level2[i+3]&gnpg_level2[i-1];  
             assign pp_level3[i+3]=pp_level2[i+3]&pp_level2[i-1];            
         end
       endgenerate
        generate
         for (i = 0*8;i<4+0*8 ;i=i+1) begin
           assign gnpg_level3[i]=gnpg_level2[i];  
           assign pp_level3[i]=pp_level2[i];            
         end
       endgenerate
         
        generate
         for (i = 1*8;i<4+1*8 ;i=i+1) begin
           assign gnpg_level3[i]=gnpg_level2[i];  
           assign pp_level3[i]=pp_level2[i];            
         end
       endgenerate
         
        generate
         for (i = 2*8;i<4+2*8 ;i=i+1) begin
           assign gnpg_level3[i]=gnpg_level2[i];  
           assign pp_level3[i]=pp_level2[i];            
         end
       endgenerate
         
        generate
         for (i = 3*8;i<4+3*8 ;i=i+1) begin
           assign gnpg_level3[i]=gnpg_level2[i];  
           assign pp_level3[i]=pp_level2[i];            
         end
       endgenerate
         
       // others
 wire [31:0] gnpg_level4;
 wire [31:0] pp_level4;  
         
           //11111
         generate
             for (i = 8;i<32 ;i=i+16) begin
             assign gnpg_level4[i+0]=gnpg_level3[i+0]|pp_level3[i+0]&gnpg_level3[i-1];  
             assign pp_level4[i+0]=pp_level3[i+0]&pp_level3[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 8;i<32 ;i=i+16) begin
             assign gnpg_level4[i+1]=gnpg_level3[i+1]|pp_level3[i+1]&gnpg_level3[i-1];  
             assign pp_level4[i+1]=pp_level3[i+1]&pp_level3[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 8;i<32 ;i=i+16) begin
             assign gnpg_level4[i+2]=gnpg_level3[i+2]|pp_level3[i+2]&gnpg_level3[i-1];  
             assign pp_level4[i+2]=pp_level3[i+2]&pp_level3[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 8;i<32 ;i=i+16) begin
             assign gnpg_level4[i+3]=gnpg_level3[i+3]|pp_level3[i+3]&gnpg_level3[i-1];  
             assign pp_level4[i+3]=pp_level3[i+3]&pp_level3[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 8;i<32 ;i=i+16) begin
             assign gnpg_level4[i+4]=gnpg_level3[i+4]|pp_level3[i+4]&gnpg_level3[i-1];  
             assign pp_level4[i+4]=pp_level3[i+4]&pp_level3[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 8;i<32 ;i=i+16) begin
             assign gnpg_level4[i+5]=gnpg_level3[i+5]|pp_level3[i+5]&gnpg_level3[i-1];  
             assign pp_level4[i+5]=pp_level3[i+5]&pp_level3[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 8;i<32 ;i=i+16) begin
             assign gnpg_level4[i+6]=gnpg_level3[i+6]|pp_level3[i+6]&gnpg_level3[i-1];  
             assign pp_level4[i+6]=pp_level3[i+6]&pp_level3[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 8;i<32 ;i=i+16) begin
             assign gnpg_level4[i+7]=gnpg_level3[i+7]|pp_level3[i+7]&gnpg_level3[i-1];  
             assign pp_level4[i+7]=pp_level3[i+7]&pp_level3[i-1];            
         end
       endgenerate
        generate
         for (i = 0*16;i<8+0*16 ;i=i+1) begin
           assign gnpg_level4[i]=gnpg_level3[i];  
           assign pp_level4[i]=pp_level3[i];            
         end
       endgenerate
         
        generate
         for (i = 1*16;i<8+1*16 ;i=i+1) begin
           assign gnpg_level4[i]=gnpg_level3[i];  
           assign pp_level4[i]=pp_level3[i];            
         end
       endgenerate
         
       // others
 wire [31:0] gnpg_level5;
 wire [31:0] pp_level5;  
         
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+0]=gnpg_level4[i+0]|pp_level4[i+0]&gnpg_level4[i-1];  
             assign pp_level5[i+0]=pp_level4[i+0]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+1]=gnpg_level4[i+1]|pp_level4[i+1]&gnpg_level4[i-1];  
             assign pp_level5[i+1]=pp_level4[i+1]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+2]=gnpg_level4[i+2]|pp_level4[i+2]&gnpg_level4[i-1];  
             assign pp_level5[i+2]=pp_level4[i+2]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+3]=gnpg_level4[i+3]|pp_level4[i+3]&gnpg_level4[i-1];  
             assign pp_level5[i+3]=pp_level4[i+3]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+4]=gnpg_level4[i+4]|pp_level4[i+4]&gnpg_level4[i-1];  
             assign pp_level5[i+4]=pp_level4[i+4]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+5]=gnpg_level4[i+5]|pp_level4[i+5]&gnpg_level4[i-1];  
             assign pp_level5[i+5]=pp_level4[i+5]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+6]=gnpg_level4[i+6]|pp_level4[i+6]&gnpg_level4[i-1];  
             assign pp_level5[i+6]=pp_level4[i+6]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+7]=gnpg_level4[i+7]|pp_level4[i+7]&gnpg_level4[i-1];  
             assign pp_level5[i+7]=pp_level4[i+7]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+8]=gnpg_level4[i+8]|pp_level4[i+8]&gnpg_level4[i-1];  
             assign pp_level5[i+8]=pp_level4[i+8]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+9]=gnpg_level4[i+9]|pp_level4[i+9]&gnpg_level4[i-1];  
             assign pp_level5[i+9]=pp_level4[i+9]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+10]=gnpg_level4[i+10]|pp_level4[i+10]&gnpg_level4[i-1];  
             assign pp_level5[i+10]=pp_level4[i+10]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+11]=gnpg_level4[i+11]|pp_level4[i+11]&gnpg_level4[i-1];  
             assign pp_level5[i+11]=pp_level4[i+11]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+12]=gnpg_level4[i+12]|pp_level4[i+12]&gnpg_level4[i-1];  
             assign pp_level5[i+12]=pp_level4[i+12]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+13]=gnpg_level4[i+13]|pp_level4[i+13]&gnpg_level4[i-1];  
             assign pp_level5[i+13]=pp_level4[i+13]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+14]=gnpg_level4[i+14]|pp_level4[i+14]&gnpg_level4[i-1];  
             assign pp_level5[i+14]=pp_level4[i+14]&pp_level4[i-1];            
         end
       endgenerate
           //11111
         generate
             for (i = 16;i<32 ;i=i+32) begin
             assign gnpg_level5[i+15]=gnpg_level4[i+15]|pp_level4[i+15]&gnpg_level4[i-1];  
             assign pp_level5[i+15]=pp_level4[i+15]&pp_level4[i-1];            
         end
       endgenerate
        generate
         for (i = 0*32;i<16+0*32 ;i=i+1) begin
           assign gnpg_level5[i]=gnpg_level4[i];  
           assign pp_level5[i]=pp_level4[i];            
         end
       endgenerate
         
   assign cout= g[32]|p[32]&gnpg_level5[31];
   generate
    for (i = 1;i<33 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level5[i-1];    
    end
   endgenerate // 5 is deep enough , no post process
endmodule

