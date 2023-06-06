import os
import pandas as pd

def get_slack_time(filename):
    with open(filename, 'r') as f:
        for line in f:
            if "= Slack Time" in line:
                try:
                    slack_time_start = line.find("= Slack Time") + len("= Slack Time")
                    slack_time = float(line[slack_time_start:].strip())
                    return slack_time
                except ValueError:
                    print("无法将- Slack Time后的字符转换为浮点数。请检查文件格式。")
                    return None

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
    cin_r_reg_counter = 0
    
    with open(filepath, 'r') as file:
        for _ in range(25):
            tmp= file.readline()
        first_line = file.readline().split()
        # print(first_line)
        if first_line[0] == '-' or 'cin_r_reg':
            for line in file:
                data = line.split()
                if len(data) > 0:
                    current_unit = data[0]
                # print(current_unit)
                if current_unit == 'cin_r_reg':
                    cin_r_reg_counter += 1
                if cin_r_reg_counter == 1:
                    result.append(float(data[-4]))
                    print("FF delay : ",data[-4],"\n")
                    cin_r_reg_counter = 0
                if current_unit != prev_unit:  
                    flag = 1 
                elif flag == 1:  
                   if len(data) > 0:
                     result.append(float(data[-4]))  
                   flag = 0  
                prev_unit = current_unit  
            return result
        # 处理第一行数据
        # current_unit = first_line[0]
        # prev_unit = current_unit
        # flag = 1
        # for line in file:
        #     data = line.split()
        #     if len(data) > 0:
        #      current_unit = data[0]
        #     if current_unit == 'cin_r_reg':
        #         cin_r_reg_counter += 1
        #     if cin_r_reg_counter == 2:
        #         result.append(float(data[-4]))
        #         cin_r_reg_counter = 0
        #     if current_unit != prev_unit:  
        #         if flag == 1:
        #             if len(data) > 0:
        #              result.append(float(data[-4])) 
        #         flag = 1  
        #     elif flag == 1: 
        #         result.append(float(data[-4]))  
        #         flag = 0  

        #     prev_unit = current_unit 

    return result

def process_files(directory, topmodules):
    data = []
    for topmodule in topmodules:
        for freq in [f'{x/2:.1f}' for x in range(1, 17)]:
            filename = f'{topmodule}_{freq}.timing'
            filepath = os.path.join(directory, filename)
            if os.path.isfile(filepath):
                print(f'Processing file: {filepath}')
                arrival_time = get_arrival_time(filepath)
                slack_time = get_slack_time(filepath)  # 提取slack time
                gate_delays = extract_data(filepath)
                gate_delay = sum(gate_delays)
                wire_delay = arrival_time - gate_delay
                wire_delay_ratio = wire_delay / arrival_time
                data.append([topmodule, freq, arrival_time, gate_delay, wire_delay, wire_delay_ratio, slack_time])  # 添加slack time到结果中
    df = pd.DataFrame(data, columns=['Module', 'Frequency', 'Arrival Time', 'Gate Delay', 'Wire Delay', 'Wire Delay Ratio', 'Slack Time'])  # 在列名中添加'Slack Time'
    return df



directory = "/home/shi/tempus/ASAP7"
topmodules = ["top_4_64_top", "top_8_64_top","top_16_64_top","RCA_64bit_top","top16block_top","top8block_top","top4block_top","BK_adder_64_16bit_top","BK_64_with_8_block_top","KSA_64_bit","CLA_shi_top","CLA_HAN_SHI_top","CLA_4_bit_old_top","CLA_8_bit_old_top","CLA_16_bit_old_top","CLA_HAN_32bit_block_64bit_top","CLA_HAN_shi_8_top"]
df = process_files(directory, topmodules)


df.to_excel('_asap7__wire_delay_output.xlsx', index=False)
