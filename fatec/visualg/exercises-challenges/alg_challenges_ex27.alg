Algoritmo "Ex27 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Verifica se o valor é positivo, negativo ou 0
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: real
   result: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex27 - Lista de Desafios")
   escreval ("Função: Verifica se o valor é positivo, negativo ou 0")

   //recebe um valor
   escreva ("Digite um valor: ")
   leia (n)

   //verifica se é positivo, negativo ou zero
   se n > 0 entao
      result <- "Positivo"
   senao
      result <- "Negativo"
   fimse

   se n = 0 entao
      result <- "Zero"
   fimse

   //resultado
   escreval ("O numero é ", result)

Fimalgoritmo