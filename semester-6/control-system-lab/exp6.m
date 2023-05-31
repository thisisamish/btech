num = 180;
den1 = [1 9 20 180];
den2 = [1 9 20 181];
den3 = [1 9 20 179];
g1 = tf(num, den1);
g2 = tf(num, den2);
g3 = tf(num, den3);
subplot(2, 2, 1);
rlocus(g1);
subplot(2, 2, 2);
rlocus(g2);
subplot(2, 2, 3);
rlocus(g3);
isstable(g1)
isstable(g2)
isstable(g3)

