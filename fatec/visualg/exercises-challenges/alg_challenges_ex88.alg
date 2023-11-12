Algoritmo "Ex88 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Retira um numero digitado do vetor
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: vetor [1..21] de inteiro
   i: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex88 - Lista de Desafios")
   escreval ("Função: Retira um numero digitado do vetor")

   //recebe o vetor
   para i de 1 ate 20 faca
      escreva ("Digite o número ", i, ": ")
      leia (n[i])
   fimpara

   //recebe outro numero
   escreval
   escreva ("Digite outro número: ")
   leia (n[21])

   //verifica se o vetor tem esse numero
   escreval
   escreval ("Resultado")
   para i de 1 ate 20 faca
      se n[21] <> n[i] entao
         escreval ("Número ", i, ": ", n[i])
      fimse
   fimpara

Fimalgoritmo