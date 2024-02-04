%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivo: integrar uma funcao utilizando a formula de gauss legendre
% Entradas:
%          a->limite inferior
%          b->limite superior
%          n->numero de pontos
%          f->funcao de x a ser integrada
% Saidas:
%          integral->valor da integral
%          info->informacoes sobre consistencia e convergencia 
%(info =-1:n<1;info=0:sem erro;info=k: k zeros nao convergiram)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [integral,info] = gauss_legendre (a,b,n,f)
  [T,W,info]=gauss_legendre_abspes (n);
  if info~=0
    return
  endif
  integral=0;
  info=0;
  ba2=(b-a)/2;
  for i=1:n
    x=a+ba2*(T(i)+1);
    x1(i)=x;
    %inserir a funcao a ser integrada
    y=f(x);
    y1(i)=y;
    integral=integral+y*W(i);
  endfor
  integral=ba2*integral;
  %impprimindo o grafico da funcao original e o grafico da nova funcao
  %em vrmelho o garfico da funcao orignal e azul o grafico da nova funcao
  xintervalo=linspace(a,b,100);
  %plot(xintervalo,f(xintervalo),'r',x1,y1,'-bo');
endfunction
