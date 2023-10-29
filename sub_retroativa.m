function x = sub_retroativa(A, b)
  n = size(A, 1);
  x = zeros(n, 1);
  for i = n-1:-1:1
    soma = 0;
    for j = i+1:n
      soma = soma + A(i, j) * x(j);
    endfor
    x(i) = (b(i) - soma) / A(i, i);
  endfor
endfunction

A = [2 -3; 0 5];
b = [-1; 4];
x = sub_retroativa(A, b);
disp(x);

