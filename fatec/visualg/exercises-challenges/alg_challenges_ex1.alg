Algoritmo "Ex1 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Troca valores entre duas Variáveis
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   a, b, aux: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex1 - Lista de Desafios")
   escreval ("Função: Troca valores entre duas Variáveis")

   //atribuição de variáveis
   a <- 10
   b <- 20

   //variáveis antes da troca
   escreval ("Valores antes da troca")
   escreval ("Valor de a: ", a)
   escreval ("Valor de b: ", b)

   //troca os valores entre as variáveis
   aux <- a
   a <- b
   b <- aux

   //pula linha
   escreval

   //resultados
   escreval ("Valores depois da troca")
   escreval ("Valor de a: ", a)
   escreval ("Valor de b: ", b)

Fimalgoritmo