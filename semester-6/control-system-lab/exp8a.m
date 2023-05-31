num = 1;
den = [1 2 3 0];
H = tf(num, den);
bode(H);
title("Bode Plot");
grid;
[Gm, Pm, Wcg, Wcp] = margin(H);
gainMargin = 20*log10(Gm)
phaseMargin = Pm
gainCrossoverFreq = Wcg
phaseCrossoverFreq = Wcp
[M, P, W] = bode(num, den);
isstable(H)