Algoritmo "Ex69 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula a soma e a média do valor de estoque
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   preco, soma, media: real
   cont: inteiro
   resposta: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex69 - Lista de Desafios")
   escreval ("Função: Calcula a soma e a média do valor de estoque")

   //recebe o preco da mercadoria
   escreval
   escreva ("Digite o preco da mercadoria: ")
   leia(preco)
   soma <- preco
   cont <- 1

   //verifica se tem mais mercadoria
   escreva ("Mais mercadoria (S/N)? ")
   leia (resposta)
   
   escreval //pula linha
   
   //repeticao para adicionar mercadoria
   enquanto resposta = "S" faca
      escreva ("Digite o preco da mercadoria: ")
      leia(preco)
      soma <- soma + preco
      cont <- cont + 1
      
      escreval
      escreva ("Mais mercadoria (S/N)? ")
      leia (resposta)
   fimenquanto
   
   //calcula média
   media <- soma/cont

   //resultados
   escreval
   escreval ("Soma dos preços ", soma)
   escreval ("Média de preços ", media)

Fimalgoritmo