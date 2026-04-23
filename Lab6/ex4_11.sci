// Khoi tao tin hieu x(n) tuong ung voi n tu -4 den 4 de de tinh toan
n_x = -4:4;
x = [0, 0, 0, 0, 1, 0, -1, 2, 3]; // n=0 nam o vi tri index 5
x_rev = x($:-1:1); // Tin hieu dao thoi gian x(-n)

// Tinh thanh phan chan va le
xe = 0.5 * (x + x_rev);
xo = 0.5 * (x - x_rev);

// Chuan bi truc thoi gian cho y(n) tu -6 den 4
ny = -6:4;
y_real = zeros(1, 11);
y_imag = zeros(1, 11);

// Dua xe va xo vao dung vi tri tren truc ny
// xe(n+2) co nghia la dich xe sang trai 2 don vi
y_real(1:9) = xe;  

// -j*xo(n) giu nguyen vi tri, chi can map dung index
xo_pad = zeros(1, 11);
xo_pad(3:11) = xo;
y_imag = -xo_pad; 

// Ve do thi Phan thuc va Phan ao cua y(n)
figure(7);
subplot(2,1,1);
plot2d3(ny, y_real); plot(ny, y_real, 'bo');
a1 = gca(); a1.x_location = "origin";
title('Phan thuc cua y(n)');
xlabel('n'); ylabel('Re{y(n)}');

subplot(2,1,2);
plot2d3(ny, y_imag); plot(ny, y_imag, 'ro');
a2 = gca(); a2.x_location = "origin";
title('Phan ao cua y(n)');
xlabel('n'); ylabel('Im{y(n)}');
