Algoritmo "App19-Ex19-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Gera uma matriz[i,j]=i+j
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 17/05/2021
Var
   // Seção de Declarações das variáveis
   matriz: vetor [1..6,1..6] de inteiro
   i, j: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 19 - Lista 1")
   escreval ("Função: Gera uma matriz[i,j]=i+j")

   //pula linha
   escreval()

   //gera a matriz
   para i de 1 ate 6 passo 1 faca
        para j de 1 ate 6 passo 1 faca
             matriz[i,j] <- i+j
        fimpara
   fimpara
   
   //apresnta a matriz resultado
   para i de 1 ate 6 passo 1 faca
        para j de 1 ate 6 passo 1 faca
             escreva (matriz[i,j]:5)
        fimpara
        escreval()
   fimpara

Fimalgoritmo