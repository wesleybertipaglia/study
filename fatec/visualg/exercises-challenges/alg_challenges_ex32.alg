Algoritmo "Ex32 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Verifica o resultado de uma partida de futebol
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   timea, timeb: caractere
   gola, golb: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex32 - Lista de Desafios")
   escreval ("Função: Verifica o resultado de uma partida de futebol")

   //recebe o nome e os gos marcados dos times
   escreva ("Digite o nome do time: ")
   leia(timea)

   escreva ("Digite o numero de gols do ", timea, ": ")
   leia (gola)

   escreva ("Digite o nome do time: ")
   leia(timeb)

   escreva ("Digite o numero de gols do ", timeb, ": ")
   leia (golb)

   //verifica o resultado
   escreval //pula linha
   se gola > golb entao
      escreval ("Vencedor: ", timea)
   senao
      escreval ("Vencedor: ", timeb)
   fimse

   se gola = golb entao
      escreval ("Empate")
   fimse

Fimalgoritmo