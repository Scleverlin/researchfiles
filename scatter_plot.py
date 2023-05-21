import matplotlib.pyplot as plt
from adjustText import adjust_text
import numpy as np
import itertools
import seaborn as sns
# def label_offset(index, array_len):
#     if index < array_len // 2:
#         return (-50, 5)
#     else:
#         return (50, 5)

c_area=[37.933057,
41.976144,
94.83,
92.123,
90.768,
41.997312,
41.997312,
41.997312,
41.997312,
41.997312,
43.35,
63.504001,
58.93,
60.709825,
58.931713,
58.868209,
57.915649,
53.995,
58.084993,
54.444097,
57.068929,
94.515121
]

c_name= [
"RCA_lowest_area",
"RCA_op_by_dc",
"CSA_4",
"CSA_8",
"CSA_16",
"CLA__4_block",
"CLA__8_block",
"CLA__16_block",
"CLA__32_block",
"CLA__64_block",
"CLA_AO",
"CLA_V1_AOI_INV",
"CLA_V1",
"CLA_V1_no_block",
"CLA_V2",
"CLA_V3_NAND",
"CLA_V3",
"CLA_V4_OAI_INV",
"CLA_V4",
"CLA_V5_AOI_OAI",
"CLA_V5",
"KSA"
]
c_PDP=[
2328.00624,
2059.142562,
2618.585505,
2132.169845,
2353.199001,
2058.087964,
1969.271965,
1928.46234,
1911.37555,
1885.166118,
2541.788844,
1499.70357,
1699.49444,
1666.534392,
1639.124706,
1943.582688,
1384.039341,
1748.829858,
1094.583278,
1492.461905,
1604.671377,
1051.659747
]

c_EDP=[718248.1252,
623750.3993,
361827.3466,
236004.1659,
289659.9714,
526831.6002,
504046.3842,
494523.7552,
491465.3055,
480887.025,
630495.8063,
201515.1687,
224979.074,
211332.8929,
209132.8561,
311778.9423,
184828.7242,
239818.5424,
135871.2353,
207030.6291,
181182.8194,
66505.60578
]

cnfet7_data = [(c_name[0],c_area[0],c_EDP[0],c_PDP[0]),
(c_name[1],c_area[1],c_EDP[1],c_PDP[1]), 
(c_name[2],c_area[2],c_EDP[2],c_PDP[2]),
(c_name[3],c_area[3],c_EDP[3],c_PDP[3]),
(c_name[4],c_area[4],c_EDP[4],c_PDP[4]),
(c_name[5],c_area[5],c_EDP[5],c_PDP[5]),
(c_name[6],c_area[6],c_EDP[6],c_PDP[6]),
(c_name[7],c_area[7],c_EDP[7],c_PDP[7]),
(c_name[8],c_area[8],c_EDP[8],c_PDP[8]),
(c_name[9],c_area[9],c_EDP[9],c_PDP[9]),
(c_name[10],c_area[10],c_EDP[10],c_PDP[10]),
(c_name[11],c_area[11],c_EDP[11],c_PDP[11]),
(c_name[12],c_area[12],c_EDP[12],c_PDP[12]),
(c_name[13],c_area[13],c_EDP[13],c_PDP[13]),
(c_name[14],c_area[14],c_EDP[14],c_PDP[14]),
(c_name[15],c_area[15],c_EDP[15],c_PDP[15]),
(c_name[16],c_area[16],c_EDP[16],c_PDP[16]),
(c_name[17],c_area[17],c_EDP[17],c_PDP[17]),
(c_name[18],c_area[18],c_EDP[18],c_PDP[18]),
(c_name[19],c_area[19],c_EDP[19],c_PDP[19]),
(c_name[20],c_area[20],c_EDP[20],c_PDP[20]),
(c_name[21],c_area[21],c_EDP[21],c_PDP[21])]

a_area=[29.68488,
64.006199,
61.235999,
60.317459,
36.71244,
39.10356,
38.72448,
40.00752,
39.42432,
39.38058,
48.07026,
48.74094,
35.95428,
36.43542,
36.43542,
36.65412,
56.10384
]

a_name=[	
"RCA_op_by_dc",
"CSA_4",
"CSA_8",
"CSA_16",
"CLA__4_block",
"CLA__8_block",
"CLA__16_block",
"CLA__32_block",
"CLA__64_block",
"CLA_V1",
"CLA_V1_no_block",
"CLA_V2",
"CLA_V3",
"CLA_V4",
"CLA_V5",
"KSA"
]
a_PDP= [357834.6711,
221321.8204,
200904.733,
225674.4646,
134099.8408,
131857.2945,
126982.605,
116852.4687,
122701.471,
133910.1118,
166842.5124,
173966.5477,
103177.6003,
92283.93305,
102036.2718,
117731.992]
a_EDP=[
347572344.9,
110248364.1,
90702722.97,
111907194,
60062683.08,
55159727.51,
49055619.01,
42392112.53,
45609363.79,
66267250.72,
81631741.8,
86174145.01,
51803490.03,
33163256.62,
45012541.14,
35964768.92
]


asap7_data = [ 
(a_name[0],a_area[0],a_EDP[0],a_PDP[0]),
(a_name[1],a_area[1],a_EDP[1],a_PDP[1]),
(a_name[2],a_area[2],a_EDP[2],a_PDP[2]  ),
(a_name[3],a_area[3],a_EDP[3],a_PDP[3]),
(a_name[4],a_area[4],a_EDP[4],a_PDP[4]),
(a_name[5],a_area[5],a_EDP[5],a_PDP[5]),
(a_name[6],a_area[6],a_EDP[6], a_PDP[6]),
(a_name[7],a_area[7],a_EDP[7],a_PDP[7]),
(a_name[8],a_area[8],a_EDP[8],a_PDP[8]),
(a_name[9],a_area[9],a_EDP[9],a_PDP[9]),
(a_name[10],a_area[10],a_EDP[10],a_PDP[10]),
(a_name[11],a_area[11],a_EDP[11],a_PDP[11]),
(a_name[12],a_area[12],a_EDP[12],a_PDP[12]),
(a_name[13],a_area[13],a_EDP[13],a_PDP[13]),
(a_name[14],a_area[14],a_EDP[14],a_PDP[14]),
(a_name[15],a_area[15],a_EDP[15],a_PDP[15])
 ]

# 提取area和PDP值
cnfet7_area = [x[1] for x in cnfet7_data]
cnfet7_edp = [x[2] for x in cnfet7_data]
cnfet7_pdp = [x[3] for x in cnfet7_data]
asap7_area = [x[1] for x in asap7_data]
asap7_edp = [x[2] for x in asap7_data]
asap7_pdp = [x[3] for x in asap7_data]

# fig, ax = plt.subplots()
# for idx, (adder_name, area, edp, pdp) in enumerate(cnfet7_data):
#     ax.scatter(area, edp, color='blue', marker='o', label=None)

#     ax.annotate(adder_name, (area, edp), fontsize=8, textcoords="offset points", xytext=label_offset(idx, len(cnfet7_data)), ha='center', arrowprops=dict(arrowstyle="->", lw=0.5))
   
# for idx, (adder_name, area, edp, pdp) in enumerate(asap7_data):
#     ax.scatter(area, edp, color='red', marker='s', label=None)
    
#     ax.annotate(adder_name, (area, edp), fontsize=8, textcoords="offset points", xytext=label_offset(idx, len(asap7_data)), ha='center', arrowprops=dict(arrowstyle="->", lw=0.5))
   


# ax.set_xlabel("Area")
# ax.set_ylabel("EDP")

# ax.set_yscale("log")

# # 添加图例
# ax.plot([], [], 'o', color='blue', label='CNFET7')
# ax.plot([], [], 's', color='red', label='ASAP7')
# ax.legend()
# # 显示图形
# plt.show()






unique_names = set(c_name + a_name)

# 创建一个自定义颜色列表，颜色更鲜艳且易区分
custom_colors = [
    "#e6194b", "#3cb44b", "#ffe119", "#0082c8", "#f58231", "#911eb4", "#46f0f0", "#f032e6",
    "#d2f53c", "#fabebe", "#6F8F80", "#e6beff", "#aa6e28", "#f00f0f", "#aaffc3", "#8F8F00",
    "#ffd8b1", "#508000", "#8b8A8F", "#ABFAFA", "#903200","#200FF0"
]

# 为每个加法器名称分配一个颜色
name_colors = {name: custom_colors[idx] for idx, name in enumerate(unique_names)}

fig, ax = plt.subplots()

for idx, (adder_name, area, edp, pdp) in enumerate(cnfet7_data):
    ax.scatter(area, edp, color=name_colors[adder_name], marker='s', label=f"CNFET7 {adder_name}")

for idx, (adder_name, area, edp, pdp) in enumerate(asap7_data):
    ax.scatter(area, edp, color=name_colors[adder_name], marker='o', label=f"ASAP7 {adder_name}")

ax.set_xlabel("Area")
ax.set_ylabel("EDP")
ax.set_yscale("log")

# 创建自定义图例
legend_elements = []

# 添加按 cnfet7 adder name数组顺序排列的图例
for adder_name in c_name:
    if adder_name in unique_names:
        legend_elements.append(plt.Line2D([0], [0], color=name_colors[adder_name], lw=4, label=adder_name))

# 添加技术图例
legend_elements.append(plt.Line2D([0], [0], color='k', marker='o', linestyle='', label='ASAP7'))
legend_elements.append(plt.Line2D([0], [0], color='k', marker='s', linestyle='', label='CNFET7'))

ax.legend(handles=legend_elements, fontsize=8, loc='upper left', bbox_to_anchor=(1, 1))

# 显示图形
plt.show()



