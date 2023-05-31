num = 10;
den = [1 2 3 0];
sys = tf(num, den);
subplot(2, 3, 1);
nyquist(sys)
isstable(sys)

num = 1;
den = [1 1];
sys = tf(num, den);
subplot(2, 3, 2);
nyquist(sys)
isstable(sys)

num = 1;
den = [1 6 11 6];
sys = tf(num, den);
subplot(2, 3, 3);
nyquist(sys)
isstable(sys)

num = 1;
den = [1 1 0 0];
sys = tf(num, den);
subplot(2, 3, 4);
nyquist(sys)
isstable(sys)

num = 1;
den = [1 1 0 0 0];
sys = tf(num, den);
subplot(2, 3, 5);
nyquist(sys)
isstable(sys)