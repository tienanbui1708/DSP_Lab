// Khoi tao truc tan so omega tu -pi den pi
w = linspace(-%pi, %pi, 1000);


// Exercise 4: H(w)
H_ex4 = 1 ./ (1 + 0.1 * exp(-%i * w) + 0.2 * exp(-%i * 2 * w));
mag_H4 = abs(H_ex4);
phase_H4 = atan(imag(H_ex4), real(H_ex4));


// --- Ve do thi ---
figure(0);

// Pho bien do va pha cua H(w) (Ex4)
subplot(2, 2, 1); plot(w, mag_H4, 'b'); title('Pho bien do H(w) - Ex 4');
subplot(2, 2, 2); plot(w, phase_H4, 'r'); title('Pho pha H(w) - Ex 4');

