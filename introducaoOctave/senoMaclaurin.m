function resultado = senoMaclaurin(x, n)
    resultado = 0; % Inicializa o resultado como zero

    for k = 0:n
        termo = ((-1)^k) * (x^(2*k + 1)) / factorial(2*k + 1);
        resultado = resultado + termo;
    end
end

