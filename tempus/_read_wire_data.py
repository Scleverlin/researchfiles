import os
import pandas as pd

def get_avg_conn_length(filename):
    with open(filename, 'r') as f:
        for line in f:
            if "Avg connection length" in line:
                try:
                    start_pos = line.find("Avg connection length =") + len("Avg connection length =")
                    avg_conn_length_str = line[start_pos:].strip().split()[0]
                    avg_conn_length = float(avg_conn_length_str)
                    return avg_conn_length
                except ValueError:
                    print(f"无法将'Avg connection length ='后的字符'{avg_conn_length_str}'转换为浮点数。请检查文件格式。")
                    return None


def get_total_net_length(filename):
    with open(filename, 'r') as f:
        for line in f:
            if "Total net length" in line:
                try:
                    start_pos = line.find("Total net length =") + len("Total net length =")
                    total_net_length_str = line[start_pos:].strip().split()[0]
                    total_net_length = float(total_net_length_str)
                    return total_net_length
                except ValueError:
                    print(f"无法将'Total net length ='后的字符'{total_net_length_str}'转换为浮点数。请检查文件格式。")
                    return None

def process_files(directory, topmodules):
    data = []
    for topmodule in topmodules:
        for freq in [f'{x/2:.1f}' for x in range(1, 17)]:
            wirelength_filename = f'{topmodule}_{freq}.wirelength'
            wirelength_filepath = os.path.join(directory, wirelength_filename)
            if os.path.isfile(wirelength_filepath):
                print(f'Processing file: {wirelength_filepath}')
                avg_conn_length = get_avg_conn_length(wirelength_filepath)  # 提取平均连接长度
                total_net_length = get_total_net_length(wirelength_filepath)  # 提取总网络长度
                data.append([topmodule, freq, avg_conn_length, total_net_length])
    df = pd.DataFrame(data, columns=['Module', 'Frequency', 'Average Connection Length', 'Total Net Length'])
    return df



directory = "/home/shi/tempus/ASAP7"
topmodules = ["top_4_64_top", "top_8_64_top","top_16_64_top","RCA_64bit_top","top16block_top","top8block_top","top4block_top","BK_adder_64_16bit_top","BK_64_with_8_block_top","KSA_64_bit","CLA_shi_top","CLA_HAN_SHI_top","CLA_4_bit_old_top","CLA_8_bit_old_top","CLA_16_bit_old_top","CLA_HAN_32bit_block_64bit_top","CLA_HAN_shi_8_top"]
df = process_files(directory, topmodules)


df.to_excel('_asap7_avg_conn_length_output.xlsx', index=False)
