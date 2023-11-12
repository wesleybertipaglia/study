Algoritmo "Ex85 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula a média de temperatura num ano
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   t: vetor [1..365] de real
   i, inf: inteiro
   soma, media, menor, maior: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex85 - Lista de Desafios")
   escreval ("Função: Calcula a média de temperatura num ano")

   //recebe a 1° temperatura
   escreva ("Digite a temperatura média do 1 dia: ")
   leia(t[1])
   menor <- t[1]
   maior <- t[1]
   soma <- t[1]

   //recebe as temperaturas médias
   para i de 2 ate 365 faca
      escreva ("Digite a temperatura média do ", i, " dia: ")
      leia(t[i])

      soma <- soma + t[i]

      se (t[i]) > maior entao
         maior <- t[i]
      fimse

      se (t[i]) < menor entao
         menor <- t[i]
      fimse
   fimpara

   //calcula a média
   media <- soma/365

   //dias do ano que t foi menor que a média
   para i de 1 ate 365 faca
      se t[i] < media entao
         inf <- inf + 1
      fimse
   fimpara

   //resultados
   limpatela
   escreval ("Menor temperatura do ano: ", menor)
   escreval ("Maior temperatura do ano: ", maior)
   escreval ("Temperatura média anual: ", media)
   escreval ("Dias que a temperatura foi inferior a média: ", inf)

Fimalgoritmo