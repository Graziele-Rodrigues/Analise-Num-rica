%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%objetivo:integrar uma funcao pela formula de gauss legendre dupla
% Entradas:
%          ax->limite inferior em x
%          bx->limite superior em x
%          nx->numero de pontos em x
%          ay->limite inferior em y
%          by->limite superior em y
%          ny->numero de pontos em y
%          f->funcao de x a ser integrada
% Saidas:
%          integral->valor da integral
%          info->informacao sobre a consistencia e convergencia
%          (info =0:paramentros sao consistentes e todos os zeros convergiram;
%           Info=-1:nx<1 || ny<1; info=k:k zeros nao covergiram)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [integral,info] = gauss_legendre_dupla (ax,bx,nx,ay,by,ny,f)
  integral=0;
  info=0;
  [T,alfa,info]=gauss_legendre_abspes (nx);
  if info~=0
    return
  endif
  if ny==nx
    for j=1:ny
      beta(j)=alfa(j);
      U(j)=T(j);
    endfor
  else
    [U,beta,info]=gauss_legendre_abspes (ny);
    if info~=0
      return
    endif
  endif
  bax=(bx-ax)/2;
  bay=(by-ay)/2;
  for i=1:nx
    x=ax+bax*(T(i)+1);
    Soma=0;
    for j=1:ny
      y=ay+bay*(U(j)+1);
      %funcao a ser integrada
      fxy=f(x,y);
      Soma=Soma+beta(j)*fxy;
    endfor
    integral=integral+alfa(i)*Soma;
  endfor
  integral=bax*bay*integral;
endfunction
