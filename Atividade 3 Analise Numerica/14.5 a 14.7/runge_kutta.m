%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivos:resolver um pvi de ordem 4 pelo metodo de runge_kutta
%
% Entradas:
%          a->limite inferior
%          b->limite superior
%          y0->valor inicial
%          m->numero maximo de subintervalos
%          f->funcao
% Saidas:
%          Vetx->abscissas
%          Vety->solucao do pvi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [VetX,VetY] = runge_kutta (a,b,y0,m,f)
  h = (b-a)/m;
  xt = a;
  yt = y0;
  VetX(1) = xt;
  VetY(1) = yt;
  for i=1:m
  x = xt;
  y =yt;
  k1 = f(x,y);
  x = xt + h/2;
  y = yt +h/2 * k1;
  k2 =f(x,y);
  y = yt + h/2 * k2;
  k3 = f(x,y);
  x = xt + h;
  y = yt + h * k3;
  k4 = f(x,y);
  xt = a + i *h;
  yt = yt + h/6 * (k1 + 2 * (k2+k3) + k4);
  VetX(i+1) = xt;
  VetY(i+1) = yt;
  endfor

endfunction