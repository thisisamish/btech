clc;
clear;
close;

t = 0:0.001:10;
y = sin(t);
x = cos(t);
plot(t, y, 'b*', t, x, 'g*');
title("sin and cos plot");
xlabel('Time ---->');
ylabel('Amplitude ---->');