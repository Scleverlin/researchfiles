
/* verilator lint_off UNUSEDSIGNAL */
module HC_128_BK1_KS6_top (a,b,cin,sum,cout,clk,rst);
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
HC_128_BK1_KS6 u0 (a,b,cin_r,sum_w,cout_w);
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

module HC_128_BK1_KS6 (a,b,cin,sum,cout);

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
            //KS 
            generate
              for (i = 0;i<(128-3) ;i=i+2) begin
                assign gnpg_level2[3+i]=gnpg_level1[3+i]|pp_level1[3+i]&gnpg_level1[3+i-1*2];
                assign pp_level2[3+i]=pp_level1[3+i]&pp_level1[3+i-1*2];
               end
            endgenerate
            generate
              for (i = 0;i<3;i=i+1) begin
                assign gnpg_level2[i]=gnpg_level1[i];
                assign pp_level2[i]=pp_level1[i];
               end
            endgenerate
            
        generate
            for (i = 3+1;i<5;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 5+1;i<7;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 7+1;i<9;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 9+1;i<11;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 11+1;i<13;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 13+1;i<15;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 15+1;i<17;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 17+1;i<19;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 19+1;i<21;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 21+1;i<23;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 23+1;i<25;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 25+1;i<27;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 27+1;i<29;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 29+1;i<31;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 31+1;i<33;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 33+1;i<35;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 35+1;i<37;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 37+1;i<39;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 39+1;i<41;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 41+1;i<43;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 43+1;i<45;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 45+1;i<47;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 47+1;i<49;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 49+1;i<51;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 51+1;i<53;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 53+1;i<55;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 55+1;i<57;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 57+1;i<59;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 59+1;i<61;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 61+1;i<63;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 63+1;i<65;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 65+1;i<67;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 67+1;i<69;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 69+1;i<71;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 71+1;i<73;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 73+1;i<75;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 75+1;i<77;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 77+1;i<79;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 79+1;i<81;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 81+1;i<83;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 83+1;i<85;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 85+1;i<87;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 87+1;i<89;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 89+1;i<91;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 91+1;i<93;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 93+1;i<95;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 95+1;i<97;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 97+1;i<99;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 99+1;i<101;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 101+1;i<103;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 103+1;i<105;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 105+1;i<107;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 107+1;i<109;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 109+1;i<111;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 111+1;i<113;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 113+1;i<115;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 115+1;i<117;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 117+1;i<119;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 119+1;i<121;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 121+1;i<123;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 123+1;i<125;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
        generate
            for (i = 125+1;i<127;i=i+1) begin
               assign gnpg_level2[i]=gnpg_level1[i];
               assign pp_level2[i]=pp_level1[i];
            end
            endgenerate
        
            //KS 
            generate
              for (i = 0;i<(128-5) ;i=i+2) begin
                assign gnpg_level3[5+i]=gnpg_level2[5+i]|pp_level2[5+i]&gnpg_level2[5+i-2*2];
                assign pp_level3[5+i]=pp_level2[5+i]&pp_level2[5+i-2*2];
               end
            endgenerate
            generate
              for (i = 0;i<5;i=i+1) begin
                assign gnpg_level3[i]=gnpg_level2[i];
                assign pp_level3[i]=pp_level2[i];
               end
            endgenerate
            
        generate
            for (i = 5+1;i<7;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 7+1;i<9;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 9+1;i<11;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 11+1;i<13;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 13+1;i<15;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 15+1;i<17;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 17+1;i<19;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 19+1;i<21;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 21+1;i<23;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 23+1;i<25;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 25+1;i<27;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 27+1;i<29;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 29+1;i<31;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 31+1;i<33;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 33+1;i<35;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 35+1;i<37;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 37+1;i<39;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 39+1;i<41;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 41+1;i<43;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 43+1;i<45;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 45+1;i<47;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 47+1;i<49;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 49+1;i<51;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 51+1;i<53;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 53+1;i<55;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 55+1;i<57;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 57+1;i<59;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 59+1;i<61;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 61+1;i<63;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 63+1;i<65;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 65+1;i<67;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 67+1;i<69;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 69+1;i<71;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 71+1;i<73;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 73+1;i<75;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 75+1;i<77;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 77+1;i<79;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 79+1;i<81;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 81+1;i<83;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 83+1;i<85;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 85+1;i<87;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 87+1;i<89;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 89+1;i<91;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 91+1;i<93;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 93+1;i<95;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 95+1;i<97;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 97+1;i<99;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 99+1;i<101;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 101+1;i<103;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 103+1;i<105;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 105+1;i<107;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 107+1;i<109;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 109+1;i<111;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 111+1;i<113;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 113+1;i<115;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 115+1;i<117;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 117+1;i<119;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 119+1;i<121;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 121+1;i<123;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 123+1;i<125;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 125+1;i<127;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
            //KS 
            generate
              for (i = 0;i<(128-9) ;i=i+2) begin
                assign gnpg_level4[9+i]=gnpg_level3[9+i]|pp_level3[9+i]&gnpg_level3[9+i-4*2];
                assign pp_level4[9+i]=pp_level3[9+i]&pp_level3[9+i-4*2];
               end
            endgenerate
            generate
              for (i = 0;i<9;i=i+1) begin
                assign gnpg_level4[i]=gnpg_level3[i];
                assign pp_level4[i]=pp_level3[i];
               end
            endgenerate
            
        generate
            for (i = 9+1;i<11;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 11+1;i<13;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 13+1;i<15;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 15+1;i<17;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 17+1;i<19;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 19+1;i<21;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 21+1;i<23;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 23+1;i<25;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 25+1;i<27;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 27+1;i<29;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 29+1;i<31;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 31+1;i<33;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 33+1;i<35;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 35+1;i<37;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 37+1;i<39;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 39+1;i<41;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 41+1;i<43;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 43+1;i<45;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 45+1;i<47;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 47+1;i<49;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 49+1;i<51;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 51+1;i<53;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 53+1;i<55;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 55+1;i<57;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 57+1;i<59;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 59+1;i<61;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 61+1;i<63;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 63+1;i<65;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 65+1;i<67;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 67+1;i<69;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 69+1;i<71;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 71+1;i<73;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 73+1;i<75;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 75+1;i<77;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 77+1;i<79;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 79+1;i<81;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 81+1;i<83;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 83+1;i<85;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 85+1;i<87;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 87+1;i<89;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 89+1;i<91;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 91+1;i<93;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 93+1;i<95;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 95+1;i<97;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 97+1;i<99;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 99+1;i<101;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 101+1;i<103;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 103+1;i<105;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 105+1;i<107;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 107+1;i<109;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 109+1;i<111;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 111+1;i<113;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 113+1;i<115;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 115+1;i<117;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 117+1;i<119;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 119+1;i<121;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 121+1;i<123;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 123+1;i<125;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
        generate
            for (i = 125+1;i<127;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
            //KS 
            generate
              for (i = 0;i<(128-17) ;i=i+2) begin
                assign gnpg_level5[17+i]=gnpg_level4[17+i]|pp_level4[17+i]&gnpg_level4[17+i-8*2];
                assign pp_level5[17+i]=pp_level4[17+i]&pp_level4[17+i-8*2];
               end
            endgenerate
            generate
              for (i = 0;i<17;i=i+1) begin
                assign gnpg_level5[i]=gnpg_level4[i];
                assign pp_level5[i]=pp_level4[i];
               end
            endgenerate
            
        generate
            for (i = 17+1;i<19;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 19+1;i<21;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 21+1;i<23;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 23+1;i<25;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 25+1;i<27;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 27+1;i<29;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 29+1;i<31;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 31+1;i<33;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 33+1;i<35;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 35+1;i<37;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 37+1;i<39;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 39+1;i<41;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 41+1;i<43;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 43+1;i<45;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 45+1;i<47;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 47+1;i<49;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 49+1;i<51;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 51+1;i<53;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 53+1;i<55;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 55+1;i<57;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 57+1;i<59;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 59+1;i<61;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 61+1;i<63;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 63+1;i<65;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 65+1;i<67;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 67+1;i<69;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 69+1;i<71;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 71+1;i<73;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 73+1;i<75;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 75+1;i<77;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 77+1;i<79;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 79+1;i<81;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 81+1;i<83;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 83+1;i<85;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 85+1;i<87;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 87+1;i<89;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 89+1;i<91;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 91+1;i<93;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 93+1;i<95;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 95+1;i<97;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 97+1;i<99;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 99+1;i<101;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 101+1;i<103;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 103+1;i<105;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 105+1;i<107;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 107+1;i<109;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 109+1;i<111;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 111+1;i<113;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 113+1;i<115;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 115+1;i<117;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 117+1;i<119;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 119+1;i<121;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 121+1;i<123;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 123+1;i<125;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
        generate
            for (i = 125+1;i<127;i=i+1) begin
               assign gnpg_level5[i]=gnpg_level4[i];
               assign pp_level5[i]=pp_level4[i];
            end
            endgenerate
        
            //KS 
            generate
              for (i = 0;i<(128-33) ;i=i+2) begin
                assign gnpg_level6[33+i]=gnpg_level5[33+i]|pp_level5[33+i]&gnpg_level5[33+i-16*2];
                assign pp_level6[33+i]=pp_level5[33+i]&pp_level5[33+i-16*2];
               end
            endgenerate
            generate
              for (i = 0;i<33;i=i+1) begin
                assign gnpg_level6[i]=gnpg_level5[i];
                assign pp_level6[i]=pp_level5[i];
               end
            endgenerate
            
        generate
            for (i = 33+1;i<35;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 35+1;i<37;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 37+1;i<39;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 39+1;i<41;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 41+1;i<43;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 43+1;i<45;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 45+1;i<47;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 47+1;i<49;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 49+1;i<51;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 51+1;i<53;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 53+1;i<55;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 55+1;i<57;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 57+1;i<59;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 59+1;i<61;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 61+1;i<63;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 63+1;i<65;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 65+1;i<67;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 67+1;i<69;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 69+1;i<71;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 71+1;i<73;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 73+1;i<75;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 75+1;i<77;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 77+1;i<79;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 79+1;i<81;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 81+1;i<83;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 83+1;i<85;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 85+1;i<87;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 87+1;i<89;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 89+1;i<91;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 91+1;i<93;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 93+1;i<95;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 95+1;i<97;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 97+1;i<99;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 99+1;i<101;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 101+1;i<103;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 103+1;i<105;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 105+1;i<107;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 107+1;i<109;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 109+1;i<111;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 111+1;i<113;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 113+1;i<115;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 115+1;i<117;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 117+1;i<119;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 119+1;i<121;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 121+1;i<123;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 123+1;i<125;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
        generate
            for (i = 125+1;i<127;i=i+1) begin
               assign gnpg_level6[i]=gnpg_level5[i];
               assign pp_level6[i]=pp_level5[i];
            end
            endgenerate
        
            //KS 
            generate
              for (i = 0;i<(128-65) ;i=i+2) begin
                assign gnpg_level7[65+i]=gnpg_level6[65+i]|pp_level6[65+i]&gnpg_level6[65+i-32*2];
                assign pp_level7[65+i]=pp_level6[65+i]&pp_level6[65+i-32*2];
               end
            endgenerate
            generate
              for (i = 0;i<65;i=i+1) begin
                assign gnpg_level7[i]=gnpg_level6[i];
                assign pp_level7[i]=pp_level6[i];
               end
            endgenerate
            
        generate
            for (i = 65+1;i<67;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 67+1;i<69;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 69+1;i<71;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 71+1;i<73;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 73+1;i<75;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 75+1;i<77;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 77+1;i<79;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 79+1;i<81;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 81+1;i<83;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 83+1;i<85;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 85+1;i<87;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 87+1;i<89;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 89+1;i<91;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 91+1;i<93;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 93+1;i<95;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 95+1;i<97;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 97+1;i<99;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 99+1;i<101;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 101+1;i<103;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 103+1;i<105;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 105+1;i<107;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 107+1;i<109;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 109+1;i<111;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 111+1;i<113;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 113+1;i<115;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 115+1;i<117;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 117+1;i<119;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 119+1;i<121;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 121+1;i<123;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 123+1;i<125;i=i+1) begin
               assign gnpg_level7[i]=gnpg_level6[i];
               assign pp_level7[i]=pp_level6[i];
            end
            endgenerate
        
        generate
            for (i = 125+1;i<127;i=i+1) begin
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

