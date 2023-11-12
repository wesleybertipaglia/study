Algoritmo "Ex12 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Transforma temperatura de °F para °c
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   f, c: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex12 - Lista de Desafios")
   escreval ("Função: Transforma temperatura de °F para °c")

   //recebe temperatura em Fahrenheit
   escreva ("Digite a temperatura em graus °F: ")
   leia (f)

   //calcula temperatura correspondente em Celsius

   c <- ((f-32)*5)/9

   escreval //pula linha

   //resultados
   escreval ("°C: ", c)

Fimalgoritmo