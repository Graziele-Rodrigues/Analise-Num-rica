function x = sol_decomp_LDL(A, b)
  [R, Det] = LDL(A);
  L = eye(size(R,1)) + tril(R,-1);
  D = eye(size(R)).*diag(R);
  y = sub_sucessiva(L, b);
  for i = 1 : size(R,1)
      t(i)=y(i)/D(i,i);
  endfor
  x = sub_retroativa(L', t');
endfunction
