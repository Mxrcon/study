

# Questão 1:
Utilizando a equaçao de laplace:

$$\frac{\partial^2z}{\partial x^2} + \frac{\partial^2z}{\partial y^2} =0$$

E a equação $z$:

$$z = \ln(x^2 + y^2) + 2 \text{arctg} (\frac{y}{x})$$ 

Bastando calcular as derivadas parciais duplas para x e y, e devolve-las para a equação de laplace.

Primeira derivada paricial para $x$:

$$\frac{\partial z}{\partial x} = \frac{2x-2y}{x^2+y^2}$$

Segunda derivada parcial para $x$:

$$\frac{\partial^2z}{\partial x^2} = \frac{-2x^2+4xy+2y^2}{\left(x^2+y^2\right)^2}$$ 

Primeira derivada paricial para $y$:

$$\frac{\partial z}{\partial y}= \frac{2y+2x}{x^2+y^2}$$



Segunda derivada paricial para $y$:

$$\frac{\partial^2z}{\partial y^2} =\frac{2x^2-2y^2-4xy}{\left(x^2+y^2\right)^2}$$


Substituindo $\frac{\partial^2z}{\partial x^2}$$ e $$\frac{\partial^2z}{\partial y^2}$ na equação de laplace, obteremos a seguinte expressão:

$$\frac{2x^2-2y^2-4xy}{\left(x^2+y^2\right)^2}\:+\:\frac{-2x^2+4xy+2y^2}{\left(x^2+y^2\right)^2}$$ 

que facilmente simplificada pode ser resolvida como:

$$\frac{2x^2-2y^2-4xy-2x^2+4xy+2y^2}{\left(x^2+y^2\right)^2} = \frac{0}{\left(x^2+y^2\right)^2}$$ 

e por ter o valor igual a 0, satisfaz a equação de laplace.

# Questão 2:

A partir da equção da onda:

$$\frac{\partial^2u}{\partial t^2}= c^2\frac{\partial^2u}{\partial x^2}$$

E Utilizando a seguinte equação:

$$\sin(c\omega t) \sin(\omega x)$$

Calcularemos as derivadas parciais de segunda ordem:

Primeira derivada parcial para t:

$$\sin (\omega x)\cos (c\omega t)c\omega$$

Segunda derivada parcial para t:

$$-c^2\omega ^2\sin (\omega x)\sin (c\omega t)$$

Primeira derivada parcial para x:

$$(\sin (c\omega t)\cos (\omega x)\omega )$$

Segunda derivada parcial para x:

$$-\omega ^2\sin (\omega x)\sin (c\omega t)$$

Podemos observar que multiplicando a segunda derivada parcial para x por c², obteremos a segunda derivada parcial para t. Obedecendo a equação da onda.

# Questão 3:

A função que define a resistência é: $R = \frac{R_1R_2}{R_1 + R_2}$

Primeiro calcularemos as derivadas duplas para R1 e R2 e determinaremos o produto.

Primeira derivada para R1:

$$(\frac{R_2^2}{(R_1R_ + 2)^2})$$

Segunda derivada para R1:

$$\frac{2R_2^2}{(R_1 + R_2)^3}$$

Primeira derivada para R2:

$$\frac{R_1^2}{(R_1 + R_2)^2}$$

Segunda derivada para R2:

$$\frac{2R_1^2}{(R_1 + R_2)^3}$$

Calculando o produto das Derivadas parciais de segunda ordem:

$$\frac{2R_2^2}{(R_1 + R_2)^3}* \frac{2R_1^2}{(R_1 + R_2)^3}$$

$$\frac{4R_2^2R_1^2}{(R_1 + R_2)^6}$$

Substituindo R na formula apresentada:

$$\frac{4({\frac{R_1R_2}{R_1 R_2})}^2}{{(R_1+ R_2)}^4}$$

Obteremos:

$$\frac{4R_2^2R_1^2}{(R_1 + R_2)^6}$$

O produto das derivadas parciais de segunda ordem é igual equação obtida ao substituirmos o valor de R na equação proposta.
