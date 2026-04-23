F = linspace(-5, 5, 1000);
A = 1; a = 1;

// Tin hieu (a)
Xa = A ./ (a + %i * 2 * %pi * F);
mag_a = abs(Xa); 
phase_a = atan(imag(Xa), real(Xa));

// Tin hieu (b)
Xb = (2 * a * A) ./ (a^2 + (2 * %pi * F).^2);
mag_b = abs(Xb); 
phase_b = zeros(F);

// Ve do thi
figure(1);
subplot(2,2,1); plot(F, mag_a, 'b'); title('|X_a(F)| cua tin hieu (a)');
subplot(2,2,2); plot(F, phase_a, 'r'); title('Pho pha cua tin hieu (a)');
subplot(2,2,3); plot(F, mag_b, 'b'); title('|X_a(F)| cua tin hieu (b)');
subplot(2,2,4); plot(F, phase_b, 'r'); title('Pho pha cua tin hieu (b)');
