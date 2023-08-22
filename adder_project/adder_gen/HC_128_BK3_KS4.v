
/* verilator lint_off UNUSEDSIGNAL */
module HC_128_BK3_KS4_top (a,b,cin,sum,cout,clk,rst);
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
HC_128_BK3_KS4 u0 (a,b,cin_r,sum_w,cout_w);
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

module P_G_gen_hc_128 (a,b,cin,p,g);
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

module HC_128_BK3_KS4 (a,b,cin,sum,cout);

input [128:1]a;
input [128:1]b;
input cin;
output [128:1]sum;
output cout;
wire [128:0]p;
wire [128:0]g;
P_G_gen_hc_128 pg_gen_hc (a,b,cin,p,g);
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
              for (i = 8-1 ;i<128;i=i+8) begin
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
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*2+i]=gnpg_level2[ 8*2+i];
                assign pp_level3[ 8*2+i]=pp_level2[ 8*2+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*3+i]=gnpg_level2[ 8*3+i];
                assign pp_level3[ 8*3+i]=pp_level2[ 8*3+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*4+i]=gnpg_level2[ 8*4+i];
                assign pp_level3[ 8*4+i]=pp_level2[ 8*4+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*5+i]=gnpg_level2[ 8*5+i];
                assign pp_level3[ 8*5+i]=pp_level2[ 8*5+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*6+i]=gnpg_level2[ 8*6+i];
                assign pp_level3[ 8*6+i]=pp_level2[ 8*6+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*7+i]=gnpg_level2[ 8*7+i];
                assign pp_level3[ 8*7+i]=pp_level2[ 8*7+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*8+i]=gnpg_level2[ 8*8+i];
                assign pp_level3[ 8*8+i]=pp_level2[ 8*8+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*9+i]=gnpg_level2[ 8*9+i];
                assign pp_level3[ 8*9+i]=pp_level2[ 8*9+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*10+i]=gnpg_level2[ 8*10+i];
                assign pp_level3[ 8*10+i]=pp_level2[ 8*10+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*11+i]=gnpg_level2[ 8*11+i];
                assign pp_level3[ 8*11+i]=pp_level2[ 8*11+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*12+i]=gnpg_level2[ 8*12+i];
                assign pp_level3[ 8*12+i]=pp_level2[ 8*12+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*13+i]=gnpg_level2[ 8*13+i];
                assign pp_level3[ 8*13+i]=pp_level2[ 8*13+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*14+i]=gnpg_level2[ 8*14+i];
                assign pp_level3[ 8*14+i]=pp_level2[ 8*14+i];
               end
            endgenerate generate
              for (i = 0;i<8-1 ;i=i+1) begin
                assign gnpg_level3[ 8*15+i]=gnpg_level2[ 8*15+i];
                assign pp_level3[ 8*15+i]=pp_level2[ 8*15+i];
               end
            endgenerate 
            //KS 
            generate
              for (i = 0;i<(128-15) ;i=i+8) begin
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
            
        generate
            for (i = 15+1;i<23;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 23+1;i<31;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 31+1;i<39;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 39+1;i<47;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 47+1;i<55;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 55+1;i<63;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 63+1;i<71;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 71+1;i<79;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 79+1;i<87;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 87+1;i<95;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 95+1;i<103;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 103+1;i<111;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 111+1;i<119;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 119+1;i<127;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
            //KS 
            generate
              for (i = 0;i<(128-23) ;i=i+8) begin
                assign gnpg_level5[23+i]=gnpg_level4[23+i]|pp_level4[23+i]&gnpg_level4[23+i-2*8];
                assign pp_level5[23+i]=pp_level4[23+i]&pp_level4[23+i-2*8];
               end
            endgenerate
            generate
              for (i = 0;i<23;i=i+1) begin
                assign gnpg_level5[i]=gnpg_level4[i];
                assign pp_level5[i]=pp_level4[i];
               end
            endgenerate
            
        generate
            for (i = 23+1;i<31;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 31+1;i<39;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 39+1;i<47;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 47+1;i<55;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 55+1;i<63;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 63+1;i<71;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 71+1;i<79;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 79+1;i<87;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 87+1;i<95;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 95+1;i<103;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 103+1;i<111;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 111+1;i<119;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 119+1;i<127;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
            //KS 
            generate
              for (i = 0;i<(128-39) ;i=i+8) begin
                assign gnpg_level6[39+i]=gnpg_level5[39+i]|pp_level5[39+i]&gnpg_level5[39+i-4*8];
                assign pp_level6[39+i]=pp_level5[39+i]&pp_level5[39+i-4*8];
               end
            endgenerate
            generate
              for (i = 0;i<39;i=i+1) begin
                assign gnpg_level6[i]=gnpg_level5[i];
                assign pp_level6[i]=pp_level5[i];
               end
            endgenerate
            
        generate
            for (i = 39+1;i<47;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 47+1;i<55;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 55+1;i<63;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 63+1;i<71;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 71+1;i<79;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 79+1;i<87;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 87+1;i<95;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 95+1;i<103;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 103+1;i<111;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 111+1;i<119;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 119+1;i<127;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
            //KS 
            generate
              for (i = 0;i<(128-71) ;i=i+8) begin
                assign gnpg_level7[71+i]=gnpg_level6[71+i]|pp_level6[71+i]&gnpg_level6[71+i-8*8];
                assign pp_level7[71+i]=pp_level6[71+i]&pp_level6[71+i-8*8];
               end
            endgenerate
            generate
              for (i = 0;i<71;i=i+1) begin
                assign gnpg_level7[i]=gnpg_level6[i];
                assign pp_level7[i]=pp_level6[i];
               end
            endgenerate
            
        generate
            for (i = 71+1;i<79;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 79+1;i<87;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 87+1;i<95;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 95+1;i<103;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 103+1;i<111;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 111+1;i<119;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 119+1;i<127;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
    wire [127:0] gnpg_level10;  
    
    wire [62-1:0] gnpg_level9;   
    wire [62-1:0] pp_level9; 
    
    wire [30-1:0] gnpg_level8;   
    wire [30-1:0] pp_level8; 
    
assign sum[128:1]=p[128:1]^gnpg_level10[128-1:0];
assign cout =g[128]|p[128]&gnpg_level10[128-1];
assign gnpg_level10[0]=gnpg_level7[0];
assign gnpg_level10[1]=gnpg_level7[1];
assign gnpg_level10[2]=gnpg_level7[2]|pp_level7[2]&gnpg_level7[1];
assign gnpg_level10[127]=gnpg_level7[127];
generate 
   for (i = 1;i<(128-2)/2 ;i=i+1 ) begin
      assign gnpg_level10[2*i+1]=gnpg_level9[i-1];
   end
endgenerate
generate 
   for (i = 2;i<128/2 ;i=i+1 ) begin
      assign gnpg_level10[2*i]=gnpg_level7[2*i]|pp_level7[2*i]&gnpg_level9[i-2];
   end
endgenerate


assign gnpg_level9[0]=gnpg_level7[3];
assign gnpg_level9[1]=gnpg_level7[2+3]|pp_level7[2+3]&gnpg_level7[2+3-2];
generate 

   for (i = 3;i<62;i=i+2 ) begin
      assign gnpg_level9[i]=gnpg_level7[2*i+3]|pp_level7[2*i+3]&gnpg_level8[(i-3)/2];
   end
endgenerate
generate 

   for (i = 2;i<62 ;i=i+2 ) begin
      assign gnpg_level9[i]=gnpg_level8[i/2-1];
   end
endgenerate


//1111
assign gnpg_level8[0]=gnpg_level7[7];
assign gnpg_level8[1]=gnpg_level7[4+7]|pp_level7[4+7]&gnpg_level7[4+7-4];
generate 
//1111
   for (i = 3;i<30;i=i+2 ) begin
      assign gnpg_level8[i]=gnpg_level7[4*i+7]|pp_level7[4*i+7]&gnpg_level7[4*i+7-4];
   end
endgenerate
generate 
//1111
   for (i = 2;i<30 ;i=i+2 ) begin
      assign gnpg_level8[i]=gnpg_level7[4*i+7];
   end
endgenerate

endmodule

