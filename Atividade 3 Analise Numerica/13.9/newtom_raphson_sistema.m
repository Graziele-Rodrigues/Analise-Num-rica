################################################################################
## objetivos:calcular raiz multipla de equacao pelo metodo pegaso
##
## Entradas:
##          tp->tipo de passo
##          n->ordem do sistema
##          X->vetor inicial
##          Toler->tolerancia
##          IterMax->numero maximo de itera��es
## Saidas:
##          X->vetor solucao
##          Iter->numero gasto de iteracoes
##          info->informacoes sobre convergencia
##

################################################################################
function [X,Iter,info] = newtom_raphson_sistema (tp,n,X,Toler,IterMax)
  NormaDeltax=1+Toler;
  lambda=1;
  InfoPR=0;
  Iter=0;
  Fx=vetor_funcao(X,n);
  NormaFx=norm(Fx);
  while 1
    Jx=matriz_jacobina(X,n);
    [Jx,Pivot,Deter,InfoLu]=decomposicao_lu(n,n,Jx);
    if (NormaDeltax <= Toler && NormaFx <= Toler) || InfoLu ~= 0 || InfoPR ~= 0 || Iter >= IterMax
      break
    endif
    T=substituicoes_sucessivas_pivotal(n,Jx,-Fx,Pivot);
    Deltax=substituicoes_retroativas(n,Jx,T);
    if tp==1
      X=X+Deltax;
      Fx=vetor_funcao(X,n);
    else
      Gx=2*Jx'*Fx;
      [X,Fx,lambda,j,InfoPR]=passo_restrito(n,X,Fx,Deltax,Gx);
    endif
    NormaFx=norm(Fx);
    NormaDeltax=lambda*norm(Deltax)/norm(X);
    Iter=Iter+1;
  endwhile
  if NormaDeltax <= Toler && NormaFx <= Toler
    info=0;
  else
    if InfoLu==0 && InfoPR==0
      info=1;
    else
      info=2;
    endif
  endif
endfunction
