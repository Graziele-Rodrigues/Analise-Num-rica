clear
clc

t = [10 2 4 6 8 10];
T = [100 166.81 278.26 464.16 774.26 1291.55];
M  = 0;
T0= 0;
semilogy(t, T, '*p:m');
xlabel('Tempo (s)');
ylabel('Temperatura (T)');

# Linearizacao
ln(T)=(M/200+t/18)*ln(T0)

# Encontrando M e T0
y = ax
ln(T) = y, x = ln(T0), a = (M/200+t/18)
disp(x);
disp(a);



