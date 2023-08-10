import math

def log2(x):
    return math.log(x)/math.log(2)
def bk_tree_count_with_N_bit (depth,N_bit):
    temp_bit=N_bit/2
    total_wirelength=0
    if depth  > log2(N_bit):
        print("depth is too large")
        return 0
    else:
         for i in range(1,depth+1):
            width=2**(i-1)
            # print("width is",width)
            length=1
            c=width*width+length*length
            wire_length=math.sqrt(c)
            # print ("wire length is",wire_length)
            wireofthislevel=temp_bit*wire_length
            # print ("wire of this level is",wireofthislevel)
            total_wirelength=wireofthislevel+total_wirelength
            temp_bit=temp_bit/2
    return total_wirelength

depth=6

N_bit=64
# print(bk_tree_count_with_N_bit(depth,N_bit))

def post_processing_stage(depthofbk,N_bit):
    num_of_node=N_bit/2**depthofbk
    total_wirelength=0
    if N_bit==2**depthofbk:
        # print ("N_bit is equal to 2**depthofbk")
        for i in range(1,depthofbk):
           total_wirelength=bk_tree_count_with_N_bit (i,2**i)+total_wirelength
        #    print (total_wirelength)
    elif N_bit>2**depthofbk:
        total_wirelength=(num_of_node-1)*bk_tree_count_with_N_bit(depthofbk,2**depthofbk)
        for i in range(1,depthofbk):
            total_wirelength=bk_tree_count_with_N_bit (i,2**i)+total_wirelength
            # print (total_wirelength)
    # print ("total_wirelength is",total_wirelength)        
    return total_wirelength    
        

# print (post_processing_stage(depth,N_bit))

def SA_width (depthofSA,N_bit):
    total_depth=log2(N_bit)
    depthofbk=total_depth-depthofSA
    num_of_node=2**depthofSA
    num_of_wire_of_each_level=num_of_node/2
    # print ("num_of_wire_of_each_level is",num_of_wire_of_each_level)
    width_of_first_level=2**(depthofbk)
    # print ("width_of_first_level is",width_of_first_level)
    total_wire_length=0
    total_wire_length_of_each_level=0
    for i in range(1,depthofSA+1):
        total_wire_length_of_each_level=0
        # print("now is loop of",i)
        for j in range (1,2**(i-1)+1):
            length=1
            c=j*width_of_first_level*j*width_of_first_level+length*length
            wire_length=math.sqrt(c)
            # print ("wire_length is",wire_length)
            # print ("key index is",(num_of_wire_of_each_level/(2**(i-1))))
            total_wire_length_of_each_level+=(num_of_wire_of_each_level/(2**(i-1))) *wire_length
            # print ("total_wire_length_of_each_level is",total_wire_length_of_each_level)
        total_wire_length+=total_wire_length_of_each_level    
    return total_wire_length
# print (SA_width(2,16))    
    

def BK_SA (N_bit,depthofbk):
    total_depth=log2(N_bit)
    depthofSA=int(total_depth-depthofbk)
    print ("depth of bk is",depthofbk)
    bkwirelength=bk_tree_count_with_N_bit (depthofbk,N_bit)
    print ("bkwirelength is",bkwirelength)
    post_processing_wire=post_processing_stage(depthofbk,N_bit)
    print ("post_processing_wire is",post_processing_wire)
    SA_width_wire=SA_width (depthofSA,N_bit)
    print ("SA_width_wire is",SA_width_wire)
    depthof_post=depthofbk
    if depthofbk==total_depth-1 or depthofbk==total_depth:
        depthof_post=total_depth-1
    print ("depth of post processing is",depthof_post)
    print ("wire from depth of the tree",N_bit*(total_depth+depthof_post))
    return bkwirelength+post_processing_wire+SA_width_wire+N_bit*(total_depth+depthof_post)

for i in range (0,7):
    print ("\n now is",i,"\n")
    print ("-----------------------------")
    print ("Total Wire length of this couple is ",BK_SA (64,i))

def KS_wire (depthofks,N_bit):
    total_depth=log2(N_bit)
    depthofbk=total_depth-depthofks
    num_of_node=2**depthofks
    wire_num=num_of_node
    width_of_first_level=2**(depthofbk)
    total_wire_length=0
    for i in range(1,depthofks+1):
            length=1
            index=2**(i-1)
            c=index*width_of_first_level*index*width_of_first_level+length*length
            wire_length=math.sqrt(c)
            total_wire_length+=wire_length*(wire_num-index)
            
    return total_wire_length
    
print (KS_wire(4,16))
def HC_adder(N_bit,depthofbk):
    total_depth=log2(N_bit)
    depthofks=int(total_depth-depthofbk)
    print ("depth of bk is",depthofbk)
    bkwirelength=bk_tree_count_with_N_bit (depthofbk,N_bit)
    print ("bkwirelength is",bkwirelength)
    post_processing_wire=post_processing_stage(depthofbk,N_bit)
    print ("post_processing_wire is",post_processing_wire)
    KS_wire_length = KS_wire(depthofks,N_bit)
    print ("KS_wire_length is",KS_wire_length)
    depthof_post=depthofbk
    if depthofbk==total_depth-1 or depthofbk==total_depth:
         depthof_post=total_depth-1
    print ("depth of post processing is",depthof_post)
    print ("wire from depth of the tree",N_bit*(total_depth+depthof_post))
    return bkwirelength+post_processing_wire+KS_wire_length+N_bit*(total_depth+depthof_post)

for i in range (0,7):
    print ("\n now is",i,"\n")
    print ("-----------------------------")
    print ("Total Wire length of this couple is ",HC_adder (64,i))
