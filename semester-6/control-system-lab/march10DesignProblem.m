s = tf('s');
gs = 1/(500*(s^2));
gcs = (s+1)/(s+2);

tfss = series(gs, gcs);
isstable(tfss)
subplot(2, 2, 1);
step(tfss)

tfps = parallel(gs, gcs);
isstable(tfps)
subplot(2, 2, 2);
step(tfps)

tffs = feedback(tfss, +1);
isstable(tffs)
subplot(2, 2, 3);
step(tffs)
