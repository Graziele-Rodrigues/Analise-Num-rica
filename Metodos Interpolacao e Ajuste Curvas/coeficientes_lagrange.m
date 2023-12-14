function coeficientes = coeficientes_lagrange(m, x, y)
  coeficientes = zeros(1, m);
  for i = 1 : m
    produto = [1];
    for j = 1 : m
      if i ~= j
        produto = conv(produto, [1, -x(j)]) / (x(i) - x(j));
      endif
    endfor
    coeficientes = coeficientes + y(i) * produto;
  endfor
endfunction

