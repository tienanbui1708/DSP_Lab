// Mo phong pho mat do cong suat (PSD) 
A = 1;      // Gia su bien do A = 1
tau = 1;    // Gia su chu ky tau = 1

k = -5:5;   // Xet cac bac hai tu -5 den 5 de ve do thi
F = k / tau; // Truc tan so F

// Tinh cong suat tung vach pho P_k = |c_k|^2
Pk = ( (2 * A) ./ (%pi * (4 * k.^2 - 1)) ).^2;

figure(5);
plot2d3(F, Pk); // Ve dang tin hieu roi rac (stem)
plot(F, Pk, 'bo'); // Danh dau cac diem dinh bang vong tron xanh
a = gca(); 
a.x_location = "origin"; // Dua truc hoanh vao giua
title('Pho mat do cong suat S_{xx}(F) cua tin hieu sin chinh luu (A=1, \tau=1)');
xlabel('Tan so F (Hz)');
ylabel('Cong suat P_k');
