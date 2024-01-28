################################################################################
## objetivos:calcular raiz de equacao pelo metodo da regula_falsi
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
function [Raiz,Iter,info] = regula_falsi (a,b,Toler,IterMax,f)
  Fa=f(a);
  Fb=f(b);
  if Fa*Fb > 0
    info=-1;
    return
  endif
  Iter=0;
  while 1
    deltax=Fb*(b-a)/(Fb-Fa);
    x=b-deltax;
    Fx=f(x);
    if (abs(deltax) <= Toler && abs(Fx) <= Toler) || Iter >= IterMax
      break
    endif
    if Fb*Fx < 0
      a=b;
      Fa=Fb;
    endif
    b=x;
    Fb=Fx;
    Iter=Iter+1;
  endwhile
  Raiz=x;
  if abs(deltax) <= Toler && abs(Fx) <= Toler
    info=0;
  else
    info=1;
  endif
endfunction
