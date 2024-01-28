################################################################################
## objetivos:calcular raiz de equacao pelo metodo de schroder
##
## Entradas:
##          X->valor inicial
##          Toler->tolerancia
##          IterMax->numero maximo de itera��es
##          f->funcao
##          df1-> derivada primeira da funcao f
## Saidas:
##          Raiz->raiz da equacao
##          Iter->numero gasto de iteracoes
##          info->informacoes sobre erro
##

################################################################################
function [Raiz,Iter,info] = schroder (m,x,Toler,IterMax,f,df1)
  Epsilon = precisao_maquina;
  deltax=1+Toler;
  Iter=0;
  while 1
    Fx=f(x);
    DFx=df1(x);
    if (abs(deltax) <= Toler && abs(Fx) <= Toler) || abs(DFx) < Epsilon || Iter >= IterMax
      break
    endif
    deltax=m*Fx/DFx;
    x=x-deltax;
    Iter=Iter+1;
  endwhile
  Raiz=x;
  if abs(deltax) <= Toler && abs(Fx) <= Toler
    info=0;
  else
    info=1;
  endif
endfunction
