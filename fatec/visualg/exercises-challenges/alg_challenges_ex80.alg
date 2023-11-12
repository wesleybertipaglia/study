Algoritmo "Ex80 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Mostra o maior valor e sua posição num vetor
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   q: vetor [1..20] de inteiro
   i, maior, posicaomaior: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex80 - Lista de Desafios")
   escreval ("Função: Mostra o maior valor e sua posição num vetor")
   escreval

   //recebe o primeiro valor e atribui a ele, maior e menor para comparar
   escreva ("Digite o valor 1: ")
   leia (q[1])
   maior <- q[1]
   posicaomaior <- 1

   enquanto q[1] < 0 faca
            escreva ("Digite um número positivo: ")
            leia (Q[1])
   fimenquanto

   //recebe os demais valores e verifica qual o maior e o menor
   para i de 2 ate 20 faca
      escreva ("Digite o valor ", i, ": ")
      leia (q[i])

      enquanto q[i] < 0 faca
            escreva ("Digite um número positivo: ")
            leia (Q[i])
      fimenquanto

      se q[i] > maior entao
         maior <- q[i]
	 posicaomaior <- i
      fimse
   fimpara

   //resultados
   escreval
   escreval ("Maior: ", maior)
   escreval ("Posição do maior número: ", posicaomaior)

Fimalgoritmo