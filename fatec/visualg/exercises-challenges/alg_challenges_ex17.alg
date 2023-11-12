Algoritmo "Ex17 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula a média simples de um aluno
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n1, n2, media: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex17 - Lista de Desafios")
   escreval ("Função: Calcula a média simples de um aluno")

   //recebe as notas
   escreva ("Digite a nota da 1° avaliação: ")
   leia (n1)

   escreva ("Digite a nota da 2° avaliação: ")
   leia (n2)

   escreval //pula linha

   //calcula media simples
   media <- (n1+n2)/2

   //resultado
   escreval ("Média final: ", media)

   se media >= 6 entao
      escreval ("Aprovado(a)")
   senao
      escreval ("Reprovado(a)")
   fimse

Fimalgoritmo