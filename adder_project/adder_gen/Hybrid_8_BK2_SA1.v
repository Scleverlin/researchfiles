
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_8_BK2_SA1_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_8_BK2_SA1 u0 (a,b,cin_r,sum_w,cout_w);
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

module pg_gen_bk_sa_8 (a,b,cin,p,g);
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

module Hybrid_8_BK2_SA1 (a,b,cin,sum,cout);

input [8:1]a;
input [8:1]b;
input cin;
output [8:1]sum;
output cout;
wire [8:0]p;
wire [8:0]g;
pg_gen_bk_sa_8 pg_gen_bksa (a,b,cin,p,g);
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
             generate
              for (i = 4-1 ;i<8;i=i+4) begin
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
            endgenerate 
        generate
             for (i = 7;i<8 ;i=i+8) begin
             assign gnpg_level3[i+0]=gnpg_level2[i+0]|pp_level2[i+0]&gnpg_level2[i-4];  
             assign pp_level3[i+0]=pp_level2[i+0]&pp_level2[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 11;i<8 ;i=i+8) begin
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
    wire [7:0] gnpg_level5;  
    
    wire [2-1:0] gnpg_level4;   
    wire [2-1:0] pp_level4; 
    
assign sum[8:1]=p[8:1]^gnpg_level5[8-1:0];
assign cout =g[8]|p[8]&gnpg_level5[8-1];
assign gnpg_level5[0]=gnpg_level3[0];
assign gnpg_level5[1]=gnpg_level3[1];
assign gnpg_level5[2]=gnpg_level3[2]|pp_level3[2]&gnpg_level3[1];
assign gnpg_level5[7]=gnpg_level3[7];
generate 
   for (i = 1;i<(8-2)/2 ;i=i+1 ) begin
      assign gnpg_level5[2*i+1]=gnpg_level4[i-1];
   end
endgenerate
generate 
   for (i = 2;i<8/2 ;i=i+1 ) begin
      assign gnpg_level5[2*i]=gnpg_level3[2*i]|pp_level3[2*i]&gnpg_level4[i-2];
   end
endgenerate

//1111
assign gnpg_level4[0]=gnpg_level3[3];
assign gnpg_level4[1]=gnpg_level3[2+3]|pp_level3[2+3]&gnpg_level3[2+3-2];
generate 
//1111
   for (i = 3;i<2;i=i+2 ) begin
      assign gnpg_level4[i]=gnpg_level3[2*i+3]|pp_level3[2*i+3]&gnpg_level3[2*i+3-2];
   end
endgenerate
generate 
//1111
   for (i = 2;i<2 ;i=i+2 ) begin
      assign gnpg_level4[i]=gnpg_level3[2*i+3];
   end
endgenerate

endmodule

