// Khoi tao truc tan so omega tu -pi den pi
w = linspace(-%pi, %pi, 1000);


// Exercise 5: Y(w)
Y_ex5 = (1 + exp(-%i * w)) ./ (1 - 0.5 * exp(-%i * w));
mag_Y5 = abs(Y_ex5);
phase_Y5 = atan(imag(Y_ex5), real(Y_ex5));

// --- Ve do thi ---
figure(0);
// Pho bien do va pha cua Y(w) (Ex5)
subplot(2, 2, 3); plot(w, mag_Y5, 'b'); title('Pho bien do Y(w) - Ex 5');
subplot(2, 2, 4); plot(w, phase_Y5, 'r'); title('Pho pha Y(w) - Ex 5');
