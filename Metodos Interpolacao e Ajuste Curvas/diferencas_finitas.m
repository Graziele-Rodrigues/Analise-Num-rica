
function T = diferencas_finitas (x, y)
  m = length(x);
  for i = 1 : m
    Dely(i) = y(i);
    T(i,1) = y(i);
  endfor
  # construcao das diferencas finitas
  aux = 2;
  for i = 1 : m-1
    for k = m : -1 : i+1
      Dely(k) = Dely(k) - Dely(k-1);
    endfor
    t = Dely(:,aux:end)';
    for j = 1 : length(t)
      T(j, aux) = t(j);
    endfor
    aux = aux + 1;
  endfor
endfunction
