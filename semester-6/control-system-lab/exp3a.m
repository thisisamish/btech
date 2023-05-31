clc;
clear;
close;

num = [1 -1];
den = [1 10 10];
g = tf(num, den);
disp(g);
subplot(221);
step(g);
isstable(g);

num = 1;
den = [1 2 10];
g = tf(num, den);
disp(g);
subplot(222);
step(g);
isstable(g);

num = 1;
den = [1 12 25 0 0];
g = tf(num, den);
disp(g);
subplot(223);
step(g);
isstable(g);