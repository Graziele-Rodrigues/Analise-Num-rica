%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivos:calcular os limites das raizes reais de uma equacao algebrica
% Entradas:
%          n->grau
%          c->coeficientes
%          {sendo c: P(x) = c(1)x^n + c(2)x^n–1 + . . . + c(n)x + c(n+1)}
% Saidas:
%          L->vetor com os limites inferior e superior das raizes positivas e negativas
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [L]=limites_raizes(n,c)   
  if(c(1)==0)
    disp('Coeficiente c(1) nulo')
    return
  endif
  t=n+1;
  c(t+1)=0; 
  while 1
    if c(t)~=0
       break
    endif
    t=t-1;
  endwhile
  for i=1:4;
    if(i==2 || i==4)
      for j=1:t/2;
        aux=c(j);
        c(j)=c(t-j+1);
        c(t-j+1)=aux;
      endfor
      endif
      if i==3 
        for j=1:t/2;
          aux=c(j);
          c(j)=c(t-j+1);
          c(t-j+1)=aux;
        endfor
        for j=t-1:-2:1;
          c(j)=-c(j);
        endfor
      endif
      if c(1)<0
        for j=1:t
          c(j)=-c(j);
        endfor
      endif
      k=2;
      while 1
        if(c(k)<0 ||k>t)
           break
        endif
        k=k+1;
      endwhile
      if(k<=t)
        B=0;
        for j=2:t;
           if(c(j)<0 && abs(c(j))>B)
              B=abs(c(j));
           endif
          endfor
          L(i)=1+(B/c(1))^(1/(k-1));
      else
          L(i)=10^100;
      endif
  endfor
  aux=L(1);
  L(1)=1/L(2);
  L(2)=aux;
  L(3)=-L(3);
  L(4)=-1/L(4);
endfunction