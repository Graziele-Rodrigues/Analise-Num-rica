#Y=e(x^3)+5 , [-20 -2], 10 pontos

x = linspace(-20,2,10);
y = exp(x.^3 + 5);
plot(x,y)
title('y = exp(x^3 + 5)')
