%����n��0-31
n=0:31;                                     
x1_n=sin(pi.*n/4).*cos(pi.*n/4);            % ��Ӧx1[n]
x2_n=cos(pi.*n/4).^2;                       % ��Ӧx1[n]
x3_n=sin(pi.*n/4).*cos(pi.*n/8);            % ��Ӧx1[n]
% ����subplot��figure�ֳ����ݣ�����ʹ��stem��ͼ
subplot(3,1,1)
stem(n,x1_n)
subplot(3,1,2)
stem(n,x2_n)
subplot(3,1,3)
stem(n,x3_n)
