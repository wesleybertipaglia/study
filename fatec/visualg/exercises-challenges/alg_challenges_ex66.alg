Algoritmo "Ex66 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   :
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n1, n2, soma, i: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex66 - Lista de Desafios")
   escreval ("Função: Recebe 2 valores e calcula a soma dos inteiros entre eles")

   escreva ("Digite o 1° valor: ")
   leia (n1)

   escreva ("Digite o 2° valor: ")
   leia (n2)

   se n2 > n1 entao
      para i de n1 ate n2 faca
           soma <- soma + i
      fimpara
      
      senao
      
      escreval
      escreval ("Soma de trás para frente")
      para i de n2 ate n1 faca
           soma <- soma + i

      fimpara
   fimse

   //resultado
   escreval
   escreval ("Soma: ", soma)

Fimalgoritmo