Algoritmo "Ex60 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe 10 valores e verifica quantos estão entre [10,20]
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   num: vetor [1..10] de inteiro
   i, dentro, fora: inteiro
   
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex60 - Lista de Desafios")
   escreval ("Função: Recebe 10 valores e verifica quantos estão entre [10,20]")

   para i de 1 ate 10 faca
      escreva ("Digite o valor ", i, ": ")
      leia (num[i])

      se (num[i]>=10) e (num[i] <= 20) entao
         dentro <- dentro + 1
      senao
         fora <- fora + 1
      fimse
   fimpara

   //resultados
   escreval //pula linha
   escreval ("Números dentro do intervalo: ", dentro)
   escreval ("Números fora do intervalo: ", fora)

Fimalgoritmo