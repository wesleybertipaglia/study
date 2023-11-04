Algoritmo "App10-Ex10-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Converte uma temperatuda em °C para Fahrenheit
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 16/05/2021
Var
   // Seção de Declarações das variáveis
   c,f: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 10 - Lista 1")
   escreval("Função: Converte uma temperatuda em °C para Fahrenheit")

   //pula linha
   escreval ()

   //recebe a temperatura em °C
   escreva ("Digite a temperatura em °C: ")
   leia (c)

   //transforma a temperatura em °C para Fahrenheit
   f <- 9*c+160

   //limpa a tela
   limpatela

   //apresenta os resultados
   escreval ("Temperatura em °C: ", c)
   escreval ("Temperatura em °F: ", f)

Fimalgoritmo