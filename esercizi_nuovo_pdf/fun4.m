function y = fun4(x)

x(find(x >= -pi/2 & x <= pi/2)) = 1
y = sin(x)./cos(x);



plot(y);


