function [sz, Info] = splines_avaliar (n, x, y, m, z, ts)
  if ts == 0
    [s2, Info] = splines_naturais(n,x,y);
  else
    [s2, Info] = splines_extrapolados(n,x,y);
  endif
  if Info < 0
    return;
  endif
  Info = 0;
  for j = 1 : m
    if (z(j) >= x(1)) && (z(j) <=  x(n))
      # Pesquisa binarios para localizar o intervalo
      inf = 1;
      sup = n;
      while 1
        if (sup - inf) <= 1
          break;
        endif
        ind  = round((inf+sup)/2);
        if x(ind) > z(j)
          sup = ind;
        else
          inf = ind;
        endif
      endwhile
      # Avaliacao do spline pelo metodo de Horner
      h = x(sup) - x(inf);
      a = (s2(sup)-s2(inf))/(6*h);
      b = s2(inf)/2;
      c = (y(sup)-y(inf))/h-(s2(sup)+2*s2(inf))*h/6;
      d = y(inf);
      h = z(j)-x(inf);
      sz(j)=((a*h+b)*h+c)*h+d;
    else
      sz(j) = 0;
      Info = Info + 1;
    endif
  endfor
endfunction
