Algoritmo "Ex81 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Mostra o menor valor e sua posição num vetor
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   q: vetor [1..20] de inteiro
   i, menor, posicaomenor: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex81 - Lista de Desafios")
   escreval ("Função: Mostra o menor valor e sua posição num vetor")
   escreval

   //recebe o primeiro valor e atribui a ele, maior e menor para comparar
   escreva ("Digite o valor 1: ")
   leia (q[1])
   menor <- q[1]
   posicaomenor <- 1

   enquanto q[1] < 0 faca
            escreva ("Digite um número positivo: ")
            leia Q[1]
   fimenquanto

   //recebe os demais valores e verifica qual o maior e o menor
   para i de 2 ate 20 faca
      escreva ("Digite o valor ", i, ": ")
      leia (q[i])
      
      enquanto q[i] < 0 faca
            escreva ("Digite um número positivo: ")
            leia (Q[i])
      fimenquanto

      se q[i] < menor entao
         menor <- q[i]
	 posicaomenor <- i
      fimse
   fimpara

   //resultados
   escreval
   escreval ("Menor: ", menor)
   escreval ("Posição do menor número: ", posicaomenor)

Fimalgoritmo