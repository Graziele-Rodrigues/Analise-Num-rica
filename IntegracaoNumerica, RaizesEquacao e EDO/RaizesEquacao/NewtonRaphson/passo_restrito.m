################################################################################
## objetivos:determinar um passo restrito para o metodo de newton raphson
##
## Entradas:
##          n->ordem do sistema
##          Xk->k_enesimo vetor solucao
##          FXk->vetor funcao em Xk
##          Pk->direcao de dscida de newton
##          Gk->vtor gradiente em xk
## Saidas:
##          Xk1->k+1_enesimo vetor solucao
##          FXk1->vetor funcao em Xk1
##          lambda->restritor de passo
##          j->numero de iteracoes
##          info->informacao
##

################################################################################
function [Xk1,FXk1,lambda,j,info] = passo_restrito (n,Xk,FXk,Pk,Gk)
  Fk=norm(FXk)^2;
  comp=norm(Pk);
  passomax=(10^3)*max(norm(Xk),1);
  if comp > passomax
    escala=passomax/comp;
    Pk=Pk*escala;
  endif
  passorel=0;
  inclin=(Gk')*Pk;
  for i=1:n
    t=abs(Pk(i))/max(abs(Xk(i)),1);
    if t > passorel
      passorel=t;
    endif
  endfor
  Epsilon=precisao_maquina;
  lambdamin=Epsilon/passorel;
  j=0;
  lambda=1;
  while 1
    Xk1=Xk+lambda*Pk;
    FXk1=vetor_funcao (Xk1,n);
    Fk1=norm(FXk1)^2;
    j=j+1;
    if lambda < lambdamin
      Xk1=Xk;
      info=1;
      break
    elseif Fk1 <= Fk + (10^-4)*inclin*lambda
      info=0;
      break
    else
      if j==1
        lambdat=-inclin/(2*(Fk1-Fk-inclin));
      else
        lambdat=lambda_cubico(Fk1,Fk,Fp,inclin,lambda,lambdap)
      endif
    endif
    lambdap=lambda;
    Fp=Fk1;
    lambda=max(lambdat,0.1*lambda);
  endwhile
endfunction
