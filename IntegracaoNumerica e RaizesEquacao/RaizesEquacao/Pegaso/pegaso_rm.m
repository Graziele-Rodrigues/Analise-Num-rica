################################################################################
## objetivos:calcular raiz multipla de equacao pelo metodo pegaso
##
## Entradas:
##          a->limite inferior
##          b->limite superior
##          Toler->tolerancia
##          IterMax->numero maximo de itera��es
##          f->funcao
##          f1->derivada primeira da funcao f
## Saidas:
##          Raiz->raiz da equacao
##          Zero->f(Raiz)
##          Iter->numero gasto de iteracoes
##          info->informacoes sobre erro
##

################################################################################
function [Raiz,Zero,Iter,info] = pegaso_rm (a,b,Toler,IterMax,f,f1)
  Epsilon = precisao_maquina;
  Fa=f(a);
  DFa=f1(a);
  Fb=f(b);
  DFb=f1(b);
  if abs(DFa) < Epsilon || abs(DFb) < Epsilon
    info=2;
    return
  endif
  Ga=Fa/DFa;
  Gb=Fb/DFb;
  Gx=1+Toler;
  Iter=0;
  while 1
    deltax=Gb*(b-a)/(Gb-Ga);
    x=b-deltax;
    Fx=f(x);
    DFx=f1(x);
    if (abs(deltax) <= Toler && abs(Gx) <= Toler) || abs(DFx) < Epsilon || Iter >= IterMax
      break
    endif
    Gx=Fx/DFx;
    if Gb*Gx < 0
      a=b;
      Ga=Gb;
    else
      Ga=Ga*Gb/(Gb+Gx);
    endif
    b=x;
    Gb=Gx;
    Iter=Iter+1;
  endwhile
  Raiz=x;
  Zero=f(Raiz);
  if abs(deltax) <= Toler && abs(Gx) <= Toler
    info=0;
  else
    if abs(DFx) >= Epsilon
      info=1;
    else
      info=2;
    endif
  endif
endfunction
