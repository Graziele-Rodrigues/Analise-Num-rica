
function resposta = vetores_iguais (x, y)
  if size(x, 2) == size(y, 2) && size(x,1) == size(y,1) == 1
    n = size(x,2);
    T(:,1) = y;
    for j = 2 : n
      for i = 1 : (n-j+1)
        T(i,j)= (T(i+1,j-1)-T(i,j-1))/(x(i+j-1)-x(i));
      endfor
    endfor
    resposta = T;
  else
    disp('Os vetores possuem tamanhos diferentes');
    resposta = 0;
  endif

endfunction
