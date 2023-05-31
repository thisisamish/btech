clc;
clear;
close;

num = [1 0];
den = [1 1];
g = tf(num, den);
disp(g)
subplot(211);
step(g);

num = [1 0 0];
den = [1 4 25];
s = tf('s');
g1 = tf(num, den);
g2 = 1/s;
g = feedback(g1, g2);
disp(g);
subplot(212);
step(g);