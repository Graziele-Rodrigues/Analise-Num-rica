###########################################################################################
## Siatema resolvido por substituicoes retroativas
## Objetivo: solucionar um sistema triangular superior
## @deftypefn {} {@var{x} =} substituicoes_retroativas (@var{n}, @var{U}, @var{d})
## @Entradas:
##   U->matriz triangular superior que vai ser solucionada
##   d->vetor dos termos independentes
##   n->ordem do sistema
## @Saida:
##   x->solucao do sistema
##

###########################################################################################

function x = substituicoes_retroativas(n,U,d)
  x(n)=d(n)/U(n,n);
  for i=n-1:-1:1
    soma=0;
    for j=i+1:n
      soma=soma+U(i,j)*x(j);
    endfor
    x(i)=(d(i)-soma)/U(i,i);
  endfor
endfunction
