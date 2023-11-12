Algoritmo "Ex70 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe 100 números e verifica o maior e o menor
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: vetor [1..100] de inteiro
   i, maior, menor: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...


   //apresenta o app
   escreval ("Ex70 - Lista de Desafios")
   escreval ("Função: Recebe 100 números e verifica o maior e o menor")

   //recebe o primeiro valor e atribui a ele, maior e menor para comparar
   escreva ("Digite o valor 1: ")
   leia (n[1])
   maior <- n[1]
   menor <- n[1]

   //recebe os demais valores e verifica qual o maior e o menor
   para i de 2 ate 100 faca
      escreva ("Digite o valor ", i, ": ")
      leia (n[i])

      se n[i] > maior entao
         maior <- n[i]
      fimse

      se n[i] < menor entao
         menor <- n[i]
      fimse
   fimpara

   //resultados
   escreval
   escreval ("Maior: ", maior)
   escreval ("Menor: ", menor)

Fimalgoritmo