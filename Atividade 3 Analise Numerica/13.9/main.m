% Definir a função e sua derivada
f = @(x) x^5 + 3*x^4 - 4*x^3 - 8*x^2 + 2*x - 10;
df = @(x) 5*x^4 + 12*x^3 - 12*x^2 - 16*x + 2;

% Parâmetros para o método de Newton-Raphson
x0 = 1;       % Ponto inicial
Toler = 1e-6; % Tolerância
IterMax = 100; % Número máximo de iterações

% Chamar a função de Newton-Raphson
[Raiz, Iter, info] = newton_raphson(x0, Toler, IterMax, f, df);

% Exibir resultados
disp('Resultados do Método de Newton-Raphson:');
disp(['Raiz encontrada: ' num2str(Raiz)]);
disp(['Número de iterações: ' num2str(Iter)]);
disp(['Informação sobre erro: ' num2str(info)]);

