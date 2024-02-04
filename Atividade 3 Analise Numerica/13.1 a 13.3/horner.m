function y = horner (n, c, a)
  n = length(c)-1;
  y = c(1);
  for i = 2 : n + 1
    y = y*a + c(i);
  endfor
endfunction
