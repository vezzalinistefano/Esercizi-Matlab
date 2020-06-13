clear all
close all

syms a;
fun_a = a.^3;
x = linspace(0,10,100);
y = x.^3;
f = diff(y);
f2 = diff(f);
F = int(fun_a);

hold on;
subplot(2,2,1); plot(y,x,'b');
title('{f(x) = x^3}')
subplot(2,2,2); plot(f,'r');
title("{f'(x)}");
subplot(2,2,3); plot(f2,'g');
title("{f''(x)}");
subplot(2,2,4); plot(double(subs(F,a,x)),'c');
title("{F(x)}");
hold off;
