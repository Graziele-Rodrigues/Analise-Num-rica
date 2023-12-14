function x = solucao_cholesky (A, b)
  [R, Det, Info] = cholesky(A);
  if Info ~= 0
    disp('nao e possivel resolver o sistema por Cholesky');
    return;
  endif
  for i = 1 : size(A, 1)
    for j = 1 : size(A, 1)
      if A(i,j) ~= A(j, i)
        disp('A matriz nao e simetrica');
        return;;
      endif
    endfor
  endfor

  L = tril(R);
  y = sub_sucessiva(L, b);
  x = sub_retroativa(L', y');
  disp(x);
endfunction


