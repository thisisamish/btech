clc
clear

x = [1 2 3 4]
N = length(x)
W = [1 1 1 1; 1 -%i -1 %i; 1 -1 1 -1; 1 %i -1 -%i]

X = x*W
//disp("The DFT of x(n) is:", X)
x = X*W'/N
//disp("The IDFT of X(k) is:", x)

// Design Based Experiment
function [] = verifyCTS(twiddle_factor_matrix, og_seq, new_seq, shift)
    dft_new_seq = new_seq*twiddle_factor_matrix
    shifted_og_seq = circshift(og_seq, shift)
    dft_shifted_og_seq = shifted_og_seq*twiddle_factor_matrix
    if dft_new_seq == dft_shifted_og_seq then
        disp("Circular time shift property verified. DFT is:", dft_shifted_og_seq)
    else
        disp("Verification failed!")
    end
endfunction

x1 = [4 1 2 3]
verifyCTS(W, x, x1, 1)
x2 = [3 4 1 2]
verifyCTS(W, x, x2, 2)
x3 = [2 3 4 1]
verifyCTS(W, x, x3, -1)

x4 = [1 4 3 2]
verifyCTS(W, x, x4, 1)
