Algoritmo "Ex62 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe o número de alunos e calcula a média de notas na sala
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: vetor [1..10] de real
   alunos, i: inteiro
   media: real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex62 - Lista de Desafios")
   escreval ("Função: Recebe o número de alunos e calcula a média de notas")

   //recebe o número de alunos na turma
   escreval
   escreva ("Digite o número de alunos na turma: ")
   leia (alunos)

   para i de 1 ate alunos faca
      escreva ("Digite a nota do aluno ", i, ": ")
      leia(n[i])
      media <- media + n[i]
   fimpara

   //calcula média das notas
   media <- media/alunos

   //resultado
   escreval
   escreval ("Média das notas: ", media)

Fimalgoritmo