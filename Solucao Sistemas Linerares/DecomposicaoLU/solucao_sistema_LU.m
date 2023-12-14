function x = solucao_sistema_LU (A, b)
  [A, Det, Pivot] = LU(A);
  U = triu(A);
  L = eye(size(A)) + tril(A, -1);
  P = eye(size(A));
  P = P(Pivot,:);
  b = P*b;
  y = sub_sucessiva(L,b);
  x = sub_retroativa(U,y');
endfunction
