#Knowles tree begins
$w=2**$depthofbk;
#start point in the first level of Knowles tree
$a=2**$depthofbk-1;
$flagofpreprocess=$fanout_preprocess;

for (my $i=1;$i<$depthofkl+1;$i++) {
    $start_point=$a+$w*(2**($i-1));
    $assign_index=$depthofbk+$i;
    $minux_index= $w*(2**($i-1));
     print ("Hybird work!\n");
    $j=$assign_index-1;
    $initial_index=$a+$w*(2**($i-1));
    if ($flagofpreprocess>0){
          for (my $k = $a; $k < $bit  ; $k=$k+$w*$fanout){
          print DATA "
          // pre process continue last ${flagofpreprocess}
           generate
            for (i = ${start_point};i<${w}*${fanout} ;i=i+${w}) begin
              assign  gnpg_level${assign_index}[${k}+i]=gnpg_level${j}[${k}+i]|pp_level${j}[${k}+i]&gnpg_level${j}[i+${k}-${minux_index}]; 
              assign  pp_level${assign_index}[${k}+i]=pp_level${j}[${k}+i]&pp_level${j}[i+${k}-${minux_index}];
            end
           endgenerate
          ";}
    for (my $k = $a; $k < $bit ; $k=$k+$w*$fanout){
         print DATA "
            generate
            for (i = 0;i<${minux_index} ;i=i+${w} ) begin
              assign  gnpg_level${assign_index}[${k}+i]=gnpg_level${j}[${k}+i]; 
              assign  pp_level${assign_index}[${k}+i]=pp_level${j}[${k}+i];
            end 
            endgenerate";}
    $flagofpreprocess=$flagofpreprocess-1;
          print DATA "
            generate
            for (i = 0;i<${start_point} ;i=i+1 ) begin
              assign  gnpg_level${assign_index}[i]=gnpg_level${j}[i]; 
              assign  pp_level${assign_index}[i]=pp_level${j}[i];
            end 
            endgenerate  
          ";
        for (my $k = $start_point; $k < $bit ; $k=$k+$w){
          print DATA "
            generate
            for (i = ${k}+1;i<${k}+${w};i=i+1 ) begin
              assign  gnpg_level${assign_index}[i]=gnpg_level${j}[i]; 
              assign  pp_level${assign_index}[i]=pp_level${j}[i];
            end 
            endgenerate  
          "; }
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
         for (my $k = $fanout_start; $k < $bit  ; $k=$k+$w*$fanout){
         print DATA "
         // Multiple fanout stage
         generate
           for (i = ${k};i<${fanout}+${k} ;i=i+${w}) begin
              assign  gnpg_level${assign_index}[i]=gnpg_level${j}[i]|pp_level${j}[i]&gnpg_level${j}[${k}-${w}];
              assign  pp_level${assign_index}[i]=pp_level${j}[i]&pp_level${j}[${k}-${w}];
           end 
         endgenerate
         ";
         }
        for (my $k = $fanout_start; $k < $bit ; $k=$k+$w){
          print DATA "
            generate
            for (i = ${k}+1;i<${k}+${w};i=i+1 ) begin
              assign  gnpg_level${assign_index}[i]=gnpg_level${j}[i]; 
              assign  pp_level${assign_index}[i]=pp_level${j}[i];
            end 
            endgenerate  
          "; }
        
          $fanout_stage=$fanout_stage+1;
         }
         }