

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

A partir da equção da onda:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{\partial^2u}{\partial t^2}= c^2\frac{\partial^2u}{\partial x^2}">

E Utilizando a seguinte equação:

<img src= "https://render.githubusercontent.com/render/math?math=\sin(c\omega t) \sin(\omega x)">

Calcularemos as derivadas parciais de segunda ordem:

Primeira derivada parcial para t:

<img src= "https://render.githubusercontent.com/render/math?math=\sin %28\omega x%29\cos %28c\omega t%29c\omega">

Segunda derivada parcial para t:

<img src= "https://render.githubusercontent.com/render/math?math=-c^2\omega ^2\sin %28\omega x%29\sin %28c\omega t%29">

Primeira derivada parcial para x:

<img src= "https://render.githubusercontent.com/render/math?math=%28\sin %28c\omega t%29\cos %28\omega x%29\omega %29">

Segunda derivada parcial para x:

<img src= "https://render.githubusercontent.com/render/math?math=-\omega ^2\sin %28\omega x%29\sin %28c\omega t%29">

Podemos observar que multiplicando a segunda derivada parcial para x por c², obteremos a segunda derivada parcial para t. Obedecendo a equação da onda.

# Questão 3:

A função que define a resistência é: <img src= "https://render.githubusercontent.com/render/math?math=R = \frac{R_1R_2}{R_1 %2B R_2}"> 

Primeiro calcularemos as derivadas duplas para R1 e R2 e determinaremos o produto.

Primeira derivada para R1:

<img src= "https://render.githubusercontent.com/render/math?math=%28\frac{R_2^2}{%28R_1R_ %2B 2%29^2}%29">

Segunda derivada para R1:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{2R_2^2}{%28R_1 %2B R_2%29^3}">

Primeira derivada para R2:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{R_1^2}{%28R_1 %2B R_2%29^2}">

Segunda derivada para R2:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{2R_1^2}{%28R_1 %2B R_2%29^3}">

Calculando o produto das Derivadas parciais de segunda ordem:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{2R_2^2}{%28R_1 %2B R_2%29^3}* \frac{2R_1^2}{%28R_1 %2B R_2%29^3}">

<img src= "https://render.githubusercontent.com/render/math?math=\frac{4R_2^2R_1^2}{%28R_1 %2B R_2%29^6}">

Substituindo R na formula apresentada:

<img src= "https://render.githubusercontent.com/render/math?math=%5Cfrac%7B4(%7B%5Cfrac%7BR_1R_2%7D%7BR_1%20R_2%7D)%7D%5E2%7D%7B%7B%28R_1%2B%20R_2%29%7D%5E4%7D">

Obtermos:

<img src= "https://render.githubusercontent.com/render/math?math=\frac{4R_2^2R_1^2}{%28R_1 %2B R_2%29^6}">

O produto das derivadas parciais de segunda ordem é igual equação obtida ao substituirmos o valor de R na equação proposta.
