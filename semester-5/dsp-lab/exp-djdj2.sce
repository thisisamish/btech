clc
clear
t = -10:0.5:10
L = length(t)

// To generate Unit Step function
for i = 1:L
    if t(i) < 0
        x1(i) = 0
    else
        x1(i) = 1
    end
end

// To generate Impulse Function
for i = 1:L
    if t(i) == 0
        x2(i) = 1
    else
        x2(i) = 0
    end
end

// To generate Exponential waveforms
x3 = exp(t)

// To generate Ramp Function
for i = 1:L
    if t(i) < 0
        x4(i) = 0
    else
        x4(i) = t(i)
    end
end

// To generate sinusoidal function
f = 0.1
x5 = sin(2*%pi*f*t)

// To generate sinusoidal function
f = 0.1
x6 = cos(2*%pi*f*t)

// -------------------- Plotting the functions -----------------

// Plotting Unit Step function
subplot(431)
plot(t, x1)
a = gca()
a.box = "off"
xlabel("t")
ylabel("Amp")
title("Unit Step Function")

// Plotting Impulse function
subplot(432)
plot(t, x2)
a = gca()
a.box = "off"
xlabel("t")
ylabel("Amp")
title("Impulse Function")

// Plotting Exponential function
subplot(433)
plot(t, x3)
a = gca()
a.box = "off"
a.y_location = "middle"
xlabel("t")
ylabel("Amp")
title("Exponential Function")


// Plotting Ramp function
subplot(434)
plot(t, x4)
a = gca()
a.box = "off"
a.y_location = "middle"
xlabel("t")
ylabel("Amp")
title("Ramp Function")

// Plotting Sine function
subplot(435)
plot(t, x5)
a = gca()
a.box = "off"
a.y_location = "middle"
a.x_location = "middle"
xlabel("t")
ylabel("Amp")
title("Sine Function")

// Plotting Cosine function
subplot(436)
plot(t, x6)
a = gca()
a.box = "off"
a.y_location = "middle"
a.x_location = "middle"
xlabel("t")
ylabel("Amp")
title("Cosine fuction")

// Plotting Unit Step function
subplot(437)
plot2d3(t, x1)
a = gca()
a.box = "off"
xlabel("t")
ylabel("Amp")
title("Unit Step Function")

// Plotting Impulse function
subplot(438)
plot2d3(t, x2)
a = gca()
a.box = "off"
xlabel("t")
ylabel("Amp")
title("Impulse Function")

// Plotting Exponential function
subplot(439)
plot2d3(t, x3)
a = gca()
a.box = "off"
a.y_location = "middle"
xlabel("t")
ylabel("Amp")
title("Exponential Function")


// Plotting Ramp function
subplot(4, 3, 10)
plot2d3(t, x4)
a = gca()
a.box = "off"
a.y_location = "middle"
xlabel("t")
ylabel("Amp")
title("Ramp Function")

// Plotting Sine function
subplot(4, 3, 11)
plot2d3(t, x5)
a = gca()
a.box = "off"
a.y_location = "middle"
a.x_location = "middle"
xlabel("t")
ylabel("Amp")
title("Sine Function")

// Plotting Cosine function
subplot(4, 3, 12)
plot2d3(t, x6)
a = gca()
a.box = "off"
a.y_location = "middle"
a.x_location = "middle"
xlabel("t")
ylabel("Amp")
title("Cosine fuction")
