function [A, Det] = LDL (A)
    n = size(A,1);
    Det = 1;
    for j = 1 : n
       Soma = 0;
       for k = 1 : j-1
         Soma = Soma + A(j,k)^2 * A(k,k);
       endfor
       A(j,j) = A(j,j) - Soma;
       r = 1/A(j,j);
       Det = Det*A(j,j);
       for i = j+1 : n
         Soma  = 0;
         for k = 1 : j-1
           Soma = Soma + A(i,k)*A(k,k)*A(j,k);
         endfor
         A(i,j) = (A(i,j) - Soma)*r;
       endfor
    endfor
endfunction
