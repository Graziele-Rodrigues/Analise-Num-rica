
function [x, y, Info] = pontos (m, vx, vy, z, grau)
  if grau < 1 || m < 2 || m < grau + 1
    Info = 1;
    return;
  endif
  Ordenado = true;
  indice(1) = 1;
  for j = 2 : m
    Ordenado = Ordenado & vx(j - 1) < vx(j);
    indice(j) = j;
  endfor
  if ~Ordenado
    Info = 2;
    return;
  endif
  Info = 0;
  np = grau + 1;
  inf = 1;
  sup = m;
  while 1
    if (sup - inf) <= 1
      break;
    endif
    ind = round((inf + sup)/2);
    if vx(ind) > z
      sup = ind;
    else
      inf = ind;
    endif
  endwhile
  Limite = inf;
  if np > 2
    if Limite ~= 1
      ind = indice(1);
      indice(1) = indice(Limite);
      indice(Limite) = ind;
      ind = indice(2);
      indice(2) = indice(Limite + 1);
      indice(Limite+1) = ind;
    endif
    for i = 3 : np
      Menor = abs(vx(indice(i))-z);
      k = i;
      for j = i+1 : m
        aux = abs(vx(indice(j))-z);
        if aux < Menor
          Menor = aux;
          k = j;
        endif
      endfor
      ind = indice(i);
      indice(i) = indice(k);
      indice(k) = ind;
      if indice(i) < Limite
        Limite = indice(i);
      endif
    endfor
  endif
  for i = 1 : np
    x(i) = vx(Limite - 1 + i);
    y(i) = vy(Limite - 1 + i);
  endfor
endfunction
