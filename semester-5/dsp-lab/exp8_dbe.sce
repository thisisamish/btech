// DESIGN-BASED EXPERIMENT
clc
close
clear
[wft, wfm, fr] = wfir("lp", 50, [(1/%pi) 0], "re", [0 0])
subplot(211)
title("Filter coefficients h(n)")
xlabel("n--->")
ylabel("h(n)--->")
plot(wft)
subplot(212)
title("Frequency Response H(w)")
xlabel("w--->")
ylabel("H(w)--->")
plot(2*fr, wfm)
