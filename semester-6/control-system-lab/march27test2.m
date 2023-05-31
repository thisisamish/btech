k = 5;
z = [-1; -3];
p = [-2 -4 -5 -7];

[num, den] = zp2tf(z, p, k);
g = tf(num, den);
disp(g);