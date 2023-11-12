Algoritmo "Ex14 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Verifica se o valor digitado é maior que 10
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   valor: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex14 - Lista de Desafios")
   escreval ("Função: Verifica se o valor digitado é maior que 10")

   //recebe um valor
   escreva ("Digite um valor: ")
   leia (valor)

   escreval //pula linha

   //verifica se é maior que 10
   se valor < 10 entao
      escreval ("O número digitado é menor que 10")
   fimse

   se valor > 10 entao
      escreval ("O número digitado é maior que 10")
   fimse

   se valor = 10 entao
      escreval ("O número digitado é igual a 10")
   fimse
Fimalgoritmo