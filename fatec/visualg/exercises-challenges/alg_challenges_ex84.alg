Algoritmo "Ex84 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe n tamanho do vetor, vetor a e b e cria um vetor soma
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   a, b, soma: vetor [1..100] de real
   n, i: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex84 - Lista de Desafios")
   escreval ("Função: Recebe tamanho do vetor, vetor a e b, imprime vetor soma")

   //recebe n
   escreva ("Digite o tamanho do vetor: ")
   leia (n)

   //recebe vetor a (tam n)
   escreval
   escreval ("Vetor A")
   para i de 1 ate n faca
      escreva ("Digite o ", i, " número: ")
      leia (a[i])
   fimpara

   //recebe vetor b (tam n)
   escreval
   escreval ("Vetor B")
   para i de 1 ate n faca
      escreva ("Digite o ", i, " número: ")
      leia (b[i])
   fimpara

   //vetor soma (v[a] + v[b])
   escreval
   escreval ("Vetor Soma (A+B)")
   para i de 1 ate n faca
      soma[i] <- (a[i]) + (b[i])

      escreval (soma[i])
   fimpara

Fimalgoritmo