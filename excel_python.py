import pandas as pd


df = pd.read_excel('_asap7__wire_delay_output.xlsx')

result = pd.DataFrame()

modules = df['Module'].unique()


for module in modules:
 
    sub_df = df[df['Module'] == module]
    for idx, row in sub_df.iterrows():
        freq = row['Frequency']
        arrival_time = row['Arrival Time']
        if arrival_time <= 1000 / freq:
            result.loc[module, freq] = arrival_time
result.to_excel('timing_result.xlsx')


df_timing = pd.read_excel('/home/shi/excel_python/_asap7__wire_delay_output.xlsx')

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


df_power = pd.read_excel('/home/shi/excel_python/_asap7_wire_power_output.xlsx')
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
result_total_power.to_excel('result_total_power.xlsx')
result_wire_power.to_excel('result_wire_power.xlsx')

df_area = pd.read_excel('/home/shi/excel_python/_asap7_area_output.xlsx')
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
result_total_power.to_excel('result_total_area.xlsx')
result_wire_power.to_excel('result_wire_area.xlsx')

