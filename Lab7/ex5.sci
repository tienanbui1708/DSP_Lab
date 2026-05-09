N = 20;
n = 0:N-1;
// Tao tin hieu x(n)
x = sin(2 * %pi * 2 * n / N);

// Tinh toan DFT bang ham fft (tham so -1 de dam bao tinh FFT chieu thuan)
X = fft(x, -1);
mag_X = abs(X);

// Ve do thi
figure(0);

// Do thi tin hieu x(n)
subplot(2,1,1);
plot2d3(n, x); plot(n, x, 'ro');
a1 = gca(); a1.x_location = "origin";
title('Tin hieu thoi gian x(n) = sin(4\pi n / 20)');
xlabel('n'); ylabel('x(n)');

// Do thi pho bien do |X(k)|
subplot(2,1,2);
plot2d3(n, mag_X); plot(n, mag_X, 'bo');
a2 = gca(); a2.x_location = "origin";
title('Pho bien do |X(k)|');
xlabel('k'); ylabel('|X(k)|');
