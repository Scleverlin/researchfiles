import os
import re
import pandas as pd

# 创建一个空的DataFrame
df = pd.DataFrame(columns=['Module', 'Frequency', 'Type', 'Value'])

# 指定模块名数组
modules = ['kogge_stone_adder_64_bit', 'BK_64_with_8_block']  # 请根据实际情况修改

# 指定频率范围
start_frequency = 0.5  # 初始频率
end_frequency = 24.0  # 最大频率
step = 0.5  # 频率步长

# 指定类型数组
types = ['power', 'timing', 'area']

# 遍历模块名、频率和类型
for module in modules:
    for type in types:
        frequency = start_frequency
        while frequency <= end_frequency:
            # 构造文件名
            risingtime= 1000.0/frequency/2.0
            filename = f'{module}_{frequency}{type}.rpt'
            
            # 如果文件存在
            if os.path.exists(filename):
                # 打开文件，读取最后几行
                with open(filename, 'r') as f:
                    lines = f.readlines()[-10:]
                    if type == 'timing':
                        # 对于timing文件，匹配"data arrival time"后面的值
                        tmp= re.findall(r'data arrival time\s+(-?\d+\.\d+)', lines[-6])[0]
                        float_value = float(tmp)
                        matches = -float_value -risingtime    
                        print (matches)
                    elif type == 'power':
                          matches = re.findall(r'([\de\.\+\-]+)\s+mW', lines[-2])[2]  # 匹配数字（包括科学计数法）
                          print (matches)
                    elif type == 'area':
                        matches = re.findall(r'Total cell area:\s+([\d\.]+)', lines[-3])[0]
                        print (matches)
                    # 如果找到了至少一个匹配的值
                    if matches:
                        value = matches
                        
                        # 在命令行中打印出文件名、频率、数据类型、模块名和提取的值
                        print(f'File: {filename}, Frequency: {frequency}, Type: {type}, Module: {module}, Value: {value}')
                        
                        # 将数据添加到DataFrame中
                        df = pd.concat([df, pd.DataFrame({'Module': [module], 'Frequency': [frequency], 'Type': [type], 'Value': [value]})], ignore_index=True)
            
            # 更新频率
            frequency += step

# 将DataFrame输出到Excel文件
df.to_excel('output.xlsx', index=False)
