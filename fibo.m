function fibonacci_sequence = Fibonacci(n)
    if n <= 0
        disp('O número de termos deve ser um inteiro positivo.');
    endif

    fibonacci_sequence = zeros(1, n);

    if n >= 1
        fibonacci_sequence(1) = 1;
    endif
    if n >= 2
        fibonacci_sequence(2) = 1;
    endif

    for i = 3:n
        fibonacci_sequence(i) = fibonacci_sequence(i - 1) + fibonacci_sequence(i - 2);
    endfor
endfunction


num = input('Digite o número de termos da sequência de Fibonacci: ');
fibonacci_sequence = Fibonacci(num);
disp('Sequência de Fibonacci:');
disp(fibonacci_sequence);
