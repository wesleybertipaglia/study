Algoritmo "Ex68 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula a soma e a média do valor de estoque
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   v: vetor [1..1000] de inteiro
   mercadoria, i: inteiro
   soma, media: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex68 - Lista de Desafios")
   escreval ("Função: Calcula a soma e a média do valor de estoque")

   escreva ("Digite o numero de mercadorias diferentes: ")
   leia(mercadoria)

   para i de 1 ate mercadoria faca
      escreva ("Digite o valor da mercadoria ", i, ": ")
      leia (v[i])

      soma <- soma + v[i]
   fimpara

   media <- soma/mercadoria

   //resultados
   escreval
   escreval ("Número de mercadorias diferentes: ", mercadoria)
   escreval ("Soma dos preços ", soma)
   escreval ("Média de preços ", media)

Fimalgoritmo