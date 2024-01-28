################################################################################
## objetivos:definir a matriz jacobina
##
## Entradas:
##          x->vetor de variaveis
##          n->ordem do sistema
## Saidas:
##          j->matriz de variaves parciais
##
## Autor: Joao Vitor Ferreira Nascimento
## Matricula:18.2.8001
################################################################################
function [j] = matriz_jacobina (x,n)
  if n==2
    j(1,1)=2*x(1)+x(2);
    j(1,2)=x(1)-2*x(2);
    j(2,1)=1/x(1);
    j(2,2)=1/(2*sqrt(x(2)+2));
  endif
  if n==3
    j(1,1)=1;j(1,2)=1;j(1,3)=1;
    j(2,1)=x(2)+x(3);j(2,2)=x(1)+x(3);j(2,3)=x(1)+x(2);
    j(3,1)=x(2)*x(3);j(3,2)=x(1)*x(3);j(3,3)=x(1)*x(2);
  endif
endfunction