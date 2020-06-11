function der = fun5der(x)

h = 10^(-5);
der = (fun5(x+h) + fun5(x))./h;