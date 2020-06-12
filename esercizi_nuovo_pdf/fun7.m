function y = fun7(x,n)

len = length(x);
y = zeros(1,len);

for i = 1:len
    if(x(i) >= -1 && x(i) <= 0)
        y(i) = x(i)^(n+1);
    else
        y(i) = (-1)^n*(abs(x(i))^n);
    end
end
