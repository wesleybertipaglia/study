Algoritmo "Ex90 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Verifica quantas vezes um número aparece no vetor
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: vetor [1..31] de inteiro
   i, cont: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex90 - Lista de Desafios")
   escreval ("Função: Verifica quantas vezes um número aparece no vetor")

   //recebe o vetor
   para i de 1 ate 30 faca
      escreva ("Digite o ", i, " número: ")
      leia (n[i])
   fimpara

   //recebe outro valor
   escreval
   escreva ("Digite outro valor: ")
   leia (n[31])

   //conta quantas vezes o numero aparece no vetor
   para i de 1 ate 30 faca
      se n[31] = n[i] entao
         cont <- cont + 1
      fimse
   fimpara

   //resultados
   escreval
   escreval ("O número digitado aparece ", cont, " vezes no vetor")

Fimalgoritmo