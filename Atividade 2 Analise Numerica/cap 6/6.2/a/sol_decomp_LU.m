function x = sol_decomp_LU (A, b)
  [R, Det, Pivot] = decomposicao_LU(A);
  L = eye(size(R,1)) + tril(R, -1);
  U = triu(R);
  y = substituicao_sucessiva_pivotal (L, b, Pivot);
  x = substituicao_retroativa(U, y');
endfunction
