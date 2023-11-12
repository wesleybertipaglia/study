Algoritmo "Ex63 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe 10 números e soma
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: vetor [1..10] de real
   i: inteiro
   soma: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex63 - Lista de Desafios")
   escreval ("Função: Recebe 10 números e soma")

   para i de 1 ate 10 faca
      escreva ("Digite o ", i, " número: ")
      leia (n[i])

      //soma os números
      soma <- soma + n[i]
   fimpara

   //resultado
   escreval
   escreval ("A soma dos números é: ", soma)

Fimalgoritmo