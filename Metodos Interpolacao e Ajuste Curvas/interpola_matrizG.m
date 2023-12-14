
function retval = interpola_matrizG(x, z)
  m = length(x);
  G = zeros(size(x));
  for i = 1: m
     G(i, i) = z - x(i);
  endfor
  for i = 1:m
    for j = 1:m
      if i == j
        continue;
      endif
      G(i, j) = x(i) - x(j);
    endfor
  endfor
endfunction
