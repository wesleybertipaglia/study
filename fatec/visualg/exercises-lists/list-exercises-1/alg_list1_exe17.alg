Algoritmo "App17-Ex17-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Le uma matriz 5x5 e gerea outra matriz i²+j²
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 17/05/2021
Var
   // Seção de Declarações das variáveis
   matriz: vetor [0..4,0..4] de inteiro
   aux: vetor [0..4,0..4] de inteiro
   i, j: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 17 - Lista 1")
   escreval ("Função: Le uma matriz 5x5 e gera outra matriz i²+j²")

   //pula linha
   escreval()


   //recebe uma matriz 5x5
   para j de 0 ate 4 faca
      para i de 0 ate 4 faca
         escreva ("Digite o i da posição [",i+1,j+1,"]: ")
         leia(matriz[i])
         escreva ("Digite o j da posição [",i+1,j+1,"]: ")
         leia(matriz[j])
         matriz[i,j] <- matriz[i]*matriz[i]+matriz[j]*matriz[j]
      fimpara
      escreval()
   fimpara


   //mostra a matriz gerada
   para i de 0 ate 4 faca
      para j de 0 ate 4 faca
         escreva (matriz[i,j]:10)
      fimpara
      escreval()
   fimpara
Fimalgoritmo