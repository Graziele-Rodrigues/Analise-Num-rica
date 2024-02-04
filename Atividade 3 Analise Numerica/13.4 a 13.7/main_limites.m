% Coeficientes da função a. x^3 - 3x^2 - 10x + 24
n_a = 3;
c_a = [1, -3, -10, 24];

% Encontrar os limites
L_a = limites_raizes(n_a, c_a);

disp('Limites para a função a:');
disp(['Limite inferior positivo: ' num2str(L_a(1))]);
disp(['Limite superior positivo: ' num2str(L_a(2))]);
disp(['Limite inferior negativo: ' num2str(L_a(3))]);
disp(['Limite superior negativo: ' num2str(L_a(4))]);

% Repita o processo para as funções b e c.

