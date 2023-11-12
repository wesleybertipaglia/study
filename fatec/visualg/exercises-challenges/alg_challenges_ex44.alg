Algoritmo "Ex44 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : faz uma divisão utilizando estrutura repita
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n1, n2: inteiro
   divisao: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex44 - Lista de Desafios")
   escreval ("Função: faz uma divisão")

   //recebe 2 valores
   escreva ("Digite o 1° valor: ")
   leia (n1)

   repita
      escreva ("Digite o 2° valor: ")
      leia (n2)
   ate n2 > 0

   divisao <- n1/n2

   //resultados
   escreval //pula linha
   escreval (n1, " / ", n2, " = ", divisao)

Fimalgoritmo