Algoritmo "Ex45 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   :
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
// Seção de Declarações das variáveis
   n1, n2: inteiro
   divisao: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex45 - Lista de Desafios")
   escreval ("Função: faz uma divisão")

   //recebe 2 valores
   escreva ("Digite o 1° valor: ")
   leia (n1)
   
   escreva ("Digite o 2° valor: ")
   leia (n2)

   enquanto n2 = 0 faca
      escreva ("Digite um valor diferente de 0: ")
      leia (n2)
   fimenquanto

   divisao <- n1/n2

   //resultados
   escreval //pula linha
   escreval (n1, " / ", n2, " = ", divisao)
Fimalgoritmo