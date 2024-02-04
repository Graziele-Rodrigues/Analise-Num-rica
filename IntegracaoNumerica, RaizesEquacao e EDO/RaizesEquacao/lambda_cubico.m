################################################################################
## objetivos:calcular lambda auxiliar no retrocesso com ajuste cubico
##
## Entradas:
##          Fk1->variaveis auxiliares
##          Fk->variaveis auxiliares
##          Fp->variaveis auxiliares
##          inclin->variaveis auxiliares
##          lambda->variaveis auxiliares
##          lambdap->variaveis auxiliares
## Saidas:
##          lambdat->lambda temporario
##
## Autor: Joao Vitor Ferreira Nascimento
## Matricula:18.2.8001
################################################################################
function [lambdat] = lambda_cubico (Fk1,Fk,Fp,inclin,lambda,lambdap)
  t1=Fk1-Fk-lambda*inclin;
  t2=Fp-Fk-lambdap*inclin;
  t3=lambda-lambdap;
  a=(t1/(lambda^2)-t2/(lambdap^2))/t3;
  b=(t2*lambda/(lambdap^2)-t1*lambda/(lambdap^2))/t3;
  if a==0
    lambdat=-inclin/(2*b);
  else
    discrim=(b^2)-3*a*inclin;
    if discrim < 0
      lambdat=0.5*lambda;
    elseif b<=0
      lambdat=(-b+sqrt(discrim))/(3*a);
    else
      lambdat=-inclin/(b+sqrt(discrim));
    endif
  endif
  if lambdat > 0.5*lambda
    lambdat=0.5*lambda;
  endif
endfunction