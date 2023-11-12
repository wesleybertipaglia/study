Algoritmo "Ex42 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Verifica situação de aposentadoria
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   codigo, nasc, ingre, idade, trabalho: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex42 - Lista de Desafios")
   escreval ("Função: Verifica situação de aposentadoria")

   //reccebe informações do empregado
   escreva ("Digite o código do empregado: ")
   leia (codigo)

   escreva ("Digite o ano de nascimento: ")
   leia (nasc)

   escreva ("Digite o ano de ingresso na empresa: ")
   leia (ingre)

   //escreve a idade e o tempo na empresa
   idade <- 2021 - nasc
   trabalho <- 2021 - ingre

   //resultado
   escreval //pula linha
   escreval ("Idade: ", idade)
   escreval ("Tempo trabalhado na empresa: ", trabalho)

   se (idade >= 60) e (trabalho >= 25) entao
      escreval ("Requerer aposentadoria")
   fimse

   se (idade >= 65) ou (trabalho >= 30) entao
      escreval ("Requerer aposentadoria")
   senao
      escreval ("Não requerer aposentadoria")
   fimse


Fimalgoritmo