Algoritmo "Ex16 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula o valor da compra de maças
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   macas: inteiro
   custo, compra: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex16 - Lista de Desafios")
   escreval ("Função: Calcula o valor da compra de maças")

   //recebe o numero de maças compradas
   escreva ("Digite quantas maças foram compradas: ")
   leia (macas)

   escreval //pula linha

   //verifica o custo unitario
   se macas >= 12 entao
      custo <- 1
   senao
      custo <- 1.3
   fimse

   //calcula o total da compra
   compra <- macas*custo

   //resultado
   escreval ("Nota de Compra")
   escreval ("Maças: ", custo, " * ", macas)
   escreval ("Total da compra: ", compra)

Fimalgoritmo