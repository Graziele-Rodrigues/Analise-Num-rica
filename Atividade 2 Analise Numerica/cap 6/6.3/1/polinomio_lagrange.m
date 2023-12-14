function P = polinomio_lagrange (m, x, y, z)
  P = 0;
  for i = 1 : m
    c = 1;
    d = 1;
    for j = 1 : m
      if i ~= j
        c = c * (z - x(j));
        d = d * (x(i) - x(j));
      endif
    endfor
    P = P + y(i) * c/d;
  endfor
endfunction
