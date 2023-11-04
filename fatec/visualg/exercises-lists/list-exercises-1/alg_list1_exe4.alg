Algoritmo "app4-ex4-lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula a média final ponderada de um aluno
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 13/05/2021
Var
   // Seção de Declarações das variáveis
   prova: vetor [0..2] de real
   I: inteiro
   nome: caractere
   media: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   //limpa tela
   limpatela

   //apresenta o app
   escreval ("App 4 - Lista 1")
   escreval("Função: Calcula a média final ponderada de um aluno")

   //pula linha
   escreval ()

   //recebe o nome do aluno
   escreva ("Digite seu nome: ")
   leia (nome)

   //recebe as notas do aluno
   para I de 0 ate 2 passo 1 faca
      escreva ("Digite a nota da prova ", I+1, ": ")
      leia (prova[I])
   fimpara

   //calcula a média ponderada
   media <- (prova[0]*2+prova[1]*3+prova[2]*5)/10

   //limpa a tela
   limpatela

   //exibe os resultados
   escreval ("Aluno: ", nome)
   escreval ("Nota 1 (peso 2): ", prova[0])
   escreval ("Nota 2 (peso 3): ", prova[1])
   escreval ("Nota 3 (peso 5): ", prova[2])
   escreval ("Média Final: ", media)
   escreval()

   se media >=6 entao

      escreval ("Situação: Aprovado")
   senao
      escreval ("Situação: Reprovado")
   fimse


Fimalgoritmo