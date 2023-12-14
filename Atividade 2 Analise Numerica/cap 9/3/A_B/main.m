clear
clc

n = 10;
v = 1;
ii = 1;

x = [-6.0866;-5.9294;-5.2795;-5.0197;-4.7357;-1.8721;-0.2061;0.1073;0.2787;7.3624];
y = [-509.9181;-493.0127;-291.7017;-160.6647;-182.8648;44.4050;-85.4323; ...
33.8353;-19.6766;679.0813];

for p = 3 : 6
  disp('');
  [b, r2, s2, AICc, Info]  = regressao_linear_en (n, v, p, ii, x, y)
endfor

#O que apresentou melhor solucao foi o quinto grau visto que o coeficiente de determinação é o que mais se aproxima de 1.
