Algoritmo "Ex64 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe 10 números e soma os inferiores a 40
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
   escreval ("Ex64 - Lista de Desafios")
   escreval ("Função: Recebe 10 números e soma os inferiores a 40")

   para i de 1 ate 10 faca
      escreva ("Digite o ", i, " número: ")
      leia (n[i])

      se n[i] < 40 entao
         soma <- soma + n[i]
      fimse
   fimpara

   //resultado
   escreval
   escreval ("Soma dos numeros menores que 40: ", soma)
Fimalgoritmo