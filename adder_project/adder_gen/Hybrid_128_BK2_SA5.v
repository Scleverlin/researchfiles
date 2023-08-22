
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_128_BK2_SA5_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_128_BK2_SA5 u0 (a,b,cin_r,sum_w,cout_w);
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

module Hybrid_128_BK2_SA5 (a,b,cin,sum,cout);

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
              for (i = 4-1 ;i<128;i=i+4) begin
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
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*16+i]=gnpg_level1[ 4*16+i];
                assign pp_level2[ 4*16+i]=pp_level1[ 4*16+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*17+i]=gnpg_level1[ 4*17+i];
                assign pp_level2[ 4*17+i]=pp_level1[ 4*17+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*18+i]=gnpg_level1[ 4*18+i];
                assign pp_level2[ 4*18+i]=pp_level1[ 4*18+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*19+i]=gnpg_level1[ 4*19+i];
                assign pp_level2[ 4*19+i]=pp_level1[ 4*19+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*20+i]=gnpg_level1[ 4*20+i];
                assign pp_level2[ 4*20+i]=pp_level1[ 4*20+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*21+i]=gnpg_level1[ 4*21+i];
                assign pp_level2[ 4*21+i]=pp_level1[ 4*21+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*22+i]=gnpg_level1[ 4*22+i];
                assign pp_level2[ 4*22+i]=pp_level1[ 4*22+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*23+i]=gnpg_level1[ 4*23+i];
                assign pp_level2[ 4*23+i]=pp_level1[ 4*23+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*24+i]=gnpg_level1[ 4*24+i];
                assign pp_level2[ 4*24+i]=pp_level1[ 4*24+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*25+i]=gnpg_level1[ 4*25+i];
                assign pp_level2[ 4*25+i]=pp_level1[ 4*25+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*26+i]=gnpg_level1[ 4*26+i];
                assign pp_level2[ 4*26+i]=pp_level1[ 4*26+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*27+i]=gnpg_level1[ 4*27+i];
                assign pp_level2[ 4*27+i]=pp_level1[ 4*27+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*28+i]=gnpg_level1[ 4*28+i];
                assign pp_level2[ 4*28+i]=pp_level1[ 4*28+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*29+i]=gnpg_level1[ 4*29+i];
                assign pp_level2[ 4*29+i]=pp_level1[ 4*29+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*30+i]=gnpg_level1[ 4*30+i];
                assign pp_level2[ 4*30+i]=pp_level1[ 4*30+i];
               end
            endgenerate generate
              for (i = 0;i<4-1 ;i=i+1) begin
                assign gnpg_level2[ 4*31+i]=gnpg_level1[ 4*31+i];
                assign pp_level2[ 4*31+i]=pp_level1[ 4*31+i];
               end
            endgenerate 
        generate
             for (i = 7;i<128 ;i=i+8) begin
             assign gnpg_level3[i+0]=gnpg_level2[i+0]|pp_level2[i+0]&gnpg_level2[i-4];  
             assign pp_level3[i+0]=pp_level2[i+0]&pp_level2[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 11;i<128 ;i=i+8) begin
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
         //k
         generate
             for (i = 63+1;i<63+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 67+1;i<67+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 71+1;i<71+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 75+1;i<75+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 79+1;i<79+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 83+1;i<83+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 87+1;i<87+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 91+1;i<91+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 95+1;i<95+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 99+1;i<99+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 103+1;i<103+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 107+1;i<107+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 111+1;i<111+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 115+1;i<115+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 119+1;i<119+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 123+1;i<123+4 ;i=i+1) begin
             assign gnpg_level3[i]=gnpg_level2[i];  
             assign pp_level3[i]=pp_level2[i];           
         end
       endgenerate 
        generate
             for (i = 11;i<128 ;i=i+16) begin
             assign gnpg_level4[i+0]=gnpg_level3[i+0]|pp_level3[i+0]&gnpg_level3[i-4];  
             assign pp_level4[i+0]=pp_level3[i+0]&pp_level3[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 19;i<128 ;i=i+16) begin
             assign gnpg_level4[i+0]=gnpg_level3[i+0];  
             assign pp_level4[i+0]=pp_level3[i+0];            
         end
       endgenerate
       
        generate
             for (i = 11;i<128 ;i=i+16) begin
             assign gnpg_level4[i+4]=gnpg_level3[i+4]|pp_level3[i+4]&gnpg_level3[i-4];  
             assign pp_level4[i+4]=pp_level3[i+4]&pp_level3[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 19;i<128 ;i=i+16) begin
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
         //k
         generate
             for (i = 63+1;i<63+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 67+1;i<67+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 71+1;i<71+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 75+1;i<75+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 79+1;i<79+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 83+1;i<83+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 87+1;i<87+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 91+1;i<91+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 95+1;i<95+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 99+1;i<99+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 103+1;i<103+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 107+1;i<107+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 111+1;i<111+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 115+1;i<115+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 119+1;i<119+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 123+1;i<123+4 ;i=i+1) begin
             assign gnpg_level4[i]=gnpg_level3[i];  
             assign pp_level4[i]=pp_level3[i];           
         end
       endgenerate 
        generate
             for (i = 19;i<128 ;i=i+32) begin
             assign gnpg_level5[i+0]=gnpg_level4[i+0]|pp_level4[i+0]&gnpg_level4[i-4];  
             assign pp_level5[i+0]=pp_level4[i+0]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<128 ;i=i+32) begin
             assign gnpg_level5[i+0]=gnpg_level4[i+0];  
             assign pp_level5[i+0]=pp_level4[i+0];            
         end
       endgenerate
       
        generate
             for (i = 19;i<128 ;i=i+32) begin
             assign gnpg_level5[i+4]=gnpg_level4[i+4]|pp_level4[i+4]&gnpg_level4[i-4];  
             assign pp_level5[i+4]=pp_level4[i+4]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<128 ;i=i+32) begin
             assign gnpg_level5[i+4]=gnpg_level4[i+4];  
             assign pp_level5[i+4]=pp_level4[i+4];            
         end
       endgenerate
       
        generate
             for (i = 19;i<128 ;i=i+32) begin
             assign gnpg_level5[i+8]=gnpg_level4[i+8]|pp_level4[i+8]&gnpg_level4[i-4];  
             assign pp_level5[i+8]=pp_level4[i+8]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<128 ;i=i+32) begin
             assign gnpg_level5[i+8]=gnpg_level4[i+8];  
             assign pp_level5[i+8]=pp_level4[i+8];            
         end
       endgenerate
       
        generate
             for (i = 19;i<128 ;i=i+32) begin
             assign gnpg_level5[i+12]=gnpg_level4[i+12]|pp_level4[i+12]&gnpg_level4[i-4];  
             assign pp_level5[i+12]=pp_level4[i+12]&pp_level4[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 35;i<128 ;i=i+32) begin
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
         //k
         generate
             for (i = 63+1;i<63+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 67+1;i<67+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 71+1;i<71+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 75+1;i<75+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 79+1;i<79+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 83+1;i<83+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 87+1;i<87+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 91+1;i<91+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 95+1;i<95+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 99+1;i<99+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 103+1;i<103+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 107+1;i<107+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 111+1;i<111+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 115+1;i<115+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 119+1;i<119+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 123+1;i<123+4 ;i=i+1) begin
             assign gnpg_level5[i]=gnpg_level4[i];  
             assign pp_level5[i]=pp_level4[i];           
         end
       endgenerate 
        generate
             for (i = 35;i<128 ;i=i+64) begin
             assign gnpg_level6[i+0]=gnpg_level5[i+0]|pp_level5[i+0]&gnpg_level5[i-4];  
             assign pp_level6[i+0]=pp_level5[i+0]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<128 ;i=i+64) begin
             assign gnpg_level6[i+0]=gnpg_level5[i+0];  
             assign pp_level6[i+0]=pp_level5[i+0];            
         end
       endgenerate
       
        generate
             for (i = 35;i<128 ;i=i+64) begin
             assign gnpg_level6[i+4]=gnpg_level5[i+4]|pp_level5[i+4]&gnpg_level5[i-4];  
             assign pp_level6[i+4]=pp_level5[i+4]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<128 ;i=i+64) begin
             assign gnpg_level6[i+4]=gnpg_level5[i+4];  
             assign pp_level6[i+4]=pp_level5[i+4];            
         end
       endgenerate
       
        generate
             for (i = 35;i<128 ;i=i+64) begin
             assign gnpg_level6[i+8]=gnpg_level5[i+8]|pp_level5[i+8]&gnpg_level5[i-4];  
             assign pp_level6[i+8]=pp_level5[i+8]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<128 ;i=i+64) begin
             assign gnpg_level6[i+8]=gnpg_level5[i+8];  
             assign pp_level6[i+8]=pp_level5[i+8];            
         end
       endgenerate
       
        generate
             for (i = 35;i<128 ;i=i+64) begin
             assign gnpg_level6[i+12]=gnpg_level5[i+12]|pp_level5[i+12]&gnpg_level5[i-4];  
             assign pp_level6[i+12]=pp_level5[i+12]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<128 ;i=i+64) begin
             assign gnpg_level6[i+12]=gnpg_level5[i+12];  
             assign pp_level6[i+12]=pp_level5[i+12];            
         end
       endgenerate
       
        generate
             for (i = 35;i<128 ;i=i+64) begin
             assign gnpg_level6[i+16]=gnpg_level5[i+16]|pp_level5[i+16]&gnpg_level5[i-4];  
             assign pp_level6[i+16]=pp_level5[i+16]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<128 ;i=i+64) begin
             assign gnpg_level6[i+16]=gnpg_level5[i+16];  
             assign pp_level6[i+16]=pp_level5[i+16];            
         end
       endgenerate
       
        generate
             for (i = 35;i<128 ;i=i+64) begin
             assign gnpg_level6[i+20]=gnpg_level5[i+20]|pp_level5[i+20]&gnpg_level5[i-4];  
             assign pp_level6[i+20]=pp_level5[i+20]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<128 ;i=i+64) begin
             assign gnpg_level6[i+20]=gnpg_level5[i+20];  
             assign pp_level6[i+20]=pp_level5[i+20];            
         end
       endgenerate
       
        generate
             for (i = 35;i<128 ;i=i+64) begin
             assign gnpg_level6[i+24]=gnpg_level5[i+24]|pp_level5[i+24]&gnpg_level5[i-4];  
             assign pp_level6[i+24]=pp_level5[i+24]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<128 ;i=i+64) begin
             assign gnpg_level6[i+24]=gnpg_level5[i+24];  
             assign pp_level6[i+24]=pp_level5[i+24];            
         end
       endgenerate
       
        generate
             for (i = 35;i<128 ;i=i+64) begin
             assign gnpg_level6[i+28]=gnpg_level5[i+28]|pp_level5[i+28]&gnpg_level5[i-4];  
             assign pp_level6[i+28]=pp_level5[i+28]&pp_level5[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 67;i<128 ;i=i+64) begin
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
         //k
         generate
             for (i = 63+1;i<63+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 67+1;i<67+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 71+1;i<71+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 75+1;i<75+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 79+1;i<79+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 83+1;i<83+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 87+1;i<87+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 91+1;i<91+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 95+1;i<95+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 99+1;i<99+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 103+1;i<103+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 107+1;i<107+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 111+1;i<111+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 115+1;i<115+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 119+1;i<119+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 123+1;i<123+4 ;i=i+1) begin
             assign gnpg_level6[i]=gnpg_level5[i];  
             assign pp_level6[i]=pp_level5[i];           
         end
       endgenerate 
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+0]=gnpg_level6[i+0]|pp_level6[i+0]&gnpg_level6[i-4];  
             assign pp_level7[i+0]=pp_level6[i+0]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+0]=gnpg_level6[i+0];  
             assign pp_level7[i+0]=pp_level6[i+0];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+4]=gnpg_level6[i+4]|pp_level6[i+4]&gnpg_level6[i-4];  
             assign pp_level7[i+4]=pp_level6[i+4]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+4]=gnpg_level6[i+4];  
             assign pp_level7[i+4]=pp_level6[i+4];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+8]=gnpg_level6[i+8]|pp_level6[i+8]&gnpg_level6[i-4];  
             assign pp_level7[i+8]=pp_level6[i+8]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+8]=gnpg_level6[i+8];  
             assign pp_level7[i+8]=pp_level6[i+8];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+12]=gnpg_level6[i+12]|pp_level6[i+12]&gnpg_level6[i-4];  
             assign pp_level7[i+12]=pp_level6[i+12]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+12]=gnpg_level6[i+12];  
             assign pp_level7[i+12]=pp_level6[i+12];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+16]=gnpg_level6[i+16]|pp_level6[i+16]&gnpg_level6[i-4];  
             assign pp_level7[i+16]=pp_level6[i+16]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+16]=gnpg_level6[i+16];  
             assign pp_level7[i+16]=pp_level6[i+16];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+20]=gnpg_level6[i+20]|pp_level6[i+20]&gnpg_level6[i-4];  
             assign pp_level7[i+20]=pp_level6[i+20]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+20]=gnpg_level6[i+20];  
             assign pp_level7[i+20]=pp_level6[i+20];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+24]=gnpg_level6[i+24]|pp_level6[i+24]&gnpg_level6[i-4];  
             assign pp_level7[i+24]=pp_level6[i+24]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+24]=gnpg_level6[i+24];  
             assign pp_level7[i+24]=pp_level6[i+24];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+28]=gnpg_level6[i+28]|pp_level6[i+28]&gnpg_level6[i-4];  
             assign pp_level7[i+28]=pp_level6[i+28]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+28]=gnpg_level6[i+28];  
             assign pp_level7[i+28]=pp_level6[i+28];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+32]=gnpg_level6[i+32]|pp_level6[i+32]&gnpg_level6[i-4];  
             assign pp_level7[i+32]=pp_level6[i+32]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+32]=gnpg_level6[i+32];  
             assign pp_level7[i+32]=pp_level6[i+32];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+36]=gnpg_level6[i+36]|pp_level6[i+36]&gnpg_level6[i-4];  
             assign pp_level7[i+36]=pp_level6[i+36]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+36]=gnpg_level6[i+36];  
             assign pp_level7[i+36]=pp_level6[i+36];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+40]=gnpg_level6[i+40]|pp_level6[i+40]&gnpg_level6[i-4];  
             assign pp_level7[i+40]=pp_level6[i+40]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+40]=gnpg_level6[i+40];  
             assign pp_level7[i+40]=pp_level6[i+40];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+44]=gnpg_level6[i+44]|pp_level6[i+44]&gnpg_level6[i-4];  
             assign pp_level7[i+44]=pp_level6[i+44]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+44]=gnpg_level6[i+44];  
             assign pp_level7[i+44]=pp_level6[i+44];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+48]=gnpg_level6[i+48]|pp_level6[i+48]&gnpg_level6[i-4];  
             assign pp_level7[i+48]=pp_level6[i+48]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+48]=gnpg_level6[i+48];  
             assign pp_level7[i+48]=pp_level6[i+48];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+52]=gnpg_level6[i+52]|pp_level6[i+52]&gnpg_level6[i-4];  
             assign pp_level7[i+52]=pp_level6[i+52]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+52]=gnpg_level6[i+52];  
             assign pp_level7[i+52]=pp_level6[i+52];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+56]=gnpg_level6[i+56]|pp_level6[i+56]&gnpg_level6[i-4];  
             assign pp_level7[i+56]=pp_level6[i+56]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+56]=gnpg_level6[i+56];  
             assign pp_level7[i+56]=pp_level6[i+56];            
         end
       endgenerate
       
        generate
             for (i = 67;i<128 ;i=i+128) begin
             assign gnpg_level7[i+60]=gnpg_level6[i+60]|pp_level6[i+60]&gnpg_level6[i-4];  
             assign pp_level7[i+60]=pp_level6[i+60]&pp_level6[i-4];            
         end
       endgenerate
       //old_value_pass
       generate
             for (i = 131;i<128 ;i=i+128) begin
             assign gnpg_level7[i+60]=gnpg_level6[i+60];  
             assign pp_level7[i+60]=pp_level6[i+60];            
         end
       endgenerate
       
         generate
             for (i = 0;i<67 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 67+1;i<67+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 71+1;i<71+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 75+1;i<75+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 79+1;i<79+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 83+1;i<83+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 87+1;i<87+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 91+1;i<91+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 95+1;i<95+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 99+1;i<99+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 103+1;i<103+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 107+1;i<107+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 111+1;i<111+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 115+1;i<115+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 119+1;i<119+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
         //k
         generate
             for (i = 123+1;i<123+4 ;i=i+1) begin
             assign gnpg_level7[i]=gnpg_level6[i];  
             assign pp_level7[i]=pp_level6[i];           
         end
       endgenerate 
    wire [127:0] gnpg_level9;  
    
    wire [62-1:0] gnpg_level8;   
    wire [62-1:0] pp_level8; 
    
assign sum[128:1]=p[128:1]^gnpg_level9[128-1:0];
assign cout =g[128]|p[128]&gnpg_level9[128-1];
assign gnpg_level9[0]=gnpg_level7[0];
assign gnpg_level9[1]=gnpg_level7[1];
assign gnpg_level9[2]=gnpg_level7[2]|pp_level7[2]&gnpg_level7[1];
assign gnpg_level9[127]=gnpg_level7[127];
generate 
   for (i = 1;i<(128-2)/2 ;i=i+1 ) begin
      assign gnpg_level9[2*i+1]=gnpg_level8[i-1];
   end
endgenerate
generate 
   for (i = 2;i<128/2 ;i=i+1 ) begin
      assign gnpg_level9[2*i]=gnpg_level7[2*i]|pp_level7[2*i]&gnpg_level8[i-2];
   end
endgenerate

//1111
assign gnpg_level8[0]=gnpg_level7[3];
assign gnpg_level8[1]=gnpg_level7[2+3]|pp_level7[2+3]&gnpg_level7[2+3-2];
generate 
//1111
   for (i = 3;i<62;i=i+2 ) begin
      assign gnpg_level8[i]=gnpg_level7[2*i+3]|pp_level7[2*i+3]&gnpg_level7[2*i+3-2];
   end
endgenerate
generate 
//1111
   for (i = 2;i<62 ;i=i+2 ) begin
      assign gnpg_level8[i]=gnpg_level7[2*i+3];
   end
endgenerate

endmodule

