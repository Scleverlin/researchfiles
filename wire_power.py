def extract_net_data (filepath):
    net_result =[]
    total_result =[]
    with open(filepath, 'r') as file:
        
       
        for ranges in range (0,11):
            tmp= file.readline()
            # print (tmp)
        for line in file:
             # print (line)
             if line.strip() == '---------------------------------------------------------------------------------------------------------':
               break
             data = line.split()
             net_result.append(float(data[-3])) 
            #  print(float(data[-3]))
             total_result.append(float(data[-1]))      
            #  print(float(data[-1]))
    return net_result, total_result

filepath="/home/shi/tempus/test.net"

net_result, total_result = extract_net_data(filepath)
# print(net_result)
# print(total_result)

net_c =0.0
for result_item in net_result:
   net_c  =float(result_item)+net_c
print(net_c)

total_c =0.0
for result_item in total_result:
    total_c  =float(result_item)+total_c
print(total_c)

wire_c_ratio = net_c/total_c
print("Wire capacitance ratio is ",wire_c_ratio*100,"%")

def find_power_data (filepath):
    total_power=0
    leakage_power=0
    switching_power=0
    with open(filepath, 'r') as file:
        for line in file:
             line = line.strip()  # 去除行两端的空格
             if not line:  # 如果行为空，则跳过当前循环迭代
               continue
             data = line.split()
            #  print(data[0])
             if (data[0]) == 'Default':
                 total_power = float(data[-2])
                 leakage_power = float(data[-3])
                 switching_power = float(data[-4])
                 break
    return total_power,leakage_power,switching_power

filepath="/home/shi/tempus/test.power"

total_power,leakage_power,switching_power = find_power_data(filepath)
print("Total power is ",total_power)
print("Leakage power is ",leakage_power)
print("Switching power is ",switching_power)


wire_power= switching_power*wire_c_ratio
print("Wire power is ",wire_power)

wire_power_ratio = wire_power/total_power
print("Wire power ratio is ",wire_power_ratio*100,"%")
