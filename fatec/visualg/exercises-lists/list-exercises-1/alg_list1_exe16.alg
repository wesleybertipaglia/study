Algoritmo "App16-Ex16-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Le uma matriz 4x4 de inteiros e gera matriz transposta.
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 17/05/2021
Var
   // Seção de Declarações das variáveis
   matriz: vetor [0..3, 0..3] de inteiro
   i, j: inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 16 - Lista 1")
   escreval ("Função: Le uma matriz 4x4 de inteiros e gera matriz transposta.")

   //pula linha
   escreval()

   //estrutura para ler a matriz
   para i de 0 ate 3 faca
      para j de 0 ate 3 faca
         escreva("Digite a posição [",i+1,j+1,"]: ")
         leia (matriz[i,j])
      fimpara
      escreval
   fimpara

   //limpa a tela
   limpatela

   //apresenta a matriz 4x4
   escreval("----------Matriz 4x4----------")
   escreval()
   para i de 0 ate 3 faca
      para j de 0 ate 3 faca
         escreva(matriz[i,j]:10)
      fimpara
      escreval()
   fimpara

   //pula linha
   escreval()

   //apresenta a matriz transposta
   escreval("-----Matriz 4x4 transposta-----")
   escreval()
   para i de 0 ate 3 faca
      para j de 0 ate 3 faca
         escreva(matriz[j,i]:10)
      fimpara
      escreval()
   fimpara

Fimalgoritmo