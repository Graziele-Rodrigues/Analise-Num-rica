%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivos:resolver um pvi pelo metodo de euler
%
%  Entradas:
%          a->limite inferior
%          b->limite superior
%          y0->valor inicial
%          m->numero maximo de subintervalos
%          f->funcao
%  Saidas:
%          Vetx->abscissas
%          Vety->solucao do pvi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [VetX,VetY] = euler (a,b,y0,m,f)
  
  h = (b-a)/m;
  x = a;
  y = y0;
  VetX(1) = x;
  VetY(1) = y;
  fxy = f(x,y);
  for i=1:m
    x = a + i * h;
    y = y + h * fxy;
    fxy = f(x,y);
    VetX(i+1) = x;
    VetY(i+1) = y;
    
    endfor
  
endfunction
