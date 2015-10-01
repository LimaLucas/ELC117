#Trabalho 6 - Cores e SVG em Haskell

Neste trabalho, você vai fazer programas em Haskell para gerar arquivos SVG com paletas de cores, como no exemplo ao lado. Os programas deverão implementar funções para definir figuras geométricas (retângulos, etc.) e suas cores, formando assim uma paleta. Em outras palavras, você <b>não deverá</b> codificar posições e cores manualmente, enumerando-as uma por uma, mas sim definir funções para calculá-las a partir de argumentos (por exemplo: quantidade de cores, linhas e colunas da paleta, etc.).

<center>-![alt text](http://www-usr.inf.ufsm.br/~andrea/elc117/src/haskell/green-cyans.png)</center>

O trabalho será dividido em 3 partes, com pesos diferentes. Cada parte deverá ser entregue em um arquivo separado, conforme instruções abaixo. Preferencialmente, você deverá usar <b>funções de alta ordem e list comprehension</b> em vez de recursão.

No material de apoio você encontrará um código em Haskell que faz operações de escrita em arquivo. Se desejar, você poderá reutilizar este código, alterando-o e completando-o para obter a funcionalidade desejada.
<h3>Parte 1 (50%)</h3>

Implemente um programa que gere uma paleta de cores semelhante a esta abaixo, extraída <a href="http://www.w3.org/TR/css3-color/#hsl-color" target="_blank">deste site</a>.

<center>-![alt text](http://www-usr.inf.ufsm.br/~andrea/elc117/src/haskell/cyan-blues.png)<center>

 Requisitos:

  - Entregue esta parte num arquivo t6-p1.hs.
  - A geração deverá se basear em algumas constantes definidas no início do programa, como por exemplo: matiz (hue), quantidade de linhas e colunas da paleta, altura e largura dos retângulos.
  - A largura e a altura da imagem SVG devem ser calculadas para que todos os retângulos fiquem visíveis. 

<h3>Parte 2 (25%)</h3>

Implemente um programa para gerar paletas de diferentes matizes, num mesmo arquivo, conforme o exemplo abaixo. Em outras palavras, você deverá gerar uma única figura com diferentes paletas. Não é necessário incluir texto na figura. 


<center>-![alt text](http://www-usr.inf.ufsm.br/~andrea/elc117/src/haskell/hsl.png)</center>



Requisitos:

  - Entregue esta parte num arquivo t6-p2.hs.
  - A geração deverá se basear em algumas constantes, podendo incluir, por exemplo, a quantidade de matizes.
  - Novamente, a largura e a altura da imagem SVG devem ser calculadas para que todos os retângulos fiquem visíveis. 

<h3>Parte 3 (25%)</h3>

Nesta parte, você deverá implementar um programa para criar <b> duas novas paletas ou figuras coloridas,</b> usando diferentes esquemas de cores e formatos. Essas novas figuras devem ser bem diferentes das anteriores (partes 1 e 2), mas também <b>não devem</b> ter posições e cores definidas manualmente. Use sua criatividade, busque mais informações sobre representação de cores e estenda os programas anteriores (a nota desta parte será proporcional ao atendimento a esses quesitos).

Algumas ideias:

  - Faça misturas de cores para gerar paletas a partir de uma ou mais cores fixas.
  - Use geração de números aleatórios para definir uma ou mais cores da figura.
  - Crie paletas com cores transparentes e sobrepostas, usando o atributo de estilo "fill-opacity".
  - Represente paletas com formatos diferentes, por exemplo: círculos, linhas, retângulos rotacionados, etc.
  - Crie figuras com cores possivelmente repetidas ou alternando cores/formas constantes, gerando padrões coloridos. 

<b>Importante: </b> inclua comentários no seu código informando as fontes que você consultou para descobrir mais sobre cores, SVG e/ou Haskell.

Entregue esta parte num arquivo t6-p3.hs. Esse arquivo deverá ter duas funções principais: main1 e main2, cada uma gerando uma figura diferente. 
