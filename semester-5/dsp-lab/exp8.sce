clc
clear
close

// RECTANGULAR WINDOW
n = 30
wre = window('re', n)
subplot(341)
plot2d3((1:n),[wre])
xlabel("n--->")
ylabel("wr(n)--->")
title("RECTANGULAR WINDOW")
[wre fr] = frmag(wre, 256)
subplot(342)
plot(fr, 20*log(wre))
xlabel("fr--->")
ylabel("wr(fr)--->")
title("FREQUENCY SPECTRUM")

// TRIANGULAR WINDOW
n = 60
wtr = window('tr', n)
subplot(343)
plot2d3((1:n),[wtr])
xlabel("n--->")
ylabel("wr(n)--->")
title("TRIANGULAR WINDOW")
[wtr fr] = frmag(wtr, 256)
subplot(344)
plot(fr, 20*log(wtr))
xlabel("fr--->")
ylabel("wr(fr)--->")
title("FREQUENCY SPECTRUM")

// HANNING WINDOW
n = 60
whn = window('hn', n)
subplot(345)
plot2d3((1:n),[whn])
xlabel("n--->")
ylabel("wr(n)--->")
title("HANNING WINDOW")
[whn fr] = frmag(whn, 256)
subplot(346)
plot(fr, 20*log(whn))
xlabel("fr--->")
ylabel("wr(fr)--->")
title("FREQUENCY SPECTRUM")

// HAMMING WINDOW
n = 40
whm = window('hm', n)
subplot(347)
plot2d3((1:n),[whm])
xlabel("n--->")
ylabel("wr(n)--->")
title("HAMMING WINDOW")
[whm fr] = frmag(whm, 256)
subplot(348)
plot(fr, 20*log(whm))
xlabel("fr--->")
ylabel("wr(fr)--->")
title("FREQUENCY SPECTRUM")

// BLACKMAN WINDOW
n = 40
wbm = window('kr', n, 8.6)
subplot(3,4,10)
plot2d3((1:n),[wbm])
xlabel("n--->")
ylabel("wr(n)--->")
title("BLACKMAN WINDOW")
[wbm fr] = frmag(wbm, 256)
subplot(3,4,11)
plot(fr, 20*log(wbm))
xlabel("fr--->")
ylabel("wr(fr)--->")
title("FREQUENCY SPECTRUM")
