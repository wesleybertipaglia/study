Algoritmo "Ex13 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula a média final ponderada de uma aluno
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n1, n2, n3: inteiro
   mediafinal: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex13 - Lista de Desafios")
   escreval ("Função: Calcula a média final ponderada de uma aluno")

   //recebe as notas do aluno
   escreva ("Digite a nota 1: ")
   leia (n1)
   escreva ("Digite a nota 2: ")
   leia (n2)
   escreva ("Digite a nota 3: ")
   leia (n3)


   //calcula a media final
   mediafinal <- (n1*2+n2*3+n3*5)/10

   escreval //pula linha

   //resultados
   escreval ("Média Final: ", mediafinal)

Fimalgoritmo