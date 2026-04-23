// Khoi tao truc tan so omega tu -pi den pi
w = linspace(-%pi, %pi, 1000);

// Exercise 3a: X1(w)
X1 = 1 ./ (1 - 0.1 * exp(-%i * w));
mag_X1 = abs(X1);
phase_X1 = atan(imag(X1), real(X1));

// Exercise 3b: X2(w)
X2 = 1 + exp(-%i * w) + exp(-%i * 2 * w) + exp(-%i * 3 * w);
mag_X2 = abs(X2);
phase_X2 = atan(imag(X2), real(X2));


// --- Ve do thi ---
figure(0);
// Pho bien do va pha cua X1 (Ex3a)
subplot(2, 2, 1); plot(w, mag_X1, 'b'); title('Pho bien do X1(w) - Ex 3a');
subplot(2, 2, 2); plot(w, phase_X1, 'r'); title('Pho pha X1(w) - Ex 3a');

// Pho bien do va pha cua X2 (Ex3b)
subplot(2, 2, 3); plot(w, mag_X2, 'b'); title('Pho bien do X2(w) - Ex 3b');
subplot(2, 2, 4); plot(w, phase_X2, 'r'); title('Pho pha X2(w) - Ex 3b');


