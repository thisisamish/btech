s = tf('s');
k = 0.5;
sys1 = (k*(s + 1))/(s^2 + s*(k - 1) + k);
k = 1;
sys2 = (k*(s + 1))/(s^2 + s*(k - 1) + k);
k = 1.5;
sys3 = (k*(s + 1))/(s^2 + s*(k - 1) + k);
subplot(2, 2, 1);
rlocus(sys1);
title('Root Locus k = 0.5');
subplot(2, 2, 2);
rlocus(sys2);
title('Root Locus k = 1');
subplot(2, 2, 3);
rlocus(sys3);
title('Root Locus k = 1.5');
isstable(sys1)
isstable(sys2)
isstable(sys3)

