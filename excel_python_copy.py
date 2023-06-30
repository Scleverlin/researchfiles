import pandas as pd

def timing_find(find_path,save_path):
    df = pd.read_excel(find_path)
    result = pd.DataFrame()
    modules = df['Module'].unique()
    for module in modules:
        sub_df = df[df['Module'] == module]
        for idx, row in sub_df.iterrows():
            freq = row['Frequency']
            arrival_time = row['Arrival Time']
            if arrival_time <= 1000 / freq:
                result.loc[module, freq] = arrival_time
    result.to_excel(save_path)


def fre_find(find_path):
 df_timing = pd.read_excel(find_path)
 valid_freqs = {}
 for module in df_timing['Module'].unique():
    sub_df = df_timing[df_timing['Module'] == module]
    for idx, row in sub_df.iterrows():
        freq = row['Frequency']
        arrival_time = row['Arrival Time']
        if arrival_time <= 1000 / freq:
            if module in valid_freqs:
                valid_freqs[module].append(freq)
            else:
                valid_freqs[module] = [freq]
 return valid_freqs

def power_find(find_path,total_power_path,wire_power_path,valid_freqs):
 df_power = pd.read_excel(find_path)
 result_total_power = pd.DataFrame()
 result_wire_power = pd.DataFrame()
 for module in df_power['Module'].unique():
    if module in valid_freqs:
        sub_df = df_power[df_power['Module'] == module]
        for freq in valid_freqs[module]:
            row = sub_df[sub_df['Frequency'] == freq]
            if not row.empty:
                result_total_power.loc[module, freq] = row['Total Power'].values[0]
                result_wire_power.loc[module, freq] = row['Wire Power'].values[0]
 result_total_power.to_excel(total_power_path)
 result_wire_power.to_excel(wire_power_path)


def area_find(find_path,total_area_path,net_area_path,valid_freqs):
 df_area = pd.read_excel(find_path)
 result_total_area = pd.DataFrame()
 result_wire_area = pd.DataFrame()
 for module in df_area['Topmodule'].unique():
    if module in valid_freqs:
        sub_df = df_area[df_area['Topmodule'] == module]
        for freq in valid_freqs[module]:
            row = sub_df[sub_df['Frequency'] == freq]
            if not row.empty:
                result_total_area.loc[module, freq] = row['Total Area'].values[0]
                result_wire_area.loc[module, freq] = row['Net Area'].values[0]
 result_total_area.to_excel(total_area_path)
 result_wire_area.to_excel(net_area_path)
 
cnfet7_timing_find_path = '/home/shi/excel_python/_cnfet7__wire_delay_output.xlsx'
cnfet7_timing_save_path=  '/home/shi/excel_python/_cnfet7_delay_result.xlsx'
cnfet7_valid_fre ={}
 
cnfet7_power_find_path = '/home/shi/excel_python/_cnfet7_wire_power_output.xlsx'
cnfet7_total_power_path = '/home/shi/excel_python/_cnfet7__power_result.xlsx'
cnfet7_wire_power_path = '/home/shi/excel_python/_cnfet7_wire_power_result.xlsx'
 
 
cnfet7_area_find_path = '_cnfet7_area_output.xlsx'
cnfet7_total_area_path = '_cnfet7_area_result.xlsx'
cnfet7_wire_area_path = '_cnfet7_wire_area_result.xlsx'

timing_find( cnfet7_timing_find_path,cnfet7_timing_save_path)
cnfet7_valid_fre=fre_find(cnfet7_timing_find_path)

power_find(cnfet7_power_find_path,cnfet7_total_power_path,cnfet7_wire_power_path,cnfet7_valid_fre)
area_find(cnfet7_area_find_path,cnfet7_total_area_path,cnfet7_wire_area_path,cnfet7_valid_fre)

asap7_timing_find_path = '/home/shi/excel_python/_asap7__wire_delay_output.xlsx'
asap7_timing_save_path=  '/home/shi/excel_python/_asap7_delay_result.xlsx'
asap7_valid_fre ={}
 
asap7_power_find_path = '/home/shi/excel_python/_asap7_wire_power_output.xlsx'
asap7_total_power_path = '/home/shi/excel_python/_asap7__power_result.xlsx'
asap7_wire_power_path = '/home/shi/excel_python/_asap7_wire_power_result.xlsx'
 
 
asap7_area_find_path = '_asap7_area_output.xlsx'
asap7_total_area_path = '_asap7_area_result.xlsx'
asap7_wire_area_path = '_asap7_wire_area_result.xlsx'

timing_find( asap7_timing_find_path,asap7_timing_save_path)
asap7_valid_fre=fre_find(asap7_timing_find_path)

power_find(asap7_power_find_path,asap7_total_power_path,asap7_wire_power_path,asap7_valid_fre)
area_find(asap7_area_find_path,asap7_total_area_path,asap7_wire_area_path,asap7_valid_fre)