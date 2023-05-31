s = tf('s');
t = (5*(s + 3)*(s + 5))/(s*(s + 2)*(s^2 + 6*s + 7));
disp(t);
pzplot(t);