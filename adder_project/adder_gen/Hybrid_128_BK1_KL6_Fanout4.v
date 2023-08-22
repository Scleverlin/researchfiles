
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_128_BK1_KL6_Fanout4_top (a,b,cin,sum,cout,clk,rst);
input [127:0]a;
input [127:0]b;
input cin;
output reg [127:0]sum;
output reg cout;
input clk;
input rst;
wire [127:0] sum_w;
wire cout_w;
reg cin_r;
Hybrid_128_BK1_KL6_Fanout4 u0 (a,b,cin_r,sum_w,cout_w);
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

module pg_gen_bk_kl_128 (a,b,cin,p,g);
input [127:0]a;
input [127:0]b;
input cin;
output [128:0]p;
output [128:0]g;
assign g[0]=cin;
assign p[0]=0;
assign p[128:1]=a^b;
assign g[128:1]=a&b;
endmodule

module Hybrid_128_BK1_KL6_Fanout4 (a,b,cin,sum,cout);

input [128:1]a;
input [128:1]b;
input cin;
output [128:1]sum;
output cout;
wire [128:0]p;
wire [128:0]g;
pg_gen_bk_kl_128 pg_gen_bkkl (a,b,cin,p,g);
genvar i;

wire [127:0] gnpg_level1;
wire [127:0] pp_level1;
wire [127:0] gnpg_level2;
wire [127:0] pp_level2;
wire [127:0] gnpg_level3;
wire [127:0] pp_level3;
wire [127:0] gnpg_level4;
wire [127:0] pp_level4;
wire [127:0] gnpg_level5;
wire [127:0] pp_level5;
wire [127:0] gnpg_level6;
wire [127:0] pp_level6;
wire [127:0] gnpg_level7;
wire [127:0] pp_level7;
             generate
               for (i = 1;i<128 ;i=i+2 ) begin
                assign gnpg_level1[i]=g[i]|p[i]&g[i-1];  
                assign pp_level1[i]=p[i]&p[i-1];     
               end
            endgenerate
             generate
                for (i = 0;i<128 ;i=i+2) begin
                 assign gnpg_level1[i]=g[i];  
                 assign pp_level1[i]=p[i];     
               end
            endgenerate
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[1+i]=gnpg_level1[1+i]|pp_level1[1+i]&gnpg_level1[i+1-2]; 
              assign  pp_level2[1+i]=pp_level1[1+i]&pp_level1[i+1-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[9+i]=gnpg_level1[9+i]|pp_level1[9+i]&gnpg_level1[i+9-2]; 
              assign  pp_level2[9+i]=pp_level1[9+i]&pp_level1[i+9-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[17+i]=gnpg_level1[17+i]|pp_level1[17+i]&gnpg_level1[i+17-2]; 
              assign  pp_level2[17+i]=pp_level1[17+i]&pp_level1[i+17-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[25+i]=gnpg_level1[25+i]|pp_level1[25+i]&gnpg_level1[i+25-2]; 
              assign  pp_level2[25+i]=pp_level1[25+i]&pp_level1[i+25-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[33+i]=gnpg_level1[33+i]|pp_level1[33+i]&gnpg_level1[i+33-2]; 
              assign  pp_level2[33+i]=pp_level1[33+i]&pp_level1[i+33-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[41+i]=gnpg_level1[41+i]|pp_level1[41+i]&gnpg_level1[i+41-2]; 
              assign  pp_level2[41+i]=pp_level1[41+i]&pp_level1[i+41-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[49+i]=gnpg_level1[49+i]|pp_level1[49+i]&gnpg_level1[i+49-2]; 
              assign  pp_level2[49+i]=pp_level1[49+i]&pp_level1[i+49-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[57+i]=gnpg_level1[57+i]|pp_level1[57+i]&gnpg_level1[i+57-2]; 
              assign  pp_level2[57+i]=pp_level1[57+i]&pp_level1[i+57-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[65+i]=gnpg_level1[65+i]|pp_level1[65+i]&gnpg_level1[i+65-2]; 
              assign  pp_level2[65+i]=pp_level1[65+i]&pp_level1[i+65-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[73+i]=gnpg_level1[73+i]|pp_level1[73+i]&gnpg_level1[i+73-2]; 
              assign  pp_level2[73+i]=pp_level1[73+i]&pp_level1[i+73-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[81+i]=gnpg_level1[81+i]|pp_level1[81+i]&gnpg_level1[i+81-2]; 
              assign  pp_level2[81+i]=pp_level1[81+i]&pp_level1[i+81-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[89+i]=gnpg_level1[89+i]|pp_level1[89+i]&gnpg_level1[i+89-2]; 
              assign  pp_level2[89+i]=pp_level1[89+i]&pp_level1[i+89-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[97+i]=gnpg_level1[97+i]|pp_level1[97+i]&gnpg_level1[i+97-2]; 
              assign  pp_level2[97+i]=pp_level1[97+i]&pp_level1[i+97-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[105+i]=gnpg_level1[105+i]|pp_level1[105+i]&gnpg_level1[i+105-2]; 
              assign  pp_level2[105+i]=pp_level1[105+i]&pp_level1[i+105-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[113+i]=gnpg_level1[113+i]|pp_level1[113+i]&gnpg_level1[i+113-2]; 
              assign  pp_level2[113+i]=pp_level1[113+i]&pp_level1[i+113-2];
            end
           endgenerate
          
          // pre process continue last 2
           generate
            for (i = 2;i<2*4 ;i=i+2) begin
              assign  gnpg_level2[121+i]=gnpg_level1[121+i]|pp_level1[121+i]&gnpg_level1[i+121-2]; 
              assign  pp_level2[121+i]=pp_level1[121+i]&pp_level1[i+121-2];
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
              assign  gnpg_level2[17+i]=gnpg_level1[17+i]; 
              assign  pp_level2[17+i]=pp_level1[17+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[25+i]=gnpg_level1[25+i]; 
              assign  pp_level2[25+i]=pp_level1[25+i];
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
              assign  gnpg_level2[41+i]=gnpg_level1[41+i]; 
              assign  pp_level2[41+i]=pp_level1[41+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[49+i]=gnpg_level1[49+i]; 
              assign  pp_level2[49+i]=pp_level1[49+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[57+i]=gnpg_level1[57+i]; 
              assign  pp_level2[57+i]=pp_level1[57+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[65+i]=gnpg_level1[65+i]; 
              assign  pp_level2[65+i]=pp_level1[65+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[73+i]=gnpg_level1[73+i]; 
              assign  pp_level2[73+i]=pp_level1[73+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[81+i]=gnpg_level1[81+i]; 
              assign  pp_level2[81+i]=pp_level1[81+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[89+i]=gnpg_level1[89+i]; 
              assign  pp_level2[89+i]=pp_level1[89+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[97+i]=gnpg_level1[97+i]; 
              assign  pp_level2[97+i]=pp_level1[97+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[105+i]=gnpg_level1[105+i]; 
              assign  pp_level2[105+i]=pp_level1[105+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[113+i]=gnpg_level1[113+i]; 
              assign  pp_level2[113+i]=pp_level1[113+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<2 ;i=i+2 ) begin
              assign  gnpg_level2[121+i]=gnpg_level1[121+i]; 
              assign  pp_level2[121+i]=pp_level1[121+i];
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
          
          // space between point and next point
            generate
            for (i = 63+1;i<63+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 65+1;i<65+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 67+1;i<67+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 69+1;i<69+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 71+1;i<71+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 73+1;i<73+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 75+1;i<75+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 77+1;i<77+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 79+1;i<79+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 81+1;i<81+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 83+1;i<83+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 85+1;i<85+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 87+1;i<87+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 89+1;i<89+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 91+1;i<91+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 93+1;i<93+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 95+1;i<95+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 97+1;i<97+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 99+1;i<99+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 101+1;i<101+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 103+1;i<103+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 105+1;i<105+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 107+1;i<107+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 109+1;i<109+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 111+1;i<111+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 113+1;i<113+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 115+1;i<115+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 117+1;i<117+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 119+1;i<119+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 121+1;i<121+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 123+1;i<123+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 125+1;i<125+2;i=i+1 ) begin
              assign  gnpg_level2[i]=gnpg_level1[i]; 
              assign  pp_level2[i]=pp_level1[i];
            end 
            endgenerate  
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[1+i]=gnpg_level2[1+i]|pp_level2[1+i]&gnpg_level2[i+1-4]; 
              assign  pp_level3[1+i]=pp_level2[1+i]&pp_level2[i+1-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[9+i]=gnpg_level2[9+i]|pp_level2[9+i]&gnpg_level2[i+9-4]; 
              assign  pp_level3[9+i]=pp_level2[9+i]&pp_level2[i+9-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[17+i]=gnpg_level2[17+i]|pp_level2[17+i]&gnpg_level2[i+17-4]; 
              assign  pp_level3[17+i]=pp_level2[17+i]&pp_level2[i+17-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[25+i]=gnpg_level2[25+i]|pp_level2[25+i]&gnpg_level2[i+25-4]; 
              assign  pp_level3[25+i]=pp_level2[25+i]&pp_level2[i+25-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[33+i]=gnpg_level2[33+i]|pp_level2[33+i]&gnpg_level2[i+33-4]; 
              assign  pp_level3[33+i]=pp_level2[33+i]&pp_level2[i+33-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[41+i]=gnpg_level2[41+i]|pp_level2[41+i]&gnpg_level2[i+41-4]; 
              assign  pp_level3[41+i]=pp_level2[41+i]&pp_level2[i+41-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[49+i]=gnpg_level2[49+i]|pp_level2[49+i]&gnpg_level2[i+49-4]; 
              assign  pp_level3[49+i]=pp_level2[49+i]&pp_level2[i+49-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[57+i]=gnpg_level2[57+i]|pp_level2[57+i]&gnpg_level2[i+57-4]; 
              assign  pp_level3[57+i]=pp_level2[57+i]&pp_level2[i+57-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[65+i]=gnpg_level2[65+i]|pp_level2[65+i]&gnpg_level2[i+65-4]; 
              assign  pp_level3[65+i]=pp_level2[65+i]&pp_level2[i+65-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[73+i]=gnpg_level2[73+i]|pp_level2[73+i]&gnpg_level2[i+73-4]; 
              assign  pp_level3[73+i]=pp_level2[73+i]&pp_level2[i+73-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[81+i]=gnpg_level2[81+i]|pp_level2[81+i]&gnpg_level2[i+81-4]; 
              assign  pp_level3[81+i]=pp_level2[81+i]&pp_level2[i+81-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[89+i]=gnpg_level2[89+i]|pp_level2[89+i]&gnpg_level2[i+89-4]; 
              assign  pp_level3[89+i]=pp_level2[89+i]&pp_level2[i+89-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[97+i]=gnpg_level2[97+i]|pp_level2[97+i]&gnpg_level2[i+97-4]; 
              assign  pp_level3[97+i]=pp_level2[97+i]&pp_level2[i+97-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[105+i]=gnpg_level2[105+i]|pp_level2[105+i]&gnpg_level2[i+105-4]; 
              assign  pp_level3[105+i]=pp_level2[105+i]&pp_level2[i+105-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[113+i]=gnpg_level2[113+i]|pp_level2[113+i]&gnpg_level2[i+113-4]; 
              assign  pp_level3[113+i]=pp_level2[113+i]&pp_level2[i+113-4];
            end
           endgenerate
          
          // pre process continue last 1
           generate
            for (i = 4;i<2*4 ;i=i+2) begin
              assign  gnpg_level3[121+i]=gnpg_level2[121+i]|pp_level2[121+i]&gnpg_level2[i+121-4]; 
              assign  pp_level3[121+i]=pp_level2[121+i]&pp_level2[i+121-4];
            end
           endgenerate
          
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[9+i]=gnpg_level2[9+i]; 
              assign  pp_level3[9+i]=pp_level2[9+i];
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
              assign  gnpg_level3[25+i]=gnpg_level2[25+i]; 
              assign  pp_level3[25+i]=pp_level2[25+i];
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
              assign  gnpg_level3[41+i]=gnpg_level2[41+i]; 
              assign  pp_level3[41+i]=pp_level2[41+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[49+i]=gnpg_level2[49+i]; 
              assign  pp_level3[49+i]=pp_level2[49+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[57+i]=gnpg_level2[57+i]; 
              assign  pp_level3[57+i]=pp_level2[57+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[65+i]=gnpg_level2[65+i]; 
              assign  pp_level3[65+i]=pp_level2[65+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[73+i]=gnpg_level2[73+i]; 
              assign  pp_level3[73+i]=pp_level2[73+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[81+i]=gnpg_level2[81+i]; 
              assign  pp_level3[81+i]=pp_level2[81+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[89+i]=gnpg_level2[89+i]; 
              assign  pp_level3[89+i]=pp_level2[89+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[97+i]=gnpg_level2[97+i]; 
              assign  pp_level3[97+i]=pp_level2[97+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[105+i]=gnpg_level2[105+i]; 
              assign  pp_level3[105+i]=pp_level2[105+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[113+i]=gnpg_level2[113+i]; 
              assign  pp_level3[113+i]=pp_level2[113+i];
            end 
            endgenerate
         // strange part
            generate
            for (i = 0;i<4 ;i=i+2 ) begin
              assign  gnpg_level3[121+i]=gnpg_level2[121+i]; 
              assign  pp_level3[121+i]=pp_level2[121+i];
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
          
          // space between point and next point
            generate
            for (i = 63+1;i<63+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 65+1;i<65+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 67+1;i<67+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 69+1;i<69+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 71+1;i<71+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 73+1;i<73+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 75+1;i<75+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 77+1;i<77+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 79+1;i<79+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 81+1;i<81+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 83+1;i<83+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 85+1;i<85+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 87+1;i<87+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 89+1;i<89+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 91+1;i<91+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 93+1;i<93+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 95+1;i<95+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 97+1;i<97+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 99+1;i<99+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 101+1;i<101+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 103+1;i<103+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 105+1;i<105+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 107+1;i<107+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 109+1;i<109+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 111+1;i<111+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 113+1;i<113+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 115+1;i<115+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 117+1;i<117+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 119+1;i<119+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 121+1;i<121+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 123+1;i<123+2;i=i+1 ) begin
              assign  gnpg_level3[i]=gnpg_level2[i]; 
              assign  pp_level3[i]=pp_level2[i];
            end 
            endgenerate  
          
          // space between point and next point
            generate
            for (i = 125+1;i<125+2;i=i+1 ) begin
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
           for (i = 9;i<2*4+9 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[9+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[9+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 17;i<2*4+17 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[17+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[17+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 25;i<2*4+25 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[25+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[25+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 33;i<2*4+33 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[33+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[33+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 41;i<2*4+41 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[41+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[41+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 49;i<2*4+49 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[49+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[49+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 57;i<2*4+57 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[57+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[57+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 65;i<2*4+65 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[65+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[65+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 73;i<2*4+73 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[73+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[73+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 81;i<2*4+81 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[81+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[81+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 89;i<2*4+89 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[89+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[89+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 97;i<2*4+97 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[97+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[97+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 105;i<2*4+105 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[105+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[105+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 113;i<2*4+113 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[113+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[113+2*4-2-2*4];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 121;i<2*4+121 ;i=i+2) begin
              assign  gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[121+2*4-2-2*4];
              assign  pp_level4[i]=pp_level3[i]&pp_level3[121+2*4-2-2*4];
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
          
            generate
            for (i = 15+1;i<15+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 17+1;i<17+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 19+1;i<19+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 21+1;i<21+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 23+1;i<23+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 25+1;i<25+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 27+1;i<27+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 29+1;i<29+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 31+1;i<31+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 33+1;i<33+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 35+1;i<35+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 37+1;i<37+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 39+1;i<39+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 41+1;i<41+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 43+1;i<43+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 45+1;i<45+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 47+1;i<47+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 49+1;i<49+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 51+1;i<51+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 53+1;i<53+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 55+1;i<55+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 57+1;i<57+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 59+1;i<59+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 61+1;i<61+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 63+1;i<63+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 65+1;i<65+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 67+1;i<67+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 69+1;i<69+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 71+1;i<71+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 73+1;i<73+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 75+1;i<75+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 77+1;i<77+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 79+1;i<79+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 81+1;i<81+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 83+1;i<83+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 85+1;i<85+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 87+1;i<87+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 89+1;i<89+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 91+1;i<91+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 93+1;i<93+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 95+1;i<95+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 97+1;i<97+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 99+1;i<99+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 101+1;i<101+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 103+1;i<103+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 105+1;i<105+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 107+1;i<107+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 109+1;i<109+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 111+1;i<111+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 113+1;i<113+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 115+1;i<115+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 117+1;i<117+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 119+1;i<119+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 121+1;i<121+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 123+1;i<123+2;i=i+1 ) begin
              assign  gnpg_level4[i]=gnpg_level3[i]; 
              assign  pp_level4[i]=pp_level3[i];
            end 
            endgenerate  
          
            generate
            for (i = 125+1;i<125+2;i=i+1 ) begin
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
           for (i = 17;i<2*4+17 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[17+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[17+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 25;i<2*4+25 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[25+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[25+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 33;i<2*4+33 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[33+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[33+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 41;i<2*4+41 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[41+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[41+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 49;i<2*4+49 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[49+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[49+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 57;i<2*4+57 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[57+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[57+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 65;i<2*4+65 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[65+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[65+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 73;i<2*4+73 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[73+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[73+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 81;i<2*4+81 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[81+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[81+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 89;i<2*4+89 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[89+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[89+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 97;i<2*4+97 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[97+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[97+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 105;i<2*4+105 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[105+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[105+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 113;i<2*4+113 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[113+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[113+2*4-2-2*8];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 121;i<2*4+121 ;i=i+2) begin
              assign  gnpg_level5[i]=gnpg_level4[i]|pp_level4[i]&gnpg_level4[121+2*4-2-2*8];
              assign  pp_level5[i]=pp_level4[i]&pp_level4[121+2*4-2-2*8];
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
          
            generate
            for (i = 63+1;i<63+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 65+1;i<65+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 67+1;i<67+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 69+1;i<69+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 71+1;i<71+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 73+1;i<73+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 75+1;i<75+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 77+1;i<77+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 79+1;i<79+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 81+1;i<81+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 83+1;i<83+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 85+1;i<85+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 87+1;i<87+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 89+1;i<89+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 91+1;i<91+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 93+1;i<93+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 95+1;i<95+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 97+1;i<97+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 99+1;i<99+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 101+1;i<101+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 103+1;i<103+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 105+1;i<105+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 107+1;i<107+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 109+1;i<109+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 111+1;i<111+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 113+1;i<113+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 115+1;i<115+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 117+1;i<117+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 119+1;i<119+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 121+1;i<121+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 123+1;i<123+2;i=i+1 ) begin
              assign  gnpg_level5[i]=gnpg_level4[i]; 
              assign  pp_level5[i]=pp_level4[i];
            end 
            endgenerate  
          
            generate
            for (i = 125+1;i<125+2;i=i+1 ) begin
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
           for (i = 33;i<2*4+33 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[33+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[33+2*4-2-2*16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 41;i<2*4+41 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[41+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[41+2*4-2-2*16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 49;i<2*4+49 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[49+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[49+2*4-2-2*16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 57;i<2*4+57 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[57+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[57+2*4-2-2*16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 65;i<2*4+65 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[65+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[65+2*4-2-2*16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 73;i<2*4+73 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[73+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[73+2*4-2-2*16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 81;i<2*4+81 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[81+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[81+2*4-2-2*16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 89;i<2*4+89 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[89+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[89+2*4-2-2*16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 97;i<2*4+97 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[97+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[97+2*4-2-2*16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 105;i<2*4+105 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[105+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[105+2*4-2-2*16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 113;i<2*4+113 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[113+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[113+2*4-2-2*16];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 121;i<2*4+121 ;i=i+2) begin
              assign  gnpg_level6[i]=gnpg_level5[i]|pp_level5[i]&gnpg_level5[121+2*4-2-2*16];
              assign  pp_level6[i]=pp_level5[i]&pp_level5[121+2*4-2-2*16];
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
          
            generate
            for (i = 63+1;i<63+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 65+1;i<65+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 67+1;i<67+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 69+1;i<69+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 71+1;i<71+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 73+1;i<73+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 75+1;i<75+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 77+1;i<77+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 79+1;i<79+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 81+1;i<81+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 83+1;i<83+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 85+1;i<85+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 87+1;i<87+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 89+1;i<89+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 91+1;i<91+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 93+1;i<93+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 95+1;i<95+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 97+1;i<97+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 99+1;i<99+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 101+1;i<101+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 103+1;i<103+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 105+1;i<105+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 107+1;i<107+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 109+1;i<109+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 111+1;i<111+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 113+1;i<113+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 115+1;i<115+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 117+1;i<117+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 119+1;i<119+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 121+1;i<121+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 123+1;i<123+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
            generate
            for (i = 125+1;i<125+2;i=i+1 ) begin
              assign  gnpg_level6[i]=gnpg_level5[i]; 
              assign  pp_level6[i]=pp_level5[i];
            end 
            endgenerate  
          
          // old pass
         generate
          for (i = 0;i<65 ;i=i+1) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
          end 
         endgenerate
         // Multiple fanout stage
         generate
           for (i = 65;i<2*4+65 ;i=i+2) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[65+2*4-2-2*32];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[65+2*4-2-2*32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 73;i<2*4+73 ;i=i+2) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[73+2*4-2-2*32];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[73+2*4-2-2*32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 81;i<2*4+81 ;i=i+2) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[81+2*4-2-2*32];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[81+2*4-2-2*32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 89;i<2*4+89 ;i=i+2) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[89+2*4-2-2*32];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[89+2*4-2-2*32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 97;i<2*4+97 ;i=i+2) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[97+2*4-2-2*32];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[97+2*4-2-2*32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 105;i<2*4+105 ;i=i+2) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[105+2*4-2-2*32];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[105+2*4-2-2*32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 113;i<2*4+113 ;i=i+2) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[113+2*4-2-2*32];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[113+2*4-2-2*32];
           end 
         endgenerate
         
         // Multiple fanout stage
         generate
           for (i = 121;i<2*4+121 ;i=i+2) begin
              assign  gnpg_level7[i]=gnpg_level6[i]|pp_level6[i]&gnpg_level6[121+2*4-2-2*32];
              assign  pp_level7[i]=pp_level6[i]&pp_level6[121+2*4-2-2*32];
           end 
         endgenerate
         
            generate
            for (i = 65+1;i<65+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 67+1;i<67+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 69+1;i<69+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 71+1;i<71+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 73+1;i<73+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 75+1;i<75+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 77+1;i<77+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 79+1;i<79+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 81+1;i<81+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 83+1;i<83+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 85+1;i<85+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 87+1;i<87+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 89+1;i<89+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 91+1;i<91+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 93+1;i<93+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 95+1;i<95+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 97+1;i<97+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 99+1;i<99+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 101+1;i<101+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 103+1;i<103+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 105+1;i<105+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 107+1;i<107+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 109+1;i<109+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 111+1;i<111+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 113+1;i<113+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 115+1;i<115+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 117+1;i<117+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 119+1;i<119+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 121+1;i<121+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 123+1;i<123+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
          
            generate
            for (i = 125+1;i<125+2;i=i+1 ) begin
              assign  gnpg_level7[i]=gnpg_level6[i]; 
              assign  pp_level7[i]=pp_level6[i];
            end 
            endgenerate  
           
wire [127:0] gnpg_level8;
assign gnpg_level8[0]=gnpg_level7[0];
assign gnpg_level8[128-1]=gnpg_level7[128-1];

generate
    for (i = 1 ;i<128/2;i=i+1) begin
      assign gnpg_level8[2*i]=gnpg_level7[2*i]|pp_level7[2*i]&gnpg_level7[2*i-1];
      assign gnpg_level8[2*i-1]=gnpg_level7[2*i-1];
   end
 endgenerate   
assign sum[128:1]=p[128:1]^gnpg_level8[128-1:0];
assign cout =g[128]|p[128]&gnpg_level8[128-1];
   
endmodule

