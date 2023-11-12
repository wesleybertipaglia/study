Algoritmo "Ex74 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula as tabuádas do 1 ao 10
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   i, j: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex74 - Lista de Desafios")
   escreval ("Função: Calcula as tabuádas do 1 ao 10")

   para i de 1 ate 10 faca
      escreval ("Tabuáda do ", i)
      para j de 1 ate 10 faca
         escreval (i, " * ", j, " = ", i*j)
      fimpara
      escreval
   fimpara

Fimalgoritmo