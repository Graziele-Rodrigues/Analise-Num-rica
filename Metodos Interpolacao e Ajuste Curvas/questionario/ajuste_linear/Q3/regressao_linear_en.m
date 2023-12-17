

function [b, r2, s2, AICc, Info]  = regressao_linear_en (n, v, p, ii, x1,x2 y)
  [MatX, Info] = matriz_explicativas(n, v, p, ii, x1,x2);
  if Info ~= 0
    return;
  endif
  # montagem das equacoes normais
  for i = 1 : p
    for j = 1 : i
      Soma = 0;
      for k = 1 : n
        Soma = Soma + MatX(k,i)*MatX(k,j);
      endfor
      Sxx(i,j) = Soma; # matriz dos coeficientes
      if i ~= j
        Sxx(j,i) = Soma;
      endif
    endfor
    Soma = 0;
    for k = 1 : n
      Soma = Soma + MatX(k,i)*y(k);
    endfor
    Sxy(i) = Soma; # vetor dos ternos independentes
  endfor
  # solucao do sistema linear pela decomposicao de Cholesky
  [L, Det, Info] = Cholesky(Sxx);
  if Info ~= 0
    Info = 4;
    return;
  endif
  L = tril(L);
  t = subst_sucess(L, Sxy');
  for i = 1 : p
    for j = 1 : i
      U(j,i) = L(i,j); # U = transposta de L
    endfor
  endfor
  # estimadores de quadraos minimos dos parametros da equacao de regressao
  b = subst_retro(U, t');
  Info = 0;
  S = 0;
  Sy2 = 0;
  for i = 1 : n
    u = 0;
    for j = 1 : p
      u = u + MatX(i,j)*b(j);
    endfor
    S = S + (y(i) - u)^2;
    Sy2 = Sy2 + y(i)^2;
  endfor
  # Coeficiente de determinacao
  if ii == 1
    r2 = 1 - S/(Sy2 - (Sxy(1)^2)/n);
  else
    r2 = 1 - S/Sy2;
  endif
  s2 = S/(n-p); # quadrado medio residual
  AICc = n*log(S/n) + 2*p*n/(n-p-1); # criterio de informacao Akaike
endfunction
