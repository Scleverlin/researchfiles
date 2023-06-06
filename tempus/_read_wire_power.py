import os
import pandas as pd

# 你的函数
def extract_net_data(filepath):
    net_result =[]
    total_result =[]
    with open(filepath, 'r') as file:
        for ranges in range (0,11):
            tmp= file.readline()
            if not tmp:  # 如果文件在这之前结束了
                return net_result, total_result
        for line in file:
            if line.strip() == '---------------------------------------------------------------------------------------------------------':
                break
            data = line.split()
            if len(data) < 3:  # 如果这一行的数据不足3个
                continue
            net_result.append(float(data[-3])) 
            total_result.append(float(data[-1]))      
    return net_result, total_result
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

def process_files(directory, topmodules):
    data = []
    for topmodule in topmodules:
        for freq in [f'{x/2:.1f}' for x in range(1, 17)]:
            net_filename = f'{topmodule}_{freq}.net'
            power_filename = f'{topmodule}_{freq}.power'
            net_filepath = os.path.join(directory, net_filename)
            power_filepath = os.path.join(directory, power_filename)
            if os.path.isfile(net_filepath) and os.path.isfile(power_filepath):
                print(f'Processing files: {net_filepath}, {power_filepath}')
                net_result, total_result = extract_net_data(net_filepath)
                net_c = sum(net_result)
                total_c = sum(total_result)
                wire_c_ratio = net_c / total_c if total_c else 0
                total_power, leakage_power, switching_power = find_power_data(power_filepath)
                wire_power = switching_power * wire_c_ratio
                wire_power_ratio = wire_power / total_power if total_power else 0
                data.append([topmodule, freq, net_c, total_c, wire_c_ratio, total_power, leakage_power, switching_power, wire_power, wire_power_ratio])
    df = pd.DataFrame(data, columns=['Module', 'Frequency', 'Net Capacitance', 'Total Capacitance', 'Wire Capacitance Ratio', 'Total Power', 'Leakage Power', 'Switching Power', 'Wire Power', 'Wire Power Ratio'])
    return df

# 使用你的目录名称和模块名称替换下面的值
directory = "/home/shi/tempus/ASAP7"
topmodules = ["top_4_64_top", "top_8_64_top","top_16_64_top","RCA_64bit_top","top16block_top","top8block_top","top4block_top","BK_adder_64_16bit_top","BK_64_with_8_block_top","KSA_64_bit","CLA_shi_top","CLA_HAN_SHI_top","CLA_4_bit_old_top","CLA_8_bit_old_top","CLA_16_bit_old_top","CLA_HAN_32bit_block_64bit_top","CLA_HAN_shi_8_top"]

df = process_files(directory, topmodules)

# 将DataFrame保存为Excel文件
df.to_excel('_asap7_wire_power_output.xlsx', index=False)
