B = [150,65,89;50,210,50;30,35,325];
b = [7743000;13751500;35467500];
disp('Jacobi');
[x, Iter, Info] = jacobi (3, B, b, 10^(-4), 100)

