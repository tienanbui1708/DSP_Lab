// Cac tan so co mat trong tin hieu
omega = [0, %pi/4, -%pi/4, %pi/2, -%pi/2, 3*%pi/4, -3*%pi/4];

// Cong suat tai tung tan so (Binh phuong bien do chia 2 doi voi cos)
power = [4, 2, 2, 0.5, 0.5, 0.125, 0.125]; 

figure(4);
plot2d3(omega, power); 
plot(omega, power, 'bo');
a = gca(); a.x_location = "origin";
title('Mat do pho cong suat (Power Density Spectrum)');
xlabel('\omega (rad/sample)');
ylabel('Power');
