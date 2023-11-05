function Info = malcondicionado(A)
  normA = norm(A, 1);
  normInvA = norm(inversa(A), 1);
  numeroCond = normA * normInvA;

  limite = 1 / eps;
  if numeroCond > limite
      Info = 1;
  else
      Info = 0;
  endif
endfunction
