clear
close
clc

num = 1.42;
den = [1.09 1 1.42];
ts = tf(num, den);
step(ts);
stepinfo(ts)