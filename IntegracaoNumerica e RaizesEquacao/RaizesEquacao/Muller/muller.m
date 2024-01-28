################################################################################
## objetivos:calcular raiz de equacao pelo metodo de muller
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
function [Raiz,Iter,info] = muller (a,b,Toler,IterMax,f)
  Fa=f(a);
  Fb=f(b);
  x=(a+b)/2;
  Fx=f(x);
  Iter=0;
  while 1
    ha=x-a;hb=b-x;Da=(Fa-Fx)/ha;Db=(Fb-Fx)/hb;
    AA=(Da+Db)/(ha+hb);BB=(ha*Db-hb*Da)/(ha+hb);
    CC=Fx;Delta=sqrt((BB^2)-4*AA*CC);
    if abs(BB+Delta) > abs(BB-Delta)
      v=-2*CC/(BB+Delta);
    else
      v=-2*CC/(BB-Delta);
    endif
    t=x;
    Ft=Fx;
    x=x+v;
    Fx=f(x);
    if (abs(v) <= Toler && abs(Fx) <= Toler) || Iter >= IterMax
      break
    endif
    a=b;
    Fa=Fb;
    b=t;
    Fb=Ft;
    Iter=Iter+1;
  endwhile
  Raiz=x;
  if abs(v) <= Toler && abs(Fx) <= Toler
    info=0;
  else
    info=1;
  endif
endfunction
