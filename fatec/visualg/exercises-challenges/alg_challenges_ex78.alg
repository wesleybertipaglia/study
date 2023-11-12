Algoritmo "Ex78 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe 10 nomes e faz a busca de um nome no vetor lido
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: vetor [1..10] de caractere
   i: inteiro
   nome: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex78 - Lista de Desafios")
   escreval ("Função: Recebe 10 nomes e faz a busca de um nome no vetor lido")

   para i de 1 ate 10 faca
      escreva ("Digite o nome ", i, ": ")
      leia (n[i])
   fimpara
   escreval

   escreva ("Busca por nomes")
   escreva ("digite um nome: ")
   leia (nome)
   escreval

   para i de 1 ate 10 faca
      se nome = n[i] entao
         escreval ("Nome encontrado")
      senao
         escreval ("Nome não encontrado")
      fimse
   fimpara

Fimalgoritmo