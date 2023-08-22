
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_16_BK1_SA3_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_16_BK1_SA3 u0 (a,b,cin_r,sum_w,cout_w);
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

module pg_gen_bk_sa_16 (a,b,cin,p,g);
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

module Hybrid_16_BK1_SA3 (a,b,cin,sum,cout);

input [16:1]a;
input [16:1]b;
input cin;
output [16:1]sum;
output cout;
wire [16:0]p;
wire [16:0]g;
pg_gen_bk_sa_16 pg_gen_bksa (a,b,cin,p,g);
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
             for (i = 3;i<16 ;i=i+4) begin
             assign gnpg_level2[i+0]=gnpg_level1[i+0]|pp_level1[i+0]&gnpg_level1[i-2];  
             assign pp_level2[i+0]=pp_level1[i+0]&pp_level1[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 5;i<16 ;i=i+4) begin
             assign gnpg_level2[i+0]=gnpg_level1[i+0];  
             assign pp_level2[i+0]=pp_level1[i+0];            
         end
       endgenerate
       
         generate
             for (i = 0;i<3 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 3+1;i<3+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 5+1;i<5+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 7+1;i<7+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 9+1;i<9+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 11+1;i<11+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 13+1;i<13+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
        generate
             for (i = 5;i<16 ;i=i+8) begin
             assign gnpg_level3[i+0]=gnpg_level2[i+0]|pp_level2[i+0]&gnpg_level2[i-2];  
             assign pp_level3[i+0]=pp_level2[i+0]&pp_level2[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 9;i<16 ;i=i+8) begin
             assign gnpg_level3[i+0]=gnpg_level2[i+0];  
             assign pp_level3[i+0]=pp_level2[i+0];            
         end
       endgenerate
       
        generate
             for (i = 5;i<16 ;i=i+8) begin
             assign gnpg_level3[i+2]=gnpg_level2[i+2]|pp_level2[i+2]&gnpg_level2[i-2];  
             assign pp_level3[i+2]=pp_level2[i+2]&pp_level2[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 9;i<16 ;i=i+8) begin
             assign gnpg_level3[i+2]=gnpg_level2[i+2];  
             assign pp_level3[i+2]=pp_level2[i+2];            
         end
       endgenerate
       
         generate
             for (i = 0;i<5 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 5+1;i<5+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 7+1;i<7+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 9+1;i<9+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 11+1;i<11+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 13+1;i<13+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
        generate
             for (i = 9;i<16 ;i=i+16) begin
             assign gnpg_level4[i+0]=gnpg_level3[i+0]|pp_level3[i+0]&gnpg_level3[i-2];  
             assign pp_level4[i+0]=pp_level3[i+0]&pp_level3[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 17;i<16 ;i=i+16) begin
             assign gnpg_level4[i+0]=gnpg_level3[i+0];  
             assign pp_level4[i+0]=pp_level3[i+0];            
         end
       endgenerate
       
        generate
             for (i = 9;i<16 ;i=i+16) begin
             assign gnpg_level4[i+2]=gnpg_level3[i+2]|pp_level3[i+2]&gnpg_level3[i-2];  
             assign pp_level4[i+2]=pp_level3[i+2]&pp_level3[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 17;i<16 ;i=i+16) begin
             assign gnpg_level4[i+2]=gnpg_level3[i+2];  
             assign pp_level4[i+2]=pp_level3[i+2];            
         end
       endgenerate
       
        generate
             for (i = 9;i<16 ;i=i+16) begin
             assign gnpg_level4[i+4]=gnpg_level3[i+4]|pp_level3[i+4]&gnpg_level3[i-2];  
             assign pp_level4[i+4]=pp_level3[i+4]&pp_level3[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 17;i<16 ;i=i+16) begin
             assign gnpg_level4[i+4]=gnpg_level3[i+4];  
             assign pp_level4[i+4]=pp_level3[i+4];            
         end
       endgenerate
       
        generate
             for (i = 9;i<16 ;i=i+16) begin
             assign gnpg_level4[i+6]=gnpg_level3[i+6]|pp_level3[i+6]&gnpg_level3[i-2];  
             assign pp_level4[i+6]=pp_level3[i+6]&pp_level3[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 17;i<16 ;i=i+16) begin
             assign gnpg_level4[i+6]=gnpg_level3[i+6];  
             assign pp_level4[i+6]=pp_level3[i+6];            
         end
       endgenerate
       
         generate
             for (i = 0;i<9 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 9+1;i<9+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 11+1;i<11+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 13+1;i<13+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
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

