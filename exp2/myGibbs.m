clear all; clc;
disp('�������ҽ���')
figure('position', [0,0,1000,305])
% axes('position', [0.1 0.15 0.85 0.80])

% [left bottom width height]

% width: 85%;
% height: 80vh;
% position: fixed;
% bottom: 15%;
% left: 10%;

T = 4;
w = 2 * pi / T;
T1 = 1;
ak = @(k) sin(k * w * T1) / (k * pi);

t = -2:0.00001:2;
xn = zeros(1, length(t));
N = 79;

for k = -N:N

    if k ~= 0
        xn = xn + ak(k) * exp(1i * k * w .* t);

    else
        xn = xn + 2 * T1 / T;
    end

end

fs = plot(t, xn, 'linewidth', 1.5, 'color', '#D95319'); hold on;
line([-2, 2], [0, 0], 'color', '#666', 'linewidth', 0.7); hold on;
maxVal = line([-2, 2], [1.09, 1.09], 'linestyle', '--', 'color', '#999', 'linewidth', 0.7); hold on;
line([0, 0], [1.2, 0], 'color', '#666', 'linewidth', 0.7); hold on;
squareWave = plot([-2, -1, -1, 1, 1, 2], [0, 0, 1, 1, 0, 0], 'color', '#0072BD', 'linewidth', 1); hold on;
text1 = text(-1, -0.08, '-T_1'); hold on;
text2 = text(1, -0.08, 'T_1'); hold on;
label1 = xlabel('t');
label2 = ylabel('x_n(t)');
% ���ͼ��
legd = legend([fs, squareWave, maxVal], {'����Ҷ����', 'ԭʼ����', '9%�ĳ���'}, 'FontName', '΢���ź�', 'FontSize', 10);
title(legd, ['N=', num2str(N)])

% ������ʽ
ax = gca;
[text1.FontName, text2.FontName, label2.FontName, label1.FontName, ax.FontName] = deal('Times New Roman');
[text1.FontSize, text2.FontSize, label2.FontSize, label1.FontSize] = deal(12);
[text1.FontWeight, text2.FontWeight, label2.FontWeight, label1.FontWeight, ax.FontWeight] = deal('Bold');
[label2.FontAngle, label1.FontAngle, ax.FontAngle] = deal('italic');
ax.FontSize = 10;
customTitle('����˹����');
fullscreen()
% print('-dpng', '-r600', ['Gibbs_N_', num2str(N)])
sound(sin(2*pi*25*(1:4000)/200));
disp('�����ˣ�')
% mytitle.position = [mywidth * 0.5 + myaxis(1, 1), -0.1 * myheight + myaxis(1, 3)]
% 1,3,7,19,79


