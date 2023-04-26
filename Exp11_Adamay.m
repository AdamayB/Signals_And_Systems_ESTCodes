clc 
clear all
format short
x = [1 2 3 4 ];
N = length(x)
a = zeros(1, N)
for k =1:N
    for n = 1:N
        a(k) = a(k) + x(n).*exp((-1j.*2*pi*(k-1).*(n-1))/N);
    end
end
a
ans_fft = fft(x);
an = angle(ans_fft);

subplot(221)
stem(x)
% xlim([0 5])
% ylim([0 5])
xlabel('sample')
ylabel('x(n)')
title('sequence')

subplot(222)
stem(a)
% xlim([0 5])
% ylim([-2.5 12])
xlabel('q')
ylabel('k')
title('dft without inbuilt command')

% ang = angle(a);
% subplot(223)
% stem(ang)
% xlim([0 5])
% xlabel('frequency')
% ylabel('spectrum')
% title('phase')

subplot(223);
stem(ans_fft)
% xlim([0 5])
% ylim([-2.5 12])
xlabel('q')
ylabel('k')
title('DFT using FFT command')

subplot(224);
stem(an);
% xlim([0 5])
xlabel('frequency')
ylabel('spectrum')
title('phase')