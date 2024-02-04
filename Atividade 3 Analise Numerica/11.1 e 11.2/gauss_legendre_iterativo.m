%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivo:integrar uma funcao pela formula de gauss legendre iterativo
% Entradas:
%          a->limite inferior
%          b->limite superior
%          Toler->tolerancia
%          IterMax->numero maximo de iteracoes
%          f->funcao de x a ser integrada
% Saidas:
%          integral->valor da integral
%          Delta->menor diferenca relativa obtida
%          Iter->numero de iteracoes 
%          info->informacao sobre a convergencia
%          (info =0:Delta<=Toler;Info=1:Delta>Toler)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [integral,Delta,Iter,info] = gauss_legendre_iterativo (a,b,Toler,IterMax,f)
  Iter=1;
  n1=5;
  n2=8;
  subplot(1,2,1),[Int,Info]=gauss_legendre (a,b,n2,f);
  while 1
    Iter=Iter+1;
    n=n1+n2;
    subplot(1,2,2),[integral,info]=gauss_legendre (a,b,n,f);
    if integral~=0
      Delta=abs((integral-Int)/integral);
    else
      Delta=abs(integral-Int);
    endif
    if Delta<=Toler || Iter==IterMax
      return
    endif
    Int=integral;
    n1=n2;
    n2=n;
  endwhile
  if Delta<=Toler
    info=0;
  else
    info=-1;
  endif
endfunction
