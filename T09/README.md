#Trabalho 9: Classes e objetos em Java

Neste trabalho, você vai implementar classes em Java e escrever pequenos programas para testá-las. Cada parte do trabalho deve estar em pastas separadas, dentro de uma pasta denominada t9, dentro do seu repositório. Se você utilizar um IDE como NetBeans, Eclipse ou Intellij IDEA, crie um projeto diferente para cada parte do trabalho. 

<h3>Parte 1</h3>
Antes de fazer esta parte do trabalho, copie para seu projeto a definição da classe Ponto, que deve ter sido feita anteriormente nos <a href="http://www-usr.inf.ufsm.br/~andrea/elc117/exercs/ex_java_1.html" target="_blank">exercícios práticos de Java</a> e que será reusada neste trabalho. 
  1. Crie uma classe em Java denominada ```Circle```, encapsulando no mínimo: 
    - atributos: um ponto no centro do círculo e o raio do círculo (obs.: use a classe Ponto);
    - métodos: um método ```getArea``` que calcule e retorne a área do círculo; um método ```getDiameter``` que calcule e retorne o diâmetro do círculo; 
    - construtores: no mínimo 2 (um default e outro com argumentos à sua escolha). 
  2. Crie um programa Java que utilize a classe Circle, criando no mínimo 2 objetos desta classe e testando a execução de todos os seus métodos. 

<h3>Parte 2</h3>
Um pequeno estacionamento cobra R$ 3,00/hora para carros e R$ 1,50/hora para motocicletas. Quando um veículo entra no estacionamento, é registrado o tipo do veículo, sua placa e o horário de entrada. Na saída, também é registrado o horário e é calculado o valor a ser cobrado.

Você deverá desenvolver código orientado a objetos em Java para ajudar no controle do estacionamento. Para simplificar o problema, assuma que o estacionamento só pode acomodar um só veículo por vez. Resolva o problema atendendo aos seguintes requisitos:
  1. Defina no mínimo 2 classes (p.ex.: Veiculo e Estacionamento), com atributos e métodos coerentes com a descrição do problema. Dica: para manipular horários de entrada/saída, use o tipo ```long``` para representar um horário e o método ```System.currentTimeMillis()``` para obter a "hora do sistema" em milissegundos.
  2. Defina no mínimo um método que calcule o valor a ser cobrado na saída do veículo. 
  3. Crie um programa principal que simule a operação do estacionamento, fazendo pelo menos 2 entradas e saídas de veículos diferentes, mostrando o valor cobrado para cada veículo. 
