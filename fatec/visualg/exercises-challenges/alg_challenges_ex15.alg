Algoritmo "Ex15 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Verifica se o numero digitado é positivo ou negativo
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex15 - Lista de Desafios")
   escreval ("Função: Verifica se o numero digitado é positivo ou negativo")

   //recebe o numero
   escreva ("Digite um número: ")
   leia (n)

   escreval //pula linha

   se n >= 0 entao
      escreval ("O número é positivo")
   senao
      escreval ("O número é negativo")
   fimse

Fimalgoritmo