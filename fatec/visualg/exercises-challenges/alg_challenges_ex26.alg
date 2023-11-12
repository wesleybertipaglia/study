Algoritmo "Ex26 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Verifica a situação do estoque
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   estoque, max, min: inteiro
   media: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex26 - Lista de Desafios")
   escreval ("Função: Verifica a situação do estoque")

   //recebe as informações de estoque
   escreva ("Digite quantidade em estoque: ") //atual
   leia (estoque)

   escreva ("Digite a quantidade máxima de estoque: ") //maxima
   leia (max)
   escreva ("Digite a quantidade mínima de estoque: ") //minima
   leia (min)

   //calcula a quantidade media
   media <- (max +min)/2

   //resultados
   escreval //pula linha
   escreval ("Quantidade média do estoque: ", media)

   se media >= estoque entao //verifica se é necessario comprar mais produtos
      escreval ("O estoque é sufuciente")
   senao
      escreval ("É necessário comprar mais mercadoria")
   fimse

Fimalgoritmo