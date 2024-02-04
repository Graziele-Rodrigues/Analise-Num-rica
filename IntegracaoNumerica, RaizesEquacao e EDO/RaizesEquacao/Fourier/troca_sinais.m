################################################################################
## objetivos:contar o numero de troca de sinais dos coeficientes de um polinomio
## @deftypefn {} {@var{Var} =} troca_sinais (@var{n1}, @var{c})
##
## Entradas:
##          n->grau do polinomio + 1
##          c->coeficientes
##{sendo c: P(x) = c(1)x^n + c(2)x^n�1 + . . . + c(n)x + c(n+1)}
## Saidas:
##          Var->numero de variacoes de sinais
##

################################################################################
function [Var] = troca_sinais (n1,c)
  Var =0;
  i=1;
  for j=2:n1
    if c(j)~=0
      if c(i)*c(j) < 0
        Var=Var+1;
      endif
      i=j;
    endif
  endfor
endfunction
