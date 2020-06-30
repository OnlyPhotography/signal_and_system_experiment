%% a
clear all; clc;
a1 = [1, 0, 1];   % ����ϵ������a1
a2 = [1, 0.5, 1];   % ����ϵ������a2
a3 = [1, 2, 1];   % ����ϵ������a3
a4 = [1, 4, 1];   % ����ϵ������a4
ps1 = roots(a1); % ��a1�ļ���
ps2 = roots(a2); % ��a2�ļ���
ps3 = roots(a3); % ��a3�ļ���
ps4 = roots(a4); % ��a4�ļ���
% ���Ƽ���
plot_1 = plot(real(ps1), imag(ps1), 'x', 'markersize', 8, 'linewidth', 2); hold on;
plot_2 = plot(real(ps2), imag(ps2), 'x', 'markersize', 8, 'linewidth', 2); hold on;
plot_3 = plot(real(ps3), imag(ps3), 'x', 'markersize', 8, 'linewidth', 2); hold on;
plot_4 = plot(real(ps4), imag(ps4), 'x', 'markersize', 8, 'linewidth', 2); hold on;
legend([plot_1, plot_2, plot_3, plot_4], {'\zeta =0', '\zeta =1/4', '\zeta =1', '\zeta =2'}, 'Location', 'northwest')
grid on;
axis([-4, 0.5, -1.2, 1.2]) % ������ʾ��Χ
xlabel('\sigma');ylabel('j\omega');
%% ������4��ϵͳ��Ƶ����Ӧ
omega = [-5:0.1:5];
b = 1;
figure; freqs(b, a1, omega);
figure; freqs(b, a2, omega);
figure; freqs(b, a3, omega);
figure; freqs(b, a4, omega);
