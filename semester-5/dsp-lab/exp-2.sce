clc
clear

N = input("Enter a value of N: ")

clf

seq = [1, 1, 1, zeros(1, N-3)]

dft = fft(seq)
[phi, db] = phasemag(dft)
mag = abs(dft)

x_axis = 1:3

subplot(2, 2, 1)
a = gca()
//a.auto_ticks = ["off" "on" "on"]
//a.x_ticks.locations = 1:3
plot2d3(seq)
title("Original Sequence")

subplot(2, 2, 2)
a = gca()
plot(phi)
a.x_location = "middle"
a.box = "off"
xgrid(5, 1, 7)
title("Phase Plot")

subplot(2, 2, 3)
a = gca()
plot(mag)
a.box = "off"
xgrid(5, 1, 7)
title("Magnitude Plot")
