#Y=cos(3*x^3+π )+x^3, [1 13], 50 pontos

x = linspace(1,13,50);
y = cos(3*x.^3 + pi) + x.^3;
plot(x,y)
title('y = cos(3*x^3 + pi) + x^3')
