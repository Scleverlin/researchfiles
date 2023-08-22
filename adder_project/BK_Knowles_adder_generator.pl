

$depthofkl = $ARGV[2];
$depthofbk = $ARGV[1];
$fanout    = $ARGV[3];
$bit       = $ARGV[4];

$log2_bit = log($bit) / log(2);
$log2_fanout=log($fanout)/log(2);
# print ("$log2_bit\n");
if ($log2_fanout >= $depthofkl) {
    die "Error: Log of Fanout must be smaller than depth of KL  \n";
}
if ($log2_fanout + $depthofbk >= int($log2_bit)) {
    die "Error: Log of Fanout plus depth of Bk must be smaller than Depth of the Tree
         Your input is Log${fanout}+${depthofbk} >=${log2_bit}\n";
}

open(DATA, ">./adder_gen/Hybrid_${bit}_BK${depthofbk}_KL${depthofkl}_Fanout${fanout}.v") or die "BK${depthofbk}_KL${depthofkl}_Fanout${fanout}.v 文件无法打开, $!";
open(DATA2 , ">>./adder_names.txt");
print DATA2 "Hybrid_${bit}_BK${depthofbk}_KL${depthofkl}_Fanout${fanout}_top\n";
open(DATA3 , ">>./adder_path.txt");
print DATA3 "./adder_gen/Hybrid_${bit}_BK${depthofbk}_KL${depthofkl}_Fanout${fanout}.v\n";

open(DATA4 , ">>./adder_veri.txt");
print DATA4 "perl /home/shi/research/adder_project/verfication_gen.pl -w Hybrid_${bit}_BK${depthofbk}_KL${depthofkl}_Fanout${fanout} ${bit}  \n";

$max_of_pg=$bit-1;

print DATA "
/* verilator lint_off UNUSEDSIGNAL */
module Hybrid_${bit}_BK${depthofbk}_KL${depthofkl}_Fanout${fanout}_top (a,b,cin,sum,cout,clk,rst);
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
Hybrid_${bit}_BK${depthofbk}_KL${depthofkl}_Fanout${fanout} u0 (a,b,cin_r,sum_w,cout_w);
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

module pg_gen_bk_kl_${bit} (a,b,cin,p,g);
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
module Hybrid_${bit}_BK${depthofbk}_KL${depthofkl}_Fanout${fanout} (a,b,cin,sum,cout);

input [${bit}:1]a;
input [${bit}:1]b;
input cin;
output [${bit}:1]sum;
output cout;
wire [${bit}:0]p;
wire [${bit}:0]g;
pg_gen_bk_kl_${bit} pg_gen_bkkl (a,b,cin,p,g);
";
$fanout_preprocess= $log2_fanout;
$for_index= $bit;
print DATA"genvar i;
";
if ($depthofbk==0){
   $flagofpreprocess=$fanout_preprocess;
   $fanout_stage=1;
 for (my $i = 1; $i < int($log2_bit)+1 ; $i++) {
     $minux_index= 2**($i-1);
     $starting_point=$minux_index;
     $add_index=2**$i;
   print DATA"
 wire [${max_of_pg}:0] gnpg_level${i};
 wire [${max_of_pg}:0] pp_level${i};  ";
        # for i==1, gnpg and pp are from G and P
        if ($i==1) {
          print "Knowles_adder ! \n";
          
          for (my $k = 0; $k < $bit  ; $k=$k+$fanout){
          print DATA "
          // pre process
           generate
            for (i = 1;i<${fanout} ;i=i+1 ) begin
              assign  gnpg_level${i}[${k}+i]=g[${k}+i]|p[${k}+i]&g[i+${k}-1]; 
              assign  pp_level${i}[${k}+i]=p[${k}+i]&p[i+${k}-1];
            end
           endgenerate

          ";}
          for (my $k = 0; $k < $bit  ; $k=$k+$fanout){
          print DATA "
          // old pass
            generate
            for (i = 0;i<${minux_index}  ;i=i+1 ) begin
              assign  gnpg_level${i}[${k}+i]=g[${k}+i]; 
              assign  pp_level${i}[${k}+i]=p[${k}+i];
            end 
            endgenerate";

        }    
         $flagofpreprocess=$flagofpreprocess-1;}
       # other situation, gnpg and pp are from previous level
        else {

        $j=$i-1;
       print "Knowles_adder  ! \n";
        if ($flagofpreprocess>0){
          for (my $k = 0; $k < $bit  ; $k=$k+$fanout){
          print DATA "
          // pre process continue last ${flagofpreprocess}
           generate
            for (i = ${starting_point};i<${fanout} ;i=i+1 ) begin
              assign  gnpg_level${i}[${k}+i]=gnpg_level${j}[${k}+i]|pp_level${j}[${k}+i]&gnpg_level${j}[i+${k}-${minux_index}]; 
              assign  pp_level${i}[${k}+i]=pp_level${j}[${k}+i]&pp_level${j}[i+${k}-${minux_index}];
            end
           endgenerate
          ";}
 for (my $k = 0; $k < $bit ; $k=$k+$fanout){
         print DATA "
            generate
            for (i = 0;i<${minux_index} ;i=i+1 ) begin
              assign  gnpg_level${i}[${k}+i]=gnpg_level${j}[${k}+i]; 
              assign  pp_level${i}[${k}+i]=pp_level${j}[${k}+i];
            end 
            endgenerate";}
          $flagofpreprocess=$flagofpreprocess-1;
                }
         else {
          # Multiple fanout stage
         $fanout_start=$fanout*(2**($fanout_stage-1));      
          print DATA"
          // old pass
         generate
          for (i = 0;i<${fanout_start} ;i=i+1) begin
              assign  gnpg_level${i}[i]=gnpg_level${j}[i]; 
              assign  pp_level${i}[i]=pp_level${j}[i];
          end 
         endgenerate";         
         for (my $k = $fanout_start; $k < $bit  ; $k=$k+$fanout){
         $tmp=$fanout*(2**($fanout_stage-1));
         print DATA "
         // Multiple fanout stage
         generate
           for (i = ${k};i<${fanout}+${k} ;i=i+1) begin
              assign  gnpg_level${i}[i]=gnpg_level${j}[i]|pp_level${j}[i]&gnpg_level${j}[${k}+${fanout}-1-${tmp}];
              assign  pp_level${i}[i]=pp_level${j}[i]&pp_level${j}[${k}+${fanout}-1-${tmp}];
           end 
         endgenerate
         ";
         }
        
          $fanout_stage=$fanout_stage+1;
         }
                
                
                
                }}
#for loop over
   $endindex=int($log2_bit);
   $endindexoflist=$for_index-1;
   $sum_index=$bit+1;
   print DATA"
   assign cout= g[${bit}]|p[${bit}]&gnpg_level${endindex}[${endindexoflist}];
   generate
    for (i = 1;i<${sum_index} ;i=i+1 ) begin
        assign  sum[i]= p[i]^gnpg_level${endindex}[i-1];    
    end
   endgenerate";}
#Hybird BK Knowles
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
                assign gnpg_level${i}[i]=g[i]|p${j}[i]&g[i-${minus_index}];  
                assign pp_level${i}[i]=p[i]&p[i-${minus_index}];     
               end
            endgenerate
             generate
                for (i = 0;i<${bit} ;i=i+${skip_index}) begin
                 assign gnpg_level${i}[i]=g[i];  
                 assign pp_level${i}[i]=p[i];     
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
#Knowles tree begins
$w=2**$depthofbk;
#start point in the first level of Knowles tree
$a=2**$depthofbk-1;
$fanout_stage=1;
print ("Start point is ${a}\n");
#start point in the first level of Knowles tree
$flagofpreprocess=$fanout_preprocess;
print ("The starting width caused by BK tree is ${w}\n");

for (my $i=1;$i<$depthofkl+1;$i++) {
    $start_point=$a+$w*(2**($i-1));
    $assign_index=$depthofbk+$i;
    $minux_index= $w*(2**($i-1));
     print ("Hybird work!\n");
    $j=$assign_index-1;
    $initial_index=$a+$w*(2**($i-1));
    if ($flagofpreprocess>0){
          for (my $k = $a; $k < $bit  ; $k=$k+$w*$fanout){
         print "k is ${k}\n";
         print "start point is ${start_point}\n";
          print DATA "
          // pre process continue last ${flagofpreprocess}
           generate
            for (i = ${minux_index};i<${w}*${fanout} ;i=i+${w}) begin
              assign  gnpg_level${assign_index}[${k}+i]=gnpg_level${j}[${k}+i]|pp_level${j}[${k}+i]&gnpg_level${j}[i+${k}-${minux_index}]; 
              assign  pp_level${assign_index}[${k}+i]=pp_level${j}[${k}+i]&pp_level${j}[i+${k}-${minux_index}];
            end
           endgenerate
          ";}
    for (my $k = $a+$w*$fanout; $k < $bit ; $k=$k+$w*$fanout){
         print DATA "
         // strange part
            generate
            for (i = 0;i<${minux_index} ;i=i+${w} ) begin
              assign  gnpg_level${assign_index}[${k}+i]=gnpg_level${j}[${k}+i]; 
              assign  pp_level${assign_index}[${k}+i]=pp_level${j}[${k}+i];
            end 
            endgenerate";}
    $flagofpreprocess=$flagofpreprocess-1;
          print DATA "
          // before start point
            generate
            for (i = 0;i<${start_point} ;i=i+1 ) begin
              assign  gnpg_level${assign_index}[i]=gnpg_level${j}[i]; 
              assign  pp_level${assign_index}[i]=pp_level${j}[i];
            end 
            endgenerate  
          ";
        for (my $k = $start_point; $k < $bit ; $k=$k+$w){
         if ($k+1<$bit){
         $tmp=$k+1;
         #  print ("k+1=${tmp}\n");
          print DATA "
          // space between point and next point
            generate
            for (i = ${k}+1;i<${k}+${w};i=i+1 ) begin
              assign  gnpg_level${assign_index}[i]=gnpg_level${j}[i]; 
              assign  pp_level${assign_index}[i]=pp_level${j}[i];
            end 
            endgenerate  
          "; }}
    }
    else {
          # Multiple fanout stage
         $fanout_start=$a+$w*$fanout*(2**($fanout_stage-1));      
          print DATA"
          // old pass
         generate
          for (i = 0;i<${fanout_start} ;i=i+1) begin
              assign  gnpg_level${assign_index}[i]=gnpg_level${j}[i]; 
              assign  pp_level${assign_index}[i]=pp_level${j}[i];
          end 
         endgenerate";         
         $fanout_add_index=2**($fanout_stage-1);
         for (my $k = $fanout_start; $k < $bit  ; $k=$k+$w*$fanout){
         $tmp=$fanout*(2**($fanout_stage-1));
 
         print DATA "
         // Multiple fanout stage
         generate
           for (i = ${k};i<${w}*${fanout}+${k} ;i=i+${w}) begin
              assign  gnpg_level${assign_index}[i]=gnpg_level${j}[i]|pp_level${j}[i]&gnpg_level${j}[${k}+${w}*${fanout}-${w}-${w}*${tmp}];
              assign  pp_level${assign_index}[i]=pp_level${j}[i]&pp_level${j}[${k}+${w}*${fanout}-${w}-${w}*${tmp}];
           end 
         endgenerate
         ";
         }
        for (my $k = $fanout_start; $k < $bit ; $k=$k+$w){
               if ($k+1<$bit){
         $tmp=$k+1;
         #  print ("k+1=${tmp}\n");
          print DATA "
            generate
            for (i = ${k}+1;i<${k}+${w};i=i+1 ) begin
              assign  gnpg_level${assign_index}[i]=gnpg_level${j}[i]; 
              assign  pp_level${assign_index}[i]=pp_level${j}[i];
            end 
            endgenerate  
          "; }}
        
          $fanout_stage=$fanout_stage+1;
         }
         }


#for loop of KL stage over


}

#post process

$depthoftree=int($log2_bit);
if ($depthofbk==0){
   print DATA" // ${depthofkl} is deep enough , no post process"
}
else {

$final_index=$depthofbk+int($log2_bit);
}

if ($depthofbk==1){
   print DATA" 
wire [${max_of_pg}:0] gnpg_level${final_index};
assign gnpg_level${final_index}[0]=gnpg_level${depthoftree}[0];
assign gnpg_level${final_index}[${bit}-1]=gnpg_level${depthoftree}[${bit}-1];

generate
    for (i = 1 ;i<${bit}/2;i=i+1) begin
      assign gnpg_level${final_index}[2*i]=gnpg_level${depthoftree}[2*i]|pp_level${depthoftree}[2*i]&gnpg_level${depthoftree}[2*i-1];
      assign gnpg_level${final_index}[2*i-1]=gnpg_level${depthoftree}[2*i-1];
   end
 endgenerate   
assign sum[${bit}:1]=p[${bit}:1]^gnpg_level${final_index}[${bit}-1:0];
assign cout =g[${bit}]|p[${bit}]&gnpg_level${final_index}[${bit}-1];
   ";

}
elsif($depthofbk>1) {
   print ("index!\n");
   if ($depthofbk== int($log2_bit)){
       $depthofbk=int($log2_bit)-1;
       print ("${depthofbk}\n");
       $final_index=$final_index-1;
   }
    print DATA"
    wire [${max_of_pg}:0] gnpg_level${final_index};  
    ";

 for (my $i = 2; $i <$depthofbk+1 ; $i++) {
    $level_index=$final_index-$i+1;
    $max_nodes= 2*($bit-2**$i)/2**$i;    
    print DATA"
    wire [${max_nodes}-1:0] gnpg_level${level_index};   
    wire [${max_nodes}-1:0] pp_level${level_index}; 
    ";
}
$last_final_index=$final_index-1;
print DATA "
assign sum[${bit}:1]=p[${bit}:1]^gnpg_level${final_index}[${bit}-1:0];
assign cout =g[${bit}]|p[${bit}]&gnpg_level${final_index}[${bit}-1];
assign gnpg_level${final_index}[0]=gnpg_level${depthoftree}[0];
assign gnpg_level${final_index}[1]=gnpg_level${depthoftree}[1];
assign gnpg_level${final_index}[2]=gnpg_level${depthoftree}[2]|pp_level${depthoftree}[2]&gnpg_level${depthoftree}[1];
assign gnpg_level${final_index}[${max_of_pg}]=gnpg_level${depthoftree}[${max_of_pg}];
generate 
   for (i = 1;i<(${bit}-2)/2 ;i=i+1 ) begin
      assign gnpg_level${final_index}[2*i+1]=gnpg_level${last_final_index}[i-1];
   end
endgenerate
generate 
   for (i = 2;i<${bit}/2 ;i=i+1 ) begin
      assign gnpg_level${final_index}[2*i]=gnpg_level${depthoftree}[2*i]|pp_level${depthoftree}[2*i]&gnpg_level${last_final_index}[i-2];
   end
endgenerate
";
$j=1;
for ($i = $depthofbk-1; $i>0 ; $i--) {
$current_index=$depthoftree+$i;
$mul_index=2**$j;
$j++;
$start_point=2**$j-1;
$max_nodes= 2*($bit-2**$j)/2**$j; 
$before_index=$current_index-1;
if ($before_index!=$depthoftree){
print DATA"

assign gnpg_level${current_index}[0]=gnpg_level${depthoftree}[${start_point}];
assign gnpg_level${current_index}[1]=gnpg_level${depthoftree}[${mul_index}+${start_point}]|pp_level${depthoftree}[${mul_index}+${start_point}]&gnpg_level${depthoftree}[${mul_index}+${start_point}-${mul_index}];
generate 

   for (i = 3;i<${max_nodes};i=i+2 ) begin
      assign gnpg_level${current_index}[i]=gnpg_level${depthoftree}[${mul_index}*i+${start_point}]|pp_level${depthoftree}[${mul_index}*i+${start_point}]&gnpg_level${before_index}[(i-3)/2];
   end
endgenerate
generate 

   for (i = 2;i<${max_nodes} ;i=i+2 ) begin
      assign gnpg_level${current_index}[i]=gnpg_level${before_index}[i/2-1];
   end
endgenerate

";}
else {
$temp=2**($depthofbk-1);
print DATA"
//1111
assign gnpg_level${current_index}[0]=gnpg_level${depthoftree}[${start_point}];
assign gnpg_level${current_index}[1]=gnpg_level${depthoftree}[${mul_index}+${start_point}]|pp_level${depthoftree}[${mul_index}+${start_point}]&gnpg_level${depthoftree}[${mul_index}+${start_point}-${mul_index}];
generate 
//1111
   for (i = 3;i<${max_nodes};i=i+2 ) begin
      assign gnpg_level${current_index}[i]=gnpg_level${depthoftree}[${mul_index}*i+${start_point}]|pp_level${depthoftree}[${mul_index}*i+${start_point}]&gnpg_level${before_index}[${mul_index}*i+${start_point}-${temp}];
   end
endgenerate
generate 
//1111
   for (i = 2;i<${max_nodes} ;i=i+2 ) begin
      assign gnpg_level${current_index}[i]=gnpg_level${before_index}[${mul_index}*i+${start_point}];
   end
endgenerate
";
   
}

}

}


# "
print DATA"
endmodule

";
