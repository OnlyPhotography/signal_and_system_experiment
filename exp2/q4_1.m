clear all; clc;
axes('position', [0.1 0.15 0.85 0.80])

a = [1, 3];
b = 3;
freqs(b, a)

w = linspace(0, 3 * pi);
H = freqs(b, a, w);
% ����H�ķ�ֵ
pic2 = plot(w, abs(H));
% ��ӱ�ǩ�����������᷶Χ
ylim([0, 1])
xlim([0, 9.5])
label1 = xlabel('\omega');
label2 = ylabel('|H(j\omega)|');
% ��ӱ���
customTitle('һ��ϵͳ����w=linspace(0,3\pi)Ƶ������ֵʱƵ����Ӧ�ķ�ֵ|H(j\omega)|')

ax = gca;
% ��������
[label2.FontName, label1.FontName, ax.FontName] = deal('Times New Roman');
[label2.FontSize, label1.FontSize] = deal(12);
[label2.FontWeight, label1.FontWeight, ax.FontWeight] = deal('Bold');
[label2.FontAngle, label1.FontAngle, ax.FontAngle] = deal('italic');
ax.FontSize = 10;
% ����ͼ��
pic2.LineWidth = 1.5;
grid on

print -f1 -dpng -r1200 4 - 1 - 2

%% ����ϵͳƵ����Ӧ
a = [3, 4, 1];
b = [1, 0, 5];
freqs(b, a);

