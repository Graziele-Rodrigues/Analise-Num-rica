%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivos:calcular raiz de equacao pelo metodo de newton_raphson
%
%  Entradas:
%          X->valor inicial
%          Toler->tolerancia
%          IterMax->numero maximo de iterações
%          f->funcao
%          df1-> derivada primeira da funcao f
%  Saidas:
%          Raiz->raiz da equacao
%          Iter->numero gasto de iteracoes
%          info->informacoes sobre erro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [Raiz,Iter,info] = newton_raphson (x,Toler,IterMax,f,df1)
  Epsilon = precisao_maquina;
  deltax=1+Toler;
  Iter=0;
  while 1
    Fx=f(x);
    DFx=df1(x);
    if (abs(deltax) <= Toler && abs(Fx) <= Toler) || abs(DFx) < Epsilon || Iter >= IterMax
      break
    endif
    deltax=Fx/DFx;
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