Algoritmo "App12-Ex12-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe dois valores e informa o maior
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 17/05/2021
Var
   // Seção de Declarações das variáveis
   valor: vetor [0..1] de real
   i: inteiro
   maior, menor: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 12 - Lista 1")
   escreval ("Função: Recebe dois valores e informa o maior")

   //pula linha
   escreval()

   //recebe os dois valores
   para i de 0 ate 1 passo 1 faca
      escreva ("Digite o ", i+1, "° valor: ")
      leia (valor[i])
   fimpara

   //ordena os numeros de forma crescente
   se valor[0] > valor[1] entao
      maior <- valor[0]
      menor <- valor[1]
   senao
      maior <- valor[1]
      menor <- valor[0]
   fimse


   //aprenta os resultados
   escreval ("Maior número digitado: ", maior)
   escreval ("Menor número digitado: ", menor)

Fimalgoritmo