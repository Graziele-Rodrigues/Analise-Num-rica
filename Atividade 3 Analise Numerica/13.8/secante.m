################################################################################
## objetivos:calcular raiz de equacao pelo metodo da secante
##
## Entradas:
##          a->limite inferior
##          b->limite superior
##          Toler->tolerancia
##          IterMax->numero maximo de itera��es
##          f->funcao
## Saidas:
##          Raiz->raiz da equacao
##          Iter->numero gasto de iteracoes
##          info->informacoes sobre erro
##

################################################################################
function [Raiz,Iter,info] = secante (a,b,Toler,IterMax,f)
  Epsilon=precisao_maquina;
  Fa=f(a);
  Fb=f(b);
  a0=a;
  b0=b;
  Iter=0;
  while 1
    deltax=Fb*(b-a)/(Fb-Fa);
    x=b-deltax;
    Fx=f(x);
    if (abs(deltax) <= Toler && abs(Fx) <= Toler) || abs(Fb-Fx) < Epsilon || Iter >= IterMax
      break
    endif
    a=b;
    Fa=Fb;
    b=x;
    Fb=Fx;
    Iter=Iter+1;
  endwhile
  Raiz=x;
  if abs(deltax) <= Toler && abs(Fx) <= Toler
    if Raiz >= 0 && Raiz <= b0
      info=0;
    else
      info=2
    endif
  else
    info=1;
  endif
endfunction
