n = [0:15];
u1 = n >= 0;
u2 = n >= 10;
x = u1 - u2; % ��Ӧx[n]
% ��ӦX(ej��)
X = @(w) (1 - exp(-10 * 1i * w)) / (1 - exp(-1i * w));
N = 100;
k = [0:N - 1];
w = 2 * pi * k / N;
w = w - pi;

for idx = 1:length(w)
    Xw(idx) = X(w(idx));
end

%������������õĽ��
figure('position', [0, 10, 800, 500])
subplot(2, 1, 1)
plots_0 = plot(w, abs(Xw)); hold on
labels_0 = ylabel('��ֵ');
fullscreen()
subplot(2, 1, 2)
plots_1 = plot(w, angle(Xw)); hold on
labels_1 = ylabel('��λ');
labels_2 = xlabel('ͨ����������õĽ��');
fullscreen();

%������fft���Ľ��
figure('position', [0, 10, 800, 500])
X = fftshift(fft(x, N));
subplot(2, 1, 1)
plots_2 = plot(w, abs(X)); hold on
labels_3 = ylabel('��ֵ');
fullscreen()
subplot(2, 1, 2)
plots_3 = plot(w, angle(X));
labels_4 = ylabel('��λ');
labels_5 = xlabel('ͨ��fft��õĽ��');
fullscreen()


% �����߿�
[plots_0.LineWidth, plots_1.LineWidth, plots_2.LineWidth, plots_3.LineWidth] = deal(1.5);
% ����������ʽ
[label_0.FontName,label_1.FontName,label_2.FontName,label_3.FontName,label_4.FontName,label_5.FontName ] = deal('΢���ź� Light');
[label_0.FontSize,label_1.FontSize,label_2.FontSize,label_3.FontSize,label_4.FontSize,label_5.FontSize ] = deal(10);

print('-f1','-dpng', '-r1200', 'q3-1')%���浽�ļ�

print('-f2','-dpng', '-r1200', 'q3-2')%���浽�ļ�
