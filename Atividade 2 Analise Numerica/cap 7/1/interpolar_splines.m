function interpolar_splines (x, y)
  n = size(x, 2);

  z = linspace(min(x), max(x), 50);

  sn = splines_avaliar(n, x, y, size(z,2), z, 0);
  se = splines_avaliar(n, x, y, size(z,2), z, 1);

  # Graficos
  plot(x, y, 'o');
  hold on;
  plot(z, sn, 'r');
  plot(z, se, 'g');
  hold off;
  legend('Pontos', 'Splines Cúbicos Naturais', 'Splines Cúbicos Extrapolados');
endfunction
