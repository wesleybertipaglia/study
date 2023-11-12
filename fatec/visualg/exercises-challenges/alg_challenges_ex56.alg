Algoritmo "Ex56 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Apresenta a tabuáda de n
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   i, n: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex56 - Lista de Desafios")
   escreval ("Função: Apresenta a tabuáda de n")

   //recebe n
   escreva ("Digite n: ")
   leia (n)

   //resultado
   escreval //pula linha

   para i de 1 ate 10 faca
      escreval (i, " x ", n, " = ", i*n)
   fimpara

Fimalgoritmo