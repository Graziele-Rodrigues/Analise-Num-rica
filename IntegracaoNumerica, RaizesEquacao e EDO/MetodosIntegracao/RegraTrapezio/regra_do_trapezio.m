function Integral = regra_do_trapezio (a, b, n, f)
  h = (b-a)/n;
  x = a:h:b;
  y = f(x);
  soma = 0;
  for i = 1 : n
    soma = soma + y(i) + y(i+1);
  endfor
  Integral = (h/2)*soma;
endfunction
