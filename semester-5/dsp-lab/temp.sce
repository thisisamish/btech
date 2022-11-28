clc
clear

x = [1 2 3 4]
W = [1 1 1 1; 1 -%i -1 %i; 1 -1 1 -1; 1 %i -1 -%i]
dft_x = x*W

x1 = [4 1 2 3]
for i = 1:4
    dft_x1(i) = dft_x(i)*exp((-%i*2*%pi*(i-1)*1)/4)
end
disp("The DFT of x1(n) by circular time shift property:", dft_x1)

x2 = [3 4 1 2]
for i = 1:4
    dft_x2(i) = dft_x(i)*exp((-%i*2*%pi*(i-1)*2)/4)
end
disp("The DFT of x2(n) by circular time shift property:", dft_x2)

x3 = [2 3 4 1]
for i = 1:4
    dft_x3(i) = dft_x(i)*exp((-%i*2*%pi*(i-1)*(-1))/4)
end
disp("The DFT of x3(n) by circular time shift property:", dft_x3)

x4 = [1 4 3 2]
dft_x4 = conj(dft_x)
disp("The DFT of x4(n) by time reversal property:", dft_x4)
