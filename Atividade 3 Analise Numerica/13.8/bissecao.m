%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivos:calcular raiz de equacao pelo metodo de bissecao
%
% Entradas:
%          a->limite inferior
%          b->limite superior
%          Toler->tolerancia
%          IterMax->numero maximo de iterações
%          f->funcao
% Saidas:
%          Raiz->raiz da equacao
%          Iter->numero gasto de iteracoes
%          info->informacoes sobre erro
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [Raiz,Iter,info] = bissecao (a,b,Toler,IterMax,f)
  Fa=f(a);
  Fb=f(b);
  if (Fa*Fb) > 0
    info=-1;
    return
  endif
  deltax=abs(b-a);
  Iter=0;
  while 1
    deltax=deltax/2;
    x=(a+b)/2;
    Fx=f(x);
    if (deltax <= Toler && abs(Fx) <= Toler) || Iter >= IterMax
      break
    endif
    if Fa*Fx >0
      a=x;
      Fa=Fx;
    else
      b=x;
      Fb=Fx;
    endif
    Iter=Iter+1;
  endwhile
  Raiz=x;
  if deltax<=Toler && abs(Fx)<=Toler
    info=0;
  else
    info=1;
  endif
endfunction