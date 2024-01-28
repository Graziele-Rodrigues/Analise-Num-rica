################################################################################
## objetivos:fazer a decomposicao Lu da matriz A
## @deftypefn {} {@var{A},@var{Pivot},@var{PdU},@var{info}, =} decomposicao_lu (@var{m}, @var{n},@var{A})
##
## Entradas:
##          m->grau do polinomio + 1
##          n->coeficientes
##          A->coeficientes
## Saidas:
##          A->numero de variacoes de sinais
##          Pivot->coeficientes
##          PdU->coeficientes
##          info->coeficientes
##
1
################################################################################
function [A,Pivot,PdU,info] = decomposicao_lu (m,n,A)
  for i=1:m;
    Pivot(i)=i;
  endfor
  PdU=1;
  info=0;
  for j=1:min(m,n)
    p=j;
    Amax=abs(A(j,j));
    for k= j+1:m
      if abs(A(k,j)) > Amax
        Amax=abs(A(k,j));
        p=k;
      endif
    endfor
    if p~=j
      for k=1:n
        t=A(j,k);
        A(j,k)=A(p,k);
        A(p,k)=t;
      endfor
      i=Pivot(j);
      Pivot(j)=Pivot(p);
      Pivot(p)=i;
      PdU=-PdU;
    endif
    PdU=PdU*A(i,j);
    if abs(A(j,j))~=0
      r=1/A(j,j);
      for i=j+1:m
        Mult=A(i,j)*r;
        A(i,j)=Mult;
        for k=j+1:n
          A(i,k)=A(i,k)-Mult*A(j,k);
        endfor
      endfor
    else
      if info==0
        info=j;
      endif
    endif
  endfor
endfunction
