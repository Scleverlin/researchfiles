# -*- coding: UTF-8 -*-
import re
filepath0 = "/home/shi/hspice/asap7_tr/0.sp"
filepath1 = "/home/shi/hspice/asap7_tr/10.sp"
filepath2 = "/home/shi/hspice/asap7_tr/20.sp"
filepath3 = "/home/shi/hspice/asap7_tr/30.sp"
filepath4 = "/home/shi/hspice/asap7_tr/40.sp"
filepath5 = "/home/shi/hspice/asap7_tr/50.sp"
filepath6 = "/home/shi/hspice/asap7_tr/60.sp"
filepath7 = "/home/shi/hspice/asap7_tr/70.sp"
filepath8 = "/home/shi/hspice/asap7_tr/80.sp"
filepath9 = "/home/shi/hspice/asap7_tr/90.sp"
filepath10 = "/home/shi/hspice/asap7_tr/100.sp"

txt0 = open(filepath0, "r").read()
txt1 = open(filepath1, "r").read()
txt2 = open(filepath2, "r").read()
txt3 = open(filepath3, "r").read()
txt4 = open(filepath4, "r").read()
txt5 = open(filepath5, "r").read()
txt6 = open(filepath6, "r").read()
txt7 = open(filepath7, "r").read()
txt8 = open(filepath8, "r").read()
txt9 = open(filepath9, "r").read()
txt10 = open(filepath10, "r").read()

p0_fall = re.findall("tfall=+...........",txt0)
p0_rise = re.findall("trise=+...........",txt0)
p0_power = re.findall("p_vdd= +.........",txt0)
p0_fall.append(re.findall("tfall=+...........",txt1))
p0_fall.append(re.findall("tfall=+...........",txt2))
p0_fall.append(re.findall("tfall=+...........",txt3))
p0_fall.append(re.findall("tfall=+...........",txt4))
p0_fall.append(re.findall("tfall=+...........",txt5))
p0_fall.append(re.findall("tfall=+...........",txt6))
p0_fall.append(re.findall("tfall=+...........",txt7))
p0_fall.append(re.findall("tfall=+...........",txt8))
p0_fall.append(re.findall("tfall=+...........",txt9))
p0_fall.append(re.findall("tfall=+...........",txt10))

p0_rise.append(re.findall("trise=+...........",txt1))
p0_rise.append(re.findall("trise=+...........",txt2))
p0_rise.append(re.findall("trise=+...........",txt3))
p0_rise.append(re.findall("trise=+...........",txt4))
p0_rise.append(re.findall("trise=+...........",txt5))
p0_rise.append(re.findall("trise=+...........",txt6))
p0_rise.append(re.findall("trise=+...........",txt7))
p0_rise.append(re.findall("trise=+...........",txt8))
p0_rise.append(re.findall("trise=+...........",txt9))
p0_rise.append(re.findall("trise=+...........",txt10))

p0_power.append(re.findall("p_vdd= +.........",txt1))
p0_power.append(re.findall("p_vdd= +.........",txt2))
p0_power.append(re.findall("p_vdd= +.........",txt3))
p0_power.append(re.findall("p_vdd= +.........",txt4))
p0_power.append(re.findall("p_vdd= +.........",txt5))
p0_power.append(re.findall("p_vdd= +.........",txt6))
p0_power.append(re.findall("p_vdd= +.........",txt7))
p0_power.append(re.findall("p_vdd= +.........",txt8))
p0_power.append(re.findall("p_vdd= +.........",txt9))
p0_power.append(re.findall("p_vdd= +.........",txt10))



for fall in p0_fall:
   print(fall)

for rise in p0_rise:
   print(rise)


for power in p0_power:
   print(power )


 