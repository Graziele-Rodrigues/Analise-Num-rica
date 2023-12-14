function [A, Info] = inversao(A)
  tam = size(A);
  Info = 1;
  if tam(1) ~= tam(2)
    disp('A matriz deve ser quadrada');
    A = [];
    Info = -1;
    return;
  endif
  n = tam(1);
  identidade = eye(n);
  tmpA = zeros(size(A));
  [A,pivot,PdU,Info] = LU(A);
  if Info ~= 0
    disp('O sistema nao tem solucao');
    A = [];
    return;
  endif
  for i = 1 : n
    b = identidade(:,i);
    y = sub_sucessiva(A, b);
    tmpA(i, :) = sub_retroativa(A, y);
  endfor
  A = tmpA;
endfunction
