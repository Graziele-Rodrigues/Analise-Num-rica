################################################################################
## objetivos:determinar o numero maximo de raizes no intervalo [a,b] pelo teorema de fourier
##
## Entradas:
##          n->grau
##          c->coeficientes
##          a->limite inferior do intervalo
##          b->limite superior do intervalo
##{sendo c: P(x) = c(1)x^n + c(2)x^n�1 + . . . + c(n)x + c(n+1)}
## Saidas:
##          NumMAx->numero maximo de raizes reais no intervalo

################################################################################
function [NumMax] = fourier (n,c,a,b)
  n1=n+1;
  n2=n+2;
  for i=1:n
    DerPol(i)=c(i);
  endfor
  DerPol_a(1)=horner (n,c,a);
  DerPol_b(1)=horner (n,c,b);
  for i=1:n
    for j=1:n1-i
      DerPol(j)=DerPol(j)*(n2-i-j);
    endfor
    DerPol_a(i+1)=horner (n-i,c,a);
    DerPol_b(i+1)=horner (n-i,c,b);
  endfor
  VarSinal_a=troca_sinais (n1,DerPol_a);
  VarSinal_b=troca_sinais (n1,DerPol_b);
  NumMax=VarSinal_a-VarSinal_b;
endfunction
