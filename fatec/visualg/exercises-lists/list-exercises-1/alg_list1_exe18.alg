Algoritmo "App18-Ex18-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Ler uma matriz5x5 e somar a diagonal principal
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 17/05/2021
Var
   // Seção de Declarações das variáveis
   matriz: vetor [0..4,0..4] de inteiro
   i, j: inteiro
   dprincipal: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 18 - Lista 1")
   escreval ("Função: Ler uma matriz5x5 e somar a diagonal principal")

   //pula linha
   escreval()

   //recebe a matriz
   para i de 0 ate 4 faca
      para j de 0 ate 4 faca
         escreva ("Digite a posição [", i, j, "]: ")
         leia (matriz[i,j])
         se i = j entao
            dprincipal <- dprincipal + matriz[i,j]
         fimse
      fimpara
      escreval()
   fimpara

   //limpa a tela
   limpatela

   //apresenta o resultado
   escreval("soma diagonal principal: ", dprincipal)

Fimalgoritmo