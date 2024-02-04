% Definir a função
f = @(x) x^5 + 3*x^4 - 4*x^3 - 8*x^2 + 2*x - 10;

% Parâmetros para o método da secante
a = -10;       % Limite inferior
b = -1;       % Limite superior
Toler = 1e-6; % Tolerância
IterMax = 100; % Número máximo de iterações

% Chamar a função da secante
[Raiz, Iter, info] = secante(a, b, Toler, IterMax, f);

% Exibir resultados
disp('Resultados da Secante:');
disp(['Raiz encontrada: ' num2str(Raiz)]);
disp(['Número de iterações: ' num2str(Iter)]);
disp(['Informação sobre erro: ' num2str(info)]);

