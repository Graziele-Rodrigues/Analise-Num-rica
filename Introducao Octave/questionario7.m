% Número mínimo de testes desejados
num_testes = 10;

% Contador de pares de matrizes que satisfazem a propriedade
pares_validos = 0;

for i = 1:num_testes
    % Gera duas matrizes aleatórias de tamanho n x n
    n = randi([1, 10]); % Você pode ajustar o intervalo de tamanho da matriz conforme necessário
    A = randn(n, n);
    B = randn(n, n);

    % Calcula o traço de AB e BA
    traco_AB = trace(A * B);
    traco_BA = trace(B * A);

    % Verifica se o traço de AB é igual ao traço de BA
    if traco_AB==traco_BA
        pares_validos = pares_validos + 1;
    end
end

% Verifica se a propriedade foi válida para pelo menos 1000 pares de matrizes
if pares_validos >= num_testes
    disp('A propriedade foi válida para todos os pares de matrizes testados.\n');
else
    disp('A propriedade não foi válida para todos os pares de matrizes testados.\n');
end

