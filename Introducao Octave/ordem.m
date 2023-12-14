function numeros = ordem()
  n1 = input("Digite o primeiro numero: ");
  n2 = input("Digite o segundo numero: ");
  n3 = input("Digite o terceiro numero: ");
  if n1 == n2 || n1 == n3 || n2 == n3
    disp('Os numeros devem ser diferentes');
    return;
  endif
  disp('Numeros ordenados em ordem crescente');
  # Essa funcao organiza os numeros. Pesquisado no google.
  numeros = sort([n1,n2,n3]);

  n4 = input("Digite o quarto numero numero: ");
  if n4 == n1 || n4 == n2 || n4 == n3
    disp('Os numeros devem ser diferentes');
    return;
  endif
  numeros = [numeros, n4];
  disp('Numeros ordenados em ordem descrescente');
  numeros = sort(numeros, 'descend');
endfunction
