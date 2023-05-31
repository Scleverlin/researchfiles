def extract_area_data (filepath):
    net_area_result =0
    total_area_result =0
    flag=0
    with open(filepath, 'r') as file:
        for line in file:
             # print (line)
             line = line.strip()  # 去除行两端的空格
             if not line:  # 如果行为空，则跳过当前循环迭代
               continue
             if line.strip() == '-------------------------------------------------------------------------------------':
                data = line.split()
                # print(data)
                flag=1
                continue
             if flag ==1:
              data = line.split()
              net_area_result=float(data[-2])
              total_area_result =float(data[-1])
              break
    return  net_area_result,total_area_result

filepath="/home/shi/tempus/test.area"

net_area_result,total_area_result = extract_area_data(filepath)
print("Net Area is ", net_area_result)
print("Total Area is", total_area_result)
