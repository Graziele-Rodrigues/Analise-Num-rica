%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivos:avaliar um polinomio de grau n na abscissa a
% Entradas:
%          n->grau
%          c->coeficientes
%          a->abscissa onde sera avaliado
%          {para c: P(x) = c(1)x^n + c(2)x^n–1 + . . . + c(n)x + c(n+1)}
% Saidas:
%          y->ordenadas P(a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [y] = horner (n,c,a)
    y=c(1);
    for i=2:n+1;
        y=y*a+c(i);
    end
endfunction