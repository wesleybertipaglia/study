Algoritmo "Ex6 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : calcula a àrea de um retangulo apartir da base e altura
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   base, altura, area: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex6 - Lista de Desafios")
   escreval ("Função: calcula a àrea de um retangulo apartir da base e altura")

   //recebe a base e a altura
   escreva ("Digite a base: ") //base
   leia (base)

   escreva ("Digite a altura: ") //altura
   leia (altura)

   //calcula a àrea
   area <- base*altura

   //resultado
   escreval ("A área do Retângulo é: ", area)


Fimalgoritmo