
/* verilator lint_off UNUSEDSIGNAL */


module P_G_gen_hc_16 (a,b,cin,p,g);
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

module HC_16_BK0_KS4 (a,b,cin,sum,cout);

input [16:1]a;
input [16:1]b;
input cin;
output [16:1]sum;
output cout;
wire [16:0]p;
wire [16:0]g;
P_G_gen_hc_16 pg_gen_hc (a,b,cin,p,g);
genvar i;

wire [15:0] gnpg_level1;
wire [15:0] pp_level1;
assign gnpg_level1[0]=g[0];
assign pp_level1[0]=p[0];
        generate
            for (i = 1;i<16 ;i=i+1 ) begin
             assign gnpg_level1[i]=g[i]|p[i]&g[i-1];  
             assign pp_level1[i]=p[i]&p[i-1];            
            end
        endgenerate
wire [15:0] gnpg_level2;
wire [15:0] pp_level2;
       generate
         for (i = 2;i<16 ;i=i+1 ) begin
           assign gnpg_level2[i]=gnpg_level1[i]|pp_level1[i]&gnpg_level1[i-2];  
           assign pp_level2[i]=pp_level1[i]&pp_level1[i-2];            
         end
       endgenerate
       generate 
         for (i=0;i<2;i=i+1) begin
            assign gnpg_level2[i]=gnpg_level1[i];
            assign pp_level2[i]=pp_level1[i];
         end
       endgenerate  
         
wire [15:0] gnpg_level3;
wire [15:0] pp_level3;
       generate
         for (i = 4;i<16 ;i=i+1 ) begin
           assign gnpg_level3[i]=gnpg_level2[i]|pp_level2[i]&gnpg_level2[i-4];  
           assign pp_level3[i]=pp_level2[i]&pp_level2[i-4];            
         end
       endgenerate
       generate 
         for (i=0;i<4;i=i+1) begin
            assign gnpg_level3[i]=gnpg_level2[i];
            assign pp_level3[i]=pp_level2[i];
         end
       endgenerate  
         
wire [15:0] gnpg_level4;
wire [15:0] pp_level4;
       generate
         for (i = 8;i<16 ;i=i+1 ) begin
           assign gnpg_level4[i]=gnpg_level3[i]|pp_level3[i]&gnpg_level3[i-8];  
           assign pp_level4[i]=pp_level3[i]&pp_level3[i-8];            
         end
       endgenerate
       generate 
         for (i=0;i<8;i=i+1) begin
            assign gnpg_level4[i]=gnpg_level3[i];
            assign pp_level4[i]=pp_level3[i];
         end
       endgenerate  
         
assign cout= g[16]|p[16]&gnpg_level4[15];
generate
   for (i = 1;i<17 ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level4[i-1];    
   end
endgenerate
 // ks adder, no post process
endmodule

