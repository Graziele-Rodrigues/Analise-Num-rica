
function Pz = polinomio_gregory_newton (m, x, y, z)
  for i = 1 : m
    Dely(i) = y(i);
  endfor
  for i = 1 : m-1
    for k = m : -1 : i+1
      Dely(k) = Dely(k) - Dely(k-1);
    endfor
  endfor
  u = (z - x(1))/(x(2) - x(1));
  Pz = Dely(m);
  for i = m-1 : -1 : 1
    Pz = Pz * (u-i + 1)/i + Dely(i);
  endfor
endfunction
