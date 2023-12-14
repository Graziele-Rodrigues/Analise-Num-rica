function G = matrizG (x)
  m = length(x);
  G = zeros(m, m);
  for i = 1:m
    for j = 1:m
      G(i, j) = x(i) - x(j);
    endfor
  endfor
endfunction


