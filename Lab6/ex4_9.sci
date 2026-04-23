w = linspace(-%pi, %pi, 1000);
Xa = zeros(w); Xf = zeros(w); Xg = zeros(w);

// Tinh DTFT cho tin hieu (a): x(n) = 1 voi n tu 0 den 5
for n = 0:5
    Xa = Xa + exp(-%i * w * n);
end

// Tinh DTFT cho tin hieu (f): x(n) = 2 - 0.5*|n| voi n tu -3 den 3
for n = -3:3
    Xf = Xf + (2 - 0.5*abs(n)) .* exp(-%i * w * n);
end

// Tinh DTFT cho tin hieu (g): x(n) = n voi n tu -2 den 2
for n = -2:2
    Xg = Xg + n .* exp(-%i * w * n);
end

// Ve do thi
figure(6);
// Pho cua (a)
subplot(3,2,1); plot(w, abs(Xa), 'b'); title('|X_a(\omega)| - Ex 4.9a');
subplot(3,2,2); plot(w, atan(imag(Xa), real(Xa)), 'r'); title('\angle X_a(\omega)');

// Pho cua (f)
subplot(3,2,3); plot(w, abs(Xf), 'b'); title('|X_f(\omega)| - Ex 4.9f');
subplot(3,2,4); plot(w, atan(imag(Xf), real(Xf)), 'r'); title('\angle X_f(\omega)');

// Pho cua (g)
subplot(3,2,5); plot(w, abs(Xg), 'b'); title('|X_g(\omega)| - Ex 4.9g');
subplot(3,2,6); plot(w, atan(imag(Xg), real(Xg)), 'r'); title('\angle X_g(\omega)');
