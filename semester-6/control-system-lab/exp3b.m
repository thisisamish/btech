clc;
clear;
close;

s = tf('s');
gs = 1/s;
hs = 1/(s + 1);
cs = feedback(gs, hs);
isstable(cs);
subplot(221);
step(cs);
disp(cs);

g1 = 1/(s + 3);
g2 = 1/(s + 5);
g3 = 1/s;
g4 = series(g1, g2);
g5 = feedback(g4, 1);
g6 = parallel(g5, g3);
subplot(222);
step(g6);
disp(g6);
isstable(g6);