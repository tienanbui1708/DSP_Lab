n = 0:7;
x = [3, 2, 1, 0, 1, 0, 1, 2]; // 1 chu ky N=8

// Tinh he so Fourier bang FFT
ck = fft(x) / 8; 
mag_ck = abs(ck);
phase_ck = atan(imag(ck), real(ck));

figure(3);
subplot(3,1,1); plot2d3(n, x); plot(n, x, 'ro'); 
title('Tin hieu x(n) trong 1 chu ky');

subplot(3,1,2); plot2d3(n, mag_ck); plot(n, mag_ck, 'bo'); 
title('Pho bien do |c_k|');

subplot(3,1,3); plot2d3(n, phase_ck); plot(n, phase_ck, 'mo'); 
title('Pho pha \angle c_k');
