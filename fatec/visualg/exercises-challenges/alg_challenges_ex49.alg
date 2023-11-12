Algoritmo "Ex49 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : calcula a média de notas e pergunta se quer continuar
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n1, n2: inteiro
   media: real
   novo: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex49 - Lista de Desafios")
   escreval ("Função: calcula a média de notas e pergunta se quer continuar")

   //recebe as notas
   escreva ("Digite a 1° nota: ")
   leia (n1)

   //verifica nota 1
   enquanto (n1 < 0) ou (n1 > 10) faca
      escreva ("Nota inválida, digite novamente: ")
      leia (n1)
   fimenquanto

   escreva ("Digite a 2° nota: ")
   leia (n2)

   //verifica nota 2
   enquanto (n2 < 0) ou (n2 > 10) faca
      escreva ("Nota inválida, digite novamente: ")
      leia (n2)
   fimenquanto

   //calcula a media
   media <- (n1+n2)/2

   //resultados
   escreval
   escreval ("Média: ", media)
   escreval
   escreva ("NOVO CÁLCULO (S/N): ")
   leia(novo)
   
   enquanto novo = "S" faca
           //recebe as notas
           escreva ("Digite a 1° nota: ")
           leia (n1)

           //verifica nota 1
           enquanto (n1 < 0) ou (n1 > 10) faca
              escreva ("Nota inválida, digite novamente: ")
              leia (n1)
           fimenquanto

           escreva ("Digite a 2° nota: ")
           leia (n2)

           //verifica nota 2
           enquanto (n2 < 0) ou (n2 > 10) faca
              escreva ("Nota inválida, digite novamente: ")
              leia (n2)
           fimenquanto

           //calcula a media
           media <- (n1+n2)/2

           //resultados
           escreval
           escreval ("Média: ", media)
           escreval
           escreva ("NOVO CÁLCULO (S/N): ")
           leia(novo)
    fimenquanto

Fimalgoritmo