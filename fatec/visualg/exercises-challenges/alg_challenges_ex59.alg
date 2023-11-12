Algoritmo "Ex59 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe 10 números e verifica quantos são negativos
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   num: vetor [1..10] de inteiro
   i, negativo: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex59 - Lista de Desafios")
   escreval ("Função: Recebe 10 números e verifica quantos são negativos")

   para i de 1 ate 10 faca
      escreva ("Digite o número ", i, ": ")
      leia (num[i])

      se num[i] < 0 entao
         negativo <- negativo + 1
      fimse
   fimpara

   //resultados
   escreval // pula linha

   escreval ("Negativos: ", negativo)
   escreval ("Positivos: ", 10 - negativo)
Fimalgoritmo