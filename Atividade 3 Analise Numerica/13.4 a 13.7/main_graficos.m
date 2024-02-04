% Coeficientes da função a. x^3 - 3x^2 - 10x + 24
n_a = 3;
c_a = [1, -3, -10, 24];

% Função correspondente
f_a = @(x) polyval(c_a, x);

% Encontrar os limites e plotar o gráfico
L_a = limites_raizes_grafico(n_a, c_a, f_a);

% Repita o processo para as funções b e c.

