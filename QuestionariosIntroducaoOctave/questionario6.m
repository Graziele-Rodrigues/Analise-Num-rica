% Solicita ao usuário que insira a matriz
disp('Digite a matriz (ex: [1 2 3; 2 4 5; 3 5 6]):\n');
A = input('');

% Verifica se a matriz é quadrada
[m, n] = size(A);
if m == n
    % Verifica se a matriz é simétrica
    if A==A'
        disp('A matriz é simétrica.\n');
    % Verifica se a matriz é antisimétrica
    elseif A==(-A')
        disp('A matriz é antisimétrica.\n');
    else
        disp('A matriz não é simétrica nem antisimétrica.\n');
    end
else
    disp('A matriz não é quadrada e, portanto, não pode ser simétrica ou antisimétrica.\n');
end

