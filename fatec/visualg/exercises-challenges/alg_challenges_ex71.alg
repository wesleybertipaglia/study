Algoritmo "Ex71 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe números e apresenta o maior, menor e a média
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
// Seção de Declarações das variáveis
   n: vetor [1..100] de inteiro
   quant, i, maior, menor, soma: inteiro
   media: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex71 - Lista de Desafios")
   escreval ("Função: Recebe números e apresenta o maior, menor e a média")

   //recebe a quantidade de números
   escreva ("Digite a quantidade de números: ")
   leia (quant)
   
   //recebe o primeiro valor e atribui a ele, maior e menor para comparar
   escreva ("Digite o valor 1: ")
   leia (n[1])
   maior <- n[1]
   menor <- n[1]
   soma <- n[1]

   //recebe os demais valores e verifica qual o maior e o menor

   se quant > 1 entao
           para i de 2 ate quant faca
              escreva ("Digite o valor ", i, ": ")
              leia (n[i])
              soma <- soma + n[i]

              se n[i] > maior entao
                 maior <- n[i]
              fimse

              se n[i] < menor entao
                 menor <- n[i]
              fimse
           fimpara
   fimse
   
   //calcula a média
   media <- soma / quant

   //resultados
   escreval
   escreval ("Maior: ", maior)
   escreval ("Menor: ", menor)
   escreval ("Média: ", media)
Fimalgoritmo