import os
import pandas as pd

def extract_area_data(top_module, filepath):
    net_area_result = 0
    total_area_result = 0
    with open(filepath, 'r') as file:
        for line in file:
            data = line.strip().split()
            if not data:
                continue
            if data[0] == top_module:
                net_area_result = float(data[-2])
                total_area_result = float(data[-1])
                break
    return round(net_area_result, 5), round(total_area_result, 5)
def process_files(directory, topmodules):
    data = []
    for topmodule in topmodules:
        for freq in [f'{x/2:.1f}' for x in range(1, 17)]:
            area_filename = f'{topmodule}_{freq}.area'
            area_filepath = os.path.join(directory, area_filename)

            if not os.path.isfile(area_filepath):
                print(f"File {area_filepath} does not exist. Skipping.")
                continue

            net_area, total_area = extract_area_data(topmodule,area_filepath)
            net_area_ratio = round(net_area / total_area * 100, 5) if total_area != 0 else 0

            data.append([topmodule, freq, net_area, total_area, net_area_ratio])

    df = pd.DataFrame(data, columns=["Topmodule", "Frequency", "Net Area", "Total Area", "Net Area Ratio"])
    df.to_excel("_cnfet7_area_output.xlsx", index=False)

topmodules = ["top_4_64_top", "top_8_64_top","top_16_64_top","RCA_64bit_top","top16block_top","top8block_top","top4block_top","BK_adder_64_16bit_top","BK_64_with_8_block_top","KSA_64_bit","CLA_shi_top","CLA_HAN_SHI_top","CLA_4_bit_old_top","CLA_8_bit_old_top","CLA_16_bit_old_top","CLA_HAN_32bit_block_64bit_top","CLA_HAN_shi_8_top"]

directory = "/home/shi/tempus/CNFET7"  # Replace with the path to your files

process_files(directory, topmodules)
