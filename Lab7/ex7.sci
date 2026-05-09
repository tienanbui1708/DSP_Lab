function y = lin_conv_fft(x, g)
    // 1. Tinh chieu dai cua chuoi ket qua N
    Lx = length(x);
    Lg = length(g);
    N = Lx + Lg - 1;
    
    // 2. Zero-padding cho 2 mang dat chieu dai N
    x_pad = [x, zeros(1, N - Lx)];
    g_pad = [g, zeros(1, N - Lg)];
    
    // 3. Tinh tich chap vong N-diem bang FFT
    X = fft(x_pad, -1);
    G = fft(g_pad, -1);
    Y = X .* G;
    y = fft(Y, 1); // IFFT
endfunction

// --- KIEM CHUNG VOI DU LIEU BAT KY ---
x_test = [1, 2, 3];     // Chieu dai L1 = 3
g_test = [4, 5, 6, 7];  // Chieu dai L2 = 4
// Chieu dai mong doi cua tich chap tuyen tinh: 3 + 4 - 1 = 6

disp("=== KIEM CHUNG EXERCISE 7 ===");
disp("Ket qua tu ham lin_conv_fft (dung zero-padding):");
y_myfunc = lin_conv_fft(x_test, g_test);
disp(y_myfunc);

disp("Ket qua tu ham conv mac dinh cua Scilab:");
y_builtin = conv(x_test, g_test);
disp(y_builtin);
