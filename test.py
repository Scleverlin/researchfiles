# import numpy as np
# import matplotlib.pyplot as plt

# x=[1,2,3,4]
# y=[1217,4874,10983,19582]



# ro=np.polyfit(x,y,deg=2) #deg为拟合的多项式的次数（线性回归就选1）
# ry=np.polyval(ro,x) #忘记x和ro哪个在前哪个在后了。。。
# plt.scatter(x,y)
# plt.plot(x,ry)
# plt.show()
# print(ro)

import numpy as np
import matplotlib.pyplot as plt
 
#定义x、y散点坐标
# x=[1,2,3,4]
# x = np.array(x)
# print('x is :\n',x)
# num = [1217,4874,10983,19582]
x=[2,3,4]

num=[914.2867381,	1038.295367	,1166.4


]
y = np.array(num)
print('y is :\n',y)
#用3次多项式拟合
f1 = np.polyfit(x, y, 1)
print('f1 is :\n',f1)
 
p1 = np.poly1d(f1)
print('p1 is :\n',p1)
 
#也可使用yvals=np.polyval(f1, x)
yvals = p1(x)  #拟合y值
print('yvals is :\n',yvals)
#绘图
plot1 = plt.plot(x, y, 's',label='original values')
plot2 = plt.plot(x, yvals, 'r',label='polyfit values')
plt.xlabel('x')
plt.ylabel('y')
plt.legend(loc=4) #指定legend的位置右下角
plt.title('polyfitting')
plt.show()
