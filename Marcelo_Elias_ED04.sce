a = 10*rand();
b = 11*rand();
c = 15*rand();
d = 16*rand();
x = linspace(-1,1,20);
y = linspace(-1,1,20);
z = x'*y

Vc = [a b c d];
Vv = [];

plot3d(a*x, b*y, c*z)
