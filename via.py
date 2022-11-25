import math
from re import X

w=input("w:")
T=float(w)*2.2
r=10e-9*float(w)/2
a=10e-9*float(w)/13

L=40.0
Ar=2.2
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
a1=float(L)*float(R)/float(d)/(1-float(R))
a2=pow(a1,2)
a3=pow(a1,3)
ln=math.log(1+1/a)
sum=1/3-a1/2+a2-a3*ln
sum2=(3/8)*1.2*(1-float(p))*(1+2.2)*float(L)/2.2/float(w)
x=2.08*((1/3)/sum + sum2)
# rou=input("rou:")
#circle via
A=3.14*pow(r,2)
B=3.14*pow(a+r,2)-A
#square via
# A=10e-9*float(w)*10e-9*float(w)
# B=pow(10e-9*float(w)+10e-9*float(w)*2/13,2)-A
if(a<=10e-9*1.6):
    tan=20*10e-8
elif(a>10e-9*1.6 and a<3.0*10e-9):
    tan=25*10e-8
elif(a>=3.0*10e-9):
    tan=30*10e-8

Rcu=(10e-9*float(T)*10/11*x*10e-8/A)+(10e-9*float(T)*1/11*tan/A)
Rside=10e-9*float(T)*tan/B

sum=(Rcu*Rside)/(Rcu+Rside)
print("Rvia without side wall is ", Rcu)
print("Rside is ",Rside)
print("Via resistance is ", sum)
