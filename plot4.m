#Y=log3(x^5+2), [10 11], 200 pontos


x = linspace(10,11,200);
y = log(x.^5 + 2)/log(3);
plot(x,y)
title('y = log3(x^5 + 2)')
