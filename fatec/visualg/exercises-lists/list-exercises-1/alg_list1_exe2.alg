Algoritmo "app2-ex2-lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Realiza a troca dos valores das variaveis a e b
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 13/05/2021
Var
   // Seção de Declarações das variáveis
   a, b, aux: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //Limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 2 - Lista 1")
   escreval("Função: Realiza a troca dos valores das variaveis a e b")

   //pula linha
   escreval ()

   //Atribui os valores das variáveis
   a <- 5
   b <- 10

   //Mostra os valores antes da troca
   escreval ("Valores das Variáveis")
   escreval ("A: ", a)
   escreval ("B: ", b)

   //Realiza a troca dos valores das variáveis
   aux <- a   //variável auxiliar recebe a
   a <- b   //variável a recebe o valor de b
   b <- aux   //variável b recebe o valor auxiliar

   //pula linha
   escreval()

   //Mostra os valores trocados
   escreval ("Valores Trocados")
   escreval ("A: ", a)
   escreval ("B: ", b)

Fimalgoritmo