import os
import re


directory = "/home/shi/adder_pr/cnfet7/netlist"
directory1 = "/home/shi/adder_pr/cnfet7/def"

for filename in os.listdir(directory):
    if filename.endswith(".v"):  
        file_path = os.path.join(directory, filename)

      
        with open(file_path, "r") as file:
            file_data = file.read()

    
        file_data = re.sub("INV_X16", "INV_X8", file_data)
        with open(file_path, "w") as file:
            file.write(file_data)

for filename in os.listdir(directory1):
    if filename.endswith(".def"): 
        file_path = os.path.join(directory1, filename)


        with open(file_path, "r") as file:
            file_data = file.read()


        file_data = re.sub("INV_X16", "INV_X8", file_data)


        with open(file_path, "w") as file:
            file.write(file_data)
