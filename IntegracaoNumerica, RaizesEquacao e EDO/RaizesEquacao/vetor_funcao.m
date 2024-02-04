################################################################################
## objetivos:definir o vetor funcao
##
## Entradas:
##          x->vetor de variaveis
##          n->ordem do sistema
## Saidas:
##          f->vtor de funcoes
##
## Autor: Joao Vitor Ferreira Nascimento
## Matricula:18.2.8001
################################################################################
function [f] = vetor_funcao (x,n)
  if n==2
    f(1)=(x(1)^2)+x(1)*x(2)-(x(2)^2)+1;
    f(2)=log(x(1))+sqrt(x(2)+2)-2;
  endif
  if n==3
    f(1)=x(1)+x(2)+x(3)-(11/2);
    f(2)=x(1)*x(2)+x(1)*x(3)+x(2)*x(3)-5;
    f(3)=x(1)*x(2)*x(3)+(9/2);
  endif
endfunction