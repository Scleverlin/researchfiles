
module Hybrid_64_BK1_KL5_Fanout8_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_64_BK1_KL5_Fanout8 u0 (a,b,cin_r,sum_w,cout_w);
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

module pg_gen_bk_kl_64 (a,b,cin,p,g);
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

module Hybrid_64_BK1_KL5_Fanout8 (a,b,cin,sum,cout);

input [64:1]a;
input [64:1]b;
input cin;
output [64:1]sum;
output cout;
wire [64:0]p;
wire [64:0]g;
pg_gen_bk_kl_64 pg_gen_bkkl (a,b,cin,p,g);
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
               for (i = 1;i<64 ;i=i+2 ) begin
                assign gnpg_level1[i]=g[i]|p[i]&g[i-1];  
                assign pp_level1[i]=p[i]&p[i-1];     
               end
            endgenerate
             generate
                for (i = 0;i<64 ;i=i+2) begin
                 assign gnpg_level1[i]=g[i];  
                 assign pp_level1[i]=p[i];     
               end
            endgenerate
          // pre process continue last 3
           generate
            for (i = 2;i<2*8 ;i=i+2) begin
              assign  gnpg_level2[1+i]=gnpg_level1[1+i]|pp_level1[1+i]&gnpg_level1[i+1-2]; 
              assign  pp_level2[1+i]=pp_level1[1+i]&pp_level1[i+1-2];
            end
           endgenerate
          
          // pre process continue last 3
           generate
            for (i = 2;i<2*8 ;i=i+2) begin
              assign  gnpg_level2[17+i]=gnpg_level1[17+i]|pp_level1[17+i]&gnpg_level1[i+17-2]; 
              assign  pp_level2[17+i]=pp_level1[17+i]&pp_level1[i+17-2];
            end
           endgenerate
          
          // pre process continue last 3
           generate
            for (i = 2;i<2*8 ;i=i+2) begin
              assign  gnpg_level2[33+i]=gnpg_level1[33+i]|pp_level1[33+i]&gnpg_level1[i+33-2]; 
              assign  pp_level2[33+i]=pp_level1[33+i]&pp_level1[i+33-2];
            end
           endgenerate
          
          // pre process continue last 3
           generate
            for (i = 2;i<2*8 ;i=i+2) begin
              assign  gnpg_level2[49+i]=gnpg_level1[49+i]|pp_level1[49+i]&gnpg_level1[i+49-2]; 
              assign  pp_level2[49+i]=pp_level1[49+i]&pp_level1[i+49-2];
            end
           endgenerate
          
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[17+i]=gnpg_level1[17+i]; 
              assign  pp_level2[17+i]=pp_level1[17+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[33+i]=gnpg_level1[33+i]; 
              assign  pp_level2[33+i]=pp_level1[33+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[49+i]=gnpg_level1[49+i]; 
              assign  pp_level2[49+i]=pp_level1[49+i];
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
          
          // space between point and next point
            generate
            for (i = 15+1;i<15+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 17+1;i<17+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 19+1;i<19+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 21+1;i<21+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 23+1;i<23+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 25+1;i<25+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 27+1;i<27+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 29+1;i<29+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 31+1;i<31+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 33+1;i<33+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 35+1;i<35+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 37+1;i<37+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 39+1;i<39+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 41+1;i<41+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 43+1;i<43+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 45+1;i<45+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 47+1;i<47+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 49+1;i<49+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 51+1;i<51+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 53+1;i<53+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 55+1;i<55+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 57+1;i<57+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 59+1;i<59+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 61+1;i<61+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // pre process continue last 2
           generate
            for (i = 4;i<2*8 ;i=i+2) begin
              assign  gnpg_level3[1+i]=gnpg_level2[1+i]|pp_level2[1+i]&gnpg_level2[i+1-4]; 
              assign  pp_level3[1+i]=pp_level2[1+i]&pp_level2[i+1-4];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 4;i<2*8 ;i=i+2) begin
              assign  gnpg_level3[17+i]=gnpg_level2[17+i]|pp_level2[17+i]&gnpg_level2[i+17-4]; 
              assign  pp_level3[17+i]=pp_level2[17+i]&pp_level2[i+17-4];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 4;i<2*8 ;i=i+2) begin
              assign  gnpg_level3[33+i]=gnpg_level2[33+i]|pp_level2[33+i]&gnpg_level2[i+33-4]; 
              assign  pp_level3[33+i]=pp_level2[33+i]&pp_level2[i+33-4];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 4;i<2*8 ;i=i+2) begin
              assign  gnpg_level3[49+i]=gnpg_level2[49+i]|pp_level2[49+i]&gnpg_level2[i+49-4]; 
              assign  pp_level3[49+i]=pp_level2[49+i]&pp_level2[i+49-4];
            end
           endgenerate
          
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[17+i]=gnpg_level2[17+i]; 
              assign  pp_level3[17+i]=pp_level2[17+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[33+i]=gnpg_level2[33+i]; 
              assign  pp_level3[33+i]=pp_level2[33+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[49+i]=gnpg_level2[49+i]; 
              assign  pp_level3[49+i]=pp_level2[49+i];
            end 
            endgenerate
          // before start point
            generate
            for (i = 0;i<5 ;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 5+1;i<5+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 7+1;i<7+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 9+1;i<9+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 11+1;i<11+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 13+1;i<13+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 15+1;i<15+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 17+1;i<17+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 19+1;i<19+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 21+1;i<21+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 23+1;i<23+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 25+1;i<25+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 27+1;i<27+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 29+1;i<29+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 31+1;i<31+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 33+1;i<33+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 35+1;i<35+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 37+1;i<37+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 39+1;i<39+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 41+1;i<41+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 43+1;i<43+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 45+1;i<45+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 47+1;i<47+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 49+1;i<49+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 51+1;i<51+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 53+1;i<53+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 55+1;i<55+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 57+1;i<57+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 59+1;i<59+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 61+1;i<61+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // pre process continue last 1
           generate
            for (i = 8;i<2*8 ;i=i+2) begin
              assign  gnpg_level4[1+i]=gnpg_level3[1+i]|pp_level3[1+i]&gnpg_level3[i+1-8]; 
              assign  pp_level4[1+i]=pp_level3[1+i]&pp_level3[i+1-8];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 8;i<2*8 ;i=i+2) begin
              assign  gnpg_level4[17+i]=gnpg_level3[17+i]|pp_level3[17+i]&gnpg_level3[i+17-8]; 
              assign  pp_level4[17+i]=pp_level3[17+i]&pp_level3[i+17-8];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 8;i<2*8 ;i=i+2) begin
              assign  gnpg_level4[33+i]=gnpg_level3[33+i]|pp_level3[33+i]&gnpg_level3[i+33-8]; 
              assign  pp_level4[33+i]=pp_level3[33+i]&pp_level3[i+33-8];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 8;i<2*8 ;i=i+2) begin
              assign  gnpg_level4[49+i]=gnpg_level3[49+i]|pp_level3[49+i]&gnpg_level3[i+49-8]; 
              assign  pp_level4[49+i]=pp_level3[49+i]&pp_level3[i+49-8];
            end
           endgenerate
          
         // strange part
            generate
            for (i = 0;i<8 ;i=i+2 ) begin
              assign  gnpg_level4[17+i]=gnpg_level3[17+i]; 
              assign  pp_level4[17+i]=pp_level3[17+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<8 ;i=i+2 ) begin
              assign  gnpg_level4[33+i]=gnpg_level3[33+i]; 
              assign  pp_level4[33+i]=pp_level3[33+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<8 ;i=i+2 ) begin
              assign  gnpg_level4[49+i]=gnpg_level3[49+i]; 
              assign  pp_level4[49+i]=pp_level3[49+i];
            end 
            endgenerate
          // before start point
            generate
            for (i = 0;i<9 ;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 9+1;i<9+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 11+1;i<11+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 13+1;i<13+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 15+1;i<15+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 17+1;i<17+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 19+1;i<19+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 21+1;i<21+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 23+1;i<23+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 25+1;i<25+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 27+1;i<27+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 29+1;i<29+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 31+1;i<31+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 33+1;i<33+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 35+1;i<35+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 37+1;i<37+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 39+1;i<39+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 41+1;i<41+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 43+1;i<43+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 45+1;i<45+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 47+1;i<47+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 49+1;i<49+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 51+1;i<51+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 53+1;i<53+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 55+1;i<55+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 57+1;i<57+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 59+1;i<59+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 61+1;i<61+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
          // old pass
         generate
          for (i = 0;i<17 ;i=i+1) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 17;i<2*8+17 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[17-2];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[17-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 33;i<2*8+33 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[33-2];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[33-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 49;i<2*8+49 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[49-2];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[49-2];
           end 
         endgenerate
         
            generate
            for (i = 17+1;i<17+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 19+1;i<19+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 21+1;i<21+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 23+1;i<23+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 25+1;i<25+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 27+1;i<27+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 29+1;i<29+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 31+1;i<31+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 33+1;i<33+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 35+1;i<35+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 37+1;i<37+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 39+1;i<39+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 41+1;i<41+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 43+1;i<43+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 45+1;i<45+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 47+1;i<47+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 49+1;i<49+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 51+1;i<51+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 53+1;i<53+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 55+1;i<55+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 57+1;i<57+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 59+1;i<59+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 61+1;i<61+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
          // old pass
         generate
          for (i = 0;i<33 ;i=i+1) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 33;i<2*8+33 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[33-2];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[33-2];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 49;i<2*8+49 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[49-2];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[49-2];
           end 
         endgenerate
         
            generate
            for (i = 33+1;i<33+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 35+1;i<35+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 37+1;i<37+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 39+1;i<39+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 41+1;i<41+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 43+1;i<43+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 45+1;i<45+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 47+1;i<47+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 49+1;i<49+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 51+1;i<51+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 53+1;i<53+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 55+1;i<55+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 57+1;i<57+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 59+1;i<59+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 61+1;i<61+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
           
wire [63:0] gnpg_level7;
assign gnpg_level7[0]=gnpg_level6[0];
assign gnpg_level7[64-1]=gnpg_level6[64-1];

generate
    for (i = 0 ;i<64/2;i=i+1) begin
      assign gnpg_level7[2*i]=gnpg_level6[2*i]|pp_level6[2*i]&gnpg_level6[2*i-1];
      assign gnpg_level7[2*i-1]=gnpg_level6[2*i-1];
   end
 endgenerate   
assign sum[64:1]=p[64:1]^gnpg_level7[64-1:0];
assign cout =g[64]|p[64]&gnpg_level7[64-1];
   
endmodule

