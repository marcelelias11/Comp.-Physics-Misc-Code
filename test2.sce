t = linspace(0, 7*%pi, 10000);
Y = [];
F = [];
for i = 1:size(t, 'c')
    y = sin(t(i));
    f = y/abs(y);
    Y(i) = y;
    F(i) = f;
end
j = linspace(-1.2, 1.2, 2)
plot(t, F)
plot(j)
