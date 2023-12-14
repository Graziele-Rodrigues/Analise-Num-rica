function valor = interpola (x, y, z)
  n = length(x);
  A = ones(n, n); #matriz de 1
  for i = 2:n
    A(:, i) = x.^(i-1);
  end

  for i = 1 : size(A, 1)
    for j = 1 : size(A, 1)
      if A(i,j) ~= A(j, i)
        Info1 = 1;
      endif
    endfor
  endfor
  [r, Det, Info2] = Cholesky (A);
  if Info2 || Info1
    # Decomposição LU
    r = sol_decomp_LU (A, y);
  endif

  valor = r(1);
  for i = 2:n
      valor = valor + r(i) * z^(i-1);
  end
endfunction
