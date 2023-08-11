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

module HC_16_BK2_KS2 (a,b,cin,sum,cout);

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
              for (i = 4-1 ;i<16;i=i+4) begin
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
            endgenerate 
            //KS 
            generate
              for (i = 0;i<(16-7) ;i=i+4) begin
                assign gnpg_level3[7+i]=gnpg_level2[7+i]|pp_level2[7+i]&gnpg_level2[7+i-1*4];
                assign pp_level3[7+i]=pp_level2[7+i]&pp_level2[7+i-1*4];
               end
            endgenerate
            generate
              for (i = 0;i<7;i=i+1) begin
                assign gnpg_level3[i]=gnpg_level2[i];
                assign pp_level3[i]=pp_level2[i];
               end
            endgenerate
            
        generate
            for (i = 7+1;i<11;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
        generate
            for (i = 11+1;i<15;i=i+1) begin
               assign gnpg_level3[i]=gnpg_level2[i];
               assign pp_level3[i]=pp_level2[i];
            end
            endgenerate
        
            //KS 
            generate
              for (i = 0;i<(16-11) ;i=i+4) begin
                assign gnpg_level4[11+i]=gnpg_level3[11+i]|pp_level3[11+i]&gnpg_level3[11+i-2*4];
                assign pp_level4[11+i]=pp_level3[11+i]&pp_level3[11+i-2*4];
               end
            endgenerate
            generate
              for (i = 0;i<11;i=i+1) begin
                assign gnpg_level4[i]=gnpg_level3[i];
                assign pp_level4[i]=pp_level3[i];
               end
            endgenerate
            
        generate
            for (i = 11+1;i<15;i=i+1) begin
               assign gnpg_level4[i]=gnpg_level3[i];
               assign pp_level4[i]=pp_level3[i];
            end
            endgenerate
        
    wire [15:0] gnpg_level6;  
    
    wire [6-1:0] gnpg_level5;   
    wire [6-1:0] pp_level5; 
    
assign sum[16:1]=p[16:1]^gnpg_level6[16-1:0];
assign cout =g[16]|p[16]&gnpg_level6[16-1];
assign gnpg_level6[0]=gnpg_level4[0];
assign gnpg_level6[1]=gnpg_level4[1];
assign gnpg_level6[2]=gnpg_level4[2]|pp_level4[2]&gnpg_level4[1];
assign gnpg_level6[15]=gnpg_level4[15];
generate 
   for (i = 1;i<(16-2)/2 ;i=i+1 ) begin
      assign gnpg_level6[2*i+1]=gnpg_level5[i-1];
   end
endgenerate
generate 
   for (i = 2;i<16/2 ;i=i+1 ) begin
      assign gnpg_level6[2*i]=gnpg_level4[2*i]|pp_level4[2*i]&gnpg_level5[i-2];
   end
endgenerate

//1111
assign gnpg_level5[0]=gnpg_level4[3];
assign gnpg_level5[1]=gnpg_level4[2+3]|pp_level4[2+3]&gnpg_level4[2+3-2];
generate 
//1111
   for (i = 3;i<6;i=i+2 ) begin
      assign gnpg_level5[i]=gnpg_level4[2*i+3]|pp_level4[2*i+3]&gnpg_level4[2*i+3-3];
   end
endgenerate
generate 
//1111
   for (i = 2;i<6 ;i=i+2 ) begin
      assign gnpg_level5[i]=gnpg_level4[2*i+3];
   end
endgenerate

endmodule

