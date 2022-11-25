import math
from re import X

L=40.0
Ar=input("Aspect Ratio:")
w=input("w:")
# rou=input("rou:")
if(float(w)<155):
   d=320
   R=0.27
   p=0.49
elif (float(w)>=155 and float(w)<230):
    d=340
    R=0.19
    p=0.33
elif(float(w)>=230):
    d=400
    R=0.19
    p=0.4
 
a=float(L)*float(R)/float(d)/(1-float(R))
a2=pow(a,2)
a3=pow(a,3)
ln=math.log(1+1/a)
sum=1/3-a/2+a2-a3*ln
sum2=(3/8)*1.2*(1-float(p))*(1+float(Ar))*float(L)/float(Ar)/float(w)

x=2.08*((1/3)/sum + sum2)
print("Resistivity of Cu of input size is ", 0.01*x, "ohm*um")
T=float(Ar)*float(w)
Sr=0.01*x/(0.001*T)
print("Sheet Resistance is ",Sr)
