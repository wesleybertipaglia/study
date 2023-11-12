Algoritmo "Ex91 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Verifica números repetidos no vetor
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   vet, aux, p: vetor [1..50] de inteiro
   i, j, cont: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex91 - Lista de Desafios")
   escreval ("Função: Verifica números repetidos no vetor")

   //recebe o vetor
   para i de 1 ate 10 faca
        escreva ("Digite o número ", i, ": ")
        leia (vet[i])
        aux[i] <- vet[i]
   fimpara
   
   //verifica repetições
   para i de 1 ate 10 faca
        para j de 10 ate 1 passo -1 faca
             se vet[i] = aux[i] entao
                cont <- cont + 1
                p[i] <- i
             fimse
        fimpara
   fimpara
   
   //resultados
   escreval
   escreval ("Números Reptidos: ", cont)
   escreval ("Posições")

Fimalgoritmo