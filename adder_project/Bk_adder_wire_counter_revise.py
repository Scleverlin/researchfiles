import math
import sympy as sp
length = sp.symbols('b')
width_sym=sp.symbols('a')
# bit_nums=sp.symbols('N')
# depthofbk_nums=sp.symbols('K')
# length = 1.00248135690729
# width_sym=0.57
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
            width=2**(i-1)*width_sym
            # print("width is",width)
            c=width*width+length*length
            # wire_length=math.sqrt(c)
            wire_length=sp.sqrt(c)
            # print ("wire length is",wire_length)
            wireofthislevel=temp_bit*wire_length
            # print ("wire of this level is",wireofthislevel)
            total_wirelength=wireofthislevel+total_wirelength
            temp_bit=temp_bit/2
    return total_wirelength

print (bk_tree_count_with_N_bit(6,64))
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
    width_of_first_level=2**(depthofbk)*width_sym
    # print ("width_of_first_level is",width_of_first_level)
    total_wire_length=0
    total_wire_length_of_each_level=0
    for i in range(1,depthofSA+1):
        total_wire_length_of_each_level=0
        # print("now is loop of",i)
        for j in range (1,2**(i-1)+1):
            c=j*width_of_first_level*j*width_of_first_level+length*length
            # wire_length=math.sqrt(c)
            wire_length=sp.sqrt(c)
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
    print ("Wire from Bk is",bkwirelength)
    post_processing_wire=post_processing_stage(depthofbk,N_bit)
    print ("post_processing_wire is",post_processing_wire)
    SA_width_wire=SA_width (depthofSA,N_bit)
    print ("Wire from SA is",SA_width_wire)
    depthof_post=depthofbk
    if depthofbk==total_depth-1 or depthofbk==total_depth:
        depthof_post=total_depth-1
    print ("depth of post processing is",depthof_post)
    print ("wire from depth of the tree",N_bit*(total_depth+depthof_post))
    return bkwirelength+post_processing_wire+SA_width_wire+N_bit*(total_depth+depthof_post)

# for i in range (0,7):
#     print ("\n now is BK SA, Bk depth is",i,"\n")
#     print ("-----------------------------")
#     print ("Total Wire length of this couple is ",BK_SA (64,i))
# print ("Total Wire length of this couple is ",BK_SA (64,0),"\n")
# print ("Total Wire length of this couple is ",BK_SA (64,1),"\n")
# print ("Total Wire length of this couple is ",BK_SA (64,1),"\n")

def KS_wire (depthofks,N_bit):
    total_depth=log2(N_bit)
    depthofbk=total_depth-depthofks
    num_of_node=2**depthofks
    wire_num=num_of_node
    width_of_first_level=2**(depthofbk)*width_sym
    total_wire_length=0
    for i in range(1,depthofks+1):
            index=2**(i-1)
            c=index*width_of_first_level*index*width_of_first_level+length*length
            # wire_length=math.sqrt(c)
            wire_length=sp.sqrt(c)
            total_wire_length+=wire_length*(wire_num-index)
            
    return total_wire_length
    
# print (KS_wire(4,16))

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
    return bkwirelength+post_processing_wire+KS_wire_length+N_bit*(total_depth+depthof_post)*length

equation=[]
for i in range (0,7):
    print ("\n now is hc_adder, BK depth is ",i,"\n")
    print ("-----------------------------")
    print ("Total Wire length of this couple is ",HC_adder (64,i))
    equation.append(HC_adder (64,i))
    print("equation is",equation)
    
a, b = sp.symbols('a b')
# equation1 = 384.0*b + 1024.0*sp.sqrt(a**2 + 0.0009765625*b**2) + 768.0*sp.sqrt(a**2 + 0.00390625*b**2) + 448.0*sp.sqrt(a**2 + 0.015625*b**2) + 240.0*sp.sqrt(a**2 + 0.0625*b**2) + 124.0*sp.sqrt(a**2 + 0.25*b**2) + 63*sp.sqrt(1.0*a**2 + b**2) - 1994

# equation2 = 448.0*b + 512.0*sp.sqrt(a**2 + 0.0009765625*b**2) + 384.0*sp.sqrt(a**2 + 0.00390625*b**2) + 224.0*sp.sqrt(a**2 + 0.015625*b**2) + 120.0*sp.sqrt(a**2 + 0.0625*b**2) + 62.0*sp.sqrt(a**2 + 0.25*b**2) + 63.0*sp.sqrt(a**2 + b**2) - 1290

initial_guess = (1, 1)
solutions = sp.nsolve([equation[1],equation[0]], [a, b], initial_guess)
print(solutions)

def knowles_BK_wire (N_bit,depthofbk,fanout):
    total_depth = log2(N_bit)
    depthofknowles=int(total_depth-depthofbk)
    widthoffirstlevel=2**(depthofbk)*width_sym
    num_of_nodes=2**depthofknowles
    total_wire_length=0
    if log2(fanout)+depthofbk>=total_depth:
        print ("fanout is too large")
        return 0
    else:
        for i in range (1,int(log2(fanout)+1)):
           wire_num_of_pre_process= (num_of_nodes/fanout)*(fanout-2**(i-1))
           index=2**(i-1)
           c=index*widthoffirstlevel*index*widthoffirstlevel+length*length
           wirelength=sp.sqrt(c)
           print ("wirelength of pre process is",wirelength)
           print ("wire_num_of_pre_process is",wire_num_of_pre_process)
           total_wire_length+=wirelength*wire_num_of_pre_process
        #finsih pre process
        print ("total_wire_length of pre process is",total_wire_length)  
        first_level_width_of_knowless=fanout*widthoffirstlevel
        for i in range (1,int(depthofknowles-log2(fanout)+1)):
            wire_length_of_each_cluster=0
            wire_cluster_num=num_of_nodes/fanout - 2**(i-1)
            for j in range (0,fanout):
                each_wire_length=first_level_width_of_knowless-j*widthoffirstlevel
                c=each_wire_length*each_wire_length+length*length
                wirelength=math.sqrt(c)
                wire_length_of_each_cluster+=wirelength*wire_cluster_num
            total_wire_length+=wire_length_of_each_cluster
            first_level_width_of_knowless=first_level_width_of_knowless*2
    return total_wire_length    

# print (knowles_BK_wire (64,2,4))

def BK_KL_with_post_processing (N_bit,depthofbk,fanout):
    total_depth=log2(N_bit)
    kb_wire=knowles_BK_wire (N_bit,depthofbk,fanout)
    post_wire=post_processing_stage(depthofbk,N_bit)
    depthof_post=depthofbk
    if depthofbk==total_depth-1 or depthofbk==total_depth:
         depthof_post=total_depth-1
    print ("depth of post processing is",depthof_post)
    print ("wire from depth of the tree",N_bit*(total_depth+depthof_post))
    return kb_wire+post_wire+N_bit*(total_depth+depthof_post)

c=[]
# for  i in range (2,33):
#    for j in range (0,7):
#     if log2(i)%1==0 and log2(i)+ j <6: 
#       print ("\n now fanout is",i,"\n")
#       print ("\n now BK depth is",j,"\n")
#       print ("-----------------------------")
#       print ("Total Wire length of this couple is ",BK_KL_with_post_processing(64,j,i) ) 
#       c.append([i,j])

# print (c)  
                     
               
    