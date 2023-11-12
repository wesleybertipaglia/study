Algoritmo "Ex33 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe dois números e verifica qual o maior
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n1, n2: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex33 - Lista de Desafios")
   escreval ("Função: Recebe dois números e verifica qual o maior")

   //recebe 2 valores
   escreva ("Digite o 1° valor: ")
   leia (n1)

   escreva ("Digite o 2° valor: ")
   leia (n2)

   //resultados
   escreval //pula linha
   se n1 > n2 entao
      escreval ("O primeiro número é maior")
   senao
      escreval ("O segundo número é maior")
   fimse

   se n1 = n2 entao
      escreval ("Os números são iguais")
   fimse

Fimalgoritmo