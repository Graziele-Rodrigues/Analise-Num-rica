function [Yinter, coef, Conderro] = interpolacao_polinomial(x, y, ValInter)
  if length(x) ~= length(y)
    return;
  endif
  if length(x) < 2
    disp('Eh necessao 2 pontos no minimo');
    return;
  endif
  if ValInter < min(x) || ValInter > max(x)
    disp('O valor de interpolacao esta fora do intervalo.');
    return;
  endif

  if length(x) == 2
    tipo_interp = 1;
  elseif length(x) == 3
    tipo_interp = 2;
  else
    disp('vetor de pontos maior que 3');
    return;
  endif

  if tipo_interp == 1
    a1 = (y(2)-y(1))/(x(2)-x(1));
    a0 = y(1) - a1*x(1);
    coef = [a0 a1];
    Yinter = a0 + a1*ValInter;
    erro = abs(Yinter - ValInter);
    if erro ~= 0
      Conderro = abs(erro / ValInter);
    end
  elseif tipo_interp == 2
    A = [1 x(1) x(1)^2; 1 x(2) x(2)^2; 1 x(3) x(3)^2];
    b = [y(1);y(2);y(3)];
    coef = sol_decomp_LU(A, b);
    Yinter = coef(1) + coef(2)*ValInter + coef(3)*ValInter^2;
    erro = abs(Yinter - ValInter);
    if erro ~= 0
      Conderro = abs(erro / ValInter);
    end
  endif
endfunction

