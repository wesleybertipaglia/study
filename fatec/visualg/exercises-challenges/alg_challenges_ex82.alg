Algoritmo "Ex82 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe um número que multiplica um vetor lido
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   a: vetor [1..10] de real
   m: vetor [1..10] de real
   i: inteiro
   x: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex82 - Lista de Desafios")
   escreval ("Função: Recebe um número que multiplica um vetor lido")

   //recebe o vetor a
   para i de 1 ate 10 faca
      escreva ("Digite o número ", i, ": ")
      leia (a[i])
   fimpara

   //reccebe o número x
   escreval
   escreval ("Número para multiplição")
   escreva ("Digite o número x: ")
   leia (x)

   //resultado
   para i de 1 ate 10 faca
      m[i] <- (a[i] * x)

      //imprime o resultado
      escreval (a[i], " * ", x, " = ", m[i])
   fimpara
Fimalgoritmo