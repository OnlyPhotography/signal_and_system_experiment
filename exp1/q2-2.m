% 绘制x[n]对应的图形
n1=-5:9;      % x1对应的范围
x_n1=n1>=0;   % 定义阶跃信号
subplot(3,1,1)  % 将figure分成三个部分
stem(n1,x_n1)   % 利用stem函数画出 x_n1 对应的图形

% 绘制x[n+1]对应的图形
n2=-6:8;      % 由于n+1,使得其左移了一个单位
x_n2=(n2+1)>=0;
subplot(3,1,2)
stem(n2,x_n2)

% 绘制 x[n]+x[n+1] 对应的图形
n3=-6:9;      % 考虑整个时间段的信号
y=[x_n1,1]+[0,x_n2];
subplot(3,1,3)
stem(n3,y)