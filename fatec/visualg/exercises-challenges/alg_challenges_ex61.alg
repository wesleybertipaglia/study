Algoritmo "Ex61 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe 10 valores e calcula a média aritmética deles
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: vetor [1..10] de inteiro
   i: inteiro
   media: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex61 - Lista de Desafios")
   escreval ("Função: Recebe 10 valores e calcula a média aritmética deles")

   //recebe os valores
   para i de 1 ate 10 faca
      escreva ("Digite o valor ", i, ": ")
      leia (n[i])
      media <- media + n[i]
   fimpara

   //calcula a média
   media <- media/10

   //resultados
   escreval
   escreval ("Média: ", media)

Fimalgoritmo