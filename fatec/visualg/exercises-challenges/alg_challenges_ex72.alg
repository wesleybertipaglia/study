Algoritmo "Ex72 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe preço e código de 15 produtos, mostra o maior preço e a média
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   c: vetor [1..15] de inteiro
   p: vetor [1..15] de real
   i: inteiro
   maior, menor, soma, media: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex72 - Lista de Desafios")
   escreval ("Função: Recebe preço, mostra o maior preço e a média")

   //recebe dados do 1° produto
   escreva ("Digite o código do produto 1: ")
   leia (c[1])

   escreva ("Digite o preço do produto: ")
   leia (p[1])
   escreval

   //alocação das variáveis para efeito de comparação
   maior <- p[1]
   menor <- p[1]

   //alocação do preço à soma
   soma <- p[1]

   //recebe dados dos outros 14 produtos
   para i de 2 ate 15 faca
      escreva ("Digite o código do produto ", i, ": ")
      leia (c[i])

      escreva ("Digite o preço do produto: ")
      leia (p[i])
      escreval

      //verificação maior e menor para os preços
      se p[i] > maior entao
         maior <- p[i]
      fimse

      se p[i] < menor entao
         menor <- p[i]
      fimse

      //soma dos preços para calcular a média
      soma <- soma + p[i]
   fimpara

   //calcula a média
   media <- soma/15

   //resultados
   escreval
   escreval ("Soma dos preços: ", soma)
   escreval ("Média dos preços: ", media)
   escreval ("Maior preço: ", maior)
   escreval ("Menor preço: ", menor)

Fimalgoritmo