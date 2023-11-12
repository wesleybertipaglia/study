Algoritmo "Ex31 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe 3 valores e verifica se eles formam um triangulo
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   a, b, c: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex31 - Lista de Desafios")
   escreval ("Função: Recebe 3 valores e verifica se eles formam um triangulo")

   //recebe 3 numeros
   escreva ("Digite o valor a: ")
   leia (a)

   escreva ("Digite o valor b: ")
   leia (b)

   escreva ("Digite o valor c: ")
   leia (c)

   //verifica se eles formam um triangulo
   escreval //pula linha
   se (a<(b+c)) e (b<(a+c)) e (c<(a+b)) entao
      escreval ("Os valores formam um triangulo")
   senao
      escreval ("Os valores não formam um triangulo")
   fimse

Fimalgoritmo