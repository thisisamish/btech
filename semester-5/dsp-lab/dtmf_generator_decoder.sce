clc
close
clear

row_f1 = [700 770 850 940]
column_f1 = [1220 1350 1490]
fs = 8000
N = 1:800
mobile = [8 2 9 9 2 5 7 1 6 9]
total_signal = []
figure
for i = 1:length(mobile)
    select mobile(i)
    case 1
        row_f = 1
        column_f = 1
    case 2
        row_f = 1
        column_f = 2
    case 3
        row_f = 1
        column_f = 3
    case 4
        row_f = 2
        column_f = 1
    case 5
        row_f = 2
        column_f = 2
    case 6
        row_f = 2
        column_f = 3
    case 7
        row_f = 3
        column_f = 1
    case 8
        row_f = 3
        column_f = 2
    case 9
        row_f = 3
        column_f = 3
    case 0
        row_f = 4
        column_f = 2
    else
        row_f = 4
        column_f = 1
    end
    y = sin(2*3.14*(row_f1(row_f)/fs)*N) + sin(2*3.14*(column_f1(column_f)/fs)*N)
    total_signal = [total_signal y zeros(1, 8800)]
    temp(:,:,i) = y(:,:)
end
plot(total_signal)
title("DTMF Signal", "color", "red", "fontsize", 4)
xlabel("Samples", "color", "blue", "fontsize", 2)
ylabel("Amplitude", "color", "blue", "fontsize", 2)
playsnd(total_signal, fs)

row_f = []
col_f = []

for i = 1:10
    n = length(temp(:,:,i))
    p = abs(fft(temp(:,:,i)))
    f = (0:n-1)*fs/n
    row = p(2:100)
    col = p(101:200)
    [r1 c1] = find(row == max(row))
    [r2 c2] = find(col == max(col))
    row_f = [row_f 10*c1]
    col_f = [col_f (10*(c2+100))-10]
end
mobile_find = []
for i =1:10
    if( row_f (i) ==700 & col_f (i) ==1220)
        n0 =1
    elseif ( row_f (i) ==700 & col_f (i) ==1350)
        n0 =2
    elseif ( row_f (i) ==700 & col_f (i) ==1490)
        n0 =3
    elseif ( row_f (i) ==770 & col_f (i) ==1220)
        n0 =4
    elseif ( row_f (i) ==770 & col_f (i) ==1350)
        n0 =5
    elseif ( row_f (i) ==770 & col_f (i) ==1490)
        n0 =6
    elseif ( row_f (i) ==850 & col_f (i) ==1220)
        n0 =7
    elseif ( row_f (i) ==850 & col_f (i) ==1350)
        n0 =8
    elseif ( row_f (i) ==850 & col_f (i) ==1490)
        n0 =9
    elseif ( row_f (i) ==940 & col_f (i) ==1350)
        n0 =0
    end
    mobile_find = [mobile_find n0]
end
disp("Decoded Mobile Number:")
disp(mobile_find)
