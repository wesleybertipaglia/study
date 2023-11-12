Algoritmo "Ex41 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula média ponderada
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n1, n2, n3, mediaex, media: real
   conceito: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex41 - Lista de Desafios")
   escreval ("Função: Calcula média ponderada")

   //recebe as notas
   escreva ("Digite a nota 1: ")
   leia (n1)

   escreva ("Digite a nota 2: ")
   leia (n2)

   escreva ("Digite a nota 3: ")
   leia (n3)

   //recebe a média dos exercícios
   escreva ("Digite a média dos exercícios: ")
   leia (mediaex)

   //calcula a média ponderada
   media <- (n1+(n2*2)+(n3*3)+mediaex)/7
   
   //verifica o conceito
   se (media >= 9) entao
      conceito <- "A"
   fimse
   
   se (media >= 7.5) e (media < 9) entao
      conceito <- "B"
   fimse
   
   se (media >= 6) e (media < 7.5) entao
      conceito <- "C"
   fimse
   
   se media < 6 entao
      conceito <- "D"
   fimse

   //resultado
   escreval
   escreval ("Média final: ", media)
   escreval ("Conceito: ", conceito)

Fimalgoritmo