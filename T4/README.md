#Trabalho 4 - Exercícios

1) Defina uma função recursiva que receba uma lista de 
números inteiros e produza uma lista com cada número 
elevado ao quadrado, conforme o exemplo abaixo

``` Haskell
> eleva2 [1,2,3,4,5]
[1,4,9,16,25]
```

2) Defina uma função recursiva que verifique se um dado 
caracter está contido numa string, conforme os exemplos abaixo

``` Haskell
> contido 'e' “andrea”
True
> contido 'x' “andrea”
False
> contido 'a' “”
False
```

3) Defina uma função recursiva que receba uma string e 
retire suas vogais, conforme os exemplos abaixo

``` Haskell
> semVogais “andrea”
“ndr”
> semVogais “xyz”
“xyz”
> semVogais “ae”
“”
```

4) Defina uma função recursiva que receba uma lista de 
coordenadas de pontos 2D e desloque esses pontos em 
2 unidades, conforme o exemplo abaixo

``` Haskell
> translate [(0.1,0.2), (1.1,6), (2,3.1)]
[(2.1,2.2),(3.1,8.0),(4.0,5.1)]
```

5) Defina uma função que receba um número n e retorne 
uma tabela de números de 1 a n e seus quadrados, 
conforme o exemplo abaixo

``` Haskell
> geraTabela' 5
[(1,1),(2,4),(3,9),(4,16),(5,25)]
```
