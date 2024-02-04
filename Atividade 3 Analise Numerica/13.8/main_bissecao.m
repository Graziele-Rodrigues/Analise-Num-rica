% Definir a função
f = @(x) 25*x^2 + 3*x - 4;

% Parâmetros para o método da bisseção
a = -1;     % Limite inferior
b = 1;       % Limite superior
Toler = 1e-6; % Tolerância
IterMax = 100; % Número máximo de iterações

% Chamar a função da bisseção
[Raiz, Iter, info] = bissecao(a, b, Toler, IterMax, f);

% Exibir resultados
disp('Resultados da Bisseção:');
disp(['Raiz encontrada: ' num2str(Raiz)]);
disp(['Número de iterações: ' num2str(Iter)]);
disp(['Informação sobre erro: ' num2str(info)]);

