

$depthofks = $ARGV[2];
$depthofbk =  $ARGV[1];
$bit =  $ARGV[3];

$log2_bit = log($bit) / log(2);

# print ("$log2_bit\n");
if ($depthofks + $depthofbk != int($log2_bit)) {
    die "Error: a + b is not equal to log2(c)\n";
}

open(DATA, ">BK${depthofbk}_KS${depthofks}_${bit}-bit.v") or die "${depthofbk}_${depthofks}.v 文件无法打开, $!";

$max_of_pg=$bit-1;

print DATA "module P_G_gen_hc_${bit} (a,b,cin,p,g);
input [${max_of_pg}:0]a;
input [${max_of_pg}:0]b;
input cin;
output [${bit}:0]p;
output [${bit}:0]g;
assign g[0]=cin;
assign p[0]=0;
assign p[${bit}:1]=a^b;
assign g[${bit}:1]=a&b;
endmodule
";

print DATA"
module HC_${bit}_BK${depthofbk}_KS${depthofks} (a,b,cin,sum,cout);

input [${bit}:1]a;
input [${bit}:1]b;
input cin;
output [${bit}:1]sum;
output cout;
wire [${bit}:0]p;
wire [${bit}:0]g;
P_G_gen_hc_${bit} pg_gen_hc (a,b,cin,p,g);
";

$for_index= $bit;
print DATA"genvar i;
";
if ($depthofbk==0){
   
 for (my $i = 1; $i < int($log2_bit)+1 ; $i++) {
     $minux_index= 2**($i-1);
        if ($i==1) {
          print "kS_adder ! \n";
          print DATA"
wire [${max_of_pg}:0] gnpg_level${i};
wire [${max_of_pg}:0] pp_level${i};
assign gnpg_level1[0]=g[0];
assign pp_level1[0]=p[0];
        generate
            for (i = 1;i<${for_index} ;i=i+1 ) begin
             assign gnpg_level${i}[i]=g[i]|p[i]&g[i-${minux_index}];  
             assign pp_level${i}[i]=p[i]&p[i-${minux_index}];            
            end
        endgenerate";
    }     
     else {
        $j=$i-1;
       print "kS_adder ! \n";
       print DATA"
wire [${max_of_pg}:0] gnpg_level${i};
wire [${max_of_pg}:0] pp_level${i};
       generate
         for (i = ${minux_index};i<${for_index} ;i=i+1 ) begin
           assign gnpg_level${i}[i]=gnpg_level${j}[i]|pp_level${j}[i]&gnpg_level${j}[i-${minux_index}];  
           assign pp_level${i}[i]=pp_level${j}[i]&pp_level${j}[i-${minux_index}];            
         end
       endgenerate
       generate 
         for (i=0;i<$minux_index;i=i+1) begin
            assign gnpg_level${i}[i]=gnpg_level${j}[i];
            assign pp_level${i}[i]=pp_level${j}[i];
         end
       endgenerate  
         ";}

}
$endindex=int($log2_bit);
$endindexoflist=$for_index-1;
$sum_index=$bit+1;
print DATA"
assign cout= g[${bit}]|p[${bit}]&gnpg_level${endindex}[${endindexoflist}];
generate
   for (i = 1;i<${sum_index} ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level${endindex}[i-1];    
   end
endgenerate
";
}
else  {
   for (my $i = 1; $i <int($log2_bit)+1 ; $i++){
            print DATA"
wire [${max_of_pg}:0] gnpg_level${i};
wire [${max_of_pg}:0] pp_level${i};";}
   for ( my $i = 1; $i <$depthofbk+1 ; $i++)
      {
         $skip_index=2**$i;
         $minus_index=$skip_index/2;
         if ($i==1) {
            print DATA"
             generate
               for (i = 1;i<${bit} ;i=i+${skip_index} ) begin
                assign gnpg_level${i}[i]=g${j}[i]|p${j}[i]&g${j}[i-${minus_index}];  
                assign pp_level${i}[i]=p${j}[i]&p${j}[i-${minus_index}];     
               end
            endgenerate
             generate
                for (i = 0;i<${bit} ;i=i+${skip_index}) begin
                 assign gnpg_level${i}[i]=g${j}[i];  
                 assign pp_level${i}[i]=p${j}[i];     
               end
            endgenerate";}
         else {
            $j=$i-1;
            $old_pass_index=$bit/$skip_index;
            print DATA"
             generate
              for (i = $skip_index-1 ;i<${bit};i=i+${skip_index}) begin
                assign gnpg_level${i}[i]=gnpg_level${j}[i]|pp_level${j}[i]&gnpg_level${j}[i-${minus_index}];  
                assign pp_level${i}[i]=pp_level${j}[i]&pp_level${j}[i-${minus_index}];            
              end
            endgenerate ";
            for (my $k = 0; $k <$old_pass_index ; $k++) {
               print DATA "generate
              for (i = 0;i<${skip_index}-1 ;i=i+1) begin
                assign gnpg_level${i}[ ${skip_index}*${k}+i]=gnpg_level${j}[ ${skip_index}*${k}+i];
                assign pp_level${i}[ ${skip_index}*${k}+i]=pp_level${j}[ ${skip_index}*${k}+i];
               end
            endgenerate ";
            } }  }

$skip_index=2**($depthofbk+1)-1;
    for (my $i = 1; $i <$depthofks+1 ; $i++){
        $assign_index=$depthofbk+$i;
        $last_index=$depthofbk+$i-1;
        $add_index=2**$depthofbk;
        print ("${skip_index}\n");
            print DATA"
            //KS 
            generate
              for (i = 0;i<(${bit}-${skip_index}) ;i=i+${add_index}) begin
                assign gnpg_level${assign_index}[${skip_index}+i]=gnpg_level${last_index}[${skip_index}+i]|pp_level${last_index}[${skip_index}+i]&gnpg_level${last_index}[${skip_index}+i-${i}*${add_index}];
                assign pp_level${assign_index}[${skip_index}+i]=pp_level${last_index}[${skip_index}+i]&pp_level${last_index}[${skip_index}+i-${i}*${add_index}];
               end
            endgenerate";
            print DATA"
            generate
              for (i = 0;i<${skip_index};i=i+1) begin
                assign gnpg_level${assign_index}[i]=gnpg_level${last_index}[i];
                assign pp_level${assign_index}[i]=pp_level${last_index}[i];
               end
            endgenerate
            ";
     
     $loop_index=($bit-1-$skip_index)/$add_index;
      for ( my $j = 0; $j <$loop_index ; $j++)
      {
        $start=$skip_index+$add_index*$j;
        $end=$skip_index+$add_index*($j+1);
        print DATA "
        generate
            for (i = ${start}+1;i<${end};i=i+1) begin
               assign gnpg_level${assign_index}[i]=gnpg_level${last_index}[i];
               assign pp_level${assign_index}[i]=pp_level${last_index}[i];
            end
            endgenerate
        "
    }
    $skip_index+=$add_index*2**($i-1);
    print("${skip_index}\n");
}}



# print DATA"
# generate
#      for (i = 0;i<32 ;i=i+1 ) begin
#         assign gnpg_level1[i]=g[i*2+1]|p[i*2+1]&g[2*i];  // gnpg[0]=g1+p1g0
#         assign pp_level1[i]=p[i*2+1]&p[i*2];              // pp[0]=p1p0
#    end
# endgenerate

# "
print DATA"
endmodule

";
    

