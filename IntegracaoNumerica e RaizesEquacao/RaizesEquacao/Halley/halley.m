%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivos:calcular raiz de equacao pelo metodo de halley
%
%  Entradas:
%          X->valor inicial
%          Toler->tolerancia
%          IterMax->numero maximo de iterações
%          f->funcao
%          df1-> derivada primeira da funcao f
%          df2-> derivada segunda da funcao f
%  Saidas:
%          Raiz->raiz da equacao
%          Iter->numero gasto de iteracoes
%          info->informacoes sobre erro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [Raiz,Iter,info] = halley (x,Toler,IterMax,f,df1,df2)
  deltax=1+Toler;
  Iter=0;
  while 1
    Fx=f(x);
    DFx=df1(x);
    if (abs(deltax) <= Toler && abs(Fx) <= Toler)  || Iter >= IterMax
      break
    endif
    D2Fx=df2(x);
    deltax=2*Fx*DFx/(2*(DFx^2)-Fx*D2Fx);
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