Algoritmo "Ex83 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe um vetor e imprime em ordem inversa
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: vetor [1..20] de real
   i: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex83 - Lista de Desafios")
   escreval ("Função: Recebe um vetor e imprime em ordem inversa")

   //recebe os números
   para i de 1 ate 20 faca
      escreva ("Digite o ", i, " número: ")
      leia (n[i])
   fimpara

   //resultado
   limpatela
   escreval ("Números lidos")
   escreval
   para i de 20 ate 1 passo -1 faca
      escreval (n[i])
   fimpara

Fimalgoritmo