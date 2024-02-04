%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivos:avaliar um polinomio de grau n na abscissa a
% @deftypefn {} {@var{y} =} Horner (@var{n}, @var{c}, @var{a})
%
% Entradas:
%          n->grau
%          c->coeficientes
%          a->abscissa onde sera avaliado
%          {sendo c: P(x) = c(1)x^n + c(2)x^n–1 + . . . + c(n)x + c(n+1)}
% Saidas:
%          y->ordenadas P(a)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [y]=HornerMod(n,c,a)
fprintf('O polinomio tem %d raizes\n',n);
if(rem(n,2)==1)
    disp('A funcao tem no minimo uma raiz real')
end
    y=c(1);
    for i=2:n+1;
        y=y*a+c(i);
    end
end