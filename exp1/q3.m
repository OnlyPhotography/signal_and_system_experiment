clear 
clc
n=0:5;
x_n=n>=0;         % ����x[n]
h_n=0:5;          % ����h[n]
y=conv(h_n,x_n);  % ͨ��conv��������
n=0:10;           % ��x���ϵ�ȡֵ��Χ
stem(n,y)         % ����stem���������������