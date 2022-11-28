//t = -10:10
//temp1 = zeros(1, 10)
//temp2 = ones(1, 11)
//step = [temp1 temp2]

t = -1:1
delta = [zeros(1, 1) ones(1, 1) zeros(1, 1)]
plot(t, delta)
a = gca()
a.box = "off"
