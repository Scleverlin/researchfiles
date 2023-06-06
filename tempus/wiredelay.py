def get_arrival_time(filename):
    with open(filename, 'r') as f:
        for line in f:
            if "- Arrival Time" in line:
                try:
                    # 将 "- Arrival Time" 后面的字符转换为浮点数
                    arrival_time = float(line.split("- Arrival Time")[1].strip())
                    return arrival_time
                except ValueError:
                    print("无法将- Arrival Time后的字符转换为浮点数。请检查文件格式。")
                    return None

filename = "/home/shi/tempus/complex_adder.timing"  # 请将此处替换为你的文件名
arrival_time = get_arrival_time(filename)
if arrival_time is not None:
    print("Arrival Time: ", arrival_time)
