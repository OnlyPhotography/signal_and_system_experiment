n=-10:10;               % ����n�ķ�Χ
delta_n=n==0;           % ���� ��[n]
x1_n=delta_n;           % x[n]
x2_n=2*delta_n;         % 2*x[n]
x3_n=x1_n+x2_n;            
y1_n=sin(pi.*x1_n/2);   % x1_n��������Ӧ
y2_n=sin(pi.*x2_n/2);   % x2_n��������Ӧ
y3_n=sin(pi.*x3_n/2);   % x3_n��������Ӧ
% x1_n��x2_n��������Ӧ�ĺ�
y3_add=y1_n+y2_n;
% ��������������ʣ���ô���ǵ�ͼ��Ӧ���ص�       
stem(n,y3_n)            % x3_n��������Ӧ��ͼ��
hold on
stem(n,y3_add)          % ����������Ӧ�ĺ�