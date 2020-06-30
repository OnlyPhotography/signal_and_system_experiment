clear all; clc;
% ����x[n]
x = [1, 1, zeros(1, 30)];
N = length(x);
a = (1 / N) * fft(x); %��DTFS

figure('position', [0, 10, 1000, 500]) %����ͼ��λ�úʹ�С

% ����a��ʵ��
subplot(2, 1, 1)
stem(real(a), 'linewidth', 1) % ����stem���ƶ�Ӧ��ֵ���������߿�Ϊ1
xlabel('k')
ylabel('Re(a)')
xlim([0,33]) % ����x��ķ�Χ

% ����a���鲿
subplot(2, 1, 2)
stem(imag(a), 'linewidth', 1); % ����stem���ƶ�Ӧ��ֵ���������߿�Ϊ1
xlabel('k')
ylabel('Im(a)')
xlim([0,33]) % ����x��ķ�Χ

% ��������'3-1-1.png'
print('-dpng', '-r1200', '3-1-1')