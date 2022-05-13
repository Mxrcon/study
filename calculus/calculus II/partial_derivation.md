

<!-- <img src="https://render.githubusercontent.com/render/math?math=equation"> -->
# Questão 1:
Utilizando a equaçao de laplace:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{\partial^2z}{\partial x^2} %2B \frac{\partial^2z}{\partial y^2} =0">

E a equação <img src= "https://render.githubusercontent.com/render/math?math=z">:

<img src= "https://render.githubusercontent.com/render/math?math=z = \ln(x^2 %2B y^2) %2B 2 \text{arctg} (\frac{y}{x})"> 

Bastando calcular as derivadas parciais duplas para x e y, e devolve-las para a equação de laplace.

Primeira derivada paricial para x:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{\partial \z}{\partial \x} = \frac{2x-2y}{x^2%2By^2}">

Segunda derivada parcial para x:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{\partial^2z}{\partial x^2} = \frac{-2x^2%2B4xy%2B2y^2}{\left(x^2%2By^2\right)^2}"> 

Primeira derivada paricial para y:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{\partial \z}{\partial \y}= \frac{2y%2B2x}{x^2%2By^2}">



Segunda derivada paricial para y:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{\partial^2z}{\partial y^2} =\frac{2x^2-2y^2-4xy}{\left(x^2%2By^2\right)^2}">


Substituindo <img src= "https://render.githubusercontent.com/render/math?math=\frac{\partial^2z}{\partial x^2}"> e <img src= "https://render.githubusercontent.com/render/math?math=\frac{\partial^2z}{\partial y^2}"> na equação de laplace, obteremos a seguinte expressão:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{2x^2-2y^2-4xy}{\left(x^2%2By^2\right)^2}\:%2B\:\frac{-2x^2%2B4xy%2B2y^2}{\left(x^2%2By^2\right)^2}"> 

que facilmente simplificada pode ser resolvida como:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{2x^2-2y^2-4xy-2x^2%2B4xy%2B2y^2}{\left(x^2%2By^2\right)^2} = \frac{0}{\left(x^2%2By^2\right)^2}"> 

e por ter o valor igual a 0, satisfaz a equação de laplace.

# Questão 2:

A partir da euqação da onda:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{\partial^2u}{\partial t^2}= c^2\frac{\partial^2u}{\partial x^2}">

E Utilizando a seguinte equação:

<img src= "https://render.githubusercontent.com/render/math?math=\sin(c\omega t) \sin(\omega t)">




Bastando calcular as derivadas parciais duplas para x e y, e devolve-las para a equação da onda.

# Questão 3:

A função que define a resistência é: <img src= "https://render.githubusercontent.com/render/math?math=R = \frac{R_1R_2}{R_1 %2B R_2}"> 

Primeiro calcularemos as derivadas duplas para R1 e R2 e determinaremos o produto.

Primeira derivada para R1:
\left(\frac{B^2}{\left(A+B\right)^2}\right)

Segunda derivada para R1:
-\frac{2B^2}{\left(A+B\right)^3}

Primeira derivada para R2
\frac{A^2}{\left(A+B\right)^2}

Segunda derivada para R2
-\frac{2A^2}{\left(A+B\right)^3}

Calculando o produto das Derivadas parciais de segunda ordem:

-\frac{2B^2}{\left(A+B\right)^3}* -\frac{2A^2}{\left(A+B\right)^3}

\frac{4B^2A^2}{\left(A+B\right)^6}

Calculando \frac{4\cdot \left(\frac{R)^2}{\:\left(A+B\right)^4}

\frac{4A^2B^2}{\left(A+B\right)^6}

O produto das derivadas parciais de segunda ordem é igual equação obtida ao substituirmos o valor de R na equação proposta.
