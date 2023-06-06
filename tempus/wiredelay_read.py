def get_arrival_time(filename):
    with open(filename, 'r') as f:
        for line in f:
            if "- Arrival Time" in line:
                try:
                    arrival_time = float(line.split("- Arrival Time")[1].strip())
                    return arrival_time
                except ValueError:
                    print("无法将- Arrival Time后的字符转换为浮点数。请检查文件格式。")
                    return None
def extract_data(filepath):
    prev_unit = None
    flag = 0
    result = []  
    
    with open(filepath, 'r') as file:
        for ranges in range (0,25):
            tmp= file.readline()
            # print (tmp)
        first_line = file.readline().split()
        print (first_line)
        if first_line[0] == '-':

            for line in file:
                # print (line)
                data = line.split()
                if len(data) > 0:
                  current_unit = data[0]
                print(current_unit)
                if current_unit != prev_unit:  
                    flag = 1 
                elif flag == 1:  
                   if len(data) > 0:
                     result.append(float(data[-4]))  
                   flag = 0  
                prev_unit = current_unit  

            return result
        # 处理第一行数据
        current_unit = first_line[0]
        prev_unit = current_unit
        flag = 1
        for line in  file:
            data = line.split()
            if len(data) > 0:
             current_unit = data[0]
            if current_unit != prev_unit:  
                if flag == 1:
                    if len(data) > 0:
                     result.append(float(data[-4])) 
                flag = 1  
            elif flag == 1: 
                result.append(float(data[-4]))  
                flag = 0  

            prev_unit = current_unit 

    return result



file_path = "/home/shi/tempus/dec_cnfet7.timing"
result = extract_data(file_path)
print(result)
gate_delay =0
for result_item in result:
   gate_delay  =float(result_item)+gate_delay 
print( gate_delay )
arrival_time = get_arrival_time(file_path)
if arrival_time is not None:
    print("Arrival Time: ", arrival_time)
wire_delay =float (arrival_time) -gate_delay 
print ("Wire delay is ",wire_delay)
wire_delay_ratio = wire_delay / float (arrival_time)
print ("Wire delay ratio is ",wire_delay_ratio*100,"%")