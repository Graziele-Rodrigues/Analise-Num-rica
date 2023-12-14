function [b, r2, s2, AICc, Info] = regressao_linear_dvs (n, v, p, ii, x, y)
  [MatX, Info] = matriz_explicativas(n, v, p, ii, x);
  if Info ~= 0
    return;
  endif
  Epsilon = precisao_maquina # ver o algoritmo do Exercicio 1.41
  # chamada da rotina para decomposicao em valores singulares refuzida
  [U, Sigma, V] = svd(MatX);
  if Sigma(p,p) < n*Epsilon
    Info = 4;
    return;
  endif
  # calculo do vetor auxiliar
  for i = 1 : p
    Soma = 0
    for j = 1 : n
      Soma = Soma + U(j,i)*y(j);
    endfor
    c(i) = Soma/Sigma(i,i);
  endfor
  # estimadores de quadrados minimos dos parametros da equacao de regressao
  for i = 1 : p
    Soma = 0;
    for j = 1 : p
      Soma = Soma + V(i,j)*c(j);
    endfor
    b(i) = Soma;
  endfor
  Info = 0;
  S = 0;
  Sy = 0;
  Sy2 = 0;
  for i = 1 : n
    u = 0;
    for j = 1 : p
      u = u + MatX(i,j)*b(j);
    endfor
    S = S + (y(i) - u)^2;
    Sy = Sy + y(i);
    Sy2 = Sy2 + y(i)^2;
  endfor
  # coeficiente de determinacao
  if ii == 1
    r2 = 1 - S/(Sy2 - (Sy^2)/n);
  else
    r2 = 1 - S/Sy2;
  endif
  s2 = S/(n-p); # quadrado medio residual
  AICc = n * log(S/n) + 2*p*n/(n-p-1) # criterio de informacao de Akaike
endfunction

