F = linspace(-3, 3, 1000);
tau = 1;

// Tinh X_a(F) su dung ham sinc cua Scilab (sinc(x) = sin(pi*x)/(pi*x))
Xa = tau * (sinc(F * tau)).^2;

figure(2);
subplot(2,1,1); plot(F, Xa, 'b'); title('Pho bien do |X_a(F)|');
subplot(2,1,2); plot(F, zeros(F), 'r'); title('Pho pha \angle X_a(F)');
