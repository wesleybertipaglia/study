Algoritmo "Ex86 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe um vetor e imprime em ordem crescente
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: vetor [1..10] de inteiro
   i, j, aux: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex86 - Lista de Desafios")
   escreval ("Função: Recebe um vetor e imprime em ordem crescente")

   para i de 1 ate 10 faca
      escreva ("Digite o ", i, " número: ")
      leia (n[i])
   fimpara



   para i de 1 ate 9 faca
      para j de i ate 10 faca
         se n[j] < n[i] entao
            aux <- n[j]
            n[j] <- n[i]
            n[i] <- aux
         fimse
      fimpara
   fimpara

   //resultado
   escreval
   escreval ("Ordenados")
   para i de 1 ate 10 faca
      escreval (n[i])
   fimpara

Fimalgoritmo