Algoritmo "Ex21 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   :
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   fim, ini, duracao: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex21 - Lista de Desafios")
   escreval ("Função: ")

   //recebe as horas
   escreva ("Digite a hora de inicio: ")
   leia (ini)

   escreva ("Digite a hora de término: ")
   leia (fim)

   //a duração do jogo não pode passar de 24h
   enquanto fim > ini faca
      escreva ("O jogo não pode passar de 24h, digite novamente: ")
      leia (fim)
   fimenquanto

   //calcula a duração do jogo
   duracao <- (24 - ini) + fim

   escreval //pula linha

   //resultado
   escreval ("A duração do jogo foi de: ", duracao, " horas")

Fimalgoritmo