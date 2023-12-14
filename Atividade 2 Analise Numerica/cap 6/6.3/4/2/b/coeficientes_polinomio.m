

function c = coeficientes_polinomio (n, x, y)
  for i = 1 : n + 1
    c(i) = y(i);
  endfor
  for i = 1 : n
    for k = n+1 : -1 : i+1
      c(k) = (c(k) - c(k-1))/(x(k) - x(k-i));
    endfor
  endfor
  for i = n : -1 : 1
    for k = i : n
      c(k) = c(k) - c(k+1)*x(i);
    endfor
  endfor
endfunction
