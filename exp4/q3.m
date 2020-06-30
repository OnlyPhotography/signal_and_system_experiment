clear all; clc;
% ϵ������
b = [1];
a = [1, -0.9, 0.81];
% ������ɢʱ�䴫�亯���ĳ���
[b, a] = eqtflength(b, a);
dpzplot(b, a) %�����㼫��ͼ

%% ���㼫���������
omega = [0:511] * pi / 256;
unitcirc = exp(1j * omega);
ps1 = roots(a);
polevectors1 = ones(2, 1) * unitcirc - ps1 * ones(1, 512);
polelength1 = abs(polevectors1);
poleangle1 = angle(polevectors1);

%% ��������������
zs1 = roots(b);
zerovectors1 = ones(2, 1) * unitcirc - zs1 * ones(1, 512);
zerolength1 = abs(zerovectors1);
zeroangle1 = angle(zerovectors1);

%% ����polelength1��zerolength1�ĳ��ȹ���omega������
figure;
plots_polelength1=plot(omega, polelength1,'linewidth',1.5); 
hold on;
plots_zerolength1=plot(omega, zerolength1,'linewidth',1.5);
xlabel('omega');ylabel('length');
grid on;
axis([0,6.3,0,2])
legend([plots_polelength1(1),plots_polelength1(2),plots_zerolength1(2)],{'polelength1','polelength1','zerolength1'})

%% ����geomH1mag��gemH1phase
geonH1mag = prod(zerolength1) ./ prod(polelength1);
geonH1phase = sum(zeroangle1) - sum(poleangle1);
% ����geonH1mag��geonH1phase
figure;
subplot(221);
plot(omega, geonH1mag,'linewidth',1.5);
xlabel('omega');ylabel('magnitude');
title('geonH1mag')
grid on;
subplot(222);
plot(omega, geonH1phase,'linewidth',1.5)
xlabel('omega');ylabel('phase(degrees)');
title('geonH1phase')
grid on;
% ��freqz��õĽ�����бȽ�
H1 = freqz(b, a, 512, 'whole');
subplot(223);
plot(omega, abs(H1),'linewidth',1.5)
xlabel('omega');ylabel('magnitude');
title('H1-magnitude')

grid on;
subplot(224);
plot(omega, angle(H1),'linewidth',1.5)
xlabel('omega');ylabel('phase(degrees)');
title('H1-phase')

grid on;
