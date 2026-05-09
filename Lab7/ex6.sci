funcprot(0);

// 1. Ham tinh tich chap vong dung FFT
function y = circ_conv_fft(x, g)
    // Tinh FFT cua 2 chuoi
    X = fft(x, -1);
    G = fft(g, -1);
    
    // Nhan tung phan tu trong mien tan so
    Y = X .* G;
    
    // Tinh IFFT de khoi phuc tin hieu mien thoi gian
    y = fft(Y, 1); 
endfunction

// 2. Ham tinh tich chap vong truc tiep (Direct Method)
function y = circ_conv_direct(x, g)
    N = length(x);
    y = zeros(1, N);
    
    // Vong lap tinh tong chap theo cong thuc
    for n = 0 : N-1
        for k = 0 : N-1
            // Modulo cho N roi cong 1 de phu hop index cua Scilab
            idx = modulo(n - k + N, N) + 1; 
            
            y(n+1) = y(n+1) + x(k+1) * g(idx);
        end
    end
endfunction

// --- KIEM CHUNG VOI DU LIEU CUA EXERCISE 4 ---
x_test = [1, 2, 1, -1];
g_test = [0, 1/3, -1/3, 1/3];

disp("=== KIEM CHUNG EXERCISE 6 ===");
disp("Tich chap vong tinh bang ham FFT:");
y_fft = circ_conv_fft(x_test, g_test);
disp(y_fft);

disp("Tich chap vong tinh bang phuong phap truc tiep:");
y_direct = circ_conv_direct(x_test, g_test);
disp(y_direct);
