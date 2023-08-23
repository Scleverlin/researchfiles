
/* verilator lint_off UNUSEDSIGNAL */


module pg_gen_bk_sa_128 (a,b,cin,p,g);
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

module Hybrid_128_BK1_SA6 (a,b,cin,sum,cout);

input [128:1]a;
input [128:1]b;
input cin;
output [128:1]sum;
output cout;
wire [128:0]p;
wire [128:0]g;
pg_gen_bk_sa_128 pg_gen_bksa (a,b,cin,p,g);
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
        generate
             for (i = 3;i<128 ;i=i+4) begin
             assign gnpg_level2[i+0]=gnpg_level1[i+0]|pp_level1[i+0]&gnpg_level1[i-2];  
             assign pp_level2[i+0]=pp_level1[i+0]&pp_level1[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 5;i<128 ;i=i+4) begin
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
         //k
         generate
             for (i = 15+1;i<15+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 17+1;i<17+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 19+1;i<19+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 21+1;i<21+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 23+1;i<23+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 25+1;i<25+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 27+1;i<27+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 29+1;i<29+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 31+1;i<31+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 33+1;i<33+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 35+1;i<35+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 37+1;i<37+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 39+1;i<39+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 41+1;i<41+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 43+1;i<43+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 45+1;i<45+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 47+1;i<47+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 49+1;i<49+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 51+1;i<51+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 53+1;i<53+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 55+1;i<55+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 57+1;i<57+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 59+1;i<59+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 61+1;i<61+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 63+1;i<63+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 65+1;i<65+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 67+1;i<67+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 69+1;i<69+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 71+1;i<71+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 73+1;i<73+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 75+1;i<75+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 77+1;i<77+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 79+1;i<79+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 81+1;i<81+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 83+1;i<83+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 85+1;i<85+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 87+1;i<87+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 89+1;i<89+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 91+1;i<91+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 93+1;i<93+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 95+1;i<95+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 97+1;i<97+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 99+1;i<99+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 101+1;i<101+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 103+1;i<103+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 105+1;i<105+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 107+1;i<107+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 109+1;i<109+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 111+1;i<111+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 113+1;i<113+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 115+1;i<115+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 117+1;i<117+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 119+1;i<119+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 121+1;i<121+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 123+1;i<123+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 125+1;i<125+2 ;i=i+1) begin
             assign gnpg_level2[i]=gnpg_level1[i];  
             assign pp_level2[i]=pp_level1[i];           
         end
       endgenerate 
        generate
             for (i = 5;i<128 ;i=i+8) begin
             assign gnpg_level3[i+0]=gnpg_level2[i+0]|pp_level2[i+0]&gnpg_level2[i-2];  
             assign pp_level3[i+0]=pp_level2[i+0]&pp_level2[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 9;i<128 ;i=i+8) begin
             assign gnpg_level3[i+0]=gnpg_level2[i+0];  
             assign pp_level3[i+0]=pp_level2[i+0];            
         end
       endgenerate
       
        generate
             for (i = 5;i<128 ;i=i+8) begin
             assign gnpg_level3[i+2]=gnpg_level2[i+2]|pp_level2[i+2]&gnpg_level2[i-2];  
             assign pp_level3[i+2]=pp_level2[i+2]&pp_level2[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 9;i<128 ;i=i+8) begin
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
         //k
         generate
             for (i = 15+1;i<15+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 17+1;i<17+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 19+1;i<19+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 21+1;i<21+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 23+1;i<23+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 25+1;i<25+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 27+1;i<27+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 29+1;i<29+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 31+1;i<31+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 33+1;i<33+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 35+1;i<35+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 37+1;i<37+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 39+1;i<39+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 41+1;i<41+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 43+1;i<43+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 45+1;i<45+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 47+1;i<47+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 49+1;i<49+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 51+1;i<51+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 53+1;i<53+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 55+1;i<55+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 57+1;i<57+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 59+1;i<59+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 61+1;i<61+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 63+1;i<63+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 65+1;i<65+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 67+1;i<67+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 69+1;i<69+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 71+1;i<71+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 73+1;i<73+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 75+1;i<75+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 77+1;i<77+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 79+1;i<79+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 81+1;i<81+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 83+1;i<83+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 85+1;i<85+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 87+1;i<87+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 89+1;i<89+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 91+1;i<91+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 93+1;i<93+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 95+1;i<95+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 97+1;i<97+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 99+1;i<99+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 101+1;i<101+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 103+1;i<103+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 105+1;i<105+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 107+1;i<107+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 109+1;i<109+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 111+1;i<111+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 113+1;i<113+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 115+1;i<115+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 117+1;i<117+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 119+1;i<119+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 121+1;i<121+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 123+1;i<123+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 125+1;i<125+2 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
        generate
             for (i = 9;i<128 ;i=i+16) begin
             assign gnpg_level4[i+0]=gnpg_level3[i+0]|pp_level3[i+0]&gnpg_level3[i-2];  
             assign pp_level4[i+0]=pp_level3[i+0]&pp_level3[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 17;i<128 ;i=i+16) begin
             assign gnpg_level4[i+0]=gnpg_level3[i+0];  
             assign pp_level4[i+0]=pp_level3[i+0];            
         end
       endgenerate
       
        generate
             for (i = 9;i<128 ;i=i+16) begin
             assign gnpg_level4[i+2]=gnpg_level3[i+2]|pp_level3[i+2]&gnpg_level3[i-2];  
             assign pp_level4[i+2]=pp_level3[i+2]&pp_level3[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 17;i<128 ;i=i+16) begin
             assign gnpg_level4[i+2]=gnpg_level3[i+2];  
             assign pp_level4[i+2]=pp_level3[i+2];            
         end
       endgenerate
       
        generate
             for (i = 9;i<128 ;i=i+16) begin
             assign gnpg_level4[i+4]=gnpg_level3[i+4]|pp_level3[i+4]&gnpg_level3[i-2];  
             assign pp_level4[i+4]=pp_level3[i+4]&pp_level3[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 17;i<128 ;i=i+16) begin
             assign gnpg_level4[i+4]=gnpg_level3[i+4];  
             assign pp_level4[i+4]=pp_level3[i+4];            
         end
       endgenerate
       
        generate
             for (i = 9;i<128 ;i=i+16) begin
             assign gnpg_level4[i+6]=gnpg_level3[i+6]|pp_level3[i+6]&gnpg_level3[i-2];  
             assign pp_level4[i+6]=pp_level3[i+6]&pp_level3[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 17;i<128 ;i=i+16) begin
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
         //k
         generate
             for (i = 15+1;i<15+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 17+1;i<17+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 19+1;i<19+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 21+1;i<21+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 23+1;i<23+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 25+1;i<25+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 27+1;i<27+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 29+1;i<29+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 31+1;i<31+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 33+1;i<33+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 35+1;i<35+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 37+1;i<37+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 39+1;i<39+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 41+1;i<41+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 43+1;i<43+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 45+1;i<45+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 47+1;i<47+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 49+1;i<49+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 51+1;i<51+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 53+1;i<53+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 55+1;i<55+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 57+1;i<57+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 59+1;i<59+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 61+1;i<61+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 63+1;i<63+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 65+1;i<65+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 67+1;i<67+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 69+1;i<69+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 71+1;i<71+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 73+1;i<73+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 75+1;i<75+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 77+1;i<77+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 79+1;i<79+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 81+1;i<81+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 83+1;i<83+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 85+1;i<85+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 87+1;i<87+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 89+1;i<89+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 91+1;i<91+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 93+1;i<93+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 95+1;i<95+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 97+1;i<97+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 99+1;i<99+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 101+1;i<101+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 103+1;i<103+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 105+1;i<105+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 107+1;i<107+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 109+1;i<109+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 111+1;i<111+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 113+1;i<113+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 115+1;i<115+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 117+1;i<117+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 119+1;i<119+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 121+1;i<121+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 123+1;i<123+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 125+1;i<125+2 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
        generate
             for (i = 17;i<128 ;i=i+32) begin
             assign gnpg_level5[i+0]=gnpg_level4[i+0]|pp_level4[i+0]&gnpg_level4[i-2];  
             assign pp_level5[i+0]=pp_level4[i+0]&pp_level4[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 33;i<128 ;i=i+32) begin
             assign gnpg_level5[i+0]=gnpg_level4[i+0];  
             assign pp_level5[i+0]=pp_level4[i+0];            
         end
       endgenerate
       
        generate
             for (i = 17;i<128 ;i=i+32) begin
             assign gnpg_level5[i+2]=gnpg_level4[i+2]|pp_level4[i+2]&gnpg_level4[i-2];  
             assign pp_level5[i+2]=pp_level4[i+2]&pp_level4[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 33;i<128 ;i=i+32) begin
             assign gnpg_level5[i+2]=gnpg_level4[i+2];  
             assign pp_level5[i+2]=pp_level4[i+2];            
         end
       endgenerate
       
        generate
             for (i = 17;i<128 ;i=i+32) begin
             assign gnpg_level5[i+4]=gnpg_level4[i+4]|pp_level4[i+4]&gnpg_level4[i-2];  
             assign pp_level5[i+4]=pp_level4[i+4]&pp_level4[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 33;i<128 ;i=i+32) begin
             assign gnpg_level5[i+4]=gnpg_level4[i+4];  
             assign pp_level5[i+4]=pp_level4[i+4];            
         end
       endgenerate
       
        generate
             for (i = 17;i<128 ;i=i+32) begin
             assign gnpg_level5[i+6]=gnpg_level4[i+6]|pp_level4[i+6]&gnpg_level4[i-2];  
             assign pp_level5[i+6]=pp_level4[i+6]&pp_level4[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 33;i<128 ;i=i+32) begin
             assign gnpg_level5[i+6]=gnpg_level4[i+6];  
             assign pp_level5[i+6]=pp_level4[i+6];            
         end
       endgenerate
       
        generate
             for (i = 17;i<128 ;i=i+32) begin
             assign gnpg_level5[i+8]=gnpg_level4[i+8]|pp_level4[i+8]&gnpg_level4[i-2];  
             assign pp_level5[i+8]=pp_level4[i+8]&pp_level4[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 33;i<128 ;i=i+32) begin
             assign gnpg_level5[i+8]=gnpg_level4[i+8];  
             assign pp_level5[i+8]=pp_level4[i+8];            
         end
       endgenerate
       
        generate
             for (i = 17;i<128 ;i=i+32) begin
             assign gnpg_level5[i+10]=gnpg_level4[i+10]|pp_level4[i+10]&gnpg_level4[i-2];  
             assign pp_level5[i+10]=pp_level4[i+10]&pp_level4[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 33;i<128 ;i=i+32) begin
             assign gnpg_level5[i+10]=gnpg_level4[i+10];  
             assign pp_level5[i+10]=pp_level4[i+10];            
         end
       endgenerate
       
        generate
             for (i = 17;i<128 ;i=i+32) begin
             assign gnpg_level5[i+12]=gnpg_level4[i+12]|pp_level4[i+12]&gnpg_level4[i-2];  
             assign pp_level5[i+12]=pp_level4[i+12]&pp_level4[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 33;i<128 ;i=i+32) begin
             assign gnpg_level5[i+12]=gnpg_level4[i+12];  
             assign pp_level5[i+12]=pp_level4[i+12];            
         end
       endgenerate
       
        generate
             for (i = 17;i<128 ;i=i+32) begin
             assign gnpg_level5[i+14]=gnpg_level4[i+14]|pp_level4[i+14]&gnpg_level4[i-2];  
             assign pp_level5[i+14]=pp_level4[i+14]&pp_level4[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 33;i<128 ;i=i+32) begin
             assign gnpg_level5[i+14]=gnpg_level4[i+14];  
             assign pp_level5[i+14]=pp_level4[i+14];            
         end
       endgenerate
       
         generate
             for (i = 0;i<17 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 17+1;i<17+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 19+1;i<19+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 21+1;i<21+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 23+1;i<23+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 25+1;i<25+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 27+1;i<27+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 29+1;i<29+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 31+1;i<31+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 33+1;i<33+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 35+1;i<35+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 37+1;i<37+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 39+1;i<39+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 41+1;i<41+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 43+1;i<43+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 45+1;i<45+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 47+1;i<47+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 49+1;i<49+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 51+1;i<51+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 53+1;i<53+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 55+1;i<55+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 57+1;i<57+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 59+1;i<59+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 61+1;i<61+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 63+1;i<63+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 65+1;i<65+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 67+1;i<67+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 69+1;i<69+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 71+1;i<71+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 73+1;i<73+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 75+1;i<75+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 77+1;i<77+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 79+1;i<79+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 81+1;i<81+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 83+1;i<83+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 85+1;i<85+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 87+1;i<87+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 89+1;i<89+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 91+1;i<91+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 93+1;i<93+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 95+1;i<95+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 97+1;i<97+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 99+1;i<99+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 101+1;i<101+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 103+1;i<103+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 105+1;i<105+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 107+1;i<107+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 109+1;i<109+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 111+1;i<111+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 113+1;i<113+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 115+1;i<115+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 117+1;i<117+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 119+1;i<119+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 121+1;i<121+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 123+1;i<123+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 125+1;i<125+2 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+0]=gnpg_level5[i+0]|pp_level5[i+0]&gnpg_level5[i-2];  
             assign pp_level6[i+0]=pp_level5[i+0]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+0]=gnpg_level5[i+0];  
             assign pp_level6[i+0]=pp_level5[i+0];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+2]=gnpg_level5[i+2]|pp_level5[i+2]&gnpg_level5[i-2];  
             assign pp_level6[i+2]=pp_level5[i+2]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+2]=gnpg_level5[i+2];  
             assign pp_level6[i+2]=pp_level5[i+2];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+4]=gnpg_level5[i+4]|pp_level5[i+4]&gnpg_level5[i-2];  
             assign pp_level6[i+4]=pp_level5[i+4]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+4]=gnpg_level5[i+4];  
             assign pp_level6[i+4]=pp_level5[i+4];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+6]=gnpg_level5[i+6]|pp_level5[i+6]&gnpg_level5[i-2];  
             assign pp_level6[i+6]=pp_level5[i+6]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+6]=gnpg_level5[i+6];  
             assign pp_level6[i+6]=pp_level5[i+6];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+8]=gnpg_level5[i+8]|pp_level5[i+8]&gnpg_level5[i-2];  
             assign pp_level6[i+8]=pp_level5[i+8]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+8]=gnpg_level5[i+8];  
             assign pp_level6[i+8]=pp_level5[i+8];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+10]=gnpg_level5[i+10]|pp_level5[i+10]&gnpg_level5[i-2];  
             assign pp_level6[i+10]=pp_level5[i+10]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+10]=gnpg_level5[i+10];  
             assign pp_level6[i+10]=pp_level5[i+10];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+12]=gnpg_level5[i+12]|pp_level5[i+12]&gnpg_level5[i-2];  
             assign pp_level6[i+12]=pp_level5[i+12]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+12]=gnpg_level5[i+12];  
             assign pp_level6[i+12]=pp_level5[i+12];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+14]=gnpg_level5[i+14]|pp_level5[i+14]&gnpg_level5[i-2];  
             assign pp_level6[i+14]=pp_level5[i+14]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+14]=gnpg_level5[i+14];  
             assign pp_level6[i+14]=pp_level5[i+14];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+16]=gnpg_level5[i+16]|pp_level5[i+16]&gnpg_level5[i-2];  
             assign pp_level6[i+16]=pp_level5[i+16]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+16]=gnpg_level5[i+16];  
             assign pp_level6[i+16]=pp_level5[i+16];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+18]=gnpg_level5[i+18]|pp_level5[i+18]&gnpg_level5[i-2];  
             assign pp_level6[i+18]=pp_level5[i+18]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+18]=gnpg_level5[i+18];  
             assign pp_level6[i+18]=pp_level5[i+18];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+20]=gnpg_level5[i+20]|pp_level5[i+20]&gnpg_level5[i-2];  
             assign pp_level6[i+20]=pp_level5[i+20]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+20]=gnpg_level5[i+20];  
             assign pp_level6[i+20]=pp_level5[i+20];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+22]=gnpg_level5[i+22]|pp_level5[i+22]&gnpg_level5[i-2];  
             assign pp_level6[i+22]=pp_level5[i+22]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+22]=gnpg_level5[i+22];  
             assign pp_level6[i+22]=pp_level5[i+22];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+24]=gnpg_level5[i+24]|pp_level5[i+24]&gnpg_level5[i-2];  
             assign pp_level6[i+24]=pp_level5[i+24]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+24]=gnpg_level5[i+24];  
             assign pp_level6[i+24]=pp_level5[i+24];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+26]=gnpg_level5[i+26]|pp_level5[i+26]&gnpg_level5[i-2];  
             assign pp_level6[i+26]=pp_level5[i+26]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+26]=gnpg_level5[i+26];  
             assign pp_level6[i+26]=pp_level5[i+26];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+28]=gnpg_level5[i+28]|pp_level5[i+28]&gnpg_level5[i-2];  
             assign pp_level6[i+28]=pp_level5[i+28]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+28]=gnpg_level5[i+28];  
             assign pp_level6[i+28]=pp_level5[i+28];            
         end
       endgenerate
       
        generate
             for (i = 33;i<128 ;i=i+64) begin
             assign gnpg_level6[i+30]=gnpg_level5[i+30]|pp_level5[i+30]&gnpg_level5[i-2];  
             assign pp_level6[i+30]=pp_level5[i+30]&pp_level5[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 65;i<128 ;i=i+64) begin
             assign gnpg_level6[i+30]=gnpg_level5[i+30];  
             assign pp_level6[i+30]=pp_level5[i+30];            
         end
       endgenerate
       
         generate
             for (i = 0;i<33 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 33+1;i<33+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 35+1;i<35+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 37+1;i<37+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 39+1;i<39+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 41+1;i<41+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 43+1;i<43+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 45+1;i<45+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 47+1;i<47+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 49+1;i<49+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 51+1;i<51+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 53+1;i<53+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 55+1;i<55+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 57+1;i<57+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 59+1;i<59+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 61+1;i<61+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 63+1;i<63+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 65+1;i<65+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 67+1;i<67+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 69+1;i<69+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 71+1;i<71+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 73+1;i<73+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 75+1;i<75+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 77+1;i<77+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 79+1;i<79+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 81+1;i<81+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 83+1;i<83+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 85+1;i<85+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 87+1;i<87+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 89+1;i<89+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 91+1;i<91+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 93+1;i<93+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 95+1;i<95+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 97+1;i<97+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 99+1;i<99+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 101+1;i<101+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 103+1;i<103+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 105+1;i<105+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 107+1;i<107+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 109+1;i<109+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 111+1;i<111+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 113+1;i<113+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 115+1;i<115+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 117+1;i<117+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 119+1;i<119+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 121+1;i<121+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 123+1;i<123+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 125+1;i<125+2 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+0]=gnpg_level6[i+0]|pp_level6[i+0]&gnpg_level6[i-2];  
             assign pp_level7[i+0]=pp_level6[i+0]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+0]=gnpg_level6[i+0];  
             assign pp_level7[i+0]=pp_level6[i+0];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+2]=gnpg_level6[i+2]|pp_level6[i+2]&gnpg_level6[i-2];  
             assign pp_level7[i+2]=pp_level6[i+2]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+2]=gnpg_level6[i+2];  
             assign pp_level7[i+2]=pp_level6[i+2];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+4]=gnpg_level6[i+4]|pp_level6[i+4]&gnpg_level6[i-2];  
             assign pp_level7[i+4]=pp_level6[i+4]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+4]=gnpg_level6[i+4];  
             assign pp_level7[i+4]=pp_level6[i+4];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+6]=gnpg_level6[i+6]|pp_level6[i+6]&gnpg_level6[i-2];  
             assign pp_level7[i+6]=pp_level6[i+6]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+6]=gnpg_level6[i+6];  
             assign pp_level7[i+6]=pp_level6[i+6];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+8]=gnpg_level6[i+8]|pp_level6[i+8]&gnpg_level6[i-2];  
             assign pp_level7[i+8]=pp_level6[i+8]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+8]=gnpg_level6[i+8];  
             assign pp_level7[i+8]=pp_level6[i+8];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+10]=gnpg_level6[i+10]|pp_level6[i+10]&gnpg_level6[i-2];  
             assign pp_level7[i+10]=pp_level6[i+10]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+10]=gnpg_level6[i+10];  
             assign pp_level7[i+10]=pp_level6[i+10];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+12]=gnpg_level6[i+12]|pp_level6[i+12]&gnpg_level6[i-2];  
             assign pp_level7[i+12]=pp_level6[i+12]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+12]=gnpg_level6[i+12];  
             assign pp_level7[i+12]=pp_level6[i+12];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+14]=gnpg_level6[i+14]|pp_level6[i+14]&gnpg_level6[i-2];  
             assign pp_level7[i+14]=pp_level6[i+14]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+14]=gnpg_level6[i+14];  
             assign pp_level7[i+14]=pp_level6[i+14];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+16]=gnpg_level6[i+16]|pp_level6[i+16]&gnpg_level6[i-2];  
             assign pp_level7[i+16]=pp_level6[i+16]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+16]=gnpg_level6[i+16];  
             assign pp_level7[i+16]=pp_level6[i+16];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+18]=gnpg_level6[i+18]|pp_level6[i+18]&gnpg_level6[i-2];  
             assign pp_level7[i+18]=pp_level6[i+18]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+18]=gnpg_level6[i+18];  
             assign pp_level7[i+18]=pp_level6[i+18];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+20]=gnpg_level6[i+20]|pp_level6[i+20]&gnpg_level6[i-2];  
             assign pp_level7[i+20]=pp_level6[i+20]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+20]=gnpg_level6[i+20];  
             assign pp_level7[i+20]=pp_level6[i+20];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+22]=gnpg_level6[i+22]|pp_level6[i+22]&gnpg_level6[i-2];  
             assign pp_level7[i+22]=pp_level6[i+22]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+22]=gnpg_level6[i+22];  
             assign pp_level7[i+22]=pp_level6[i+22];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+24]=gnpg_level6[i+24]|pp_level6[i+24]&gnpg_level6[i-2];  
             assign pp_level7[i+24]=pp_level6[i+24]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+24]=gnpg_level6[i+24];  
             assign pp_level7[i+24]=pp_level6[i+24];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+26]=gnpg_level6[i+26]|pp_level6[i+26]&gnpg_level6[i-2];  
             assign pp_level7[i+26]=pp_level6[i+26]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+26]=gnpg_level6[i+26];  
             assign pp_level7[i+26]=pp_level6[i+26];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+28]=gnpg_level6[i+28]|pp_level6[i+28]&gnpg_level6[i-2];  
             assign pp_level7[i+28]=pp_level6[i+28]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+28]=gnpg_level6[i+28];  
             assign pp_level7[i+28]=pp_level6[i+28];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+30]=gnpg_level6[i+30]|pp_level6[i+30]&gnpg_level6[i-2];  
             assign pp_level7[i+30]=pp_level6[i+30]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+30]=gnpg_level6[i+30];  
             assign pp_level7[i+30]=pp_level6[i+30];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+32]=gnpg_level6[i+32]|pp_level6[i+32]&gnpg_level6[i-2];  
             assign pp_level7[i+32]=pp_level6[i+32]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+32]=gnpg_level6[i+32];  
             assign pp_level7[i+32]=pp_level6[i+32];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+34]=gnpg_level6[i+34]|pp_level6[i+34]&gnpg_level6[i-2];  
             assign pp_level7[i+34]=pp_level6[i+34]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+34]=gnpg_level6[i+34];  
             assign pp_level7[i+34]=pp_level6[i+34];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+36]=gnpg_level6[i+36]|pp_level6[i+36]&gnpg_level6[i-2];  
             assign pp_level7[i+36]=pp_level6[i+36]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+36]=gnpg_level6[i+36];  
             assign pp_level7[i+36]=pp_level6[i+36];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+38]=gnpg_level6[i+38]|pp_level6[i+38]&gnpg_level6[i-2];  
             assign pp_level7[i+38]=pp_level6[i+38]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+38]=gnpg_level6[i+38];  
             assign pp_level7[i+38]=pp_level6[i+38];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+40]=gnpg_level6[i+40]|pp_level6[i+40]&gnpg_level6[i-2];  
             assign pp_level7[i+40]=pp_level6[i+40]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+40]=gnpg_level6[i+40];  
             assign pp_level7[i+40]=pp_level6[i+40];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+42]=gnpg_level6[i+42]|pp_level6[i+42]&gnpg_level6[i-2];  
             assign pp_level7[i+42]=pp_level6[i+42]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+42]=gnpg_level6[i+42];  
             assign pp_level7[i+42]=pp_level6[i+42];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+44]=gnpg_level6[i+44]|pp_level6[i+44]&gnpg_level6[i-2];  
             assign pp_level7[i+44]=pp_level6[i+44]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+44]=gnpg_level6[i+44];  
             assign pp_level7[i+44]=pp_level6[i+44];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+46]=gnpg_level6[i+46]|pp_level6[i+46]&gnpg_level6[i-2];  
             assign pp_level7[i+46]=pp_level6[i+46]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+46]=gnpg_level6[i+46];  
             assign pp_level7[i+46]=pp_level6[i+46];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+48]=gnpg_level6[i+48]|pp_level6[i+48]&gnpg_level6[i-2];  
             assign pp_level7[i+48]=pp_level6[i+48]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+48]=gnpg_level6[i+48];  
             assign pp_level7[i+48]=pp_level6[i+48];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+50]=gnpg_level6[i+50]|pp_level6[i+50]&gnpg_level6[i-2];  
             assign pp_level7[i+50]=pp_level6[i+50]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+50]=gnpg_level6[i+50];  
             assign pp_level7[i+50]=pp_level6[i+50];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+52]=gnpg_level6[i+52]|pp_level6[i+52]&gnpg_level6[i-2];  
             assign pp_level7[i+52]=pp_level6[i+52]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+52]=gnpg_level6[i+52];  
             assign pp_level7[i+52]=pp_level6[i+52];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+54]=gnpg_level6[i+54]|pp_level6[i+54]&gnpg_level6[i-2];  
             assign pp_level7[i+54]=pp_level6[i+54]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+54]=gnpg_level6[i+54];  
             assign pp_level7[i+54]=pp_level6[i+54];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+56]=gnpg_level6[i+56]|pp_level6[i+56]&gnpg_level6[i-2];  
             assign pp_level7[i+56]=pp_level6[i+56]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+56]=gnpg_level6[i+56];  
             assign pp_level7[i+56]=pp_level6[i+56];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+58]=gnpg_level6[i+58]|pp_level6[i+58]&gnpg_level6[i-2];  
             assign pp_level7[i+58]=pp_level6[i+58]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+58]=gnpg_level6[i+58];  
             assign pp_level7[i+58]=pp_level6[i+58];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+60]=gnpg_level6[i+60]|pp_level6[i+60]&gnpg_level6[i-2];  
             assign pp_level7[i+60]=pp_level6[i+60]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+60]=gnpg_level6[i+60];  
             assign pp_level7[i+60]=pp_level6[i+60];            
         end
       endgenerate
       
        generate
             for (i = 65;i<128 ;i=i+128) begin
             assign gnpg_level7[i+62]=gnpg_level6[i+62]|pp_level6[i+62]&gnpg_level6[i-2];  
             assign pp_level7[i+62]=pp_level6[i+62]&pp_level6[i-2];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 129;i<128 ;i=i+128) begin
             assign gnpg_level7[i+62]=gnpg_level6[i+62];  
             assign pp_level7[i+62]=pp_level6[i+62];            
         end
       endgenerate
       
         generate
             for (i = 0;i<65 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 65+1;i<65+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 67+1;i<67+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 69+1;i<69+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 71+1;i<71+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 73+1;i<73+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 75+1;i<75+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 77+1;i<77+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 79+1;i<79+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 81+1;i<81+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 83+1;i<83+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 85+1;i<85+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 87+1;i<87+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 89+1;i<89+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 91+1;i<91+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 93+1;i<93+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 95+1;i<95+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 97+1;i<97+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 99+1;i<99+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 101+1;i<101+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 103+1;i<103+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 105+1;i<105+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 107+1;i<107+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 109+1;i<109+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 111+1;i<111+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 113+1;i<113+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 115+1;i<115+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 117+1;i<117+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 119+1;i<119+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 121+1;i<121+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 123+1;i<123+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 125+1;i<125+2 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
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

