Algoritmo "Ex53 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Aprenta numeros inteiros de 1 a n
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   i, n: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex53 - Lista de Desafios")
   escreval ("Função: Aprenta numeros inteiros de 1 a n")

   //recebe n
   escreva ("Digite um valor: ")
   leia (n)

   //verifica n
   enquanto n <= 0 faca
      escreva ("Digite um valor maior que 0: ")
      leia (n)
   fimenquanto

   //apresenta os números
   para i de 1 ate n faca
      escreval (i)
   fimpara
Fimalgoritmo