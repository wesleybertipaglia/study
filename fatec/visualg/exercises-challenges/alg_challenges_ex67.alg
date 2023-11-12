Algoritmo "Ex67 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula a média da soma dos números inteiros entre 15 e 100
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   i, soma: inteiro
   media: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex67 - Lista de Desafios")
   escreval ("Função: Calcula a média da soma dos números inteiros entre 15 e 100")

   //recebe a soma
   para i de 15 ate 100 faca
      soma <- soma + i
   fimpara

   //calcula a média
   media <- soma/(100-15)

   //resultado
   escreval
   escreval ("Soma: ", soma)
   escreval ("Média: ", media)
Fimalgoritmo