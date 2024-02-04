%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivo:integrar uma funcao pela formula de newton cotes
%
%  Entradas:
%          a->limite inferior
%          b->limite superior
%          n->grau do polinomio usado na integracao
%          m->numero de subintervalos
%          f->funcao de x a ser integrada
%  Saidas:
%          integral->valor da integral
%          info->informaca sobre consistencia,sendo info=0:sem erro
%          (info =-1:n<1 ou n>10,info=-10:rem(m,n)~=0 || m<0,info=-11:ambas condicoes ocorreram)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [integral,info] = newton_cotes (a,b,n,m,f)
  integral=0;
  info=0;
  [d,c,info]=coeficientes_cotes(n);
  if rem(m,n)~=0 || m<0
    info=info-10;
  endif
  if info~=0
    return
  endif
  h=(b-a)/m;
  j=0;
  for i=0:m
    x=a+i*h;
    x1(i+1)=x;
    %em cada caso deve-se mudar a funcao integrada no codigo
    y=f(x);
    y1(i+1)=y;
    j=j+1;
    k=c(j);
    if rem(i,n)==0 && i~=0 && i~=m
      k=k+k;
      j=1;
    endif
    integral=integral+y*k;
  endfor
  integral=n*h/d*integral;
  %impprimindo o grafico da funcao original e o grafico da nova funcao
  %em vrmelho o garfico da funcao orignal e azul o grafico da nova funcao
  xintervalo=linspace(a,b,100);
  plot(xintervalo,f(xintervalo),'r',x1,y1,'-bo')
endfunction