Algoritmo "Ex28 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Verifica o maior valor entre 3 numeros
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n1, n2, n3, maior: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex28 - Lista de Desafios")
   escreval ("Função: Verifica o maior valor entre 3 numeros")

   //recebe tres valores
   escreva ("Digite o 1° valor: ")
   leia (n1)

   escreva ("Digite o 2° valor: ")
   leia (n2)

   se n1 = n2 entao
      escreva ("Os numeros não podem se repetir, digite novamente: ")
      leia (n2)
   fimse

   escreva ("Digite o 3° valor: ")
   leia (n3)

   se (n3 = n1) ou (n3 = n2) entao
      escreva ("Os numeros não podem se repetir, digite novamente: ")
      leia (n3)
   fimse

   //verifica qual o maior valor
   se (n1 > n2) e (n1 > n3) entao
      maior <- n1
   senao
      maior <- n2
   fimse

   se (n3 >n1) e (n3 > n2) entao
      maior <- n3
   fimse

   //resultado
   escreval //pula linha
   escreval ("Maior valor: ", maior)

Fimalgoritmo