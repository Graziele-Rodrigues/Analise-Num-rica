################################################################################
## objetivo:calcular abscissas e pesos para a quadratura de gauss legendre
## @deftypefn {} {@var{T},@var{W},@var{info} =} gauss_legendre_abspes(@var{n})
##
## Entradas:
##          n->numero de pontos
## Saidas:
##          T->abscissas
##          W->pesos
##          info->informacoes sobre consistencia e convergencia
##(info =0:n>=1 etodos os zeros convergiram;info=k: k zeros nao convergiram)

################################################################################

function [T,W,info] = gauss_legendre_abspes (n)
  if n<1
    info=-1;
    return
  endif
  Toler=10^-15;
  IterMax=30;
  info=0;
  m=fix(n/2);
  pi8=3.141592653589793;
  for i=1:m
    z=cos((i-0.25)/(n+0.5)*pi8);
    delta=1+Toler;
    Iter=0;
    while 1
      p1=1;
      pz=z;
      for k=2:n
        p0=p1;
        p1=pz;
        pz=((2*k-1)*z*p1-(k-1)*p0)/k;
      endfor
      DPz=n*(p1-z*pz)/(1-z^2);
      if abs(delta)<=Toler || Iter==IterMax
        break;
      endif
      delta=pz/DPz;
      z=z-delta;
      Iter=Iter+1;
    endwhile
    if abs(delta)<=Toler
      T(i)=-z;
      T(n+1-i)=z;
      W(i)=2/((1-z^2)*DPz^2);
      W(n+1-i)=W(i);
    else
      T(i)=0;
      T(n+1-i)=0;
      W(i)=0;
      W(n+1-i)=0;
      info=info+1;
    endif
  endfor
  if rem(n,2)~=0
    T(m+1)=0;
    W(m+1)=pi8/2*e^(gammaln((n+1)/2)- gammaln(n/2+1))^2;
  endif
endfunction
