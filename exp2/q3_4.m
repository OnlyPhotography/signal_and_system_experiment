clear all; clc;

%% (a)�ڵĻ�������
% ����ʱ���������n
n = -20:100;
% ����4���ź�������n�����ڵ�ֵ
x1 = exp(i * pi .* n / 4);
x2 = sin(pi * n / 8 + pi / 16);
x3 = 0.9.^n;
x4 = n + 1;

%% �������ĸ��źŻ�ͼ
figureWidth = 1000; % ��ͼ�Ŀ��
figureHeight = 305; % ��ͼ�ĸ߶�

%����x1��ͼ��
figure('position', [0, 10, figureWidth, 2 * figureHeight]) % ����ͼ����С��λ��
% ����x1��ʵ��
subplot(2, 1, 1)
stem(n, real(x1), 'marker', '.', 'markersize', 10, 'linewidth', 1); hold on;
xlabel('n')
ylabel('Re(x1)')
fullscreen()
% ����x1���鲿
subplot(2, 1, 2)
stem(n, imag(x1), 'marker', '.', 'markersize', 10, 'linewidth', 1); hold on;
xlabel('n')
ylabel('Im(x1)')
fullscreen()
print('-dpng', '-r1200', '3-4-1') %���浽�ļ�
% ����ѭ������x2-x4
for k = 2:4
    figure('position', [0, 10, figureWidth, figureHeight]) % ����ͼ����С��λ��
    % ����stem���ƶ�Ӧ��ֵ���������߿�Ϊ1,���Ϊ'.'
    stem(n, eval(['x', num2str(k)]), 'marker', '.', 'markersize', 10, 'linewidth', 1); hold on;
    xlabel('n')
    ylabel(['x', num2str(k)])
    fullscreen() 
    print('-dpng', '-r1200', ['3-4-', num2str(k)])  %���浽�ļ�
end

%% ���ڲ�ַ��̱�����LTIϵͳ�¸����źŵ����
% LTIϵͳ��ַ��̵�ϵ������
a = [1, -0.25];
b = [1, 0.9];
% LTIϵͳ�����
y1 = filter(b, a, x1);
y2 = filter(b, a, x2);
y3 = filter(b, a, x3);
y4 = filter(b, a, x4);

% ����y1��ͼ��
figure('position', [0, 10, figureWidth, 2 * figureHeight])
subplot(2, 1, 1)
stem(0:100, real(y1(21:121)), 'marker', '.', 'markersize', 10, 'linewidth', 1);
xlabel('n')
ylabel('Re(y1)')
fullscreen();
subplot(2, 1, 2)
stem(0:100, imag(y1(21:121)), 'marker', '.', 'markersize', 10, 'linewidth', 1);
xlabel('n')
ylabel('Im(y1)')
fullscreen();
print('-dpng', '-r1200', '3-4-5') % ���浽�ļ�

% ����ѭ������y2-y4
for k = 2:4
    figure('position', [0, 10, figureWidth, figureHeight])
    Y = eval(['y', num2str(k)]);
    stem(0:100, Y(21:121), 'marker', '.', 'markersize', 10, 'linewidth', 1);
    xlabel('n');
    ylabel(['y', num2str(k)]);
    fullscreen();
    print('-dpng', '-r1200', ['3-4-', num2str(k + 4)]);
end

%% ��ÿһ�����źŵ�H(z)
figure('position', [0, 10, 1000, 500])
h1 = y1 ./ x1;
h2 = y2 ./ x2;
h3 = y3 ./ x3;
h4 = y4 ./ x4;
% ��ͬһ��ͼ�ϻ���h1~h4��ͼ��
h1img = plot(0:100, real(h1(21:121))); hold on;
h2img = plot(0:100, imag(h1(21:121))); hold on;
h3img = plot(0:100, h2(21:121)); hold on;
h4img = plot(0:100, h3(21:121)); hold on;
h5img = plot(0:100, h4(21:121)); hold on;
% ���ͼ��
legd = legend([h1img, h2img, h3img, h4img, h5img], {'Re(H_1(z))', 'Im(H_1(z))', 'H_2(z)', 'H_3(z)', 'H_4(z)'});
% ����������ǩ
label_1 = xlabel('n');
lebel_2 = ylabel('H(z)');
% �����߿�
[h1img.LineWidth, h2img.LineWidth, h3img.LineWidth, h4img.LineWidth, h5img.LineWidth] = deal(1.5);
% ����������ʽ
[label_1.FontName, lebel_2.FontName, legd.FontName] = deal('Times New Roman');
[label_1.FontSize, lebel_2.FontSize, legd.FontSize] = deal(10);

fullscreen()



