% ������Ƶ����
load splat
y = y(1:8192);
N = 8192;
fs = 8192;
sound(y, fs);
subplot(2, 1, 1); % ����ԭʼ����
plot(y);
Y = fftshift(fft(y));
y = ifft(fftshift(Y));
y = real(y);
Y1 = conj(Y);
y1 = ifft(Y1);  
sound(real(y1), fs);
subplot(2, 1, 2); %�����任��Ĳ���
plot(real(y1));
